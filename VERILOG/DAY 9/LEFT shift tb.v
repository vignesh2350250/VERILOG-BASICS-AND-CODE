module shiftreg_tb;
  reg clk ;
  reg rst;
  reg din;
  reg [3:0]val;
  wire [3:0]dout;
  shiftreg dut(.clk(clk),.rst(rst),.din(din),.val(val),.dout(dout));
  always #5 clk= ~clk;
  initial begin
    rst=1;
    #10 rst=0;
  end
  initial begin 
    clk=0;
    din=1'b0;
    val=4'b0111;
    
    #20 $finish;
  end 
  always @(posedge clk) begin
    $display("Time %0t: din = %b, valu=%b", $time, din,val);
  end
endmodule
  
