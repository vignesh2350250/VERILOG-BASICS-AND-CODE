module tb;
    function automatic integer factorial;
        input integer i;
        begin
            integer result;
             
            
            if (i == 0)
                result = 1;
            else
                result = i * factorial(i - 1); 
            
            return result;
        end
    endfunction

    initial begin
      integer result = factorial(0); 
      $display("factorial of given number is = %0d", result);
    end
endmodule
