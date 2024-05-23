module counter(
  input clk,
  input rst,
  input en,
  input ds,
  output reg [7:0]ctr);
  
  always@(posedge clk or posedge rst)begin
    if(rst)
      ctr<=8'b0;
    else if(ctr==4'b1010)
      ctr<=4'b0;
    
    else if(en && !ds)
      ctr<=ctr+1;
    
    else if(!en && ds)
      ctr<=ctr-1;
 
//   always@(posedge clk)begin
//     if(en==1'b1 && ds==1'b0 && rst==1'b0)begin
//       ctr<=ctr+1;
//     end
//   end
//   always@(posedge clk)begin
//     if(ds==1'b1 && en==1'b0 && rst==1'b0)begin
//       ctr<=ctr-1;
//     end 
   end
endmodule
