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



#### 3. Memory的物理存储方式

直接上图：

<img src="D:\prj\routine\inferencor\gemmini_docs\BCNN硬件实现平台.assets\memory.jpg" alt="memory" style="zoom: 50%;" />



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



#### 4.数据通路

直接上图：

![data_flow](D:\prj\routine\inferencor\gemmini_docs\BCNN硬件实现平台.assets\data_flow.jpg)



本次硬件设计平台的最突出的特点就是在资源合理分配的条件下，极大的提升设计的并行性与高效性。



#### 5.软硬件协同

本次设计针对的是BCNN算法，主要是二值卷积运算，而原先的ISA指令主要是普通的CNN算法，所以为了与BCNN适配，必然要对软硬件都做出相应的修改。

- 之前的`mvin`指令以byte_addressed为基础，现在需要以two_byte_addressed为基础；
- `matmul.compute.preloaded`,`matmul.compute.accumulated`原先的compute指令只需要完成数据的put through，而现在的数据通路不仅仅如此，还需要对数据进行分解与合并，这就需要做出一定的修改；





**待完成任务：**

- BCNN算法的二值卷积层，除了第五和第六层的数据进行了cat，通道数加倍，其他各层通道数均为16层，故如何将main memory的取值方式改为two byte addressed，或者改变`mvin`指令的机制，将byte addressed的数据进行拼接。
- private memory存储方式的修改；
- DMA的重新配置：数据传输格式发生变化，DMA的配置也要做出相应的调整，因为不论是`mvin`,`mvout`还是其他指令的数据传输都需要DMA作为媒介；
- 评估一下WS和OS模式的优缺点，哪种更适合BCNN算法；

