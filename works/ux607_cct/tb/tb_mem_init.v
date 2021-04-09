
`include "ux607_defines.v"
`include "tb_defines.v"
`include "ux607_subsys_defines.v"

module tb_mem_init(
  input tb_clk
);

  //****************************************************************************************************
  // Read the test verilog file and initialize the ILM

  localparam ILM_RAM_DP = `UX607_ILM_RAM_DP;
  `ifdef UX607_CFG_HAS_ICACHE
  localparam SYS_RAM_DP = `UX607_SYS_MEM_DP;
  `else
  `ifdef UX607_CFG_HAS_DCACHE
  localparam SYS_RAM_DP = `UX607_SYS_MEM_DP;
  `endif
  `endif

  integer i;
  reg [7:0] ilm_mem [0:(ILM_RAM_DP*`UX607_ILM_WMSK_WIDTH)-1];
  reg [6:0] ilm_mem_ecc_code[0:ILM_RAM_DP-1];

  reg[8*300:1] testcase;

  initial begin //{
      $display("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");  
      if($value$plusargs("TESTCASE=%s",testcase))begin
        $display("TESTCASE=%s",testcase);
      end


    $readmemh({testcase, ".verilog"}, ilm_mem);
`ifdef UX607_ILM_DATA_WIDTH_IS_32
    for (i=0;i<(ILM_RAM_DP);i=i+1) begin
        `ILM_MEM[i][00+7:00] = ilm_mem[i*4+0];
        `ILM_MEM[i][08+7:08] = ilm_mem[i*4+1];
        `ILM_MEM[i][16+7:16] = ilm_mem[i*4+2];
        `ILM_MEM[i][24+7:24] = ilm_mem[i*4+3];
        `ifdef UX607_HAS_ECC//{
        `ILM_MEM[i][38:32] = ecc_code_32gen(`ILM_MEM[i][31:0]);
        `ILM_MEM[i][39] = 1'b0;
        `endif//}
    end


    for (i=0;i<(ILM_RAM_DP);i=i+1) begin
        `DLM_MEM[i][00+7:00] = 8'b0;
        `DLM_MEM[i][08+7:08] = 8'b0;
        `DLM_MEM[i][16+7:16] = 8'b0;
        `DLM_MEM[i][24+7:24] = 8'b0;
        `ifdef UX607_HAS_ECC//{
        `DLM_MEM[i][38:32] = ecc_code_32gen(`DLM_MEM[i][31:0]);
        `DLM_MEM[i][39] = 1'b0;
        `endif//}
    end
`endif

`ifdef UX607_ILM_DATA_WIDTH_IS_64
    for (i=0;i<(ILM_RAM_DP);i=i+1) begin
        `ILM_MEM[i][00+7:00] = ilm_mem[i*8+0];
        `ILM_MEM[i][08+7:08] = ilm_mem[i*8+1];
        `ILM_MEM[i][16+7:16] = ilm_mem[i*8+2];
        `ILM_MEM[i][24+7:24] = ilm_mem[i*8+3];
        `ILM_MEM[i][32+7:32] = ilm_mem[i*8+4];
        `ILM_MEM[i][40+7:40] = ilm_mem[i*8+5];
        `ILM_MEM[i][48+7:48] = ilm_mem[i*8+6];
        `ILM_MEM[i][56+7:56] = ilm_mem[i*8+7];
    end


    for (i=0;i<(ILM_RAM_DP);i=i+1) begin
        `DLM_MEM0[i][00+7:00] = 8'b0;
        `DLM_MEM0[i][08+7:08] = 8'b0;
        `DLM_MEM0[i][16+7:16] = 8'b0;
        `DLM_MEM0[i][24+7:24] = 8'b0;
        `DLM_MEM1[i][00+7:00] = 8'b0;
        `DLM_MEM1[i][08+7:08] = 8'b0;
        `DLM_MEM1[i][16+7:16] = 8'b0;
        `DLM_MEM1[i][24+7:24] = 8'b0;
    end
`endif

    $display("ILM 0x00: %h", `ILM_MEM[8'h00]);
    $display("ILM 0x01: %h", `ILM_MEM[8'h01]);
    $display("ILM 0x02: %h", `ILM_MEM[8'h02]);
    $display("ILM 0x03: %h", `ILM_MEM[8'h03]);
    $display("ILM 0x04: %h", `ILM_MEM[8'h04]);
    $display("ILM 0x05: %h", `ILM_MEM[8'h05]);
    $display("ILM 0x06: %h", `ILM_MEM[8'h06]);
    $display("ILM 0x07: %h", `ILM_MEM[8'h07]);
    $display("ILM 0x16: %h", `ILM_MEM[8'h16]);
    $display("ILM 0x20: %h", `ILM_MEM[8'h20]);

`ifdef UX607_CFG_HAS_ICACHE
  `ifdef UX607_SYS_MEM_DW_IS_32
    for (i=0;i<(ILM_RAM_DP);i=i+1) begin
        `SYS_MEM[i][00+7:00] = ilm_mem[i*4+0];
        `SYS_MEM[i][08+7:08] = ilm_mem[i*4+1];
        `SYS_MEM[i][16+7:16] = ilm_mem[i*4+2];
        `SYS_MEM[i][24+7:24] = ilm_mem[i*4+3];
    end
    for (i=ILM_RAM_DP;i<SYS_RAM_DP;i=i+1) begin
        `SYS_MEM[i][00+7:00] = 0;
        `SYS_MEM[i][08+7:08] = 0;
        `SYS_MEM[i][16+7:16] = 0;
        `SYS_MEM[i][24+7:24] = 0;
    end
  `endif
  `ifdef UX607_SYS_MEM_DW_IS_64
    for (i=0;i<(ILM_RAM_DP);i=i+1) begin
        `SYS_MEM[i][00+7:00] = ilm_mem[i*8+0];
        `SYS_MEM[i][08+7:08] = ilm_mem[i*8+1];
        `SYS_MEM[i][16+7:16] = ilm_mem[i*8+2];
        `SYS_MEM[i][24+7:24] = ilm_mem[i*8+3];
        `SYS_MEM[i][32+7:32] = ilm_mem[i*8+4];
        `SYS_MEM[i][40+7:40] = ilm_mem[i*8+5];
        `SYS_MEM[i][48+7:48] = ilm_mem[i*8+6];
        `SYS_MEM[i][56+7:56] = ilm_mem[i*8+7];
    end
    for (i=ILM_RAM_DP;i<SYS_RAM_DP;i=i+1) begin
        `SYS_MEM[i][00+7:00] = 8'b0;
        `SYS_MEM[i][08+7:08] = 8'b0;
        `SYS_MEM[i][16+7:16] = 8'b0;
        `SYS_MEM[i][24+7:24] = 8'b0;
        `SYS_MEM[i][32+7:32] = 8'b0;
        `SYS_MEM[i][40+7:40] = 8'b0;
        `SYS_MEM[i][48+7:48] = 8'b0;
        `SYS_MEM[i][56+7:56] = 8'b0;
    end
    `endif
  
    $display("SYS_MEM 0x00: %h", `SYS_MEM[8'h00]);
    $display("SYS_MEM 0x01: %h", `SYS_MEM[8'h01]);
    $display("SYS_MEM 0x02: %h", `SYS_MEM[8'h02]);
    $display("SYS_MEM 0x03: %h", `SYS_MEM[8'h03]);
    $display("SYS_MEM 0x04: %h", `SYS_MEM[8'h04]);
    $display("SYS_MEM 0x05: %h", `SYS_MEM[8'h05]);
    $display("SYS_MEM 0x06: %h", `SYS_MEM[8'h06]);
    $display("SYS_MEM 0x07: %h", `SYS_MEM[8'h07]);
    $display("SYS_MEM 0x16: %h", `SYS_MEM[8'h16]);
    $display("SYS_MEM 0x20: %h", `SYS_MEM[8'h20]);
  `endif

    

  end //}
  
  // when reset happens, intialize ILM again
  always @(negedge (`CPU_CORE_TOP.core_reset_n | `CPU_CORE_TOP.por_reset_n)) begin

    $readmemh({testcase, ".verilog"}, ilm_mem);

`ifdef UX607_ILM_DATA_WIDTH_IS_32
    for (i=0;i<(ILM_RAM_DP);i=i+1) begin
        `ILM_MEM[i][00+7:00] = ilm_mem[i*4+0];
        `ILM_MEM[i][08+7:08] = ilm_mem[i*4+1];
        `ILM_MEM[i][16+7:16] = ilm_mem[i*4+2];
        `ILM_MEM[i][24+7:24] = ilm_mem[i*4+3];
        `ifdef UX607_HAS_ECC//{
        `ILM_MEM[i][38:32] = ecc_code_32gen(`ILM_MEM[i][31:0]);
        `ILM_MEM[i][39] = 1'b0;
        `endif//}
    end
`endif
`ifdef UX607_ILM_DATA_WIDTH_IS_64
    for (i=0;i<(ILM_RAM_DP);i=i+1) begin
        `ILM_MEM[i][00+7:00] = ilm_mem[i*8+0];
        `ILM_MEM[i][08+7:08] = ilm_mem[i*8+1];
        `ILM_MEM[i][16+7:16] = ilm_mem[i*8+2];
        `ILM_MEM[i][24+7:24] = ilm_mem[i*8+3];
        `ILM_MEM[i][32+7:32] = ilm_mem[i*8+4];
        `ILM_MEM[i][40+7:40] = ilm_mem[i*8+5];
        `ILM_MEM[i][48+7:48] = ilm_mem[i*8+6];
        `ILM_MEM[i][56+7:56] = ilm_mem[i*8+7];
    end
`endif
  end

    function [6:0] ecc_code_32gen(input[31:0]i_dat);
        begin
        ecc_code_32gen[0] = 
            i_dat[ 0] ^ i_dat[ 1] ^ i_dat[ 3] ^ i_dat[ 4] ^ i_dat[ 6] ^ i_dat[ 8] ^ i_dat[10] ^ i_dat[11] ^
            i_dat[13] ^ i_dat[15] ^ i_dat[17] ^ i_dat[19] ^ i_dat[21] ^ i_dat[23] ^ i_dat[25] ^ i_dat[26] ^
            i_dat[28] ^ i_dat[30];  
         
        ecc_code_32gen[1] =
            i_dat[ 0] ^ i_dat[ 2] ^ i_dat[ 3] ^ i_dat[ 5] ^ i_dat[ 6] ^ i_dat[ 9] ^ i_dat[10] ^ i_dat[12] ^
            i_dat[13] ^ i_dat[16] ^ i_dat[17] ^ i_dat[20] ^ i_dat[21] ^ i_dat[24] ^ i_dat[25] ^ i_dat[27] ^
            i_dat[28] ^ i_dat[31];

        ecc_code_32gen[2] =
            i_dat[ 1] ^ i_dat[ 2] ^ i_dat[ 3] ^ i_dat[ 7] ^ i_dat[ 8] ^ i_dat[ 9] ^ i_dat[10] ^ i_dat[14] ^
            i_dat[15] ^ i_dat[16] ^ i_dat[17] ^ i_dat[22] ^ i_dat[23] ^ i_dat[24] ^ i_dat[25] ^ i_dat[29] ^
            i_dat[30] ^ i_dat[31];

        ecc_code_32gen[3] =
            i_dat[ 4] ^ i_dat[ 5] ^ i_dat[ 6] ^ i_dat[ 7] ^ i_dat[ 8] ^ i_dat[ 9] ^ i_dat[10] ^ i_dat[18] ^
            i_dat[19] ^ i_dat[20] ^ i_dat[21] ^ i_dat[22] ^ i_dat[23] ^ i_dat[24] ^ i_dat[25]; 

        ecc_code_32gen[4] =
            i_dat[11] ^ i_dat[12] ^ i_dat[13] ^ i_dat[14] ^ i_dat[15] ^ i_dat[16] ^ i_dat[17] ^ i_dat[18] ^
            i_dat[19] ^ i_dat[20] ^ i_dat[21] ^ i_dat[22] ^ i_dat[23] ^ i_dat[24] ^ i_dat[25];

        ecc_code_32gen[5] = 
            i_dat[26] ^ i_dat[27] ^ i_dat[28] ^ i_dat[29] ^ i_dat[30] ^ i_dat[31];

        ecc_code_32gen[6] =
            i_dat[ 0] ^ i_dat[ 1] ^ i_dat[ 2] ^ i_dat[ 3] ^ i_dat[ 4] ^ i_dat[ 5] ^ i_dat[ 6] ^ i_dat[ 7] ^ 
            i_dat[ 8] ^ i_dat[ 9] ^ i_dat[10] ^ i_dat[11] ^ i_dat[12] ^ i_dat[13] ^ i_dat[14] ^ i_dat[15] ^ 
            i_dat[16] ^ i_dat[17] ^ i_dat[18] ^ i_dat[19] ^ i_dat[20] ^ i_dat[21] ^ i_dat[22] ^ i_dat[23] ^ 
            i_dat[24] ^ i_dat[25] ^ i_dat[26] ^ i_dat[27] ^ i_dat[28] ^ i_dat[29] ^ i_dat[30] ^ i_dat[31] ^ 
            ecc_code_32gen[0] ^ ecc_code_32gen[1] ^ ecc_code_32gen[2] ^ ecc_code_32gen[3] ^ ecc_code_32gen[4] ^ ecc_code_32gen[5];
        end
    endfunction

endmodule
