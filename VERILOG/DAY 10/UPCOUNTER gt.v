module Upcounter(input reg clk,
               input reg reset,              
               output reg[3:0]count);
  always @(posedge clk )begin
    if(reset)
      count <=4'b0000;
    else
      count <= count+1;//Up_counter
    
  end
  always @(*) begin
    $monitor("count=----%b",count );
  end
endmodule
