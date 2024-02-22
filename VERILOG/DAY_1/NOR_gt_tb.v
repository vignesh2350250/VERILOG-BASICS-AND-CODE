module norg_tb;
reg A, B;
wire Y;
norg norgate(.A(A),.B(B),.Y(Y));
initial begin
  $dumpfile("norg.vcd");
  $dumpvars(1,norg_tb);  
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
