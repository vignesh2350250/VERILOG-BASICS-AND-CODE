module SR_latch_tb;
  reg  R, S;
  wire Q, Qnot;
  
  SR_latch dut(R,S,Q,Qnot);
  
  initial
    begin
      $dumpfile("latch.vcd");
      $dumpvars(1);
      $display("S R !Q Q");
      $monitor("%b %b %b  %b",S,R,Qnot,Q);
      R=1'b1;  S=1'b1;
  #5  R=1'b1;  S=1'b0;
  #5  R=1'b1;  S=1'b1;
  #5  R=1'b0;  S=1'b1;
  #5  R=1'b1;  S=1'b1;
  #5  R=1'b0;  S=1'b0;
  #5  R=1'b1;  S=1'b1;
  #5  R=1'b1;  S=1'b1;
      
  #5  $finish;
  end
endmodule

  
