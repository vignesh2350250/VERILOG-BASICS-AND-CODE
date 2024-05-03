class packet;
  byte paid;
  static byte nopa;
  function new();
    nopa++;
    paid=nopa;
  endfunction
  function display();
    $display("packet id =%0d",paid);
  endfunction
endclass
module stat;
  packet pkt[3];
  initial begin
    foreach(pkt[i])begin
      pkt[i]=new();
      pkt[i].display();
    end 
  end
endmodule
