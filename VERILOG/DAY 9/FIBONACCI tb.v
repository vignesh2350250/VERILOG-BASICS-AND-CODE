module fibo_tb;
  reg [31:0] fib;
  integer limit = 10;
  
  fibo fgg(.limit(limit), .fib(fib));
  
  initial begin
    #100;
    $finish;
  end
endmodule
