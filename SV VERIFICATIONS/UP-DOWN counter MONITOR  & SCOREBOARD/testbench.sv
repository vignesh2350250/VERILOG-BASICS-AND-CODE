`include "test.sv"
`include "interface.sv"

module counter_tb;
  countertest tt;	
  mailbox mail;
  mailbox m1;
  inter intf();
  counter dut(.clk(intf.clk),
              .rst(intf.rst),
              .en(intf.en),
              .ds(intf.ds),
              .ctr(intf.ctr));
  
  initial begin
    mail=new();
    tt=new(intf,mail,m1);
    fork
      tt.memory;
      tt.run;
    join
  end
     initial begin
       intf.clk=1'b1;
       
       forever #5 intf.clk=~intf.clk;
     end
  initial begin
    intf.rst=1'b1;
    #10;
    intf.en=1'b1;
    intf.ds=1'b0;
    intf.rst=1'b0;
    #200
    intf.en=1'b0;
    intf.ds=1'b1;
    intf.rst=1'b0;
    #120
    intf.rst=1'b1;
  end
    initial begin
      $monitor($time,"\t clk---%d  en---%0b  ds---%0b  rst---%0b  counter---%0d",intf.clk,intf.en,intf.ds,intf.rst,intf.ctr);
      #350$finish;
    end
endmodule
    
