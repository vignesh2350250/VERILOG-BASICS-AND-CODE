class addrrange;
  bit [31:0]eaddr;
  bit [31:0]edata;
  function new();
    eaddr=32'h44;
    edata=32'h46;
  endfunction
endclass
class packet;
  bit[31:0]addr;
  bit [31:0]data;
  addrrange ar;
  
  function new();
    addr=32'h11;
    data=32'hab;
    ar=new();
  endfunction
  function void display();
    $display(" add %0h   data %0h eaddr %0h  edata %0h",addr,data,ar.edata,ar.eaddr);
  endfunction
endclass

  module egg;
    packet pk1;
    packet pk2;
    initial begin
      pk1=new();
      pk1.display();
      pk2=new pk1;
      pk2.display();
      pk2.addr=32'hff;
      pk2.ar.edata=32'h22;
      pk2.display();
      pk1.display();
    end
  endmodule
      
