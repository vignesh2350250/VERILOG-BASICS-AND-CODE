module Upcounter(input reg clk,
               input reg reset,              
               output reg[3:0]count);
  always @(posedge clk )begin
    if(reset)
      count <=4'b1111;
    else
      count <= count-1;//down_counter
    
  end
  always @(*) begin
    $monitor("count=----%b",count );
  end
endmodule
