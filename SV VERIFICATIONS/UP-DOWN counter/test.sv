`include "environment.sv"

class countertest;
  environment env;
  virtual inter vintf;
  mailbox mail;
  
  function new(virtual inter vintf,mailbox mail);
    this.vintf=vintf;
    this.mail=mail;
  endfunction
  
  task memory;
    mail=new();
    env=new(vintf,mail);
  endtask
  
  task run;
    fork
      env.memory;
      env.run;
    join
  endtask
endclass
