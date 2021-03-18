DEBUG 记录与心得



1. 每次写一个begin或者case等 都要在下面跟上end，防止后面忘记

2.  “ ： ”  一定要注意，如果写成中文的冒号，会引起编译错误

3.  `always @(posedge clk)`后面不需要 ';'

   `@(posedge clk);`作为时间延迟时，需要';'   

4. 当如下赋值时，仅可将右端赋值到左端；

    如i_icb_cmd_ready作为输出，此时即使cmd_ready有值，也不会赋值给i_icb_cmd_ready;

   ![image-20210111160024378](DEBUG 记录与心得.assets/image-20210111160024378.png)

5. 注意两段式状态机的写法：

   