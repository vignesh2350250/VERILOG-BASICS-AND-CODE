module swap_registers (
    input wire clk,
    input wire reset,
    input wire [7:0] a,
    input wire [7:0] b,
    output reg [7:0] a_swapped,
    output reg [7:0] b_swapped
);
task swap;
    input [7:0] in_a;
    input [7:0] in_b;
    output reg [7:0] out_a;
    output reg [7:0] out_b;

    begin
        out_a = in_b;
        #50;
        out_b = in_a;
        #50;
    end
endtask

always @(posedge clk or posedge reset) begin
    if (reset) begin
        a_swapped <= 8'b0;
        b_swapped <= 8'b0;
    end else begin
        swap(a, b, a_swapped, b_swapped);
    end
end

endmodule
