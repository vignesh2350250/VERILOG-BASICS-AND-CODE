`include "environment.sv"

class sramtest;
  environment env;
  virtual operation vintf;
  mailbox mail;
  mailbox m1;
  
  function new(virtual operation vintf,mailbox mail,mailbox m1);
    this.vintf=vintf;
    this.mail=mail;
    this.m1=m1;
  endfunction
  	
  task memo;
    mail=new();
    m1=new();
    
    env=new(vintf,mail,m1);
  endtask
  
  task runn;
    fork
      env.memory;
      env.run;
    join
  endtask
endclass
