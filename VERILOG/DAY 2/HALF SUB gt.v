module hsb(output d,bo, input A,B);
  xor(d,A,B);
  not(cm,A);
  and(bo,cm,B);
endmodule
