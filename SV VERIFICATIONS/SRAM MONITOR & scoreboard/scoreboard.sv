class scoreboard;
  mailbox mail;
  
  bit [8:0]mem[8:0];
  
  function new(mailbox mail);
    this.mail=mail;
    foreach(mem[i]) mem[i]=8'hff;
  endfunction
  
  task main;
    transaction pkt;
    forever #10
      begin
        mail.get(pkt);
        
        if(pkt.re)begin
          if(mem[pkt.addr]!=pkt.datao)
            $display("\n\t\t-----------TARGET FAILED-------------");
          
          else
            $display("\n\t\t---------------TARGET PASSED-----------");
        end
        else if(pkt.we)begin
          mem[pkt.addr]=pkt.data;
        end
          
      end 
  endtask
endclass
