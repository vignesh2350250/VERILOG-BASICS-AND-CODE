module sparse;
  longint assoc[longint];
  longint idx;
  initial begin
    idx=1;
    repeat(63)
      begin
        assoc[idx]=idx;
        idx=idx<<1;
      end    
    if(assoc.first(idx))
      $display(idx);
    if(assoc.next(idx))
      $display(idx);
    if(assoc.last(idx))
      $display(idx);
    if(assoc.prev(idx))
        $display(idx);
  end
endmodule
