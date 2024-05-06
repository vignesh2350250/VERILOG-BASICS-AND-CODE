
module full_adder(
   sum,
   carry,
    a,
    b,
    c);
   input a,b,c;                      
  
   output wire sum,
          carry;                 
   
   assign sum = a ^ b ^ c;
  assign carry = (a & b) | (b & c)  | (c & a) ;
endmodule
