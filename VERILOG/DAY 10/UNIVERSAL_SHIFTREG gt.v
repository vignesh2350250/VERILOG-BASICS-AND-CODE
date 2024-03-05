module shiftreg(
  input clk,
  input rst,
  input din,
  input [3:0]val,
  input [1:0]sel,
  output reg [3:0] dout 
);

  reg [3:0] shifted_dout; 

  always @(posedge clk or posedge rst) begin
    if (rst) begin
      shifted_dout <= 4'b0000;
    end
    
    else begin
      case(sel)
      2'b00: shifted_dout<=val;//no change     
        2'b01: shifted_dout<={din,val[3:1]};//Shift right operation
        2'b10: shifted_dout<={val[2:0],din};//Shift left operation
      2'b11: shifted_dout<=val;//parallel input
      endcase

    end
  end 

  always @* begin
    $monitor("shifted value=%b",shifted_dout );
    dout <= shifted_dout; 
  end

endmodule
