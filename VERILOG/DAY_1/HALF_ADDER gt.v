module hfd(output s,c, input A,B);
  xor(s,A,B);
  and(c,A,B);
endmodule
