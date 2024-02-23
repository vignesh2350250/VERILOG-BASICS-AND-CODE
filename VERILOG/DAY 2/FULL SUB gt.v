module fsb(output D,Bo, input A,B,Bin);
  wire x,y,z;
  hfb d1(.x(x),.y(y),.A(A), .B(B));
  
  hfb d2(.x(D),.y(z),.A(x),.B(Bin));
 
  or(Bo,y,z);
 
endmodule

module hfb(output x,y, input A,B);
  xor(x,A,B);
  not(cm,A);
  and(y,cm,B);
endmodule
