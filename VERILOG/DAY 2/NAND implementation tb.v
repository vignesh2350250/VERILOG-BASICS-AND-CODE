module nandim_tb;
  reg a,b,c,d,o;
  
  nandim uui(.a(a), .b(b), .c(c), .d(d),.o(o));
  initial begin
    $dumpfile("nandim.vcd");
    $dumpvars(1, nandim_tb);  
  end
  initial begin
    a=1'b1; b=1'b1; c=1'b1; d=1'b1;
    #10a=1'b0; b=1'b0; c=1'b0; d=1'b0;
    #10$finish;
  end
  always @*
    $display("a=%b \t b=%b \t c=%b \t d=%b o=%d",a,b,c,d,o);
endmodule
