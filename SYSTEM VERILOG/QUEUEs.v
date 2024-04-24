module queue;
  int j;
  int q[$]= '{0,2,5};
  initial begin 
    j=1;
    q.insert(1,j);
    $display(q);
    q.delete(1);
    $display(q);
    q.push_front(7);
    $display(q);
    q.push_back(9);
    $display(q);
    j=q.pop_back();
    $display(q," ",j);
    j=q.pop_front();
    $display(q," ",j);
    q.reverse();
     $display(q);
    q.sort();
     $display(q);
    q.rsort();
    $display(q);
    q.shuffle();
    $display(q);
  end 
endmodule
    
