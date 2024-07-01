class pack;
  randc bit[2:0]a;
endclass
module rand_c;
   pack pk=new();
  initial begin
    $display (" randc - It  is cyclic in nature . It will repeat ");  
    $display ("         it's value after completing one cycle .");    
    for(int i=0;i<10;i++)begin
      void'(pk.randomize());
      $display("iteration =%0d   value of a=%0d",i,pk.a);
    end
  end
endmodule
