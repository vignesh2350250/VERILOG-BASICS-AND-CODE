module m18_tb;
  reg d,s0,s1,s2;
  m18 gate(.d(d),.s0(s0),.s1(s1),.s2(s2),.y0(y0),.y1(y1),.y2(y2),.y3(y3),.y4(y4),.y5(y5),.y6(y6),.y7(y7));
  initial begin
    $dumpfile("m18.vcd");
    $dumpvars(1, m18_tb); 
  end
  initial begin
    d = 1;s0 = 0;s1 = 0;s2 = 0;
    #100; d = 1;s0 = 0;s1 = 0;s2 = 1;
    #100; d = 1;s0 = 0;s1 = 1;s2 = 0;
    #100; d = 1;s0 = 0;s1 = 1;s2 = 1;
    #100; d = 1;s0 = 1;s1 = 0;s2 = 0;
    #100; d = 1;s0 = 1;s1 = 0;s2 = 1;
    #100; d = 1;s0 = 1;s1 = 1;s2 = 0;
    #100; d = 1;s0 = 1;s1 = 1;s2 = 1;
    #100$finish;
  end
  always @*
    $display("d=%b\t s0=%b\t s1=%b \t s2=%b \t outputs y0=%b y1=%b y2=%b y3=%b y4=%b y5=%b y6=%b y=7%b ",d,s0,s1,s2,y0,y1,y2,y3,y4,y5,y6,y7);
endmodule 
