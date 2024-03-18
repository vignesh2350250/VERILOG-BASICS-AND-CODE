module fsm2_tb;
  reg clk,reset,in;
  wire out;
  wire [2:0]state,next;
  fsm2 aa(.clk(clk),.reset(reset),.in(in),.out(out),.state(state),.next(next));
  always #4 clk=~clk;
  initial begin
    clk=1;
    reset=1;
   
    #5reset=0;
  end
  initial begin
    #2 in=1'b1;
    #4 in=1'b1;
    #4 in=1'b0;
    #5 in=1'b1;
    #4 in=1'b0;
    #5 in=1'b1;
    #100 $finish;
  end
  initial begin
    $monitor("clk=%d reset=%d in=%d out=%d state=%b next=%b",clk,reset,in,out,state,next);
  end
endmodule
