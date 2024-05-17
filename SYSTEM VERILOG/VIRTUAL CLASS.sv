virtual class parent;
  bit [31:0]num;
endclass

class child extends parent;
  function void display();
    $display("inside child class displaying base class value---%0d",num);
  endfunction
endclass
 
module egg;
  initial begin
    child c;
    c=new();
    c.num=69;
    c.display();
  end
endmodule
