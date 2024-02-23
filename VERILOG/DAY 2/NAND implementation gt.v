module nandim(a,b,c,d,x,y,z,w,o);
  input a,b,c,d;
  output x,y,z,w,o;
  nand g1(x,a,b);
  nand g2(y,c,d);
  nand g3(z,x,x);
  nand g4(w,y,y);
  nand g5(o,z,w);
endmodule
