`timescale 1ns / 1ps

module swap_registers_tb;

reg clk;
reg reset;
reg [7:0] a;
reg [7:0] b;
wire [7:0] a_swapped;
wire [7:0] b_swapped;

swap_registers dut (
    .clk(clk),
    .reset(reset),
    .a(a),
    .b(b),
    .a_swapped(a_swapped),
    .b_swapped(b_swapped)
);

initial begin
    $dumpfile("swap_registers.vcd");
    $dumpvars(0, swap_registers_tb);

    clk = 0;
    reset = 1;
    a = 8'b10101010;
    b = 8'b01010101;

    #10 reset = 0; // Deassert reset
    #300 $finish;
end
  always@*
    $display("a=%d  b=%d  after swap a=%d b=%d",a,b,a_swapped,b_swapped);

always #5 clk = ~clk;

endmodule
