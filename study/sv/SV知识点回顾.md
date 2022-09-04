[TOC]



### SV知识点回顾



#### 1.virtual task与向下类型转换

**virtual function/task :**

SV中允许父类句柄指向子类对象（向上类型转换），但是子类相对父类扩展出来的方法，对父类句柄是不可见的。如下，假设子类和父类都定义了同名的方法为prints，那么指向子类对象的父类句柄调用prints方法，调用的实质是父类的prints方法：

```verilog
module test;

class dad;
	task prints;
		$display("IM DAD!");
	endtask
endclass

class son extends dad;
	task prints;
		$display("IM SON!");
	endtask
endclass

initial begin
	dad dad1;
	son son1;
	son1 = new();
	dad1 = son1;//父类句柄指向子类对象
	dad1.prints();
end

endmodule
```

结果如下：可见调用了父类的方法

```
IM DAD!
```

当在方法定义前加上virtual时，systemverilog会按照对象来寻找所调用的方法（不适用virtual，则会优先按照句柄来寻找所调用的方法，如上例）

```verilog
module test;

class dad;
	virtual task prints;
		$display("IM DAD!");
	endtask
endclass

class son extends dad;
	virtual task prints;
		$display("IM SON!");
	endtask
endclass

initial begin
	dad dad1;
	son son1;
	son1 = new();
	dad1 = son1;//父类句柄指向子类对象
	dad1.prints();
end

endmodule
```

结果如下：

```
IM SON!
```

**note:**通过向上类型转换，将一个父类句柄指向子类对象，然后使用“父类句柄.virtual方法”成功调用了一个子类方法。需要注意的，完成这样的操作需要子类和父类都具有prints的同名方法，如果用父类句柄去调用一个父类中不存在但是子类存在的方法，编译器会报错。



**向下类型转换 **

子类对象重新恢复对子类对象句柄指向，就需要使用case向下类型转换。

$cast(参数A:子类句柄，参数B:指向子类对象的父类句柄)  (向下类型转换成功的条件是，B的指向对象类型，和A的句柄类型 相同)

```
module test;

class dad;
	task prints;
		$display("IM DAD!");
	endtask
endclass


class son extends dad;
	task prints;
		$display("IM SON!");
	endtask
endclass

initial begin
	dad dad1;
	son son1;
	son son2;
	son1 = new();
	dad1 = son1;//父类句柄指向子类对象
	dad1.prints();
	$cast(son2,dad1);
	son2.prints();
end

endmodule
```

结果如下：

```
IM DAD!
IM SON!
```



#### 2.静态转换和动态转换

​	为了使验证平台重用性更好，经常会使在各个组件间传递的是**数据的基类**，而在真正使用的地方再转换为**派生类**。（如1中上例，通过父类句柄句柄指向子类对象并传递，当需要使用时再使用子类句柄把父类句柄指向的子类对象动态转换过来。）

​	那么必然就涉及将基类句柄的对象传递给派生类句柄（上图中的$cast部分）这样一个过程，而显然这个过程是静态转换所不支持的，因为静态转换只检查句柄类型，不看实际的对象类型。因此我们需要用到$cast来做动态转换，$cast转换会检查对象类型，一旦源对象（source_exp）和目的句柄（dest_var）是同一类型或者是目的句柄类型的派生类，转换就是合法的。


​	**静态检查**是在**编译**阶段完成的，而**动态检查**是在**仿真**阶段完成的。

   

-  question:子类句柄可以指向一个父类对象嘛？

  [父类引用可以指向子类对象，子类引用不能指向父类对象 - 简书 (jianshu.com)](https://www.jianshu.com/p/989f55917c72?u_atoken=0b4bcf47-f531-4cb0-bcd6-310ebad7c156&u_asession=01aBQ5NfwsVPOixEIlHp2bS2F6UDgiDSguGT4x9pr_dT35OKnjTsHyelZyCHXbN0PvX0KNBwm7Lovlpxjd_P_q4JsKWYrT3W_NKPr8w6oU7K9Ph8Q_tRO6tKSRHX-Km9Ibh4gB_rorF7cG9vr14abfLGBkFo3NEHBv0PZUm6pbxQU&u_asig=05CVKgncGS6zO5dOpiej7tL7xoz5x7YZUWIAbrA6YyGggcbbX6_w_JyONELp25GRUNMotnQ38G1eSAZxFXfoRsHs0pQQafXwaiJbiz-9_qNwT3t--hdw0snAf_pfgUJfgBDzZQkfpW91s4X0XID7txPnvBfj4rOYiHy3fDsR_Eutr9JS7q8ZD7Xtz2Ly-b0kmuyAKRFSVJkkdwVUnyHAIJzUktZlU1VUFt6RL5ybWe_LhyL0JdJzieKRm-AquJmV08U-X92pnuaZyu-ch7KXFYKu3h9VXwMyh6PgyDIVSG1W8-bpSwU5CP2utdsyR6vssDBQwMsil22Y1Tlmo5XouMtHF1mIRbEBZPe5jwk8BcZ5q2NTGqTB_KMsHcwLkM6bWJmWspDxyAEEo4kbsryBKb9Q&u_aref=%2F739%2BO5wNOBUclQHmeUJuADc4B8%3D)



#### 3.寄存器模型





**前门访问和后门访问**

​	前门访问操作就是通过寄存器配置总线（如APB协议、OCP协议、I2C协议等）来对DUT进行操作，前门操作只有两种：读操作和写操作。

​	UVM中主要通过adapter中的bug2reg及reg2bus,去实现前门访问操作中uvm_reg_item和目标transaction的转换。



​	所有后门访问操作都是**不消耗仿真时间（$time打印的时间）而只消耗运行时间的**。这是后门发操作的最大优势。后门操作存在的意义在于：

- 后门操作可以更好的完成前门访问操作所做的事情。消耗的运行时间要远小于前门访问操作的时间。
- 后门操作可以完成前门访问操作做不到的事情。例如后门操作可以给只读寄存器指定一个非零的初值，对一些特用的case十分方便。

​    后门操作的缺点在于无法在波形文件中找到总线信号变化的波形及操作的记录。



**期望值与镜像值**

​	对于任意一个寄存器，寄存器模型中都会有一个专门的变量用于最大可能地与DUT保持同步，这个变量在寄存器模型中称为DUT的镜像值。除镜像值外还有期望值。

​	当想要修改寄存器的值时，一种方法是直接调用write任务，将值写入，此时期望值和镜像值都更新；另一种方法是通过set函数将先设置期望值，之后调用updata任务，updata任务会检查期望值和镜像值是否一致，如果不一致，那么将会把期望值写入DUT中，并且更新镜像值。

​	通过get函数可以得到寄存器的期望值，通过get_mirrored_value可以得到镜像值。





l_comp6  + 		m8-

d19 d24 + 		m9-

r8-			m8-

l_fillet_cnt?

l_t



d24 0,6->0.7