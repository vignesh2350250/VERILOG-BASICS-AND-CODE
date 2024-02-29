module opbw_tb;
  reg [3:0] a, b;
  wire [5:0] y1, y2, y3, y4;
  opbw jj(a,b,y1,y2,y3,y4);

  initial begin
    $dumpfile("opbw.vcd");
    $dumpvars(1);
  end

  initial begin
    $monitor("a=%b b=%b y1=%b y2=%b y3=%b y4=%b ", a, b, y1, y2, y3, y4);
    a = $random; b = 4; #5;
    $finish;
  end
endmodule
