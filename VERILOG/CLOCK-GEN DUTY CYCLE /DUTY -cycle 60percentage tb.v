module tb;
  wire clk1;
  wire clk2;
 
  reg enable;
  reg [7:0]dly;
  
  clock_gen u0(enable,clk1);
  clock_gen #(.DUTY(60))u1(enable,clk2);

  initial begin
    $dumpfile("clock_gen.vcd");
    $dumpvars(1);
  end
  
  initial begin
    enable<=0;
    for (int i=0;i<10;i=i+1)begin
      dly=$random;
      #(dly)enable<=~enable;
      $display("i=%0d dly=%0d",i,dly);
    end
    #50 $finish;
  end 
endmodule

  
