module baudGen(
  input         clock,
  input         reset,
  input         io_clk_en,
  input  [15:0] io_div,
  output        io_tx_data_sample,
  output        io_rx_data_sample
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
`endif // RANDOMIZE_REG_INIT
  reg  sample_clk_reg; // @[Axi4Lite_uart.scala 87:31]
  reg  baud_clk_reg; // @[Axi4Lite_uart.scala 88:29]
  reg [15:0] value; // @[Counter.scala 60:40]
  wire  _T = io_clk_en & sample_clk_reg; // @[Axi4Lite_uart.scala 98:15]
  wire  _T_1 = ~io_clk_en; // @[Axi4Lite_uart.scala 99:5]
  reg [3:0] baudCntValue; // @[Counter.scala 60:40]
  wire  wrap_wrap = baudCntValue == 4'hf; // @[Counter.scala 72:24]
  wire [3:0] _wrap_value_T_1 = baudCntValue + 4'h1; // @[Counter.scala 76:24]
  wire  _GEN_1 = _T & wrap_wrap; // @[Counter.scala 137:24 Counter.scala 138:12]
  wire  baudCntWrap = _T_1 ? 1'h0 : _GEN_1; // @[Counter.scala 135:17]
  wire  _T_2 = value == io_div; // @[Axi4Lite_uart.scala 101:52]
  wire  _T_3 = io_clk_en & _T_2; // @[Axi4Lite_uart.scala 109:18]
  wire  wrap = value == 16'hfffe; // @[Counter.scala 72:24]
  wire [15:0] _value_T_1 = value + 16'h1; // @[Counter.scala 76:24]
  wire  _T_5 = _T & baudCntWrap; // @[Axi4Lite_uart.scala 119:36]
  assign io_tx_data_sample = baud_clk_reg; // @[Axi4Lite_uart.scala 105:21]
  assign io_rx_data_sample = sample_clk_reg; // @[Axi4Lite_uart.scala 104:21]
  always @(posedge clock) begin
    if (reset) begin // @[Axi4Lite_uart.scala 87:31]
      sample_clk_reg <= 1'h0; // @[Axi4Lite_uart.scala 87:31]
    end else begin
      sample_clk_reg <= _T_3;
    end
    if (reset) begin // @[Axi4Lite_uart.scala 88:29]
      baud_clk_reg <= 1'h0; // @[Axi4Lite_uart.scala 88:29]
    end else begin
      baud_clk_reg <= _T_5;
    end
    if (reset) begin // @[Counter.scala 60:40]
      value <= 16'h0; // @[Counter.scala 60:40]
    end else if (io_clk_en & _T_2) begin // @[Axi4Lite_uart.scala 109:42]
      value <= 16'h0; // @[Counter.scala 97:11]
    end else if (wrap) begin // @[Counter.scala 86:20]
      value <= 16'h0; // @[Counter.scala 86:28]
    end else begin
      value <= _value_T_1; // @[Counter.scala 76:15]
    end
    if (reset) begin // @[Counter.scala 60:40]
      baudCntValue <= 4'h0; // @[Counter.scala 60:40]
    end else if (_T_1) begin // @[Counter.scala 135:17]
      baudCntValue <= 4'h0; // @[Counter.scala 97:11]
    end else if (_T) begin // @[Counter.scala 137:24]
      baudCntValue <= _wrap_value_T_1; // @[Counter.scala 76:15]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  sample_clk_reg = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  baud_clk_reg = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  value = _RAND_2[15:0];
  _RAND_3 = {1{`RANDOM}};
  baudCntValue = _RAND_3[3:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module uartTx(
  input        clock,
  input        reset,
  input        io_tx_data_sample,
  input        io_parity_en,
  input        io_parity_even,
  input        io_tx_start,
  input  [7:0] io_data_reg_tx,
  output       io_tx_busy,
  output       io_txd
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
`endif // RANDOMIZE_REG_INIT
  reg [1:0] tx_state; // @[Axi4Lite_uart.scala 140:25]
  reg  tx_busy_reg; // @[Axi4Lite_uart.scala 143:28]
  wire  _T = tx_state == 2'h3; // @[Axi4Lite_uart.scala 142:43]
  wire  _GEN_0 = _T & io_tx_data_sample ? 1'h0 : tx_busy_reg; // @[Axi4Lite_uart.scala 146:53 Axi4Lite_uart.scala 146:67 Axi4Lite_uart.scala 143:28]
  wire  _GEN_1 = io_tx_start | _GEN_0; // @[Axi4Lite_uart.scala 145:21 Axi4Lite_uart.scala 145:35]
  wire  _T_2 = tx_state == 2'h2; // @[Axi4Lite_uart.scala 142:43]
  wire  _T_3 = io_tx_data_sample & _T_2; // @[Axi4Lite_uart.scala 150:27]
  wire  _T_5 = io_tx_data_sample & _T; // @[Axi4Lite_uart.scala 151:27]
  reg [3:0] txCntValue; // @[Counter.scala 60:40]
  wire  wrap_wrap = txCntValue == 4'h8; // @[Counter.scala 72:24]
  wire [3:0] _wrap_value_T_1 = txCntValue + 4'h1; // @[Counter.scala 76:24]
  wire  hasEvenParity = io_parity_en & io_parity_even; // @[Axi4Lite_uart.scala 155:36]
  wire  hasOddParity = io_parity_en & ~io_parity_even; // @[Axi4Lite_uart.scala 156:35]
  wire  _T_6 = 2'h0 == tx_state; // @[Conditional.scala 37:30]
  wire  _T_7 = 2'h1 == tx_state; // @[Conditional.scala 37:30]
  wire  _T_8 = 2'h2 == tx_state; // @[Conditional.scala 37:30]
  wire  _T_9 = txCntValue == 4'h7; // @[Axi4Lite_uart.scala 152:42]
  wire [1:0] _GEN_8 = _T_9 & ~io_parity_en | wrap_wrap ? 2'h3 : tx_state; // @[Axi4Lite_uart.scala 168:59 Axi4Lite_uart.scala 168:70 Axi4Lite_uart.scala 140:25]
  wire  _T_14 = 2'h3 == tx_state; // @[Conditional.scala 37:30]
  wire [1:0] _GEN_9 = _T_14 ? 2'h0 : tx_state; // @[Conditional.scala 39:67 Axi4Lite_uart.scala 171:18 Axi4Lite_uart.scala 140:25]
  wire [1:0] _GEN_10 = _T_8 ? _GEN_8 : _GEN_9; // @[Conditional.scala 39:67]
  reg [7:0] txd_data; // @[Axi4Lite_uart.scala 177:25]
  reg  even_parity; // @[Axi4Lite_uart.scala 178:28]
  wire [7:0] _txd_data_T = {{1'd0}, txd_data[7:1]}; // @[Axi4Lite_uart.scala 191:32]
  wire [7:0] _GEN_14 = ~txCntValue[3] ? _txd_data_T : txd_data; // @[Axi4Lite_uart.scala 190:30 Axi4Lite_uart.scala 191:20 Axi4Lite_uart.scala 177:25]
  wire  _GEN_15 = ~txCntValue[3] ? even_parity ^ txd_data[0] : even_parity; // @[Axi4Lite_uart.scala 190:30 Axi4Lite_uart.scala 192:23 Axi4Lite_uart.scala 178:28]
  wire [7:0] _GEN_16 = _T_8 ? _GEN_14 : txd_data; // @[Conditional.scala 39:67 Axi4Lite_uart.scala 177:25]
  wire  _GEN_17 = _T_8 ? _GEN_15 : even_parity; // @[Conditional.scala 39:67 Axi4Lite_uart.scala 178:28]
  wire  _GEN_24 = wrap_wrap & hasOddParity ? ~even_parity : txd_data[0]; // @[Axi4Lite_uart.scala 210:47 Axi4Lite_uart.scala 211:22 Axi4Lite_uart.scala 213:22]
  wire  _GEN_25 = wrap_wrap & hasEvenParity ? even_parity : _GEN_24; // @[Axi4Lite_uart.scala 208:41 Axi4Lite_uart.scala 209:22]
  wire  _GEN_27 = _T_8 ? _GEN_25 : 1'h1; // @[Conditional.scala 39:67]
  wire  _GEN_28 = _T_7 ? 1'h0 : _GEN_27; // @[Conditional.scala 39:67 Axi4Lite_uart.scala 205:20]
  assign io_tx_busy = tx_busy_reg; // @[Axi4Lite_uart.scala 223:14]
  assign io_txd = _T_6 | _GEN_28; // @[Conditional.scala 40:58 Axi4Lite_uart.scala 202:20]
  always @(posedge clock) begin
    if (reset) begin // @[Axi4Lite_uart.scala 140:25]
      tx_state <= 2'h0; // @[Axi4Lite_uart.scala 140:25]
    end else if (io_tx_data_sample) begin // @[Axi4Lite_uart.scala 159:27]
      if (_T_6) begin // @[Conditional.scala 40:58]
        if (tx_busy_reg) begin // @[Axi4Lite_uart.scala 162:27]
          tx_state <= 2'h1; // @[Axi4Lite_uart.scala 162:38]
        end
      end else if (_T_7) begin // @[Conditional.scala 39:67]
        tx_state <= 2'h2; // @[Axi4Lite_uart.scala 165:18]
      end else begin
        tx_state <= _GEN_10;
      end
    end
    if (reset) begin // @[Axi4Lite_uart.scala 143:28]
      tx_busy_reg <= 1'h0; // @[Axi4Lite_uart.scala 143:28]
    end else begin
      tx_busy_reg <= _GEN_1;
    end
    if (reset) begin // @[Counter.scala 60:40]
      txCntValue <= 4'h0; // @[Counter.scala 60:40]
    end else if (_T_5) begin // @[Counter.scala 135:17]
      txCntValue <= 4'h0; // @[Counter.scala 97:11]
    end else if (_T_3) begin // @[Counter.scala 137:24]
      if (wrap_wrap) begin // @[Counter.scala 86:20]
        txCntValue <= 4'h0; // @[Counter.scala 86:28]
      end else begin
        txCntValue <= _wrap_value_T_1; // @[Counter.scala 76:15]
      end
    end
    if (reset) begin // @[Axi4Lite_uart.scala 177:25]
      txd_data <= 8'hff; // @[Axi4Lite_uart.scala 177:25]
    end else if (io_tx_data_sample) begin // @[Axi4Lite_uart.scala 180:26]
      if (!(_T_6)) begin // @[Conditional.scala 40:58]
        if (_T_7) begin // @[Conditional.scala 39:67]
          txd_data <= io_data_reg_tx; // @[Axi4Lite_uart.scala 186:18]
        end else begin
          txd_data <= _GEN_16;
        end
      end
    end
    if (reset) begin // @[Axi4Lite_uart.scala 178:28]
      even_parity <= 1'h0; // @[Axi4Lite_uart.scala 178:28]
    end else if (io_tx_data_sample) begin // @[Axi4Lite_uart.scala 180:26]
      if (_T_6) begin // @[Conditional.scala 40:58]
        even_parity <= 1'h0; // @[Axi4Lite_uart.scala 183:21]
      end else if (!(_T_7)) begin // @[Conditional.scala 39:67]
        even_parity <= _GEN_17;
      end
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  tx_state = _RAND_0[1:0];
  _RAND_1 = {1{`RANDOM}};
  tx_busy_reg = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  txCntValue = _RAND_2[3:0];
  _RAND_3 = {1{`RANDOM}};
  txd_data = _RAND_3[7:0];
  _RAND_4 = {1{`RANDOM}};
  even_parity = _RAND_4[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module uartRx(
  input        clock,
  input        reset,
  input        io_rx_data_sample,
  input        io_parity_en,
  input        io_parity_even,
  input        io_rxd,
  output       io_rx_busy,
  output       io_parity_error,
  output [7:0] io_data_reg_rx
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
`endif // RANDOMIZE_REG_INIT
  reg [1:0] rx_state; // @[Axi4Lite_uart.scala 240:25]
  wire  _T = rx_state == 2'h0; // @[Axi4Lite_uart.scala 241:43]
  wire  _T_2 = rx_state == 2'h2; // @[Axi4Lite_uart.scala 241:43]
  wire  _T_6 = io_rx_data_sample & (_T & io_rxd | _T_2 & ~io_rxd); // @[Axi4Lite_uart.scala 246:23]
  reg [3:0] sampleCntValue; // @[Counter.scala 60:40]
  wire  wrap_wrap = sampleCntValue == 4'hf; // @[Counter.scala 72:24]
  wire [3:0] _wrap_value_T_1 = sampleCntValue + 4'h1; // @[Counter.scala 76:24]
  wire  _T_7 = rx_state == 2'h1; // @[Axi4Lite_uart.scala 241:43]
  wire  _T_10 = io_rx_data_sample & _T_7 & wrap_wrap; // @[Axi4Lite_uart.scala 249:85]
  wire  _T_12 = io_rx_data_sample & _T; // @[Axi4Lite_uart.scala 249:123]
  reg [3:0] rxCntValue; // @[Counter.scala 60:40]
  wire  wrap_wrap_1 = rxCntValue == 4'h8; // @[Counter.scala 72:24]
  wire [3:0] _wrap_value_T_3 = rxCntValue + 4'h1; // @[Counter.scala 76:24]
  wire  _T_13 = 2'h0 == rx_state; // @[Conditional.scala 37:30]
  wire  _T_15 = 2'h1 == rx_state; // @[Conditional.scala 37:30]
  wire  _T_17 = rxCntValue == 4'h7; // @[Axi4Lite_uart.scala 250:41]
  wire [1:0] _GEN_10 = wrap_wrap & (_T_17 & ~io_parity_en | wrap_wrap_1) ? 2'h2 : rx_state; // @[Axi4Lite_uart.scala 259:80 Axi4Lite_uart.scala 259:90 Axi4Lite_uart.scala 240:25]
  wire  _T_23 = 2'h2 == rx_state; // @[Conditional.scala 37:30]
  wire  _T_24 = sampleCntValue == 4'h8; // @[Axi4Lite_uart.scala 247:50]
  wire [1:0] _GEN_11 = _T_24 ? 2'h0 : rx_state; // @[Axi4Lite_uart.scala 262:30 Axi4Lite_uart.scala 262:40 Axi4Lite_uart.scala 240:25]
  wire [1:0] _GEN_12 = _T_23 ? _GEN_11 : rx_state; // @[Conditional.scala 39:67 Axi4Lite_uart.scala 240:25]
  reg  tmp_0; // @[Axi4Lite_uart.scala 268:20]
  reg  tmp_1; // @[Axi4Lite_uart.scala 268:20]
  reg  tmp_2; // @[Axi4Lite_uart.scala 268:20]
  reg  vote; // @[Axi4Lite_uart.scala 269:21]
  wire  _T_25 = sampleCntValue == 4'h7; // @[Axi4Lite_uart.scala 247:50]
  wire  _T_27 = sampleCntValue == 4'h9; // @[Axi4Lite_uart.scala 247:50]
  wire  _T_28 = sampleCntValue == 4'ha; // @[Axi4Lite_uart.scala 247:50]
  wire  _GEN_16 = _T_28 ? tmp_0 ^ tmp_1 ^ tmp_2 : vote; // @[Axi4Lite_uart.scala 280:32 Axi4Lite_uart.scala 281:10 Axi4Lite_uart.scala 269:21]
  wire  _GEN_17 = _T_27 ? io_rxd : tmp_2; // @[Axi4Lite_uart.scala 278:31 Axi4Lite_uart.scala 279:12 Axi4Lite_uart.scala 268:20]
  wire  _GEN_18 = _T_27 ? vote : _GEN_16; // @[Axi4Lite_uart.scala 278:31 Axi4Lite_uart.scala 269:21]
  wire  _GEN_19 = _T_24 ? io_rxd : tmp_1; // @[Axi4Lite_uart.scala 276:31 Axi4Lite_uart.scala 277:12 Axi4Lite_uart.scala 268:20]
  wire  _GEN_20 = _T_24 ? tmp_2 : _GEN_17; // @[Axi4Lite_uart.scala 276:31 Axi4Lite_uart.scala 268:20]
  wire  _GEN_21 = _T_24 ? vote : _GEN_18; // @[Axi4Lite_uart.scala 276:31 Axi4Lite_uart.scala 269:21]
  wire  _GEN_22 = _T_25 ? io_rxd : tmp_0; // @[Axi4Lite_uart.scala 274:24 Axi4Lite_uart.scala 275:12 Axi4Lite_uart.scala 268:20]
  wire  _GEN_23 = _T_25 ? tmp_1 : _GEN_19; // @[Axi4Lite_uart.scala 274:24 Axi4Lite_uart.scala 268:20]
  wire  _GEN_24 = _T_25 ? tmp_2 : _GEN_20; // @[Axi4Lite_uart.scala 274:24 Axi4Lite_uart.scala 268:20]
  wire  _GEN_25 = _T_25 ? vote : _GEN_21; // @[Axi4Lite_uart.scala 274:24 Axi4Lite_uart.scala 269:21]
  reg  parity_result; // @[Axi4Lite_uart.scala 285:30]
  wire  hasEvenParity = io_parity_en & io_parity_even; // @[Axi4Lite_uart.scala 286:36]
  wire  hasOddParity = io_parity_en & ~io_parity_even; // @[Axi4Lite_uart.scala 287:35]
  reg [7:0] rxd_out_reg; // @[Axi4Lite_uart.scala 295:28]
  wire [6:0] rxd_out_reg_lo = rxd_out_reg[7:1]; // @[Axi4Lite_uart.scala 298:103]
  wire [7:0] _rxd_out_reg_T = {vote,rxd_out_reg_lo}; // @[Cat.scala 30:58]
  assign io_rx_busy = rx_state != 2'h0; // @[Axi4Lite_uart.scala 302:26]
  assign io_parity_error = _T_2 & (hasEvenParity & parity_result | hasOddParity & ~parity_result); // @[Axi4Lite_uart.scala 304:38]
  assign io_data_reg_rx = rxd_out_reg; // @[Axi4Lite_uart.scala 303:18]
  always @(posedge clock) begin
    if (reset) begin // @[Axi4Lite_uart.scala 240:25]
      rx_state <= 2'h0; // @[Axi4Lite_uart.scala 240:25]
    end else if (io_rx_data_sample) begin // @[Axi4Lite_uart.scala 253:27]
      if (_T_13) begin // @[Conditional.scala 40:58]
        if (wrap_wrap) begin // @[Axi4Lite_uart.scala 256:31]
          rx_state <= 2'h1; // @[Axi4Lite_uart.scala 256:41]
        end
      end else if (_T_15) begin // @[Conditional.scala 39:67]
        rx_state <= _GEN_10;
      end else begin
        rx_state <= _GEN_12;
      end
    end
    if (reset) begin // @[Counter.scala 60:40]
      sampleCntValue <= 4'h0; // @[Counter.scala 60:40]
    end else if (_T_6) begin // @[Counter.scala 135:17]
      sampleCntValue <= 4'h0; // @[Counter.scala 97:11]
    end else if (io_rx_data_sample) begin // @[Counter.scala 137:24]
      sampleCntValue <= _wrap_value_T_1; // @[Counter.scala 76:15]
    end
    if (reset) begin // @[Counter.scala 60:40]
      rxCntValue <= 4'h0; // @[Counter.scala 60:40]
    end else if (_T_12) begin // @[Counter.scala 135:17]
      rxCntValue <= 4'h0; // @[Counter.scala 97:11]
    end else if (_T_10) begin // @[Counter.scala 137:24]
      if (wrap_wrap_1) begin // @[Counter.scala 86:20]
        rxCntValue <= 4'h0; // @[Counter.scala 86:28]
      end else begin
        rxCntValue <= _wrap_value_T_3; // @[Counter.scala 76:15]
      end
    end
    tmp_0 <= reset | _GEN_22; // @[Axi4Lite_uart.scala 268:20 Axi4Lite_uart.scala 268:20]
    tmp_1 <= reset | _GEN_23; // @[Axi4Lite_uart.scala 268:20 Axi4Lite_uart.scala 268:20]
    tmp_2 <= reset | _GEN_24; // @[Axi4Lite_uart.scala 268:20 Axi4Lite_uart.scala 268:20]
    vote <= reset | _GEN_25; // @[Axi4Lite_uart.scala 269:21 Axi4Lite_uart.scala 269:21]
    if (reset) begin // @[Axi4Lite_uart.scala 285:30]
      parity_result <= 1'h0; // @[Axi4Lite_uart.scala 285:30]
    end else if (io_rx_data_sample) begin // @[Axi4Lite_uart.scala 289:27]
      if (_T) begin // @[Axi4Lite_uart.scala 290:27]
        parity_result <= 1'h0; // @[Axi4Lite_uart.scala 290:43]
      end else if (_T_7 & wrap_wrap & io_parity_en) begin // @[Axi4Lite_uart.scala 291:69]
        parity_result <= parity_result ^ vote; // @[Axi4Lite_uart.scala 291:85]
      end
    end
    if (reset) begin // @[Axi4Lite_uart.scala 295:28]
      rxd_out_reg <= 8'hff; // @[Axi4Lite_uart.scala 295:28]
    end else if (io_rx_data_sample) begin // @[Axi4Lite_uart.scala 296:27]
      if (_T_7 & ~rxCntValue[3] & wrap_wrap) begin // @[Axi4Lite_uart.scala 298:65]
        rxd_out_reg <= _rxd_out_reg_T; // @[Axi4Lite_uart.scala 298:79]
      end
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  rx_state = _RAND_0[1:0];
  _RAND_1 = {1{`RANDOM}};
  sampleCntValue = _RAND_1[3:0];
  _RAND_2 = {1{`RANDOM}};
  rxCntValue = _RAND_2[3:0];
  _RAND_3 = {1{`RANDOM}};
  tmp_0 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  tmp_1 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  tmp_2 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  vote = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  parity_result = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  rxd_out_reg = _RAND_8[7:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module axi4Lite2Uart(
  input         clock,
  input         reset,
  output        axi_readAddr_ready,
  input         axi_readAddr_valid,
  input  [31:0] axi_readAddr_bits_addr,
  input         axi_readData_ready,
  output        axi_readData_valid,
  output [31:0] axi_readData_bits_data,
  output [1:0]  axi_readData_bits_resp,
  output        axi_writeAddr_ready,
  input         axi_writeAddr_valid,
  input  [31:0] axi_writeAddr_bits_addr,
  output        axi_writeData_ready,
  input         axi_writeData_valid,
  input  [31:0] axi_writeData_bits_data,
  input  [3:0]  axi_writeData_bits_strb,
  input         axi_writeResp_ready,
  output        axi_writeResp_valid,
  output [1:0]  axi_writeResp_bits_resp,
  input         io_tx_busy,
  input         io_rx_busy,
  input         io_parity_error,
  output        io_clk_en,
  output        io_parity_en,
  output        io_parity_even,
  output [15:0] io_div,
  output [7:0]  io_data_reg_tx,
  input  [7:0]  io_data_reg_rx,
  output        io_tx_start
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] addr_0; // @[axi4_lite.scala 55:21]
  reg [31:0] addr_3; // @[axi4_lite.scala 55:21]
  reg [31:0] data_1; // @[axi4_lite.scala 56:21]
  reg [31:0] data_4; // @[axi4_lite.scala 56:21]
  reg  valid_2; // @[axi4_lite.scala 57:22]
  reg  valid_4; // @[axi4_lite.scala 57:22]
  reg  ready_0; // @[axi4_lite.scala 58:22]
  reg  ready_1; // @[axi4_lite.scala 58:22]
  reg  ready_3; // @[axi4_lite.scala 58:22]
  reg  resp_2; // @[axi4_lite.scala 59:21]
  reg  resp_4; // @[axi4_lite.scala 59:21]
  reg  handshake_0; // @[axi4_lite.scala 74:26]
  reg  handshake_1; // @[axi4_lite.scala 74:26]
  reg  handshake_3; // @[axi4_lite.scala 74:26]
  wire  slv_reg_wren = handshake_0 & handshake_1; // @[axi4_lite.scala 82:33]
  wire  _T_1 = axi_writeAddr_valid & ~handshake_0; // @[axi4_lite.scala 86:28]
  wire  _GEN_2 = slv_reg_wren ? 1'h0 : handshake_0; // @[axi4_lite.scala 95:46 axi4_lite.scala 96:19 axi4_lite.scala 74:26]
  wire  _GEN_3 = _T_1 | _GEN_2; // @[axi4_lite.scala 93:47 axi4_lite.scala 94:19]
  wire  _T_6 = axi_writeData_valid & ~handshake_1; // @[axi4_lite.scala 102:28]
  wire  _GEN_6 = slv_reg_wren ? 1'h0 : handshake_1; // @[axi4_lite.scala 111:46 axi4_lite.scala 112:18 axi4_lite.scala 74:26]
  wire  _GEN_7 = _T_6 | _GEN_6; // @[axi4_lite.scala 109:46 axi4_lite.scala 110:18]
  wire  _T_10 = axi_writeResp_valid & axi_writeResp_ready; // @[axi4_lite.scala 120:35]
  wire  _GEN_8 = axi_writeResp_valid & axi_writeResp_ready ? 1'h0 : valid_2; // @[axi4_lite.scala 120:59 axi4_lite.scala 121:14 axi4_lite.scala 57:22]
  wire  _GEN_9 = slv_reg_wren | _GEN_8; // @[axi4_lite.scala 116:22 axi4_lite.scala 117:14]
  wire [1:0] _GEN_10 = slv_reg_wren ? 2'h0 : {{1'd0}, resp_2}; // @[axi4_lite.scala 116:22 axi4_lite.scala 119:13 axi4_lite.scala 59:21]
  wire  _T_12 = axi_readAddr_valid & ~handshake_3; // @[axi4_lite.scala 125:27]
  wire  _GEN_14 = axi_readData_valid & axi_readData_ready ? 1'h0 : valid_4; // @[axi4_lite.scala 143:58 axi4_lite.scala 144:14 axi4_lite.scala 57:22]
  wire  _GEN_15 = handshake_3 | _GEN_14; // @[axi4_lite.scala 139:23 axi4_lite.scala 140:14]
  wire [1:0] _GEN_16 = handshake_3 ? 2'h0 : {{1'd0}, resp_4}; // @[axi4_lite.scala 139:23 axi4_lite.scala 142:13 axi4_lite.scala 59:21]
  reg [31:0] ctrl_reg; // @[Axi4Lite_uart.scala 31:25]
  reg [31:0] txdata_reg; // @[Axi4Lite_uart.scala 32:27]
  wire [31:0] _T_16 = {29'h0,io_parity_error,io_rx_busy,io_tx_busy}; // @[Cat.scala 30:58]
  wire [7:0] lo_lo = axi_writeData_bits_strb[0] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12]
  wire [7:0] lo_hi = axi_writeData_bits_strb[1] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12]
  wire [7:0] hi_lo = axi_writeData_bits_strb[2] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12]
  wire [7:0] hi_hi = axi_writeData_bits_strb[3] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12]
  wire [31:0] _T_27 = {hi_hi,hi_lo,lo_hi,lo_lo}; // @[Cat.scala 30:58]
  wire  _data_4_T = 4'h0 == addr_3[3:0]; // @[LookupTree.scala 24:34]
  wire  _data_4_T_1 = 4'h4 == addr_3[3:0]; // @[LookupTree.scala 24:34]
  wire  _data_4_T_2 = 4'h8 == addr_3[3:0]; // @[LookupTree.scala 24:34]
  wire  _data_4_T_3 = 4'hc == addr_3[3:0]; // @[LookupTree.scala 24:34]
  wire [31:0] _data_4_T_4 = _data_4_T ? _T_16 : 32'h0; // @[Mux.scala 27:72]
  wire [31:0] _data_4_T_5 = _data_4_T_1 ? ctrl_reg : 32'h0; // @[Mux.scala 27:72]
  wire [31:0] _data_4_T_6 = _data_4_T_2 ? txdata_reg : 32'h0; // @[Mux.scala 27:72]
  wire [7:0] _data_4_T_7 = _data_4_T_3 ? io_data_reg_rx : 8'h0; // @[Mux.scala 27:72]
  wire [31:0] _data_4_T_8 = _data_4_T_4 | _data_4_T_5; // @[Mux.scala 27:72]
  wire [31:0] _data_4_T_9 = _data_4_T_8 | _data_4_T_6; // @[Mux.scala 27:72]
  wire [31:0] _GEN_20 = {{24'd0}, _data_4_T_7}; // @[Mux.scala 27:72]
  wire [31:0] _data_4_T_10 = _data_4_T_9 | _GEN_20; // @[Mux.scala 27:72]
  wire [31:0] _ctrl_reg_T = data_1 & _T_27; // @[BitUtils.scala 37:14]
  wire [31:0] _ctrl_reg_T_1 = ~_T_27; // @[BitUtils.scala 37:40]
  wire [31:0] _ctrl_reg_T_2 = ctrl_reg & _ctrl_reg_T_1; // @[BitUtils.scala 37:37]
  wire [31:0] _ctrl_reg_T_3 = _ctrl_reg_T | _ctrl_reg_T_2; // @[BitUtils.scala 37:26]
  wire  _T_30 = addr_0[3:0] == 4'h8; // @[RegMap.scala 30:41]
  wire [31:0] _txdata_reg_T_2 = txdata_reg & _ctrl_reg_T_1; // @[BitUtils.scala 37:37]
  wire [31:0] _txdata_reg_T_3 = _ctrl_reg_T | _txdata_reg_T_2; // @[BitUtils.scala 37:26]
  assign axi_readAddr_ready = ready_3; // @[axi4_lite.scala 66:28]
  assign axi_readData_valid = valid_4; // @[axi4_lite.scala 69:28]
  assign axi_readData_bits_data = data_4; // @[axi4_lite.scala 67:28]
  assign axi_readData_bits_resp = {{1'd0}, resp_4}; // @[axi4_lite.scala 68:28]
  assign axi_writeAddr_ready = ready_0; // @[axi4_lite.scala 62:28]
  assign axi_writeData_ready = ready_1; // @[axi4_lite.scala 63:28]
  assign axi_writeResp_valid = valid_2; // @[axi4_lite.scala 65:28]
  assign axi_writeResp_bits_resp = {{1'd0}, resp_2}; // @[axi4_lite.scala 64:28]
  assign io_clk_en = ctrl_reg[0]; // @[Axi4Lite_uart.scala 48:24]
  assign io_parity_en = ctrl_reg[1]; // @[Axi4Lite_uart.scala 49:27]
  assign io_parity_even = ctrl_reg[2]; // @[Axi4Lite_uart.scala 50:29]
  assign io_div = ctrl_reg[31:16]; // @[Axi4Lite_uart.scala 51:21]
  assign io_data_reg_tx = txdata_reg[7:0]; // @[Axi4Lite_uart.scala 74:18]
  assign io_tx_start = _T_10 & _T_30; // @[Axi4Lite_uart.scala 71:66]
  always @(posedge clock) begin
    if (reset) begin // @[axi4_lite.scala 55:21]
      addr_0 <= 32'h0; // @[axi4_lite.scala 55:21]
    end else if (axi_writeAddr_valid & ~handshake_0) begin // @[axi4_lite.scala 86:47]
      addr_0 <= axi_writeAddr_bits_addr; // @[axi4_lite.scala 88:14]
    end
    if (reset) begin // @[axi4_lite.scala 55:21]
      addr_3 <= 32'h0; // @[axi4_lite.scala 55:21]
    end else if (axi_readAddr_valid & ~handshake_3) begin // @[axi4_lite.scala 125:46]
      addr_3 <= axi_readAddr_bits_addr; // @[axi4_lite.scala 127:14]
    end
    if (reset) begin // @[axi4_lite.scala 56:21]
      data_1 <= 32'h0; // @[axi4_lite.scala 56:21]
    end else if (axi_writeData_valid & ~handshake_1) begin // @[axi4_lite.scala 102:46]
      data_1 <= axi_writeData_bits_data; // @[axi4_lite.scala 104:13]
    end
    if (reset) begin // @[axi4_lite.scala 56:21]
      data_4 <= 32'h0; // @[axi4_lite.scala 56:21]
    end else if (handshake_3) begin // @[RegMap.scala 28:15]
      data_4 <= _data_4_T_10; // @[RegMap.scala 28:23]
    end
    if (reset) begin // @[axi4_lite.scala 57:22]
      valid_2 <= 1'h0; // @[axi4_lite.scala 57:22]
    end else begin
      valid_2 <= _GEN_9;
    end
    if (reset) begin // @[axi4_lite.scala 57:22]
      valid_4 <= 1'h0; // @[axi4_lite.scala 57:22]
    end else begin
      valid_4 <= _GEN_15;
    end
    if (reset) begin // @[axi4_lite.scala 58:22]
      ready_0 <= 1'h0; // @[axi4_lite.scala 58:22]
    end else begin
      ready_0 <= _T_1;
    end
    if (reset) begin // @[axi4_lite.scala 58:22]
      ready_1 <= 1'h0; // @[axi4_lite.scala 58:22]
    end else begin
      ready_1 <= _T_6;
    end
    if (reset) begin // @[axi4_lite.scala 58:22]
      ready_3 <= 1'h0; // @[axi4_lite.scala 58:22]
    end else begin
      ready_3 <= _T_12;
    end
    if (reset) begin // @[axi4_lite.scala 59:21]
      resp_2 <= 1'h0; // @[axi4_lite.scala 59:21]
    end else begin
      resp_2 <= _GEN_10[0];
    end
    if (reset) begin // @[axi4_lite.scala 59:21]
      resp_4 <= 1'h0; // @[axi4_lite.scala 59:21]
    end else begin
      resp_4 <= _GEN_16[0];
    end
    if (reset) begin // @[axi4_lite.scala 74:26]
      handshake_0 <= 1'h0; // @[axi4_lite.scala 74:26]
    end else begin
      handshake_0 <= _GEN_3;
    end
    if (reset) begin // @[axi4_lite.scala 74:26]
      handshake_1 <= 1'h0; // @[axi4_lite.scala 74:26]
    end else begin
      handshake_1 <= _GEN_7;
    end
    if (reset) begin // @[axi4_lite.scala 74:26]
      handshake_3 <= 1'h0; // @[axi4_lite.scala 74:26]
    end else begin
      handshake_3 <= _T_12;
    end
    if (reset) begin // @[Axi4Lite_uart.scala 31:25]
      ctrl_reg <= 32'h7; // @[Axi4Lite_uart.scala 31:25]
    end else if (slv_reg_wren & addr_0[3:0] == 4'h4) begin // @[RegMap.scala 30:48]
      ctrl_reg <= _ctrl_reg_T_3; // @[RegMap.scala 30:52]
    end
    if (reset) begin // @[Axi4Lite_uart.scala 32:27]
      txdata_reg <= 32'hff; // @[Axi4Lite_uart.scala 32:27]
    end else if (slv_reg_wren & addr_0[3:0] == 4'h8) begin // @[RegMap.scala 30:48]
      txdata_reg <= _txdata_reg_T_3; // @[RegMap.scala 30:52]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  addr_0 = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  addr_3 = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  data_1 = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  data_4 = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  valid_2 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  valid_4 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  ready_0 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  ready_1 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  ready_3 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  resp_2 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  resp_4 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  handshake_0 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  handshake_1 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  handshake_3 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  ctrl_reg = _RAND_14[31:0];
  _RAND_15 = {1{`RANDOM}};
  txdata_reg = _RAND_15[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module axi4LiteUartTop(
  input         clock,
  input         reset,
  output        io_axi_readAddr_ready,
  input         io_axi_readAddr_valid,
  input  [31:0] io_axi_readAddr_bits_addr,
  input  [2:0]  io_axi_readAddr_bits_prot,
  input         io_axi_readData_ready,
  output        io_axi_readData_valid,
  output [31:0] io_axi_readData_bits_data,
  output [1:0]  io_axi_readData_bits_resp,
  output        io_axi_writeAddr_ready,
  input         io_axi_writeAddr_valid,
  input  [31:0] io_axi_writeAddr_bits_addr,
  input  [2:0]  io_axi_writeAddr_bits_prot,
  output        io_axi_writeData_ready,
  input         io_axi_writeData_valid,
  input  [31:0] io_axi_writeData_bits_data,
  input  [3:0]  io_axi_writeData_bits_strb,
  input         io_axi_writeResp_ready,
  output        io_axi_writeResp_valid,
  output [1:0]  io_axi_writeResp_bits_resp,
  input         io_rxd,
  output        io_txd
);
  wire  baud_clock; // @[Axi4Lite_uart.scala 315:20]
  wire  baud_reset; // @[Axi4Lite_uart.scala 315:20]
  wire  baud_io_clk_en; // @[Axi4Lite_uart.scala 315:20]
  wire [15:0] baud_io_div; // @[Axi4Lite_uart.scala 315:20]
  wire  baud_io_tx_data_sample; // @[Axi4Lite_uart.scala 315:20]
  wire  baud_io_rx_data_sample; // @[Axi4Lite_uart.scala 315:20]
  wire  tx_clock; // @[Axi4Lite_uart.scala 316:18]
  wire  tx_reset; // @[Axi4Lite_uart.scala 316:18]
  wire  tx_io_tx_data_sample; // @[Axi4Lite_uart.scala 316:18]
  wire  tx_io_parity_en; // @[Axi4Lite_uart.scala 316:18]
  wire  tx_io_parity_even; // @[Axi4Lite_uart.scala 316:18]
  wire  tx_io_tx_start; // @[Axi4Lite_uart.scala 316:18]
  wire [7:0] tx_io_data_reg_tx; // @[Axi4Lite_uart.scala 316:18]
  wire  tx_io_tx_busy; // @[Axi4Lite_uart.scala 316:18]
  wire  tx_io_txd; // @[Axi4Lite_uart.scala 316:18]
  wire  rx_clock; // @[Axi4Lite_uart.scala 317:18]
  wire  rx_reset; // @[Axi4Lite_uart.scala 317:18]
  wire  rx_io_rx_data_sample; // @[Axi4Lite_uart.scala 317:18]
  wire  rx_io_parity_en; // @[Axi4Lite_uart.scala 317:18]
  wire  rx_io_parity_even; // @[Axi4Lite_uart.scala 317:18]
  wire  rx_io_rxd; // @[Axi4Lite_uart.scala 317:18]
  wire  rx_io_rx_busy; // @[Axi4Lite_uart.scala 317:18]
  wire  rx_io_parity_error; // @[Axi4Lite_uart.scala 317:18]
  wire [7:0] rx_io_data_reg_rx; // @[Axi4Lite_uart.scala 317:18]
  wire  bus_clock; // @[Axi4Lite_uart.scala 318:19]
  wire  bus_reset; // @[Axi4Lite_uart.scala 318:19]
  wire  bus_axi_readAddr_ready; // @[Axi4Lite_uart.scala 318:19]
  wire  bus_axi_readAddr_valid; // @[Axi4Lite_uart.scala 318:19]
  wire [31:0] bus_axi_readAddr_bits_addr; // @[Axi4Lite_uart.scala 318:19]
  wire  bus_axi_readData_ready; // @[Axi4Lite_uart.scala 318:19]
  wire  bus_axi_readData_valid; // @[Axi4Lite_uart.scala 318:19]
  wire [31:0] bus_axi_readData_bits_data; // @[Axi4Lite_uart.scala 318:19]
  wire [1:0] bus_axi_readData_bits_resp; // @[Axi4Lite_uart.scala 318:19]
  wire  bus_axi_writeAddr_ready; // @[Axi4Lite_uart.scala 318:19]
  wire  bus_axi_writeAddr_valid; // @[Axi4Lite_uart.scala 318:19]
  wire [31:0] bus_axi_writeAddr_bits_addr; // @[Axi4Lite_uart.scala 318:19]
  wire  bus_axi_writeData_ready; // @[Axi4Lite_uart.scala 318:19]
  wire  bus_axi_writeData_valid; // @[Axi4Lite_uart.scala 318:19]
  wire [31:0] bus_axi_writeData_bits_data; // @[Axi4Lite_uart.scala 318:19]
  wire [3:0] bus_axi_writeData_bits_strb; // @[Axi4Lite_uart.scala 318:19]
  wire  bus_axi_writeResp_ready; // @[Axi4Lite_uart.scala 318:19]
  wire  bus_axi_writeResp_valid; // @[Axi4Lite_uart.scala 318:19]
  wire [1:0] bus_axi_writeResp_bits_resp; // @[Axi4Lite_uart.scala 318:19]
  wire  bus_io_tx_busy; // @[Axi4Lite_uart.scala 318:19]
  wire  bus_io_rx_busy; // @[Axi4Lite_uart.scala 318:19]
  wire  bus_io_parity_error; // @[Axi4Lite_uart.scala 318:19]
  wire  bus_io_clk_en; // @[Axi4Lite_uart.scala 318:19]
  wire  bus_io_parity_en; // @[Axi4Lite_uart.scala 318:19]
  wire  bus_io_parity_even; // @[Axi4Lite_uart.scala 318:19]
  wire [15:0] bus_io_div; // @[Axi4Lite_uart.scala 318:19]
  wire [7:0] bus_io_data_reg_tx; // @[Axi4Lite_uart.scala 318:19]
  wire [7:0] bus_io_data_reg_rx; // @[Axi4Lite_uart.scala 318:19]
  wire  bus_io_tx_start; // @[Axi4Lite_uart.scala 318:19]
  baudGen baud ( // @[Axi4Lite_uart.scala 315:20]
    .clock(baud_clock),
    .reset(baud_reset),
    .io_clk_en(baud_io_clk_en),
    .io_div(baud_io_div),
    .io_tx_data_sample(baud_io_tx_data_sample),
    .io_rx_data_sample(baud_io_rx_data_sample)
  );
  uartTx tx ( // @[Axi4Lite_uart.scala 316:18]
    .clock(tx_clock),
    .reset(tx_reset),
    .io_tx_data_sample(tx_io_tx_data_sample),
    .io_parity_en(tx_io_parity_en),
    .io_parity_even(tx_io_parity_even),
    .io_tx_start(tx_io_tx_start),
    .io_data_reg_tx(tx_io_data_reg_tx),
    .io_tx_busy(tx_io_tx_busy),
    .io_txd(tx_io_txd)
  );
  uartRx rx ( // @[Axi4Lite_uart.scala 317:18]
    .clock(rx_clock),
    .reset(rx_reset),
    .io_rx_data_sample(rx_io_rx_data_sample),
    .io_parity_en(rx_io_parity_en),
    .io_parity_even(rx_io_parity_even),
    .io_rxd(rx_io_rxd),
    .io_rx_busy(rx_io_rx_busy),
    .io_parity_error(rx_io_parity_error),
    .io_data_reg_rx(rx_io_data_reg_rx)
  );
  axi4Lite2Uart bus ( // @[Axi4Lite_uart.scala 318:19]
    .clock(bus_clock),
    .reset(bus_reset),
    .axi_readAddr_ready(bus_axi_readAddr_ready),
    .axi_readAddr_valid(bus_axi_readAddr_valid),
    .axi_readAddr_bits_addr(bus_axi_readAddr_bits_addr),
    .axi_readData_ready(bus_axi_readData_ready),
    .axi_readData_valid(bus_axi_readData_valid),
    .axi_readData_bits_data(bus_axi_readData_bits_data),
    .axi_readData_bits_resp(bus_axi_readData_bits_resp),
    .axi_writeAddr_ready(bus_axi_writeAddr_ready),
    .axi_writeAddr_valid(bus_axi_writeAddr_valid),
    .axi_writeAddr_bits_addr(bus_axi_writeAddr_bits_addr),
    .axi_writeData_ready(bus_axi_writeData_ready),
    .axi_writeData_valid(bus_axi_writeData_valid),
    .axi_writeData_bits_data(bus_axi_writeData_bits_data),
    .axi_writeData_bits_strb(bus_axi_writeData_bits_strb),
    .axi_writeResp_ready(bus_axi_writeResp_ready),
    .axi_writeResp_valid(bus_axi_writeResp_valid),
    .axi_writeResp_bits_resp(bus_axi_writeResp_bits_resp),
    .io_tx_busy(bus_io_tx_busy),
    .io_rx_busy(bus_io_rx_busy),
    .io_parity_error(bus_io_parity_error),
    .io_clk_en(bus_io_clk_en),
    .io_parity_en(bus_io_parity_en),
    .io_parity_even(bus_io_parity_even),
    .io_div(bus_io_div),
    .io_data_reg_tx(bus_io_data_reg_tx),
    .io_data_reg_rx(bus_io_data_reg_rx),
    .io_tx_start(bus_io_tx_start)
  );
  assign io_axi_readAddr_ready = bus_axi_readAddr_ready; // @[Axi4Lite_uart.scala 320:10]
  assign io_axi_readData_valid = bus_axi_readData_valid; // @[Axi4Lite_uart.scala 320:10]
  assign io_axi_readData_bits_data = bus_axi_readData_bits_data; // @[Axi4Lite_uart.scala 320:10]
  assign io_axi_readData_bits_resp = bus_axi_readData_bits_resp; // @[Axi4Lite_uart.scala 320:10]
  assign io_axi_writeAddr_ready = bus_axi_writeAddr_ready; // @[Axi4Lite_uart.scala 320:10]
  assign io_axi_writeData_ready = bus_axi_writeData_ready; // @[Axi4Lite_uart.scala 320:10]
  assign io_axi_writeResp_valid = bus_axi_writeResp_valid; // @[Axi4Lite_uart.scala 320:10]
  assign io_axi_writeResp_bits_resp = bus_axi_writeResp_bits_resp; // @[Axi4Lite_uart.scala 320:10]
  assign io_txd = tx_io_txd; // @[Axi4Lite_uart.scala 322:10]
  assign baud_clock = clock;
  assign baud_reset = reset;
  assign baud_io_clk_en = bus_io_clk_en; // @[Axi4Lite_uart.scala 324:18]
  assign baud_io_div = bus_io_div; // @[Axi4Lite_uart.scala 325:15]
  assign tx_clock = clock;
  assign tx_reset = reset;
  assign tx_io_tx_data_sample = baud_io_tx_data_sample; // @[Axi4Lite_uart.scala 326:26]
  assign tx_io_parity_en = bus_io_parity_en; // @[Axi4Lite_uart.scala 329:23]
  assign tx_io_parity_even = bus_io_parity_even; // @[Axi4Lite_uart.scala 330:23]
  assign tx_io_tx_start = bus_io_tx_start; // @[Axi4Lite_uart.scala 331:23]
  assign tx_io_data_reg_tx = bus_io_data_reg_tx; // @[Axi4Lite_uart.scala 332:23]
  assign rx_clock = clock;
  assign rx_reset = reset;
  assign rx_io_rx_data_sample = baud_io_rx_data_sample; // @[Axi4Lite_uart.scala 327:26]
  assign rx_io_parity_en = bus_io_parity_en; // @[Axi4Lite_uart.scala 335:23]
  assign rx_io_parity_even = bus_io_parity_even; // @[Axi4Lite_uart.scala 336:23]
  assign rx_io_rxd = io_rxd; // @[Axi4Lite_uart.scala 321:10]
  assign bus_clock = clock;
  assign bus_reset = reset;
  assign bus_axi_readAddr_valid = io_axi_readAddr_valid; // @[Axi4Lite_uart.scala 320:10]
  assign bus_axi_readAddr_bits_addr = io_axi_readAddr_bits_addr; // @[Axi4Lite_uart.scala 320:10]
  assign bus_axi_readData_ready = io_axi_readData_ready; // @[Axi4Lite_uart.scala 320:10]
  assign bus_axi_writeAddr_valid = io_axi_writeAddr_valid; // @[Axi4Lite_uart.scala 320:10]
  assign bus_axi_writeAddr_bits_addr = io_axi_writeAddr_bits_addr; // @[Axi4Lite_uart.scala 320:10]
  assign bus_axi_writeData_valid = io_axi_writeData_valid; // @[Axi4Lite_uart.scala 320:10]
  assign bus_axi_writeData_bits_data = io_axi_writeData_bits_data; // @[Axi4Lite_uart.scala 320:10]
  assign bus_axi_writeData_bits_strb = io_axi_writeData_bits_strb; // @[Axi4Lite_uart.scala 320:10]
  assign bus_axi_writeResp_ready = io_axi_writeResp_ready; // @[Axi4Lite_uart.scala 320:10]
  assign bus_io_tx_busy = tx_io_tx_busy; // @[Axi4Lite_uart.scala 333:23]
  assign bus_io_rx_busy = rx_io_rx_busy; // @[Axi4Lite_uart.scala 337:23]
  assign bus_io_parity_error = rx_io_parity_error; // @[Axi4Lite_uart.scala 338:23]
  assign bus_io_data_reg_rx = rx_io_data_reg_rx; // @[Axi4Lite_uart.scala 339:23]
endmodule
