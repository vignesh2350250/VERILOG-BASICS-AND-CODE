module oefun();
  function bit iseven;
    input  [3:0]x;
    begin 
      iseven=(x%2==0);
    end
  endfunction
  task taskcalloe;
    input [3:0]x;
    if(iseven(x))begin
      $display(" even");
    end
    else begin
      $display("odd");
    end
  endtask
  initial begin
    taskcalloe(30);
  end
endmodule
