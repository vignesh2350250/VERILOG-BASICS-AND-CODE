class driver;
  transaction pkt;
  mailbox mail;
  virtual operation vintf;
  
  function new(virtual operation vintf,mailbox mail);
    this.vintf=vintf;
    this.mail=mail;
  endfunction
  
  task drive;
    
    pkt=new();
    mail.get(pkt);
    vintf.addr=pkt.addr;
    vintf.data=pkt.data;
    
    vintf.rst=1'b0;
    vintf.we=1'b1;
    vintf.re=1'b0;
    #20
    vintf.we=1'b0;
    vintf.re=1'b1;
//     #20
  //  vintf.rst=1'b1;
    
    pkt.datao=vintf.datao;
    
  endtask
endclass
  
