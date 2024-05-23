class driver;
  transaction pkt;
  mailbox mail;
  virtual inter vintf;
  
  function new(virtual inter vintf,mailbox mail);
    this.mail=mail;
    this.vintf=vintf;
  endfunction
  
  task drive;
    pkt=new();
    mail.get(pkt);
    
    

    
    pkt.ctr=vintf.ctr;
    #10;
    
    $display("value received from generator");
  endtask
endclass
