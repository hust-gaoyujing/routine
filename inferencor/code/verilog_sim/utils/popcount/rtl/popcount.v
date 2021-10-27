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
  input         clock,
  input         reset,
  input  [15:0] io_in,
  output [4:0]  io_out
);
  wire [3:0] popcount_4_io_in; // @[popcount.scala 42:51]
  wire [2:0] popcount_4_io_out; // @[popcount.scala 42:51]
  wire [3:0] popcount_4_1_io_in; // @[popcount.scala 42:51]
  wire [2:0] popcount_4_1_io_out; // @[popcount.scala 42:51]
  wire [3:0] popcount_4_2_io_in; // @[popcount.scala 42:51]
  wire [2:0] popcount_4_2_io_out; // @[popcount.scala 42:51]
  wire [3:0] popcount_4_3_io_in; // @[popcount.scala 42:51]
  wire [2:0] popcount_4_3_io_out; // @[popcount.scala 42:51]
  wire [2:0] pop_cnt_4_0_out = popcount_4_io_out; // @[popcount.scala 42:26 popcount.scala 42:26]
  wire [2:0] pop_cnt_4_1_out = popcount_4_1_io_out; // @[popcount.scala 42:26 popcount.scala 42:26]
  wire [3:0] _io_out_T = pop_cnt_4_0_out + pop_cnt_4_1_out; // @[popcount.scala 47:43]
  wire [2:0] pop_cnt_4_2_out = popcount_4_2_io_out; // @[popcount.scala 42:26 popcount.scala 42:26]
  wire [3:0] _GEN_0 = {{1'd0}, pop_cnt_4_2_out}; // @[popcount.scala 47:43]
  wire [4:0] _io_out_T_1 = _io_out_T + _GEN_0; // @[popcount.scala 47:43]
  wire [2:0] pop_cnt_4_3_out = popcount_4_3_io_out; // @[popcount.scala 42:26 popcount.scala 42:26]
  wire [4:0] _GEN_1 = {{2'd0}, pop_cnt_4_3_out}; // @[popcount.scala 47:43]
  wire [5:0] _io_out_T_2 = _io_out_T_1 + _GEN_1; // @[popcount.scala 47:43]
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
  assign io_out = _io_out_T_2[4:0]; // @[popcount.scala 47:10]
  assign popcount_4_io_in = io_in[3:0]; // @[popcount.scala 44:16]
  assign popcount_4_1_io_in = io_in[7:4]; // @[popcount.scala 44:16]
  assign popcount_4_2_io_in = io_in[11:8]; // @[popcount.scala 44:16]
  assign popcount_4_3_io_in = io_in[15:12]; // @[popcount.scala 44:16]
endmodule
