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

细节可参照文章



























![](D:\prj\routine\inferencor\gemmini_docs\BCNN硬件实现平台.assets\dualgemmini.png)