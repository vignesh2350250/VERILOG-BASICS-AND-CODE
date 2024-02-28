module sr_flipflop(
  input s,
  input r,
  input clk,
  input reset,
  output reg q,
  output reg q_bar
);

  always @(posedge clk or posedge reset) begin
    if (~reset)
      q <= 1'b0;
    else if(s == 1'b0 && r == 1'b0)
      q <= q;
    else if(s == 1'b0 && r == 1'b1)
      q <= 1'b0;
    else if(s == 1'b1 && r == 1'b0)
      q <= 1'b1;
    else
      q <= 1'bx;
  end

  assign q_bar = ~q;

endmodule
