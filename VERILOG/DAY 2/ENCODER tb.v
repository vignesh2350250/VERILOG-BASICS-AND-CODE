module en42_tb;
  reg a,b,c,d,x,y;
  en42 unu(.a(a),.b(b),.c(c),.x(x),.y(y));
  initial begin
    $dumpfile("en42.vcd");
    $dumpvars(1, en42_tb);  
  end
  initial begin
    a=0; b=0;c=0;d=1;
    #10a=0; b=0;c=1;d=0;
    #10a=0; b=1;c=0;d=0;
    #10a=1; b=0;c=0;d=0;
    #10$finish;
  end
  always@*
    
    $display(" time=%d \t a=%b\t b=%b\t c=%b \t d=%b \t x=%b \t y=%b", $time,a,b,c,d,x,y);
endmodule
