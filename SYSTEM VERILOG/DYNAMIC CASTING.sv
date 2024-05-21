class parent;
  bit [31:0]data;
  function display();
    $display("parent class data--%0d",data);
  endfunction
endclass

class child extends parent;
  bit [31:0]addr;
  function display();
    super.display();

    $display("cild class ---%0d",addr);
  endfunction
endclass

module egg;
  initial begin
    child c=new();
    child c1;
    parent p;
    c.data=10;
    c.addr=20;
    
    p=c;
    $cast(c1,p);
    c1.display();
    
  end 
endmodule
