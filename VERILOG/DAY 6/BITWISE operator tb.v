module opbw_tb;
  reg [4:0] a, b;
  wire [4:0] y1, y2, y3, y4, y5;
  opbw jj(a,b,y1,y2,y3,y4,y5);

  initial begin
    $dumpfile("opbw.vcd");
    $dumpvars(1);
  end

  initial begin
    $monitor("a=%b b=%b o1=%b o2=%b o3=%b o4=%b o5=%b", a, b, y1, y2, y3, y4, y5);
    a = $random; b = $random; #5;
    $finish;
  end
endmodule
