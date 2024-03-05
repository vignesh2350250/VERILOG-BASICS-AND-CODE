module shiftreg(
  input clk,
  input rst,
  input din,
  input [3:0]val,
  output reg [3:0] dout 
);

  reg [3:0] shifted_dout; 

  always @(posedge clk or posedge rst) begin
    if (rst) begin
      shifted_dout <= 4'b0000;
    end
    else begin
      shifted_dout <= {val[2:0],din };
    end
  end 

  always @* begin
    $monitor("shifted value=%b",shifted_dout );
    dout <= shifted_dout; 
  end

endmodule
