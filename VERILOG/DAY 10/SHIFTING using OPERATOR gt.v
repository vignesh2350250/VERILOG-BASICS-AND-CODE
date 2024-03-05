module universal_shiftreg(input reg clk,input reg reset,input reg[4:0] d,output reg[4:0]q,input reg[1:0]s);
  
  always @(*)begin
    if (reset)
      q=d;
    else begin
    case(s) 
      2'b00: q=d;//no change     
      2'b01: q=d<<1;//Shift left operation
      2'b10: q=d>>1;//Shift right operation
      2'b11: q=d;//parallel input
      
      
    endcase
    end   
  end
endmodule
