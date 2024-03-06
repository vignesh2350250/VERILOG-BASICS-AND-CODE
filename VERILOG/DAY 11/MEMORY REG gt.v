module mem(
  input clk,
  input rst,
  input wr,
  input [7:0]wdata,
  output [7:0]rdata);
  reg [7:0]regis;
  always@(posedge clk)begin
    if(rst)begin
      regis<=0;
    end
    else begin
      if(wr==1)begin
        regis<=wdata;
      end
      else begin
        regis<=regis;
      end
    end
  end
  assign rdata=(~wr)?regis:0;
   initial begin 
    $monitor("register=%b",regis);
  end
endmodule
