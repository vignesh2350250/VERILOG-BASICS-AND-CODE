module mxgt_tb;
  reg a,b,s;
  wire o;
  mxgt uut(.a(a),.b(b),.o(o),.s(s));
  initial begin
    $dumpfile("mxgt.vcd");
    $dumpvars(1,mxgt_tb);  
  end
  initial begin
    a=1'b0;b=1'b1;s=1'b0;
    #10;
    a=1'b0;b=1'b1;s=1'b1;
    #10;
    $finish;
  end
  always@*
    $display("a=%b \t b=%b \t s=%b \t out=%b \t,a,b,s,o");
endmodule
  
