[TOC]

------



## BCNN硬件实现平台

#### 1.BCNN软件算法流程

详情见[BCNN版Zero DCE++说明 - HedgeDoc (likelihood-tech.com)](https://md.likelihood-tech.com/qpMmy34WR3epc_Z95fBg0Q#图像处理BCNN部分)

主体算法示意图如下：图中数据代表每次卷积的输入和输出数据的大小；例如`p*p*16`表示每个通道有`p*p`（尺寸默认为`512*512`），一共16个通道；因为是复数卷积运算，故将复数的实部与虚部分别示意。

<img src="D:\prj\routine\inferencor\gemmini_docs\BCNN硬件实现平台.assets\BCNN算法流程.png" style="zoom:;" />



值得注意的是，目前的BCNN算法共分七层，第一层与第七层为全精度浮点数运算，而第二层至第六层均为二值卷积运算（硬件平台加速的针对点）。

其中第一层与第七层的运算不做复数处理，只需进行正常的卷积运行即可。第一层的输出本应为`p*p*32`,为了后续第二层的卷积神经运算，需要将结果经过sign函数后强制分为两个部分：`p*p*16`（前16个通道）和`p*p*16`（后16个通道）；这一点对于后续的硬件来说很重要，本次设计的硬件平台对数据的属性（实部或虚部，单比特或多比特）很敏感。

#### 2.硬件平台整体框图

基于BCNN算法的硬件平台整体框图如下：

![](D:\prj\routine\inferencor\gemmini_docs\BCNN硬件实现平台.assets\dualgemmini.png)



因为BCNN算法中除了二值卷积运算，还有计算量可观的浮点运算，所以使用单CPU核双协处理器的结构是十分有必要的。而为了简化设计和更好的观察BCNN算法带来的优化，故先采用单核单协处理器的结构来试验，结构如下：

![](D:\prj\routine\inferencor\gemmini_docs\BCNN硬件实现平台.assets\singlegemmni.png)

细节可参照文章Gemmini Generator.pdf  

特别是5.4（Memory Addressing Scheme）与5.5（ISA）节,重点关注 "row-addressed", `mvin` ,`mvout`等指令。



加速器模块的架构框图：

![](BCNN硬件实现平台.assets/BCNN协处理器架构.png)

上图为本次设计的加速器的协处理器的整体架构框图，该协处理器的架构参考了Thierry等人设计的Versatile Tensor Accelerator（VTA），采用了Decoupled Access/Excute架构，这就意味着”内存访问“和”执行“指令可以在硬件的不同区域同时执行，该机制可以极大的提高指令执行效率。我们把硬件分解为三个控制模块，分别是负责处理”excute"指令的ExecuteController模块、负责处理“load”指令的LoadController模块和负责处理“store"指令的StoreController模块。

除了这三个控制模块，本次设计的架构也有与VTA架构的不同之处，例如：

- VTA架构中使用一个取指令模块（Instruction Fetch Module），直接与片外DRAM交互并取指令，这样的设计虽然简洁方便，但直接截断了与CPU集成的可能，无法将加速器在边缘智能设备中实际应用。为此我们提出并设计了保留站（Reservation Station）模块，保留站技术是计算机科学中常用技术，主要用于解决连续进入指令流水线的指令之间的数据和资源的相关性问题。我们引入的保留站模块可以同时缓存多条指令，并监测不同类型的指令是否存在冒险，一旦检测到某一条指令与其他控制器中的指令间没有依赖关系，就将其送往对应的指令队列中，解决了相关性问题；除此之外，保留站还含有RoCC接口，便于后续将协处理器与主处理器的集成，极大提高了硬件的可实用性。

- 与VTA架构另一个不同之处在于，VTA架构中忽略了片上存储SRAM的使用，直接在DRAM进行数据的访存，极大的降低了硬件的执行效率且增加了功耗，而我们为了提高计算的执行效率和数据的复用性，在架构中添加了一块很大的片上存储，其中包括简单的单端口SRAM、和双端口SRAM构成的拥有累加功能的Accumulator。且设计针对的BCNN算法，将每个像素的权重参数和输入数据压缩至2比特（实部和虚部各1比特），极大缩小了对存储空间的需求，在实现高吞吐量的同时降低了成本和功耗，也为我们将激活和权重数据迁移至片上SRAM存储提供了理论依据。

在指令保留站完成对指令的预处理并将各指令按类别（如数据Load、数据Store、计算执行）分配到相应的队列后，各个模块会对队列中指令依次进行译码和执行，其中各模块的功能如下：

- ExecuteController模块: 该部分主要负责执行”excute"类型的ISA指令，例如矩阵乘法。该模块主要包含脉动阵列阈值单元（Systolic Array Threshhold Unit，SATU）和循环展开单元（Loop Unroller Unit,LUU），其中循环展开单元用于处理长指令（CISC）并将其展开为多条精简指令（RISC），便于后续的计算执行；脉动阵列阈值单元作为本次设计的核心，参考自TPU中的脉动阵列和FINN中的矩阵向量阈值单元（MVTU），可同时完成DIM*DIM个元素的点积运算（其中DIM指脉动阵列中每行或者每列计算单元的个数），且其中各个计算单元采用了简单的popcount(xnor)计算代替了复杂的乘加计算，极大的提高了数据的并行计算能力和硬件友好性，进而提高了计算效率，而阈值单元使用一个比较器即可完成复杂的batch normalization和二值化的过程，极大的降低了硬件开销。
- LoadController模块：该部分负责执行从DRAM向协处理器的SRAM或者accumulator传输数据的指令。该模块主要包含一个DMA和源地址及目的地址的编码与译码单元。特别指出，DMA可以对虚拟地址进行操作，从指令保留站中获取地址（虚拟地址）后会将其送入高速缓存（Translation Lookaside Buffer，TLB），经过映射得到DRAM的物理地址。如果在TLB未命中后，该虚拟地址将直接转回主处理器中的页表查找模块（Page Table Walker，PTW）来获取物理地址。

- StoreController模块：该部分负责执行从协处理器的SRAM或者accumulator向DRAM传输数据的指令。结构与LoadController模块类似。



#### 3. ISA





#### 4. Memory的物理存储方式

直接上图：

![](BCNN硬件实现平台.assets/memory.png)



##### SIMD的扩展

Gemmini的ISA采用了SIMD的形式，即单指令多数据，而本次设计的BCNN硬件实现平台，在原基础上对SIMD进行了极大的扩展。具体体现如下：

- 对单bit的数据进行了合并存储和分解运算，相比之下，虽然处理的数据总的bit数不变，但是数据的数量上却是之前的16倍；
- 另一大特点就是，针对BCNN的复数卷积运算，将复数的实部与虚部数据独立存储，地址同步编码，即每条`mvin`或者`mvout`指令分别对相同地址的实部bank和虚部bank同时执行，单条指令处理的数据量加倍。



##### main memory

物理存储方式采用类似NHWC格式，即先取C方向数据；然后W方向；再H方向；最后N方向。具体可参考文档：图像数据通道格式：NCHW和NHWC的区别.pdf

此硬件平台采用的数据通道格式与存储方式，虽然类似于NHWC，但是还是有一定区别：在先取Channel方向的数据后，不是分别存储在单个的存储单元，还是进行合并后存储在同一个存储单元。

之所以选择这种存储方式，原因如下：

- 二值神经网络的每个像素点的数据仅为1bit，若使用32 bits的地址去对应1bit的数据，且在main_memory中数据是byte_addressed（这里面有一个坑代填，因为main_memory是以byte，而BCNN算法中channel最小为16，所以main_memory如何改为two byte addressed呢?），如果每个存储空间只是存储1bit，显然是十分浪费且不合理的；
- 将单bit的数据合并存储后，可以减少memory的访问次数，极大的增加访问效率和计算效率，还降低了多次数访问带来的功耗浪费；
- 另外一个优势，在于channel数的巧妙，two byte addressed 的存储方式对应16或者32的通道数，可完美的实现多通道的并行处理，这在下一节的数据通路一节将介绍。



##### private memory

private memory与原存储方式类似，也是采用了”row_addressed"方式，不同的是需要将单个存储单元改为**16 bit**，且数据输出时需要有一个分解的过程，将合并的16bit数再次拆分为单比特并分别送入相应的脉动阵列进行计算。

使用该种存储方式的private memory不仅具有上述的优点，还有个突出的优点如下：

- 不论是第二层到第四层的16个通道还是第五层到第六层的32通道，采用该存储方式，针对单个卷积核，所有的数据只需要读取一次就可以完成计算，极大提高了数据的利用率。



#### 5.Gemmini卷积数据通路与BCNN数据通路对比

##### 5.1 Gemmini卷积数据通路



![卷积层计算](BCNN硬件实现平台.assets/卷积层计算 - 副本.png)

以输入特征图`32x32x16(int8)`与卷积核`3x3x16x16(int8)`进行计算得到输出特征图`32x32x16(int32)`为例进行说明（忽略bias、假设片上存储足够大）：

- 第一步：将DRAM中以NCHW存储方式的输入特征图展开，即以3x3的感受野不断向右（向下）取值，在取完一个通道后，再继续取下一个通道，并将数据送往spad，因为spad是"row_addressed"（即每行可以存16个int8），所以每次感受野框中的值都存放在spad的一行中。同理将卷积核也依次存入spad中；
- 第二步：同时取16个卷积核的第一个通道，如图中，同时取通道1，并按列依次进入脉动阵列中；
- 第三步：将spad中的输入特征图通道一展开的矩阵向量，依次送往脉动阵列与preload的权重进行点积计算，**32个周期后**，得到第一行计算结果（即16列的计算结果同时输出）并送到acc的目标地址，理论上第一层输入特征图计算完，acc中已有**32x32**行数据；
- 第四步：同时取16个卷积核的第二个通道，并按列依次进入脉动阵列中；
- 第五步：将spad中的输入特征图通道二展开的矩阵向量，依次送往脉动阵列与preload的权重进行点积计算，**32个周期后**，得到第一行计算结果并送往acc的目标地址，与第三步的结果进行累加；
- 第六步：重复第四步、第五步，将输入特征图中所有通道展开的矩阵向量都完成计算，此时acc中就有了`32x32x16(int32)`个数据，即输出特征图，不过该输出特征图在acc中是以NHWC存储方式存储的；
- 第七步：将输出特征图mvout回DRAM中，每次取acc中一行数据（16个int32）送往DRAM，注意在DRAM中的步长，相邻数据之间步长为**32x32**，依次取完acc中**32x32**行数据，mvout结束后，输出特征图已按照NCHW方式在DRAM中存储。

矩阵乘法伪代码：

```c
void full_matmul(elem_t A[MAT_DIM_I][MAT_DIM_K], elem_t B[MAT_DIM_K][MAT_DIM_J], ACC_T D[MAT_DIM_I][MAT_DIM_J], full_t C_full[MAT_DIM_I][MAT_DIM_J]) {
  for (size_t r = 0; r < MAT_DIM_I; r++)
    for (size_t c = 0; c < MAT_DIM_J; c++) {
      C_full[r][c] = D[r][c];
      for (size_t k = 0; k < MAT_DIM_K; k++)
        C_full[r][c] += A[r][k]*B[k][c];
    }
}
```



##### 5.2BCNN卷积数据通路

![](BCNN硬件实现平台.assets/SATU.png)





直接上图：

![](BCNN硬件实现平台.assets\data_flow.png)

本次硬件设计平台的最突出的特点就是在资源合理分配的条件下，极大的提升设计的并行性与高效性。





#### 6.软硬件协同

本次设计针对的是BCNN算法，主要是二值卷积运算，而原先的ISA指令主要是普通的CNN算法，所以为了与BCNN适配，必然要对软硬件都做出相应的修改。

- 之前的`mvin`指令以byte_addressed为基础，现在需要以two_byte_addressed为基础；
- `matmul.compute.preloaded`,`matmul.compute.accumulated`原先的compute指令只需要完成数据的put through，而现在的数据通路不仅仅如此，还需要对数据进行分解与合并，这就需要做出一定的修改；



#### 7.系统级

深度学习芯片从来不只是硬件的问题，而是涉及到一个从硬件，到驱动，到编译优化部署，再到模型本身的全栈问题



**待完成任务：**

- BCNN算法的二值卷积层，除了第五和第六层的数据进行了cat，通道数加倍，其他各层通道数均为16层，故如何将main memory的取值方式改为two byte addressed，或者改变`mvin`指令的机制，将byte addressed的数据进行拼接。
- private memory存储方式的修改；
- DMA的重新配置：数据传输格式发生变化，DMA的配置也要做出相应的调整，因为不论是`mvin`,`mvout`还是其他指令的数据传输都需要DMA作为媒介；
- 评估一下WS和OS模式的优缺点，哪种更适合BCNN算法；

