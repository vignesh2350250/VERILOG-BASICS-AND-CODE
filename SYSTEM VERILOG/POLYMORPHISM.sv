class parent;
  bit [31:0]data;
  int id;
  
  virtual function void display();
    $display("base class -%0d data   ---%0d id",data,id);
  endfunction
endclass

class child1 extends parent;
  function void display();
    $display("child class 1 ---data %0d    ----%0d id",data, id);
  endfunction
endclass

class child2 extends parent;
  function void display();
    $display("child class 2 ---data %0d    ----%0d id",data,id);
  endfunction
endclass

class child3 extends parent;
  function void display();
    $display("child class 3 ---data %0d    ----%0d id",data,id);
  endfunction
endclass

module egg;
  initial begin
    parent pa,pb,pc;
    child1 c1=new();
    child2 c2=new();
    child3 c3=new();
    
    c1.data=100;
    c1.id=1;
    
    c2.data=300;
    c2.id=3;
    
    c3.data=400;
    c3.id=4;
    
    pa=new();
    pa.display();
    
    pa=c1;
    pb=c2;
    pc=c3;
    
    pa.data=10;
    pa.id=10;
    
    pa.display();
    pb.display();
    pc.display();
    
  end
endmodule
