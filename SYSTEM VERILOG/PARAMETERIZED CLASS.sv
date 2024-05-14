class some #(int size=8);
  bit [size-1:0]out;
endclass

module tb;
  some #(16) s1;
  some #(.size(8)) s2;
  typedef some #(4) nibb;
  nibb nibble;
  initial begin
    s1=new();
    s2=new();
    nibble=new();
    $display("parameterized class variable size when invoke s1--",$bits(s1.out));
    $display("parameterized class variable size value when invoke s2--",$bits(s2.out));
    $display("parameterized class variablr size when invoke nibble--",$bits(nibble.out));
  end 
endmodule
