module sram(
  clk,
  rst,
  data,
  addr,
we,
re,
datao);
  input clk,rst,we,re;
  input [8:0]addr;
  input [8:0]data;
  output reg [8:0]datao;
  reg [8:0]mem[8:0];
  
  
  always@(posedge clk)begin
    if(re==1'b1 && we==1'b0 && rst==1'b0)begin
      datao<=mem[addr];
      $display("data wrote done------- -  -   -    -     -      -       -");
      
    end else begin
      $display("----##############----");
    end
  end



  always@(posedge clk)begin
    if(re==1'b0 && we==1'b1 && rst==1'b0)begin
      mem[addr]<=data;
      $display("data wrote");
      
    end else begin
      $display("----##############----");
    end
  end
  
  always@(posedge clk)begin
    if(rst==1'b1)begin
      for (int i = 0; i < 8; i++) begin
        for (int j = 0; j < 8; j++) begin
          mem[i][j] = 8'b00; 
        end
    end
    end
  end
endmodule
