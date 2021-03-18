 /*                                                                      
  *  Copyright (c) 2018-2020 Nuclei System Technology, Inc.              
  *  All rights reserved.                                                
  */                                                                     
                                                                         




















`include "ux607_defines.v"

module ux607_subsys_clic_alloc #(
  parameter  UX607_EXTER_IRQ_NUM = 50
)(

  output [UX607_EXTER_IRQ_NUM-1:0] clic_irq_i,

  
  

  input  gpio_irq_0,
  input  gpio_irq_1,
  input  gpio_irq_2,
  input  gpio_irq_3,
  input  gpio_irq_4,
  input  gpio_irq_5,
  input  gpio_irq_6,
  input  gpio_irq_7,
  input  gpio_irq_8,
  input  gpio_irq_9,
  input  gpio_irq_10,
  input  gpio_irq_11,
  input  gpio_irq_12,
  input  gpio_irq_13,
  input  gpio_irq_14,
  input  gpio_irq_15,
  input  gpio_irq_16,
  input  gpio_irq_17,
  input  gpio_irq_18,
  input  gpio_irq_19,
  input  gpio_irq_20,
  input  gpio_irq_21,
  input  gpio_irq_22,
  input  gpio_irq_23,
  input  gpio_irq_24,
  input  gpio_irq_25,
  input  gpio_irq_26,
  input  gpio_irq_27,
  input  gpio_irq_28,
  input  gpio_irq_29,
  input  gpio_irq_30,
  input  gpio_irq_31,

  input  uart0_irq,                
  input  uart1_irq,                

  input  qspi0_irq, 
  input  qspi1_irq,
  input  qspi2_irq,

  input  pwm0_irq_0,
  input  pwm0_irq_1,
  input  pwm0_irq_2,
  input  pwm0_irq_3,

  input  pwm1_irq_0,
  input  pwm1_irq_1,
  input  pwm1_irq_2,
  input  pwm1_irq_3,

  input  pwm2_irq_0,
  input  pwm2_irq_1,
  input  pwm2_irq_2,
  input  pwm2_irq_3,

  input  i2c_mst_irq,

  input  clk,
  input  rst_n
  );


 
 

 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 

`ifndef FPGA_SOURCE 


  genvar i;
  generate
    for (i=0; i<UX607_EXTER_IRQ_NUM; i=i+1) begin:irq_tie0
      if(i == 30) begin: irq_30
         assign clic_irq_i[30] = gpio_irq_30; 
      end
      else if(i == 31) begin: irq_31
         assign clic_irq_i[31] = gpio_irq_31; 
      end
      else begin: irq_others
         assign clic_irq_i[i] = 1'b0 ;
      end
    end
  endgenerate

 
`else

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

  assign clic_irq_i[0 ] = gpio_irq_0 ; 
  assign clic_irq_i[1 ] = gpio_irq_1 ; 
  assign clic_irq_i[2 ] = gpio_irq_2 ; 
  assign clic_irq_i[3 ] = gpio_irq_3 ; 
  assign clic_irq_i[4 ] = gpio_irq_4 ; 
  assign clic_irq_i[5 ] = gpio_irq_5 ; 
  assign clic_irq_i[6 ] = gpio_irq_6 ; 
  assign clic_irq_i[7 ] = gpio_irq_7 ; 
  assign clic_irq_i[8 ] = gpio_irq_8 ; 
  assign clic_irq_i[9 ] = gpio_irq_9 ; 
  assign clic_irq_i[10] = gpio_irq_10; 
  assign clic_irq_i[11] = gpio_irq_11; 
  assign clic_irq_i[12] = gpio_irq_12; 
  assign clic_irq_i[13] = gpio_irq_13; 
  assign clic_irq_i[14] = gpio_irq_14; 
  assign clic_irq_i[15] = gpio_irq_15; 
  assign clic_irq_i[16] = gpio_irq_16; 
  assign clic_irq_i[17] = gpio_irq_17; 
  assign clic_irq_i[18] = gpio_irq_18; 
  assign clic_irq_i[19] = gpio_irq_19; 
  assign clic_irq_i[20] = gpio_irq_20; 
  assign clic_irq_i[21] = gpio_irq_21; 
  assign clic_irq_i[22] = gpio_irq_22; 
  assign clic_irq_i[23] = gpio_irq_23; 
  assign clic_irq_i[24] = gpio_irq_24; 
  assign clic_irq_i[25] = gpio_irq_25; 
  assign clic_irq_i[26] = gpio_irq_26; 
  assign clic_irq_i[27] = gpio_irq_27; 
  assign clic_irq_i[28] = gpio_irq_28; 
  assign clic_irq_i[29] = gpio_irq_29; 
  assign clic_irq_i[30] = gpio_irq_30; 
  assign clic_irq_i[31] = gpio_irq_31; 

  assign clic_irq_i[32] = uart0_irq  ;
  assign clic_irq_i[33] = uart1_irq  ;
  assign clic_irq_i[34] = qspi0_irq  ;
  assign clic_irq_i[35] = qspi1_irq  ;   
  assign clic_irq_i[36] = qspi2_irq  ;   

  assign clic_irq_i[37] = pwm0_irq_0;
  assign clic_irq_i[38] = pwm0_irq_1;
  assign clic_irq_i[39] = pwm0_irq_2;
  assign clic_irq_i[40] = pwm0_irq_3;
  assign clic_irq_i[41] = pwm1_irq_0;
  assign clic_irq_i[42] = pwm1_irq_1;
  assign clic_irq_i[43] = pwm1_irq_2;
  assign clic_irq_i[44] = pwm1_irq_3;
  assign clic_irq_i[45] = pwm2_irq_0;
  assign clic_irq_i[46] = pwm2_irq_1;
  assign clic_irq_i[47] = pwm2_irq_2;
  assign clic_irq_i[48] = pwm2_irq_3;
  assign clic_irq_i[49] = i2c_mst_irq;

`endif
  endmodule

