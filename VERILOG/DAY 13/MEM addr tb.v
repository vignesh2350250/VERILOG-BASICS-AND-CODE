module memory_addressing_tb;
  reg clk,wr;
  reg [3:0]datain;
  reg [4:0]addr;
  wire [3:0]dataout;
  memory_addressing ab(.clk(clk),.wr(wr),.datain(datain),.addr(addr),.dataout(dataout));
  always #5clk=~clk;
  initial begin
   clk=1;wr=1;datain=1001;addr=00011;
    #2 wr=0;
    #4 wr=1; datain=1111;addr=11111;
    #5 wr=0;     
  #15
    $finish;
  end
  initial begin
    $monitor("clk=%d wr=%d datain=%b dataout=%b addr=%b",clk,wr,datain,dataout,addr);
  end
endmodule
    
    
