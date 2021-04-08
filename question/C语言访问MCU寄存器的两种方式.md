### C语言访问MCU寄存器的两种方式

#### 1.使用标准C的强制类型转换和指针来实现

采用标准C的强制转换和指针的概念来实现访问MCU的寄存器，例如：

```c
#define DDRB (*(volatile unsigned char *)0x25)
```

分析如下：

1.`(unsigned char *)0x25`中的0x25只是个值，前面加`(unsigned char *)`表示把这个值强制类型转换为unsigned char型的指针。再在前面加” * ” ，即`*(volatile unsigned char *)0x25`表示对这个指针解引用，相当于`(unsigned char *)0x25`是一个指针p，而这个宏定义为

```
#define DDRB *p
```

这样读写以0x25为地址的寄存器时，直接书写DDRB即可，即写：

```C
DDRB = 0xff
```

相当于：

```C
unsigned char *p, i; 
p = 0x25; 
i = *p;        //把地址为0x25单元中的数据读出送入i变量
*p = 0xff;     //向地址为0x25的单元中写入0xff*
```

这样经过一层宏定义的封装就变得直观和方便的多了。

2.关键字volatile确保本指令不会以为C编译器的优化而被省略，且要求每次直接读值。例如使用`while(*(unsigned char *)0x25)`时，有时系统可能不能真正去读0x25的值，而是用第一次读出的值，如果这样，这个循环可能就是个死循环。用了volatile则要求每次都去读0x25的实际值。

#### 2.使用结构体实现

使用指针的方式来访问特殊功能寄存器的优势在于完全符合标准的ANSI-C，而无需扩展语法，形成“方言”，拥有更好的兼容性和可移植性。

这种方式适合简单的应用程序，而当系统用到多个同种外设时，就需要为每一个这种外设定义寄存器，这样就会使程序的维护变得非常困难。而且，由于每次寄存器操作都会有对应的常量存储在程序Flash里，为每个寄存器定义单独的指针还会增加程序代码。

为了简化程序代码，可以将寄存器组定义为结构体，而将外设当做指向这个结构体的指针。例如：


```C
#define PERIPHERAL	((unsigned int)(0x40000000))
#define AHB1_BASE	((unsigned int)(PERIPHERAL + 0x0002 0000))
#define GPIOA_BASE	((unsigned int)(AHB1_BASE+0x0000 0000))

typedef unsigned int	uint32_t;
typedef unsigned int 	uint16_t;

typedef struct
{
	uint32_t MODER;
	uint32_t OTYPER;
	uint32_t OSPEEDR;
	uint32_t PUPDR;
	uint32_t IDR;
	uint32_t ODR;
	uint16_t BSRRL;
	uint16_t BSSRH;
	uint32_t LCKR;
	uint32_t AFR[2];	
}GPIO_Typedef;


#define GPIOA ((GPIO_Typedef *)(GPIOA_BASE))

int main(void)
{
	RCCAHB1PERIPH_BASE |= (1<<7);
	 
															// GPIOH_MODER &= ~(3<<2*10); 
															// GPIOH_MODER |= (1<<2*10); 
 
	GPIOA->MODER &= ~(3<<2*10);
	GPIOA->MODER |= (1<<2*10);
	while(1);
}
```

