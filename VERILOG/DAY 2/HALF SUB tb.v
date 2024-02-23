module hsb_tb;
  reg A, B;
  wire d,bo;
  hsb halfsub(.A(A), .B(B), .d(d), .bo(bo));
  
  initial begin
    $dumpfile("hsb.vcd");
    $dumpvars(1, hsb_tb);  
  end

  initial begin
    A = 1'b0; B = 1'b0;
    #10 A = 1'b0; B = 1'b1;
    #10 A = 1'b1; B = 1'b0;
    #10 A = 1'b1; B = 1'b1;
    #10
    $finish;
  end

  always @*
    $display("time=%0t \tINPUT VALUES: \t A=%b B=%b \t output value d = % \t bo=%", $time, A, B, d, bo);
endmodule
