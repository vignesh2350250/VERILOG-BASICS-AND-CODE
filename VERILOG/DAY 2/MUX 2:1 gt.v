module mux21(output o, input i1,i2,s);
  wire sc,x,y;
  not(sc,s);
  and(x,i1,sc);
  and(y,s,i2);
  or(o,x,y);
endmodule
