module mem_tb;
  reg clk;
  reg rst;
  reg wr;
  reg [7:0] wdata;
  wire rdata;
  mem nj (
    .clk(clk),
    .rst(rst),
    .wr(wr),
    .wdata(wdata),
    .rdata(rdata)
  );
  initial begin
    $dumpfile("mem_tb.vcd");
    $dumpvars(1);
  end
    
  
  always #10 clk = ~clk;
  
  initial begin
    clk = 0;
    rst = 1;
    #10 rst = 0;
    wr = 1;
    #10
    wdata = 8'b10001111;
    #100 
    wr=0;
    $finish;
  end
  
  initial begin 
    $display("clk=%b reset=%b wr=%b rdata=%b ", clk, rst, wr,rdata);
  end
endmodule
