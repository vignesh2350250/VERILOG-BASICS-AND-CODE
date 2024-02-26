module d_latch_tb;
  reg d,en,rstn;
  reg [2:0] delay;  
  reg [1:0] delay2;  
  integer i;  
  d_latch  dl0 ( .d (d),.en (en),.rstn (rstn),.q (q));
  initial begin
    d <= 0;  
    en <= 0;  
    rstn <= 1;  
    #10 rstn <= 0;  
    for (i = 0; i < 5; i=i+1) 
      begin  
         delay = $random;  
         delay2 = $random;  
         #(delay2) en <= ~en;  
         #(delay) d <= i;  
      end  
    $monitor ("[%0t] en=%0b d=%0b q=%0b", $time, en, d, q);  
   end  
endmodule  
