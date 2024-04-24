`timescale 1ns/1ps
module clock_gen(input enable ,output reg clk);
  parameter FREQ=100000;
  parameter PHASE=0;
  parameter DUTY = 50;
  real clk_pd=1.0/(FREQ*1e3)*1e9;
  real clk_on =DUTY /100.0*clk_pd;
  real clk_off=(100.0-DUTY)/100.0*clk_pd;
  real quarter =clk_pd/4;
  real start_dly=quarter *PHASE/90;
  
  reg start_clk;
  initial begin
    $display("frequency %0d",FREQ);
    $display("PHASE %0d",PHASE);
    $display(" duty %0d",DUTY);
    $display("period %0.3f",clk_pd);
    $display("clock on period %0.3f",clk_on);
    $display("clock off period %0.3f",clk_off);
    $display("quarter %0.3f",quarter);
    $display("start delay %0.3f",start_dly);
  end
  initial begin
    clk<=0;
    start_clk<=0;
  end
  always@(posedge enable or negedge enable)begin
    if(enable)begin
      #(start_dly) start_clk=1;
    end else begin
      #(start_dly) start_clk=0;
    end
  end
  always@ (posedge start_clk)begin
    if(start_clk)begin
      clk=1;
      while(start_clk)begin
        #(clk_on)clk=0;
        #(clk_off)clk=1;
      end
      clk=0;
    end
  end
endmodule
