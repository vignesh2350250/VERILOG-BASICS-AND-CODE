module b2g_tb;
  reg [3:0] b;
  wire [3:0] g;
  b2g uut(.b(b),.g(g));
  initial begin
    $dumpfile("b2g.vcd");
    $dumpvars(1, b2g_tb);  
  end
  initial begin
    b <= 0; #10;
    b <= 1;   #10;
    b <= 2;   #10;
    b <= 3;   #10;
    b <= 4;   #10;
    b <= 5;   #10;
    b <= 6;   #10;
    b <= 7;   #10;
    b <= 8;   #10;
    b <= 9;   #10;
    b <= 10;  #10;
    b <= 11;  #10;
    b <= 12;  #10;
    b <= 13;  #10;
    b <= 14;  #10;
    b <= 15;  #10;
    #10$finish;
  end
  always@*
    $display("binary=%b \t grey=%b",b,g);
endmodule
    
