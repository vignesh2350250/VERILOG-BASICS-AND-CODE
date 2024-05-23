class monitor;
  
  virtual operation vintf;
  mailbox mail;
  transaction pkt;
  
  function new(virtual operation vintf,mailbox mail);
    this.mail=mail;
    this.vintf=vintf;
  endfunction
  
  task main;
    forever #10
      begin
        transaction pkt;
        pkt=new();
        
        pkt.clk=vintf.clk;
        pkt.rst=vintf.rst;
        pkt.data=vintf.data;
        pkt.addr=vintf.addr;
        pkt.we=vintf.we;
        pkt.re=vintf.re;
        pkt.datao=vintf.datao;
        
        mail.put(pkt);
        //$monitor($time,"---MONITOR--- clk-- %b rst-- %b data-- %d addr-- %d  we---%b  re----%b data out --%d",pkt.clk,pkt.rst,pkt.data,pkt.addr,pkt.we,pkt.re,pkt.datao);
        
      end
  endtask
endclass
