module dynamic_arraygf;
  int d1[];
  int d[]='{9,1,8,3,4,4};
  
  initial begin
    d1=new[6];
    
    foreach(d1[i])begin
     $display("d1[%0d]=%0d",i,i);
    end
    
    $display("d1=%0d",d1.size);
    d1.delete;
    $display("d1=%0d",d1.size);
    d.sort();
    $display(d);
    d.rsort;
    $display(d);
    d.shuffle;
    $display(d);
    d.reverse;
    $display(d);
  end
endmodule
