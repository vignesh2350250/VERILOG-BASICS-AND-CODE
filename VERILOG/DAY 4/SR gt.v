module SR_latch(R,S,Q,Qnot);
  input  R, S;
  output Q, Qnot;  
  nand(Qnot, R, Q); 
  nand(Q, S, Qnot); 
endmodule
