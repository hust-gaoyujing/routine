[TOC]



### Systolic Array 

#### 1. Gemmini Systolic Array简介	

​	Gemmini中的脉动阵列拥有两级结构来适应不同的微架构，如下图所示，空间阵列的首先由**tiles**构成，每个tile通过流水线寄存器和相邻的tiles连接。而每个tile又可以拆分为一个PEs组成的阵列，其中相连的PEs直接连接，不通过流水线寄存器。PE可配置为WS或者OS数据流模式，每个周期完成一次MAC（乘加）运算。每个PE和每个tile只和其相邻的单元分享输入和输出。

​	![Gemmini's systolic two-tiered hierarchy](file://D:/prj/routine/inferencor/gemmini/img/gemmini-systolic-array.png?lastModify=1653287669)

​	基础介绍请参考文档：Gemmini Generator.md 4.4节



#### 2. Dataflow: WS or OS or both?