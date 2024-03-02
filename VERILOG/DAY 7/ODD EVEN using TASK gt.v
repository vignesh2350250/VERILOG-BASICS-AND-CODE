module oe(input a);
  task oef(input [3:0]x);
    if(x%2==0)begin
      $display("this is even number");
    end
    else begin
      $display("this is odd number");
    end
  endtask
  initial begin
    oef(9);
  end
endmodule
