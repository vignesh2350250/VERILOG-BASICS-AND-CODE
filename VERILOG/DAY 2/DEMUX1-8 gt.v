module m18(input d,s0,s1,s2,output y0,y1,y2,y3,y4,y5,y6,y7);
  not(s1c,s1);
  not(s0c,s0);
  not(s2c,s2);
  and(y0,s0c,s1c,s2c,d);
  and(y1,s0c,s1c,s2,d);
  and(y2,s0c,s1,s2c,d);
  and(y3,s0c,s1,s2,d);
  and(y4,s0,s1c,s2c,d);
  and(y5,s0,s1c,s2,d);
  and(y6,s0,s1,s2c,d);
  and(y7,s0,s1,s2,d);
endmodule
