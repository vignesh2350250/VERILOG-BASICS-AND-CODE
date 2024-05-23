class scoreboard;
  mailbox mail;
  
  
  function new(mailbox mail);
    this.mail=mail;
  endfunction
  
  task main;
    transaction pkt;
    forever #10
      
      begin
        mail.get(pkt);
        
        if(pkt.ctr<10)
          $display("\n\t\t-----------TARGET PASSED-------------");
        else
          $display("\n\t\t---------------TARGET FAILED-----------");
        
        //pkt.display("SCOREBOARD");
        
      end
  endtask
endclass
  
