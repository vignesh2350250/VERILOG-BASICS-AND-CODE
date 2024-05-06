`include"addertest.sv"
`include"interface.sv"

module full_addertest;
  addertest test;
  mailbox mail;
  operation intf();
  full_adder inst (.a(intf.a),.b(intf.b),.c(intf.c),.sum(intf.sum),    .carry(intf.carry));

     initial begin
    mail = new();
    test = new(intf,mail);
    fork
      test.memory;
      test.run;
    join
  end
  initial
    $monitor("  a= %b,b=%b ,c=%b sum=%b carry=%b",intf.a,intf.b,intf.c,intf.sum,intf.carry);

endmodule
