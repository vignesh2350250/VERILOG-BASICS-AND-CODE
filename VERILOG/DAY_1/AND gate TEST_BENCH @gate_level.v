module andg_tb;
  reg x, y;
  wire z;
  
  // Instantiate the AND gate module
  andg andgate(.x(x), .y(y), .z(z));

  // Dump waveform information for z only
  initial begin
    $dumpfile("andg.vcd");
    $dumpvars(0, andg_tb);  
  end

  // Apply input values
  initial begin
    x = 1'b0; y = 1'b0;
    #10 x = 1'b0; y = 1'b1;
    #10 x = 1'b1; y = 1'b0;
    #10 x = 1'b1; y = 1'b1;  // Start applying input values at 20 seconds
    #10
    $finish;
  end
  
  // Monitor the output and display only the z value between 20 to 30 seconds
  always @* begin
   
    $monitor( "time=%0t \tINPUT VALUES: \t x=%b y=%b \t output value Y =%b",$time,x,y,z);
  end
endmodule
