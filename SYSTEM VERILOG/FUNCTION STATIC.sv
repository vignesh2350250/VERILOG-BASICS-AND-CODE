class transaction;
  static int s_id;
  int id;
  
  function static int incr_id(); 
    int status; 
    status = s_id++;
    id++; 
    return status;
  endfunction
endclass

module class_example;
  transaction tr[5];
  int loca;

  initial begin
    foreach (tr[i]) begin 
      tr[i] = new();
      loca = tr[i].incr_id();
      $display("Value of s_id = %0h, id = %0h, local status = %0h", tr[i].s_id, tr[i].id,  loca);
    end
  end
endmodule
