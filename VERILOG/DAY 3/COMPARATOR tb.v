module comp_tb;
  reg a, b;
  
  
  comp compareModule(a, b, gt,eq,lt); // Instantiating the module
  
  initial begin
    a = 4'b1100;
    b = 4'b1100;
    #10;
    
    a = 4'b0100;
    b = 4'b1100;
    #10;
    
    a = 4'b1111;
    b = 4'b1100;
    #10;
    
    a = 4'b0000;
    b = 4'b0000;
    #10;
    
    $finish;
    
  end
  initial begin
      $monitor($time, "\tA=%b\t , B=%b\t, AeqB=%b\t, AgtB=%b\t, AltB=%b\t", a,b, eq, gt,lt);
   end
endmodule
