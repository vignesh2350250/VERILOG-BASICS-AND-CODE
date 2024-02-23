module m41_tb;
  reg a,b,c,d,s0,s1;
  wire o;
  m41 mux41(.o(o), .a(a), .b(b), .c(c), .d(d), .s0(s0), .s1(s1));
  initial begin
    $dumpfile("m41.vcd");
    $dumpvars(1, m41_tb);  
  end
  initial begin
    a=1'b1; b=1'b0; c=1'b0; d=1'b0;s0=1'b0; s1=1'b0;
    #10a=1'b0; b=1'b1; c=1'b0; d=1'b0;s0=1'b0; s1=1'b1;
    #10a=1'b0; b=1'b0; c=1'b1; d=1'b0;s0=1'b1; s1=1'b0;
    #10a=1'b0; b=1'b0; c=1'b0; d=1'b1;s0=1'b1; s1=1'b1;
    
    #10 $finish;
  end
  always@(a or b or c or d or s0 or s1) 
    $monitor("At time = %t, Output = %d", $time, o);
endmodule
