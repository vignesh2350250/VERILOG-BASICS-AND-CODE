`include "stest.sv"
`include "interface.sv"

module sram_test;
  sramtest test;
  mailbox mail;
  mailbox m1;
  operation intf();
  sram inst(.clk(intf.clk),
            .rst(intf.rst),
            .data(intf.data),	
            .addr(intf.addr),
            .we(intf.we),
            .re(intf.re),
            .datao(intf.datao));
    
  initial begin
    mail=new();
    test=new(intf,mail,m1);
    fork
      test.memo;
      test.runn;
    join
  end
  initial begin
    intf.clk=1'b1;
    forever #5 intf.clk=~intf.clk;
  end
  
//   initial begin
//     intf.rst=0;
//     intf.
//     #12;
//     intf.rst=0;
//     #40;
//     $finish;
//   end
  
  initial begin
    $monitor("time %t clk-- %b rst-- %b data-- %d addr-- %d  we---%b  re----%b data out ---%d",$time,intf.clk,intf.rst,intf.data,intf.addr,intf.we,intf.re,intf.datao);
    #60$finish;
  end
endmodule
