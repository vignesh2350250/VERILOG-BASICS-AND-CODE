module en42(a,b,c,d,x,y);
output x,y;
input a,b,c,d;
  xor (x , a , b);
  xor (y , a , c);
endmodule
