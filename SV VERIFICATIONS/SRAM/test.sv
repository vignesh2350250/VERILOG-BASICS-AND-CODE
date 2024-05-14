`include "environment.sv"

class sramtest;
  environment env;
  virtual operation vintf;
  mailbox mail;
  
  function new(virtual operation vintf,mailbox mail);
    this.vintf=vintf;
    this.mail=mail;
  endfunction
  
  task memo;
    mail=new();
    env=new(vintf,mail);
  endtask
  
  task runn;
    fork
      env.memory;
      env.run;
    join
  endtask
endclass
