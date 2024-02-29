module myfun(input reg [3:0]a,input reg [3:0]b,output reg [3:0]o);
  function [4:0]add(input[2:0]x,input[2:0]y);
    begin
      
      add=x+y;
    end
  endfunction
  initial begin
    $display("sum",add(2,3));
  end
endmodule
