class driver;
  transaction pkt;
  mailbox mail;
  virtual operation vintf;
  
  function new(virtual operation vintf,mailbox mail);
    this.vintf=vintf;
    this.mail=mail;
  endfunction
  task drive;     
   repeat(8)
      begin
        
        pkt=new();
        mail.get(pkt);
        vintf.a=pkt.a;
        vintf.b=pkt.b;
        vintf.c=pkt.c;
        #5
        pkt.sum=vintf.sum;
       pkt.carry=vintf.carry;
        #5;
      end
  endtask
endclass
        
                         
