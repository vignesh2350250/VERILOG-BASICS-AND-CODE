
module memory_addressing(input reg clk,
                         input reg[3:0]datain,
                         input wr,
                         input [4:0]addr,
                         output reg[3:0]dataout);
  reg [3:0]ram[15:0];
  always @ (posedge clk)begin
    if(wr)
      ram[addr]<=datain;
    else
      dataout<=ram[addr];
  end
endmodule
    
