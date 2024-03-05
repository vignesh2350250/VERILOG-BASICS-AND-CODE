module shiftreg_tb;
  reg clk ;
  reg rst;
  reg din;
  reg [3:0]val;
  reg [1:0]sel;
  wire [3:0]dout;
  shiftreg dut(.clk(clk),.rst(rst),.din(din),.val(val),.sel(sel),.dout(dout));
  always #5 clk= ~clk;
  initial begin
    rst=1;
    #10 rst=0;
  end
  initial begin 
    clk=0;
    din=1'b0;
    
    val=4'b1100;
    #20 sel=2'b00;
    #20 sel=2'b01;
    #20 sel=2'b10;
    #20 sel=2'b11;
    
    #20 $finish;
  end 
  always @(posedge clk) begin
    $display("Time %0t: din = %b, valu=%b", $time, din,val);
  end
endmodule
  
