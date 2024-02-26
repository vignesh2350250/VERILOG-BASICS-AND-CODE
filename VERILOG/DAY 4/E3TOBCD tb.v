module ex3_to_bcd_tb;
  reg w, x, y, z;
  wire a, b, c, d;
  ex3_to_bcd uut(.w(w), .x(x), .y(y), .z(z), .a(a), .b(b), .c(c), .d(d));
  initial begin
    w = 1'b0; x = 1'b1; y = 1'b1; z = 1'b1;
    #10;
    w = 1'b1; x = 1'b0; y = 1'b0; z = 1'b1;
    #10;
    $finish;
  end
  always @*
    $display("w=%b \t x=%b \t y=%b\t z=%b \t a=%b\t b=%b \t c=%b \t d=%b", w, x, y, z, a, b, c, d);
endmodule
