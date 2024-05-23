`include "transaction.sv"
`include "generator.sv"
`include "driver.sv"
`include "monitor.sv"
`include "scoreboard.sv"

class environment;
  virtual operation vintf;
  mailbox mail;
  generator gen;
  driver driv;
   
  mailbox m1;
  
  monitor mon;
  scoreboard scb;
  function new(virtual operation vintf,mailbox mail,mailbox m1);
    this.vintf=vintf;
    this.m1=m1;
    this.mail=mail;
  endfunction
  
  task memory;
    mail=new();
    m1=new();
    
    gen=new(mail);
    driv=new(vintf,mail);
    mon=new(vintf,m1);
    scb=new(m1);
    
  endtask
  task run;
    fork
      gen.gene;
      driv.drive;
      mon.main;
      scb.main;
    join
  endtask
endclass
