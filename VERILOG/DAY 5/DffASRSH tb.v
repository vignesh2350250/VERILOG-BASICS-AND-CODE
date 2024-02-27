module dff_tb;
  reg d;
  reg clk;
  reg assrst;
  wire q;
  dff uut(d,clk,assrst,q);
  initial begin
    $dumpfile("dff.vcd");
    $dumpvars(1);  
  end

  initial begin 
    clk=0;
    forever #10 clk=~clk;
  end
  initial begin 
    assrst=1;
    d <= 0;
    #100;
    assrst=0;
    d <= 1;
    #100;
    d <= 0;
    #100;
    d <= 1;
    #400;
    $finish;
  end 
  always@*
    $display("d=%b \t clk=%b \t q=%b",d,clk,q);
endmodule 
  
