module ux607_clkgate (
  input   clk_in,
  input   clkgate_bypass,
  input   clock_en,
  output  clk_out
);

reg enb;

always@(negedge clk_in) begin
    enb <= clock_en;
end

assign clk_out = enb & clk_in;

endmodule 
