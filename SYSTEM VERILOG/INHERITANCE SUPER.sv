class parent;
  bit [8:0]data;
  
  function void display();
    $display("parent class---%0d",data);
  endfunction
endclass

class child extends parent;
  bit [8:0] data;
  
  function void display();
    super.data=5;
    super.display();
    $display("child class---%0d ",data);
  endfunction
endclass


module exam;
  initial begin
  child ch=new();
  ch.data=7;
  ch.display();
  end
endmodule
  
    
