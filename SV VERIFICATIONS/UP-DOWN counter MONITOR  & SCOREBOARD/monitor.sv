class monitor;
  
  virtual inter vintf;
  mailbox mail;
  transaction pkt;
  
  function new(virtual inter vintf,mailbox mail);
    this.mail=mail;	
    this.vintf=vintf;
  endfunction
  
  task main;
    forever 
      #10
      begin
        transaction pkt;
        pkt=new();
    
        pkt.clk=vintf.clk;
        pkt.en=vintf.en;
        pkt.ds=vintf.ds;
        pkt.ctr=vintf.ctr;
        pkt.rst=vintf.rst;
      
        mail.put(pkt);
        $display($time,"\t--MONOTOR--\t:clock= %0b EN= %0b DS= %0b RESET= %0b COUNT= %0d",pkt.clk,pkt.en,pkt.ds,pkt.rst,pkt.ctr);
    end 
  endtask
endclass
