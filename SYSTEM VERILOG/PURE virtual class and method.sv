virtual class parent;   
  int dat;
    pure virtual function int display();
endclass

class child extends parent;
  virtual function int display();
    dat=32'haabbccdd;
    $display("-----------inside child class----------");
    return dat;
  endfunction
endclass

module egg;
  initial begin
    child c=new();
    $display("data value ---%0h",c.display());
//     parent p;
//     p=c;
//     p.display();
  end 
endmodule


      
