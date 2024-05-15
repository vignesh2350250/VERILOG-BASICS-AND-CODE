class parent;
  bit [8:0]data;
  
  function void display();
    $display("parent class---%0d",data);
  endfunction
endclass

class child extends parent;
  bit [8:0] data_c;
  
  function void display_c();
    $display("child class---%0d ",data_c);
    $display("parent class value inside child class ---%0d",data);
  endfunction
endclass


module exam;
  initial begin
  child ch=new();
  ch.data=7;
  ch.display();
    ch.data_c=5;
    ch.display_c();
  end
endmodule
  
    
