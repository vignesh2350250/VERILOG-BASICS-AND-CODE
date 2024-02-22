module fd(output So,Co, input A,B,Cin);
  wire x,y,z;
  hf d1(.x(x),.y(y),.A(A), .B(B));
  
  hf d2(.x(So),.y(z),.A(x),.B(Cin));
 
or(Co,y,z);
 
endmodule

module hf(output x,y, input A,B);
  xor(x,A,B);
  and(y,A,B);
endmodule
