

### 工作日志



#### 2022-10-10

- [x] Gemmini配置是在chipyard/generators/gemmini/configs文件下完成的，选择哪一种配置在`SoCConfigs.scala`中完成。如下：

  默认自定义配置保留下行：

  ```
  new gemmini.GemminiCustomConfig ++
  ```

  双核配置需注释上一行代码，添加如下行：

  ```scala
  new gemmini.DualGemminiConfig ++
  ```

  生成的verilog文件在`chipyard/sims/verilator/generated-src`文件夹；

- [x] 记住每次进入项目后需要运行进行配置，不然会报错：

  ```shell
  cd chipyard
  source env.sh
  cd chipyard/generators/gemmini
  ./scripts/setup-paths.sh
  ```

- [x] VSCODE安装C/C++ Extension Pack插件,黄色字体一般都是define，右键可以直接go to definition

- [ ] 疑问1：为什么地址是乱序的？是不是跟DMA请求队列有关？

  ![image-20221010205623019](BCNN工作日志.assets/image-20221010205623019.png)

- [ ] 搞清楚mvin和mvout指令执行时，loadcontroller和storecontroller分别是如何工作的？



#### 2022-10-11

- [ ] 阐述原始卷积过程和现在的BCNN卷积过程的区别与联系；
- [ ] gtkwave工具太烂了，1g以上的波形都无法查看；换modelsim?
- [ ] 计算一下采用类NHWC存储方式，比原先快了多少倍



#### 2022-10-12

- [ ] 搞清楚mvout指令、scale功能
- [ ] Cat操作符
- [ ] BCNN硬件平台数据通路图（算法中的拼接具体是怎么实现）
- [ ] 算清楚zero_dec++具体需要多少内存
- [ ] 搞定第四章RSICV相关的废话
- [ ] 从胡涛那边找到modelsim、vivado安装资源
- [ ] 搞清楚PE os模式的计算方式

