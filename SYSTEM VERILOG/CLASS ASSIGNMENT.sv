class eg;
  bit[31:0]addr;
  bit [31:0]data;
  string typ;
  function new();
    addr=32'h11;
    data=32'hab;
    typ="bad";
  endfunction
  function void display();
    $display(" add %0h   data %0h typ %0s",addr,data,typ);
  endfunction
endclass
  module egg;
    eg pk1;
    eg pk2;
    initial begin
      pk1=new();
      pk1.display();
      pk2=pk1;
      pk2.addr=32'hff;
      pk2.data=32'h22;
      pk1.display();
    end
  endmodule
      
