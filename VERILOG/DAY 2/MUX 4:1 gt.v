module m41(o, a, b, c, d, s0, s1);
  output o; 
  input a, b, c, d, s0, s1;
  wire s0c,s1c,l1,l2,l3,l4;
  not(s0c,s0);
  not(s1c,s1);
  and (l1,s0c,s1c,a),(l2,s0c,s1,b),(l3,s0,s1c,c),(l4,s0,s1,d);
  or (o,l1,l2,l3,l4);
endmodule 
  
