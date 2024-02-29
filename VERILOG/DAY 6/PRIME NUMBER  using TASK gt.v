module pr(input [7:0] n, output reg pr);
  
  task checkprime;
    input [7:0] n;
    output reg pr;
    integer i;
    begin
      pr = 1; 
      for (i = 2;i <= $sqrt(n); i = i + 1) begin
        if (n % i == 0) begin
          pr = 0; 
          break; 
        end
      end
      if (pr == 0) begin
        $display("GIVEN NUMBER IS NOT PRIME");
      end
      else begin
        $display("NUMBER IS PRIME");
      end
    end
  endtask
  
  initial begin
    reg prime_flag; 
    checkprime(12, prime_flag); 
    pr = prime_flag; 
  end
  
endmodule
