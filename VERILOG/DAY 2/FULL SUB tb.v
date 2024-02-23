module fsb_tb;
  reg A, B , Bin;
  
  fsb halfsub(.A(A), .B(B), .Bin(Bin), .D(D),.Bo(Bo));
  
  initial begin
    $dumpfile("fsb.vcd");
    $dumpvars(1, fsb_tb);  
  end

  initial begin
    A = 1'b0; B = 1'b0; Bin = 1'b0;
    #10 A = 1'b0; B = 1'b0; Bin = 1'b1;
    #10 A = 1'b0; B = 1'b1; Bin = 1'b0;
    #10 A = 1'b0; B = 1'b1; Bin = 1'b1;
    #10 A = 1'b1; B = 1'b0; Bin = 1'b0;
    #10 A = 1'b1; B = 1'b0; Bin = 1'b1;
    #10 A = 1'b1; B = 1'b1; Bin = 1'b0;
    #10 A = 1'b1; B = 1'b1; Bin = 1'b1;
    #10 $finish;
  end

  always @*
    $display("time=%0t \tINPUT VALUES: \t A=%b B=%b Bin=%b\t output value D = %b \t Bo=%b", $time, A, B,Bin, D, Bo);
endmodule
