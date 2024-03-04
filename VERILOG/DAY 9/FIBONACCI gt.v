module fibo(
  input integer limit,
  output reg [31:0] fib
);
  
  integer a, b, i;
  
  initial begin 
    a = 0;
    b = 1;
    for (i = 0; i < limit; i = i + 1) begin
      fib = a+b;
      $display("Fibonacci series at iteration %0d is %d", i, fib);
      a=b;
      b=fib;
    end
    $finish;
  end
endmodule
