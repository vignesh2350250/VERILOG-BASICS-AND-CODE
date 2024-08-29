class example;
  randc bit [4:0]arr[2:0][2:0];
  constraint c1 { foreach(arr[i,j]) 
    arr[i][j] < 100; }
endclass

module test;
  example ex;
  initial begin
    ex=new();
    void'(ex.randomize());
    foreach(ex.arr[i, j])begin
      $display("arr[%0d][%0d] = %d", i, j, ex.arr[i][j]);
    end
  end
  
endmodule
