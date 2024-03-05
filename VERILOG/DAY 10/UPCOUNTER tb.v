module Upcounter_tb;
  reg clk,reset;
  wire [3:0] count;
  Upcounter aa(.clk(clk),
               .reset(reset),
               .count(count));
   always #5 clk= ~clk;
  initial begin
    
    $dumpfile("Upcounter.vcd");
    $dumpvars(1);
    
  end
  initial begin
    clk=0;
    reset=1;
    #10
    reset=0;
    #300
    
    $finish;
  end
 
 always@(posedge clk) begin
  $display("Time %0t: count valu=%d", $time,count);
  end
  
endmodule
