class parent;   //here it displays the derived class because of with virtual keyword
  virtual function void display();
    $display("------inside the parent class-----");
  endfunction
endclass

class child extends parent;
  function void display();
    $display("-----------inside child class----------");
  endfunction
endclass

module egg;
  initial begin
    child c=new();
    parent p;
    p=c;
    p.display();
  end 
endmodule


// here it display the base class because withouyt the virtual keyword

// class parent;
//    function void display();
//     $display("------inside the parent class-----");
//   endfunction
// endclass

// class child extends parent;
//   function void display();
//     $display("-----------inside child class----------");
//   endfunction
// endclass

// module egg;
//   initial begin
//     child c=new();
//     parent p;
//     p=c;
//     p.display();
//   end 
// endmodule
