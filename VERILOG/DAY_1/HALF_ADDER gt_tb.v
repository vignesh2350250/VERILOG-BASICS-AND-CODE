module hfd_tb;
  reg A, B;
  wire s,c;
  hfd halfadder(.A(A), .B(B), .s(s), .c(c));
  
  initial begin
    $dumpfile("hfd.vcd");
    $dumpvars(1, hfd_tb);  
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
    $display("time=%0t \tINPUT VALUES: \t A=%b B=%b \t output value s = % \t c=%", $time, A, B, s, c);
endmodule
