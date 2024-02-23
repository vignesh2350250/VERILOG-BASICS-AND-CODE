
module de24_tb;
  reg a,b,e;
  
  de24 decoder(.a(a),.b(b),.e(e),.y0(y0),.y1(y1),.y2(y2),.y3(y3));
  initial begin
    $dumpfile("de24.vcd");
    $dumpvars(1, de24_tb);  
  end
  initial begin
    e=1;a=1'bx;b=1'bx;#5
    e=0;a=0;b=0;#5
    e=0;a=0;b=1;#5
    e=0;a=1;b=0;#5
    e=0;a=1;b=1;#5
    $finish;
  end
    
  
  always @*
    $display("e=%b a=%b b=%b y0=%b y1=%b y2=%b y3=%b",e,a,b,y0,y1,y2,y3);
endmodule
