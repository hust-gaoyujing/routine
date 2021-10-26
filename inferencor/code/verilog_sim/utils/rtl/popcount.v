module popcount_4(
  input  [3:0] io_in,
  output [2:0] io_out
);
  wire  _T = io_in == 4'h0; // @[popcount.scala 9:16]
  wire  _T_8 = io_in == 4'h1 | io_in == 4'h2 | io_in == 4'h4 | io_in == 4'h8; // @[popcount.scala 9:41]
  wire  _T_20 = io_in == 4'h3 | io_in == 4'h5 | io_in == 4'h6 | io_in == 4'h9 | io_in == 4'ha | io_in == 4'hc; // @[popcount.scala 9:41]
  wire  _T_28 = io_in == 4'h7 | io_in == 4'hb | io_in == 4'hd | io_in == 4'he; // @[popcount.scala 9:41]
  wire  _T_30 = io_in == 4'hf; // @[popcount.scala 9:16]
  wire [2:0] _GEN_0 = _T_30 ? 3'h4 : 3'h0; // @[popcount.scala 28:38 popcount.scala 28:47 popcount.scala 29:23]
  wire [2:0] _GEN_1 = _T_28 ? 3'h3 : _GEN_0; // @[popcount.scala 27:39 popcount.scala 27:48]
  wire [2:0] _GEN_2 = _T_20 ? 3'h2 : _GEN_1; // @[popcount.scala 26:37 popcount.scala 26:46]
  wire [2:0] _GEN_3 = _T_8 ? 3'h1 : _GEN_2; // @[popcount.scala 25:38 popcount.scala 25:47]
  assign io_out = _T ? 3'h0 : _GEN_3; // @[popcount.scala 24:31 popcount.scala 24:42]
endmodule
module popcount(
  input          clock,
  input          reset,
  input  [127:0] io_in,
  output [7:0]   io_out
);
  wire [3:0] popcount_4_io_in; // @[popcount.scala 42:51]
  wire [2:0] popcount_4_io_out; // @[popcount.scala 42:51]
  wire [3:0] popcount_4_1_io_in; // @[popcount.scala 42:51]
  wire [2:0] popcount_4_1_io_out; // @[popcount.scala 42:51]
  wire [3:0] popcount_4_2_io_in; // @[popcount.scala 42:51]
  wire [2:0] popcount_4_2_io_out; // @[popcount.scala 42:51]
  wire [3:0] popcount_4_3_io_in; // @[popcount.scala 42:51]
  wire [2:0] popcount_4_3_io_out; // @[popcount.scala 42:51]
  wire [3:0] popcount_4_4_io_in; // @[popcount.scala 42:51]
  wire [2:0] popcount_4_4_io_out; // @[popcount.scala 42:51]
  wire [3:0] popcount_4_5_io_in; // @[popcount.scala 42:51]
  wire [2:0] popcount_4_5_io_out; // @[popcount.scala 42:51]
  wire [3:0] popcount_4_6_io_in; // @[popcount.scala 42:51]
  wire [2:0] popcount_4_6_io_out; // @[popcount.scala 42:51]
  wire [3:0] popcount_4_7_io_in; // @[popcount.scala 42:51]
  wire [2:0] popcount_4_7_io_out; // @[popcount.scala 42:51]
  wire [3:0] popcount_4_8_io_in; // @[popcount.scala 42:51]
  wire [2:0] popcount_4_8_io_out; // @[popcount.scala 42:51]
  wire [3:0] popcount_4_9_io_in; // @[popcount.scala 42:51]
  wire [2:0] popcount_4_9_io_out; // @[popcount.scala 42:51]
  wire [3:0] popcount_4_10_io_in; // @[popcount.scala 42:51]
  wire [2:0] popcount_4_10_io_out; // @[popcount.scala 42:51]
  wire [3:0] popcount_4_11_io_in; // @[popcount.scala 42:51]
  wire [2:0] popcount_4_11_io_out; // @[popcount.scala 42:51]
  wire [3:0] popcount_4_12_io_in; // @[popcount.scala 42:51]
  wire [2:0] popcount_4_12_io_out; // @[popcount.scala 42:51]
  wire [3:0] popcount_4_13_io_in; // @[popcount.scala 42:51]
  wire [2:0] popcount_4_13_io_out; // @[popcount.scala 42:51]
  wire [3:0] popcount_4_14_io_in; // @[popcount.scala 42:51]
  wire [2:0] popcount_4_14_io_out; // @[popcount.scala 42:51]
  wire [3:0] popcount_4_15_io_in; // @[popcount.scala 42:51]
  wire [2:0] popcount_4_15_io_out; // @[popcount.scala 42:51]
  wire [3:0] popcount_4_16_io_in; // @[popcount.scala 42:51]
  wire [2:0] popcount_4_16_io_out; // @[popcount.scala 42:51]
  wire [3:0] popcount_4_17_io_in; // @[popcount.scala 42:51]
  wire [2:0] popcount_4_17_io_out; // @[popcount.scala 42:51]
  wire [3:0] popcount_4_18_io_in; // @[popcount.scala 42:51]
  wire [2:0] popcount_4_18_io_out; // @[popcount.scala 42:51]
  wire [3:0] popcount_4_19_io_in; // @[popcount.scala 42:51]
  wire [2:0] popcount_4_19_io_out; // @[popcount.scala 42:51]
  wire [3:0] popcount_4_20_io_in; // @[popcount.scala 42:51]
  wire [2:0] popcount_4_20_io_out; // @[popcount.scala 42:51]
  wire [3:0] popcount_4_21_io_in; // @[popcount.scala 42:51]
  wire [2:0] popcount_4_21_io_out; // @[popcount.scala 42:51]
  wire [3:0] popcount_4_22_io_in; // @[popcount.scala 42:51]
  wire [2:0] popcount_4_22_io_out; // @[popcount.scala 42:51]
  wire [3:0] popcount_4_23_io_in; // @[popcount.scala 42:51]
  wire [2:0] popcount_4_23_io_out; // @[popcount.scala 42:51]
  wire [3:0] popcount_4_24_io_in; // @[popcount.scala 42:51]
  wire [2:0] popcount_4_24_io_out; // @[popcount.scala 42:51]
  wire [3:0] popcount_4_25_io_in; // @[popcount.scala 42:51]
  wire [2:0] popcount_4_25_io_out; // @[popcount.scala 42:51]
  wire [3:0] popcount_4_26_io_in; // @[popcount.scala 42:51]
  wire [2:0] popcount_4_26_io_out; // @[popcount.scala 42:51]
  wire [3:0] popcount_4_27_io_in; // @[popcount.scala 42:51]
  wire [2:0] popcount_4_27_io_out; // @[popcount.scala 42:51]
  wire [3:0] popcount_4_28_io_in; // @[popcount.scala 42:51]
  wire [2:0] popcount_4_28_io_out; // @[popcount.scala 42:51]
  wire [3:0] popcount_4_29_io_in; // @[popcount.scala 42:51]
  wire [2:0] popcount_4_29_io_out; // @[popcount.scala 42:51]
  wire [3:0] popcount_4_30_io_in; // @[popcount.scala 42:51]
  wire [2:0] popcount_4_30_io_out; // @[popcount.scala 42:51]
  wire [3:0] popcount_4_31_io_in; // @[popcount.scala 42:51]
  wire [2:0] popcount_4_31_io_out; // @[popcount.scala 42:51]
  wire [2:0] pop_cnt_4_0_out = popcount_4_io_out; // @[popcount.scala 42:26 popcount.scala 42:26]
  wire [2:0] pop_cnt_4_1_out = popcount_4_1_io_out; // @[popcount.scala 42:26 popcount.scala 42:26]
  wire [3:0] _io_out_T = pop_cnt_4_0_out + pop_cnt_4_1_out; // @[popcount.scala 47:43]
  wire [2:0] pop_cnt_4_2_out = popcount_4_2_io_out; // @[popcount.scala 42:26 popcount.scala 42:26]
  wire [3:0] _GEN_0 = {{1'd0}, pop_cnt_4_2_out}; // @[popcount.scala 47:43]
  wire [4:0] _io_out_T_1 = _io_out_T + _GEN_0; // @[popcount.scala 47:43]
  wire [2:0] pop_cnt_4_3_out = popcount_4_3_io_out; // @[popcount.scala 42:26 popcount.scala 42:26]
  wire [4:0] _GEN_1 = {{2'd0}, pop_cnt_4_3_out}; // @[popcount.scala 47:43]
  wire [5:0] _io_out_T_2 = _io_out_T_1 + _GEN_1; // @[popcount.scala 47:43]
  wire [2:0] pop_cnt_4_4_out = popcount_4_4_io_out; // @[popcount.scala 42:26 popcount.scala 42:26]
  wire [5:0] _GEN_2 = {{3'd0}, pop_cnt_4_4_out}; // @[popcount.scala 47:43]
  wire [6:0] _io_out_T_3 = _io_out_T_2 + _GEN_2; // @[popcount.scala 47:43]
  wire [2:0] pop_cnt_4_5_out = popcount_4_5_io_out; // @[popcount.scala 42:26 popcount.scala 42:26]
  wire [6:0] _GEN_3 = {{4'd0}, pop_cnt_4_5_out}; // @[popcount.scala 47:43]
  wire [7:0] _io_out_T_4 = _io_out_T_3 + _GEN_3; // @[popcount.scala 47:43]
  wire [2:0] pop_cnt_4_6_out = popcount_4_6_io_out; // @[popcount.scala 42:26 popcount.scala 42:26]
  wire [7:0] _GEN_4 = {{5'd0}, pop_cnt_4_6_out}; // @[popcount.scala 47:43]
  wire [8:0] _io_out_T_5 = _io_out_T_4 + _GEN_4; // @[popcount.scala 47:43]
  wire [2:0] pop_cnt_4_7_out = popcount_4_7_io_out; // @[popcount.scala 42:26 popcount.scala 42:26]
  wire [8:0] _GEN_5 = {{6'd0}, pop_cnt_4_7_out}; // @[popcount.scala 47:43]
  wire [9:0] _io_out_T_6 = _io_out_T_5 + _GEN_5; // @[popcount.scala 47:43]
  wire [2:0] pop_cnt_4_8_out = popcount_4_8_io_out; // @[popcount.scala 42:26 popcount.scala 42:26]
  wire [9:0] _GEN_6 = {{7'd0}, pop_cnt_4_8_out}; // @[popcount.scala 47:43]
  wire [10:0] _io_out_T_7 = _io_out_T_6 + _GEN_6; // @[popcount.scala 47:43]
  wire [2:0] pop_cnt_4_9_out = popcount_4_9_io_out; // @[popcount.scala 42:26 popcount.scala 42:26]
  wire [10:0] _GEN_7 = {{8'd0}, pop_cnt_4_9_out}; // @[popcount.scala 47:43]
  wire [11:0] _io_out_T_8 = _io_out_T_7 + _GEN_7; // @[popcount.scala 47:43]
  wire [2:0] pop_cnt_4_10_out = popcount_4_10_io_out; // @[popcount.scala 42:26 popcount.scala 42:26]
  wire [11:0] _GEN_8 = {{9'd0}, pop_cnt_4_10_out}; // @[popcount.scala 47:43]
  wire [12:0] _io_out_T_9 = _io_out_T_8 + _GEN_8; // @[popcount.scala 47:43]
  wire [2:0] pop_cnt_4_11_out = popcount_4_11_io_out; // @[popcount.scala 42:26 popcount.scala 42:26]
  wire [12:0] _GEN_9 = {{10'd0}, pop_cnt_4_11_out}; // @[popcount.scala 47:43]
  wire [13:0] _io_out_T_10 = _io_out_T_9 + _GEN_9; // @[popcount.scala 47:43]
  wire [2:0] pop_cnt_4_12_out = popcount_4_12_io_out; // @[popcount.scala 42:26 popcount.scala 42:26]
  wire [13:0] _GEN_10 = {{11'd0}, pop_cnt_4_12_out}; // @[popcount.scala 47:43]
  wire [14:0] _io_out_T_11 = _io_out_T_10 + _GEN_10; // @[popcount.scala 47:43]
  wire [2:0] pop_cnt_4_13_out = popcount_4_13_io_out; // @[popcount.scala 42:26 popcount.scala 42:26]
  wire [14:0] _GEN_11 = {{12'd0}, pop_cnt_4_13_out}; // @[popcount.scala 47:43]
  wire [15:0] _io_out_T_12 = _io_out_T_11 + _GEN_11; // @[popcount.scala 47:43]
  wire [2:0] pop_cnt_4_14_out = popcount_4_14_io_out; // @[popcount.scala 42:26 popcount.scala 42:26]
  wire [15:0] _GEN_12 = {{13'd0}, pop_cnt_4_14_out}; // @[popcount.scala 47:43]
  wire [16:0] _io_out_T_13 = _io_out_T_12 + _GEN_12; // @[popcount.scala 47:43]
  wire [2:0] pop_cnt_4_15_out = popcount_4_15_io_out; // @[popcount.scala 42:26 popcount.scala 42:26]
  wire [16:0] _GEN_13 = {{14'd0}, pop_cnt_4_15_out}; // @[popcount.scala 47:43]
  wire [17:0] _io_out_T_14 = _io_out_T_13 + _GEN_13; // @[popcount.scala 47:43]
  wire [2:0] pop_cnt_4_16_out = popcount_4_16_io_out; // @[popcount.scala 42:26 popcount.scala 42:26]
  wire [17:0] _GEN_14 = {{15'd0}, pop_cnt_4_16_out}; // @[popcount.scala 47:43]
  wire [18:0] _io_out_T_15 = _io_out_T_14 + _GEN_14; // @[popcount.scala 47:43]
  wire [2:0] pop_cnt_4_17_out = popcount_4_17_io_out; // @[popcount.scala 42:26 popcount.scala 42:26]
  wire [18:0] _GEN_15 = {{16'd0}, pop_cnt_4_17_out}; // @[popcount.scala 47:43]
  wire [19:0] _io_out_T_16 = _io_out_T_15 + _GEN_15; // @[popcount.scala 47:43]
  wire [2:0] pop_cnt_4_18_out = popcount_4_18_io_out; // @[popcount.scala 42:26 popcount.scala 42:26]
  wire [19:0] _GEN_16 = {{17'd0}, pop_cnt_4_18_out}; // @[popcount.scala 47:43]
  wire [20:0] _io_out_T_17 = _io_out_T_16 + _GEN_16; // @[popcount.scala 47:43]
  wire [2:0] pop_cnt_4_19_out = popcount_4_19_io_out; // @[popcount.scala 42:26 popcount.scala 42:26]
  wire [20:0] _GEN_17 = {{18'd0}, pop_cnt_4_19_out}; // @[popcount.scala 47:43]
  wire [21:0] _io_out_T_18 = _io_out_T_17 + _GEN_17; // @[popcount.scala 47:43]
  wire [2:0] pop_cnt_4_20_out = popcount_4_20_io_out; // @[popcount.scala 42:26 popcount.scala 42:26]
  wire [21:0] _GEN_18 = {{19'd0}, pop_cnt_4_20_out}; // @[popcount.scala 47:43]
  wire [22:0] _io_out_T_19 = _io_out_T_18 + _GEN_18; // @[popcount.scala 47:43]
  wire [2:0] pop_cnt_4_21_out = popcount_4_21_io_out; // @[popcount.scala 42:26 popcount.scala 42:26]
  wire [22:0] _GEN_19 = {{20'd0}, pop_cnt_4_21_out}; // @[popcount.scala 47:43]
  wire [23:0] _io_out_T_20 = _io_out_T_19 + _GEN_19; // @[popcount.scala 47:43]
  wire [2:0] pop_cnt_4_22_out = popcount_4_22_io_out; // @[popcount.scala 42:26 popcount.scala 42:26]
  wire [23:0] _GEN_20 = {{21'd0}, pop_cnt_4_22_out}; // @[popcount.scala 47:43]
  wire [24:0] _io_out_T_21 = _io_out_T_20 + _GEN_20; // @[popcount.scala 47:43]
  wire [2:0] pop_cnt_4_23_out = popcount_4_23_io_out; // @[popcount.scala 42:26 popcount.scala 42:26]
  wire [24:0] _GEN_21 = {{22'd0}, pop_cnt_4_23_out}; // @[popcount.scala 47:43]
  wire [25:0] _io_out_T_22 = _io_out_T_21 + _GEN_21; // @[popcount.scala 47:43]
  wire [2:0] pop_cnt_4_24_out = popcount_4_24_io_out; // @[popcount.scala 42:26 popcount.scala 42:26]
  wire [25:0] _GEN_22 = {{23'd0}, pop_cnt_4_24_out}; // @[popcount.scala 47:43]
  wire [26:0] _io_out_T_23 = _io_out_T_22 + _GEN_22; // @[popcount.scala 47:43]
  wire [2:0] pop_cnt_4_25_out = popcount_4_25_io_out; // @[popcount.scala 42:26 popcount.scala 42:26]
  wire [26:0] _GEN_23 = {{24'd0}, pop_cnt_4_25_out}; // @[popcount.scala 47:43]
  wire [27:0] _io_out_T_24 = _io_out_T_23 + _GEN_23; // @[popcount.scala 47:43]
  wire [2:0] pop_cnt_4_26_out = popcount_4_26_io_out; // @[popcount.scala 42:26 popcount.scala 42:26]
  wire [27:0] _GEN_24 = {{25'd0}, pop_cnt_4_26_out}; // @[popcount.scala 47:43]
  wire [28:0] _io_out_T_25 = _io_out_T_24 + _GEN_24; // @[popcount.scala 47:43]
  wire [2:0] pop_cnt_4_27_out = popcount_4_27_io_out; // @[popcount.scala 42:26 popcount.scala 42:26]
  wire [28:0] _GEN_25 = {{26'd0}, pop_cnt_4_27_out}; // @[popcount.scala 47:43]
  wire [29:0] _io_out_T_26 = _io_out_T_25 + _GEN_25; // @[popcount.scala 47:43]
  wire [2:0] pop_cnt_4_28_out = popcount_4_28_io_out; // @[popcount.scala 42:26 popcount.scala 42:26]
  wire [29:0] _GEN_26 = {{27'd0}, pop_cnt_4_28_out}; // @[popcount.scala 47:43]
  wire [30:0] _io_out_T_27 = _io_out_T_26 + _GEN_26; // @[popcount.scala 47:43]
  wire [2:0] pop_cnt_4_29_out = popcount_4_29_io_out; // @[popcount.scala 42:26 popcount.scala 42:26]
  wire [30:0] _GEN_27 = {{28'd0}, pop_cnt_4_29_out}; // @[popcount.scala 47:43]
  wire [31:0] _io_out_T_28 = _io_out_T_27 + _GEN_27; // @[popcount.scala 47:43]
  wire [2:0] pop_cnt_4_30_out = popcount_4_30_io_out; // @[popcount.scala 42:26 popcount.scala 42:26]
  wire [31:0] _GEN_28 = {{29'd0}, pop_cnt_4_30_out}; // @[popcount.scala 47:43]
  wire [32:0] _io_out_T_29 = _io_out_T_28 + _GEN_28; // @[popcount.scala 47:43]
  wire [2:0] pop_cnt_4_31_out = popcount_4_31_io_out; // @[popcount.scala 42:26 popcount.scala 42:26]
  wire [32:0] _GEN_29 = {{30'd0}, pop_cnt_4_31_out}; // @[popcount.scala 47:43]
  wire [33:0] _io_out_T_30 = _io_out_T_29 + _GEN_29; // @[popcount.scala 47:43]
  popcount_4 popcount_4 ( // @[popcount.scala 42:51]
    .io_in(popcount_4_io_in),
    .io_out(popcount_4_io_out)
  );
  popcount_4 popcount_4_1 ( // @[popcount.scala 42:51]
    .io_in(popcount_4_1_io_in),
    .io_out(popcount_4_1_io_out)
  );
  popcount_4 popcount_4_2 ( // @[popcount.scala 42:51]
    .io_in(popcount_4_2_io_in),
    .io_out(popcount_4_2_io_out)
  );
  popcount_4 popcount_4_3 ( // @[popcount.scala 42:51]
    .io_in(popcount_4_3_io_in),
    .io_out(popcount_4_3_io_out)
  );
  popcount_4 popcount_4_4 ( // @[popcount.scala 42:51]
    .io_in(popcount_4_4_io_in),
    .io_out(popcount_4_4_io_out)
  );
  popcount_4 popcount_4_5 ( // @[popcount.scala 42:51]
    .io_in(popcount_4_5_io_in),
    .io_out(popcount_4_5_io_out)
  );
  popcount_4 popcount_4_6 ( // @[popcount.scala 42:51]
    .io_in(popcount_4_6_io_in),
    .io_out(popcount_4_6_io_out)
  );
  popcount_4 popcount_4_7 ( // @[popcount.scala 42:51]
    .io_in(popcount_4_7_io_in),
    .io_out(popcount_4_7_io_out)
  );
  popcount_4 popcount_4_8 ( // @[popcount.scala 42:51]
    .io_in(popcount_4_8_io_in),
    .io_out(popcount_4_8_io_out)
  );
  popcount_4 popcount_4_9 ( // @[popcount.scala 42:51]
    .io_in(popcount_4_9_io_in),
    .io_out(popcount_4_9_io_out)
  );
  popcount_4 popcount_4_10 ( // @[popcount.scala 42:51]
    .io_in(popcount_4_10_io_in),
    .io_out(popcount_4_10_io_out)
  );
  popcount_4 popcount_4_11 ( // @[popcount.scala 42:51]
    .io_in(popcount_4_11_io_in),
    .io_out(popcount_4_11_io_out)
  );
  popcount_4 popcount_4_12 ( // @[popcount.scala 42:51]
    .io_in(popcount_4_12_io_in),
    .io_out(popcount_4_12_io_out)
  );
  popcount_4 popcount_4_13 ( // @[popcount.scala 42:51]
    .io_in(popcount_4_13_io_in),
    .io_out(popcount_4_13_io_out)
  );
  popcount_4 popcount_4_14 ( // @[popcount.scala 42:51]
    .io_in(popcount_4_14_io_in),
    .io_out(popcount_4_14_io_out)
  );
  popcount_4 popcount_4_15 ( // @[popcount.scala 42:51]
    .io_in(popcount_4_15_io_in),
    .io_out(popcount_4_15_io_out)
  );
  popcount_4 popcount_4_16 ( // @[popcount.scala 42:51]
    .io_in(popcount_4_16_io_in),
    .io_out(popcount_4_16_io_out)
  );
  popcount_4 popcount_4_17 ( // @[popcount.scala 42:51]
    .io_in(popcount_4_17_io_in),
    .io_out(popcount_4_17_io_out)
  );
  popcount_4 popcount_4_18 ( // @[popcount.scala 42:51]
    .io_in(popcount_4_18_io_in),
    .io_out(popcount_4_18_io_out)
  );
  popcount_4 popcount_4_19 ( // @[popcount.scala 42:51]
    .io_in(popcount_4_19_io_in),
    .io_out(popcount_4_19_io_out)
  );
  popcount_4 popcount_4_20 ( // @[popcount.scala 42:51]
    .io_in(popcount_4_20_io_in),
    .io_out(popcount_4_20_io_out)
  );
  popcount_4 popcount_4_21 ( // @[popcount.scala 42:51]
    .io_in(popcount_4_21_io_in),
    .io_out(popcount_4_21_io_out)
  );
  popcount_4 popcount_4_22 ( // @[popcount.scala 42:51]
    .io_in(popcount_4_22_io_in),
    .io_out(popcount_4_22_io_out)
  );
  popcount_4 popcount_4_23 ( // @[popcount.scala 42:51]
    .io_in(popcount_4_23_io_in),
    .io_out(popcount_4_23_io_out)
  );
  popcount_4 popcount_4_24 ( // @[popcount.scala 42:51]
    .io_in(popcount_4_24_io_in),
    .io_out(popcount_4_24_io_out)
  );
  popcount_4 popcount_4_25 ( // @[popcount.scala 42:51]
    .io_in(popcount_4_25_io_in),
    .io_out(popcount_4_25_io_out)
  );
  popcount_4 popcount_4_26 ( // @[popcount.scala 42:51]
    .io_in(popcount_4_26_io_in),
    .io_out(popcount_4_26_io_out)
  );
  popcount_4 popcount_4_27 ( // @[popcount.scala 42:51]
    .io_in(popcount_4_27_io_in),
    .io_out(popcount_4_27_io_out)
  );
  popcount_4 popcount_4_28 ( // @[popcount.scala 42:51]
    .io_in(popcount_4_28_io_in),
    .io_out(popcount_4_28_io_out)
  );
  popcount_4 popcount_4_29 ( // @[popcount.scala 42:51]
    .io_in(popcount_4_29_io_in),
    .io_out(popcount_4_29_io_out)
  );
  popcount_4 popcount_4_30 ( // @[popcount.scala 42:51]
    .io_in(popcount_4_30_io_in),
    .io_out(popcount_4_30_io_out)
  );
  popcount_4 popcount_4_31 ( // @[popcount.scala 42:51]
    .io_in(popcount_4_31_io_in),
    .io_out(popcount_4_31_io_out)
  );
  assign io_out = _io_out_T_30[7:0]; // @[popcount.scala 47:10]
  assign popcount_4_io_in = io_in[3:0]; // @[popcount.scala 44:16]
  assign popcount_4_1_io_in = io_in[7:4]; // @[popcount.scala 44:16]
  assign popcount_4_2_io_in = io_in[11:8]; // @[popcount.scala 44:16]
  assign popcount_4_3_io_in = io_in[15:12]; // @[popcount.scala 44:16]
  assign popcount_4_4_io_in = io_in[19:16]; // @[popcount.scala 44:16]
  assign popcount_4_5_io_in = io_in[23:20]; // @[popcount.scala 44:16]
  assign popcount_4_6_io_in = io_in[27:24]; // @[popcount.scala 44:16]
  assign popcount_4_7_io_in = io_in[31:28]; // @[popcount.scala 44:16]
  assign popcount_4_8_io_in = io_in[35:32]; // @[popcount.scala 44:16]
  assign popcount_4_9_io_in = io_in[39:36]; // @[popcount.scala 44:16]
  assign popcount_4_10_io_in = io_in[43:40]; // @[popcount.scala 44:16]
  assign popcount_4_11_io_in = io_in[47:44]; // @[popcount.scala 44:16]
  assign popcount_4_12_io_in = io_in[51:48]; // @[popcount.scala 44:16]
  assign popcount_4_13_io_in = io_in[55:52]; // @[popcount.scala 44:16]
  assign popcount_4_14_io_in = io_in[59:56]; // @[popcount.scala 44:16]
  assign popcount_4_15_io_in = io_in[63:60]; // @[popcount.scala 44:16]
  assign popcount_4_16_io_in = io_in[67:64]; // @[popcount.scala 44:16]
  assign popcount_4_17_io_in = io_in[71:68]; // @[popcount.scala 44:16]
  assign popcount_4_18_io_in = io_in[75:72]; // @[popcount.scala 44:16]
  assign popcount_4_19_io_in = io_in[79:76]; // @[popcount.scala 44:16]
  assign popcount_4_20_io_in = io_in[83:80]; // @[popcount.scala 44:16]
  assign popcount_4_21_io_in = io_in[87:84]; // @[popcount.scala 44:16]
  assign popcount_4_22_io_in = io_in[91:88]; // @[popcount.scala 44:16]
  assign popcount_4_23_io_in = io_in[95:92]; // @[popcount.scala 44:16]
  assign popcount_4_24_io_in = io_in[99:96]; // @[popcount.scala 44:16]
  assign popcount_4_25_io_in = io_in[103:100]; // @[popcount.scala 44:16]
  assign popcount_4_26_io_in = io_in[107:104]; // @[popcount.scala 44:16]
  assign popcount_4_27_io_in = io_in[111:108]; // @[popcount.scala 44:16]
  assign popcount_4_28_io_in = io_in[115:112]; // @[popcount.scala 44:16]
  assign popcount_4_29_io_in = io_in[119:116]; // @[popcount.scala 44:16]
  assign popcount_4_30_io_in = io_in[123:120]; // @[popcount.scala 44:16]
  assign popcount_4_31_io_in = io_in[127:124]; // @[popcount.scala 44:16]
endmodule
