module mux21_tb;
  reg i1,i2,s;
  mux21 muliplex(.i1(i1),.i2(i2),.s(s),.o(o));
  initial begin
    $dumpfile("mux21.vcd");
    $dumpvars(1, mux21_tb);
  end
  initial begin 
    i1=1'b0;i2=1'b0;s=1'b0;
    #10i1=1'b0;i2=1'b1;s=1'b0;
    #10i1=1'b0;i2=1'b1;s=1'b1;
    #10i1=1'b1;i2=1'b1;s=1'b1;
    #10$finish;
  end
  always @*
    $display("time=%d \t i1=%b \t i2=%b \t s=%b \t o=%b",$time,i1,i2,s,o);
endmodule
