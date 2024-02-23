module b2g(input [3:0]b,output [3:0]g);
  buf(g[3],b[3]);
  xor g1(g[2],b[3],b[2]);
  xor g2(g[1],b[2],b[1]);
  xor g3(g[0],b[1],b[0]);
endmodule
