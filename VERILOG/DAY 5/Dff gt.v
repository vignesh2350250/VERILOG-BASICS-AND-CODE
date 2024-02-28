module dff(d,clk,assrst,q);
  input d;
  input clk;
  input assrst;
  output reg q;
  
  always@(posedge clk )
    begin 
      if(assrst==1'b1)
        q <= 1'b0; 
      else 
        q <= d;
    end
endmodule
