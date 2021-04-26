
   //****************************************************************************************************
  // HACK-HERE:
  //  If you integrate the UX607 core into your SoC, you can hack here to change the path to your SoC path
  `define CPU_SOC_TOP  tb_top.u_ux607_soc_top
  `define CPU_CORE_TOP `CPU_SOC_TOP.u_ux607_subsys_top.u_ux607_subsys_main.u_ux607_core
  `define CPU_CORE `CPU_CORE_TOP.u_ux607_ucore
  `define TMR_TOP `CPU_CORE_TOP.u_ux607_tmr_top
  `define TMR_MAIN `TMR_TOP.u_ux607_tmr_main
  `define CLIC_TOP `CPU_CORE_TOP.u_ux607_clic_top
  `define LSU `CPU_CORE.u_ux607_lsu
  `define EXU `CPU_CORE.u_ux607_exu
  `define EXU_EXCP `EXU.u_ux607_exu_commit.u_ux607_exu_excp
  `define REGFILE  `EXU.u_ux607_exu_regfile
  `define IFU `CPU_CORE.u_ux607_ifu
  `define IFU_ICBCTRL `IFU.u_ux607_ifu_icbctrl
  `define BIU `CPU_CORE.u_ux607_biu
  `define ICACHE `IFU.u_ux607_icache
  `define CMT   `EXU.u_ux607_exu_commit
  `define EXCP  `CMT.u_ux607_exu_excp
  `define DBG   `CPU_CORE_TOP.u_ux607_dbg_top
  `define DBG_CSR `CPU_CORE_TOP.u_ux607_dbg_top.u_ux607_dbg_csr
`ifndef UX607_HAS_DEBUG_NEW//{
  `define DBG_DM `CPU_CORE_TOP.u_ux607_dbg_top.u_ux607_debug_subsystem.ux607_dm
`endif//UX607_HAS_DEBUG_NEW}
`ifdef UX607_HAS_DEBUG_NEW//{
  `define DBG_DM `CPU_CORE_TOP.u_ux607_dbg_top.u_ux607_dbg.ux607_dm
`endif//UX607_HAS_DEBUG_NEW}
  `define CSR   `EXU.u_ux607_exu_csr
  `define DECODE   `EXU.u_ux607_exu_decode
  `define SUB_TOP `CPU_SOC_TOP.u_ux607_subsys_top
  `define SUB_MAIN `SUB_TOP.u_ux607_subsys_main
  `define SUB_LM `SUB_MAIN.u_ux607_subsys_lm
  `ifdef UX607_HAS_ILM
  `define ILM_CTRL `CPU_CORE_TOP.u_ux607_ilm_ctrl
  `define ILM_SRAM `SUB_LM.u_ux607_ilm_ram.u_ux607_ilm_gnrl_ram.u_ux607_sim_ram
    `ifdef UX607_HAS_ECC
     `define ILM_ICB_ECC_CTRL `ILM_CTRL.u_ilm_icb_ecc_ctrl
    `endif
  `endif
  `ifdef UX607_HAS_DLM
  `define DLM_CTRL `CPU_CORE_TOP.u_ux607_dlm_ctrl
  `define DLM_SRAM `SUB_LM.u_ux607_dlm_ram.u_ux607_dlm_gnrl_ram.u_ux607_sim_ram
    `ifdef UX607_HAS_ECC
     `define DLM_ICB_ECC_CTRL `DLM_CTRL.u_dlm_icb_ecc_ctrl
    `endif
  `endif
  `define DLM_CTRL `CPU_CORE_TOP.u_ux607_dlm_ctrl
  `define LSUAGU `EXU.u_ux607_exu_alu.u_ux607_exu_alu_lsuagu
 
  //SELF_DEFINE FOR PERIPH
  `define SOC_PERIPS_TOP  	`SUB_MAIN.u_ux607_subsys_perips
  `define SOC_GPIO_TOP  	`SOC_PERIPS_TOP.u_ux607_gpio_top
  `define SOC_UART0_TOP		`SOC_PERIPS_TOP.u_ux607_uart0_top
  
  
  
  // HACK-HERE:

  //  If you integrate the UX607 core into your SoC, you can hack here to change the path to your ILM and DLM path, this path is used to initialize the ILM to run the tests
  `define ILM_MEM  `SUB_TOP.u_ux607_subsys_main.u_ux607_subsys_lm.u_ux607_ilm_ram.u_ux607_ilm_gnrl_ram.u_ux607_sim_ram.mem_r
  `define DLM_MEM  `SUB_TOP.u_ux607_subsys_main.u_ux607_subsys_lm.u_ux607_dlm_ram.u_ux607_dlm_gnrl_ram.u_ux607_sim_ram.mem_r
  `define DLM_MEM0  `SUB_TOP.u_ux607_subsys_main.u_ux607_subsys_lm.u_ux607_dlm_ram0.u_ux607_dlm_gnrl_ram.u_ux607_sim_ram.mem_r
  `define DLM_MEM1  `SUB_TOP.u_ux607_subsys_main.u_ux607_subsys_lm.u_ux607_dlm_ram1.u_ux607_dlm_gnrl_ram.u_ux607_sim_ram.mem_r
  `define SYS_MEM   `SUB_TOP.u_ux607_subsys_main.u_ux607_subsys_mems.u_sysmem_top.u_ux607_ilm_gnrl_ram.u_ux607_sim_ram.mem_r
  //
  //****************************************************************************************************
  
  `define TB_IRQ_SWITCH(tb_irq)                                                \
  initial                                                                      \
     begin                                                                     \
     #100                                                                      \
     @(chk_1st_setmtvec)                                                       \
     forever begin                                                             \
       repeat ($urandom_range(200, 300)) @(negedge tb_clk) tb_irq = 1'b1;        \
       repeat ($urandom_range(5000, 20000)) @(negedge tb_clk) tb_irq = 1'b0;     \
       if(stop_assert_irq) begin                                               \
          break;                                                               \
       end                                                                     \
     end                                                                       \
   end                                                                         \



  `define TB_IRQ_SWITCHS(tb_irq,chk_x_irq_mret)                                \
  initial begin                                                                \
     #100                                                                      \
     tb_irq = 1'b0;                                                            \
     @(chk_1st_setmtvec)                                                       \
     forever begin                                                             \
     //repeat ($urandom_range(50, 300)) @(posedge tb_clk) tb_irq = 1'b0;       \
     //repeat ($urandom_range(50, 300)) @(posedge tb_clk) tb_irq = 1'b1;       \
     repeat ($urandom_range(20000, 40000)) @(negedge tb_clk) tb_irq = 1'b0;       \
     repeat ($urandom_range(5, 10)) @(negedge tb_clk) tb_irq = 1'b1;       \
       @(chk_x_irq_mret)                                                       \
       tb_irq = 1'b0;                                                          \
       if(stop_assert_irq) begin                                               \
         break;                                                                \
       end                                                                     \
     end                                                                       \
  end                                                                          \

  `define TB_CLIC_IRQ_TRIGGER(tb_irq,chk_x_irq_mret)                                \
  initial begin                                                                \
     #100                                                                      \
     tb_irq = 1'b0;                                                            \
     @(chk_1st_setmtvec)                                                       \
     repeat ($urandom_range(20000, 40000)) @(negedge tb_clk);       \
     repeat(10) begin                                                            \
     repeat ($urandom_range(200, 400)) @(negedge tb_clk) tb_irq = 1'b0;       \
     repeat ($urandom_range(50, 100)) @(negedge tb_clk) tb_irq = 1'b1;       \
       wait(chk_x_irq_mret|stop_assert_irq)                                                       \
       tb_irq = 1'b0;                                                          \
    end                                                                         \
  end                                                                          \

  `define RANDOM_ENA(random_reg)                                               \
  initial begin                                                                \
     #100                                                                      \
     @(chk_1st_setmtvec);                                                      \
     forever begin                                                             \
       repeat ($urandom_range(1000, 20000)) @(negedge tb_clk) random_reg = 1'b0;   \
       repeat ($urandom_range(10, 100)) @(negedge tb_clk) random_reg = 1'b1;   \
     end                                                                       \
  end                                                                          \

  `define FORCE_SB_ECC(force_sb, inject_ena, i, sb_dat_pos, sb_ecc_pos, sb_err_type, tb_clk)                \
  initial begin                                                                \
      #100                                                                     \
      forever begin                                                            \
        wait(inject_ena) begin                                                 \
          if(((sb_ecc_pos==i) & (sb_err_type==0)) |                            \
             ((sb_dat_pos==i) & (sb_err_type==1))) begin                                                  \
          if(force_sb)   force force_sb = 1'b0;                                \
          else           force force_sb = 1'b1;                                \
          @(posedge tb_clk) release force_sb;                                  \
          end                                                                  \
          else @(posedge tb_clk);                                              \
        end                                                                    \
      end                                                                      \
  end                                                                          \

  `define FORCE_CLT(force_irq,unforce,reforce)                                 \
  initial begin                                                                \
    force_irq = 1'b1;                                                          \
    #100                                                                       \
    forever begin                                                              \
    @(unforce)                                                                 \
      force_irq = 1'b0;                                                        \
    @(reforce)                                                                 \
      force_irq = 1'b1;                                                        \
    end                                                                        \
  end                                                                          \

  `define RELEASE_CLT(force_i,force_o,force_en,release_en)                     \
  initial begin                                                                \
	fork                                                                       \
		forever begin                                                          \
			@(force_en)                                                        \
			force force_o = force_i;                                           \
		end                                                                    \
		forever begin                                                          \
			@(release_en)                                                      \
			release force_o;                                                   \
		end                                                                    \
	join                                                                       \
  end                                                                          \

  `define QUICK_RELEASE_CLT(release_o, release_en)                             \
  initial begin                                                                \
	forever begin                                                              \
		@(release_en)                                                          \
		#1;                                                                    \
		force release_o = 0;                                                   \
		#1 release release_o;                                                  \
	end                                                                        \
  end                                                                          \

  `define QUICK_RELEASE_CLT1(release_o, release_en, tb_clk)                    \
  initial begin                                                                \
	forever begin                                                              \
		@(release_en)                                                          \
		#2                                                                     \
		@(posedge tb_clk)                                                      \
		#2                                                                     \
		force release_o = 0;                                                   \
		#1 release release_o;                                                  \
	end                                                                        \
  end                                                                          \

  `define RANDOM_PIN(random_reg)                                               \
  initial begin                                                                \
     random_reg = 1'b0;                                                        \
     #100                                                                      \
     forever begin                                                             \
       repeat ($urandom_range(50000,100000)) @(negedge hfclk) random_reg = 1'b0;   \
       repeat ($urandom_range(1000, 20000)) @(negedge hfclk) random_reg = 1'b1;   \
     end                                                                       \
  end                                                                          \


 `define RANDOM_ALL(random_reg)                                                \
  initial begin                                                                \
     #100                                                                      \
     forever begin                                                             \
       repeat ($urandom_range(100, 10000)) @(negedge hfclk) random_reg = 1'b0;    \
       repeat ($urandom_range(10, 100)) @(negedge hfclk) random_reg = 1'b1;    \
     end                                                                       \
  end                                                                          \


  `define TB_IRQ_SWITCHP(tb_irq)                                               \
  initial                                                                      \
     begin                                                                     \
     #100                                                                      \
     @(chk_1st_setmtvec)                                                       \
     forever begin                                                             \
       repeat ($urandom_range(1000, 2000)) @(negedge tb_clk) tb_irq = 1'b0;       \
       repeat ($urandom_range(1, 1)) @(negedge tb_clk) tb_irq = 1'b1;          \
       if(stop_assert_irq) begin                                               \
          break;                                                               \
       end                                                                     \
     end                                                                       \
   end                                                                         \

  `define TB_NMI_SWITCHP(tb_nmi)                                               \
  initial                                                                      \
     begin                                                                     \
     #100                                                                      \
     @(chk_1st_setmtvec)                                                       \
     forever begin                                                             \
       repeat ($urandom_range(20000, 40000)) @(negedge tb_clk) tb_nmi = 1'b0;  \
       repeat ($urandom_range(1, 1)) @(negedge tb_clk) tb_nmi = 1'b1;          \
       if(stop_assert_irq) begin                                               \
          break;                                                               \
       end                                                                     \
     end                                                                       \
   end                                                                         \
