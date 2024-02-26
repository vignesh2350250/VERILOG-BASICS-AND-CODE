module mxgt(a,b,s,o);
  input a,b,s;
  output o;
  wire sc,x,y;
  not (sc,s);
  and g1(x,a,sc);
  and g2(y,b,s);
  or g3(o,x,y);
endmodule
  
  
  
