module task_calling_function;
  function [1:0] logical;//Function declaration 
    input [4:0] a,b;   
      logical=a & b;
    $display("result=%b",logical);
  endfunction
  
  task operation;//Task declaration
    input [4:0] result;
    logical(10,11);
   
  endtask
  initial begin
    reg[1:0] log_result;
     operation(log_result);//Task calling
   
   
  end
endmodule
