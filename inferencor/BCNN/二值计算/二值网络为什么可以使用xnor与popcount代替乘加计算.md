

### BCNN在FPGA的硬件实现



#### 二值网络为什么可以使用xnor与popcount代替乘加计算

对于二值网络的卷积运算，只是+1和-1之间的乘累加运算，根据+1和-1的乘法运算真值表的特点，可是使用"xnor"代替”乘法”的优化方式，推导过程：

二值乘法真值表：

| a<-1,+1> | b<-1,+1> | a·b<-1,+1> |
| :------: | :------: | :--------: |
|    1     |    1     |     1      |
|    1     |    -1    |     -1     |
|    -1    |    1     |     -1     |
|    -1    |    -1    |     1      |

二值xnor真值表：

| a<0,1> | b<0,1> | a xnor b<0,1> |
| :----: | :----: | :-----------: |
|   1    |   1    |       1       |
|   1    |   0    |       0       |
|   0    |   1    |       0       |
|   0    |   0    |       1       |

可见如果使用0表示-1，那么使用XNOR计算代替二值乘法运算完全是可行的，实际的计算中也常用“异或取反”来代替xnor操作。

例如,a=[1,-1, 1, 1, -1]，W=[-1,1,1,-1,-1]。按照正常的乘法应该是：

$$
a1*w1+a2*w2+a3*w3+a4*w4+a5*w5=1*-1+-1*1+1*1+1*-1+-1*-1=-1
$$
那么转成Xnor的计算方式，在程序中，a=[1,0,1,1,0],W=[0,1,1,0,0]表示的，具体运算过程如下：

先进行异或计算：

 **a ^ w=[1 ^ 0, 0 ^ 1, 1 ^ 1, 1 ^ 0, 0 ^ 0]=[1,1,0,1,0]**

再进行popcount计算：

**popcount(a^w)=3**

计算结果：

**-(2*popcount(a^w)-5) = -1**

其中popcount(x)表示统计向量x中1的个数，我们知道0表示-1，1表示+1，所以，a和W异或求和，应该等于（popcount-（5-popcount））=2*popcount-5=1，而我们要求的是Xnor求和，所以还需要在前面加个负号“-”，即-(2*popcount(a^w)-5) = -1。

如果用vec_len表示向量元素个数的话，那么用xnor代替正常的乘累加（卷积），可以用通式：

**-(2*popcount(a^w)-vec_len)**来计算。



#### 基于FPGA的BCNN总体架构

<img src="二值网络为什么可以使用xnor与popcount代替乘加计算.assets/image-20211025201801035.png" alt="image-20211025201801035" style="zoom:80%;" />

BCNN网络的硬件实现主要分为三个部分：

1.复数产生层（complex input generation layer）：如下图：例如输入为RGB图片，其初始输入值都是实数值，经过该层网络可以得到复数值（具体原理不清楚）；

<img src="二值网络为什么可以使用xnor与popcount代替乘加计算.assets/image-20211025212940303.png" alt="image-20211025212940303" style="zoom:80%;" />
2.全精度复数卷积层（full precision complex convolutional layer）：原始的复数卷积层，未经过二值化，保持了全精度；部署在卷积过程的第一层和最后一层；

<img src="二值网络为什么可以使用xnor与popcount代替乘加计算.assets/image-20211025213018733.png" alt="image-20211025213018733" style="zoom:80%;" />

3.二值复数卷积层（binarized complex convolutional layer ）：将全精度的复数的乘加计算简化为1-bit的二值的xnor、popcount和加减计算，减少存储空间和增加计算效率；例如将32-bits的乘法计算转为1-bit的xnor计算就可以将速度提升32倍，也大幅度减少了硬件资源开销；

除了上述各层，还有全连接层（FC）会在最后阶段产生预期的输出。

<img src="二值网络为什么可以使用xnor与popcount代替乘加计算.assets/image-20211025213033774.png" alt="image-20211025213033774" style="zoom:80%;" />



#### 二值复数卷积算法解读

```python
void BC_Conv2D(	uint_256 X[32][32],
				uint_256 weight[256],
				int_16 Y[256][32][32],)
{
	Fig_Dim: for(int i = 0; i < 1024; i++)
		CH_out: for(int j = 0; j < 256; j++)
	{
		#pragma HLS PIPELINE II = 1
		#pragma HLS UNROLL factor = p
		uint_256 Mul = X[i/32][i%32] ^ weight[j];
		Y[j][i/32][i%32] = 256 – 2 * pop_cnt_256(Mul);
	}
}
```

如下图所示，算法的循环结构主要就是将目标向量`X[32][32]`中的每一个元素都与权重向量`weight[256]`中的256个元素进行乘加计算，得到结果向量`Y[256][32][32]`；其中乘加计算使用`pop_cnt(xor)`操作来优化，具体原理参考**二值网络为什么可以使用xnor与popcount代替乘加计算**

![image-20211026100138830](二值网络为什么可以使用xnor与popcount代替乘加计算.assets/image-20211026100138830.png)



#### pop_cnt(xor)操作的硬件实现 

使用chisel语言进行设计：

popcount_4(4-bit输入的popcount)真值表：

|  in  | out  |  in  | out  |
| :--: | :--: | :--: | :--: |
| 0000 |  0   | 1000 |  1   |
| 0001 |  1   | 1001 |  2   |
| 0010 |  1   | 1010 |  2   |
| 0011 |  2   | 1011 |  3   |
| 0100 |  1   | 1100 |  2   |
| 0101 |  2   | 1101 |  3   |
| 0110 |  2   | 1110 |  3   |
| 0111 |  3   | 1111 |  4   |

利用真值表使用组合逻辑设计popcount_4还是很容易实现的；

popcount(参数自定义)，根据输入位宽选择例化popcount_4的个数，输出为所有popcount_4输出之和：

```scala
class popcount(width: Int) extends Module{
  val io = IO(new Bundle() {
    val in = Input(UInt(width.W))
    val out = Output(UInt(log2Ceil(width+1).W))
  })
  //例化多个popcount_4模块
  val pop_cnt_4 = VecInit(Seq.fill(width/4)(Module(new popcount_4).io))
  pop_cnt_4.map(_.in).zipWithIndex.foreach{ case (in, index) =>
    in := io.in(index*4+3, index*4)
  }

  io.out := pop_cnt_4.map(_.out).reduce(_ +& _)
}
```

