class packet;
  static byte nopac;
  function new();
    nopac++;
  endfunction
  static function void display;
    $display("%d packets created",nopac);
  endfunction
endclass
module sts;
  packet pk[3];
  initial begin
    foreach(pk[i])begin
      pk[i]=new();
    end
    pk[0].display();
  end 
endmodule
