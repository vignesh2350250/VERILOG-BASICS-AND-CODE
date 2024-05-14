class generator;
  transaction pkt;
  mailbox mail;
  function new(mailbox mail);
    this.mail=mail;
  endfunction
  task gene;
        pkt=new();
        //pkt.randomize();
        pkt.addr=8'b1;
        pkt.data=8'b111;
        
        mail.put(pkt);
        $display("packet is generated");
        #20;
    $display("d=%0d",pkt.data);
        
  endtask
endclass
