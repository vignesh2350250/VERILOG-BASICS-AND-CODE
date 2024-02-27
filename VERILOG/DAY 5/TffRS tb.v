module tff_tb;
  reg clk;
  reg reset;
  reg t;
  wire q;
  tff uut(.clk(clk),.reset(reset),.t(t),.q(q));
  initial begin
    $dumpfile("tff.vcd");
    $dumpvars(1);  
  end
  always#10 clk=~clk;
  initial begin 
    {reset,t,clk}<=0;
    #1reset=1;
    #7 t=1;
    #1 reset=0;
    #6 reset=1;
    #5t=0;
    #6
    
    #12reset=0;
    
    
    
    #20 $finish;
  end 
  always@*
    $monitor("reset=%b \t clk=%b \t t=%b",reset,clk,t);    
endmodule 
  
