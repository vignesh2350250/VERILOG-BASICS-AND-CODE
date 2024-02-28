module tb;
  reg clk, reset;
  reg s, r;
  wire q, q_bar;
  
  sr_flipflop dff(
    .s(s),
    .r(r),
    .clk(clk),
    .reset(reset),
    .q(q),
    .q_bar(q_bar)
  );

  initial begin
    $dumpfile("SR_flipflop.vcd");
    $dumpvars(1, tb);
    clk = 0;
    reset = 0;
    #2 reset = 1;
    #3 s = 1; r = 0;
    #4 s = 0; r = 1;
    #3 reset = 0;
    #1 reset=1;
    #1  s=1;r=0;
    
     #10$finish;
  end

  always #5 clk = ~clk;

  always @* begin
    $display("Reset=%b --> q=%b, q_bar=%b", reset, q, q_bar);
  end

endmodule
