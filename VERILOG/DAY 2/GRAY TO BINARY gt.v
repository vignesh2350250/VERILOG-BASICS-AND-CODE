module g2b(input [3:0]g,output [3:0]b);
  xor A1(b[0],b[1],g[0]); 
  xor A2(b[1],b[2],g[1]); 
  xor A3(b[2],b[3],g[2]);
  buf A4(b[3],g[3]);
endmodule
