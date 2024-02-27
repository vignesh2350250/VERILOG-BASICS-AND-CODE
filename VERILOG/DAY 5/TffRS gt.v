module tff(clk,reset,t,q);
input clk,reset,t;
output reg q=0;

always @ (posedge clk )
  begin
  if(reset)
    q <= 0;
  else
    if(t)
      q = ~q;
    else 
      q <= q;
    
  end
endmodule
