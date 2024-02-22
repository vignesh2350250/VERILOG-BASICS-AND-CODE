module fd_tb;
  reg A, B , Cin;
  wire So,Co;
  fd halfadder(.A(A), .B(B), .Cin(Cin), .So(So),.Co(Co));
  
  initial begin
    $dumpfile("fd.vcd");
    $dumpvars(1, fd_tb);  
  end

  initial begin
    A = 1'b0; B = 1'b0; Cin = 1'b0;
    #10 A = 1'b0; B = 1'b0; Cin = 1'b1;
    #10 A = 1'b0; B = 1'b1; Cin = 1'b0;
    #10 A = 1'b0; B = 1'b1; Cin = 1'b1;
    #10 A = 1'b1; B = 1'b0; Cin = 1'b0;
    #10 A = 1'b1; B = 1'b0; Cin = 1'b1;
    #10 A = 1'b1; B = 1'b1; Cin = 1'b0;
    #10 A = 1'b1; B = 1'b1; Cin = 1'b1;
    #20 $finish;
  end

  always @*
    $display("time=%0t \tINPUT VALUES: \t A=%b B=%b Cin=%b\t output value So = %b \t Co=%b", $time, A, B,Cin, So, Co);
endmodule
