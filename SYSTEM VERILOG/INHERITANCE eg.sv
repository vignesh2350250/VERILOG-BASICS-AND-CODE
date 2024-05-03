class f;
  int a;
  function void dis_a;
    $display("a value=%d ",a);
  endfunction
endclass
class g extends f;
  int b;
  function void dis_b;
    $display("b value=%d",b);
  endfunction
endclass
module exclass;
  f aa;
  g bb;
  initial begin
    aa=new();
    aa.a=5;
    aa.dis_a();
  end 
endmodule
