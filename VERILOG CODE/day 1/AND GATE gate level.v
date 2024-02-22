//your testbench
module andg_tb;
reg A, B;
wire Y;
andg andgate(.A(A),.B(B),.Y(Y));
initial begin
  $dumpfile("andg.vcd");
  $dumpvars(0,andg_tb);  
end
initial begin
  A=1'b0;B=1'b0;
  #10 A=1'b0;B= 1'b1;
  #10 A=1'b1;B= 1'b0;
  #10 A=1'b1;B=1'b1;
  #10
  $finish;
end
always @(Y)
  $monitor( "time=%0t \tINPUT VALUES: \t A=%b B=%b \t output value Y =%b",$time,A,B,Y);
endmodule



  
//your design
module andg (A,B,Y);
  input A,B;
  output Y;
  assign Y=A & B;
endmodule
