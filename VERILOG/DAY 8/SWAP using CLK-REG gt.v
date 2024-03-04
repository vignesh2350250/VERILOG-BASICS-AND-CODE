module swap_registers (
    input wire clk,
    input wire [7:0] a,
    input wire [7:0] b,
    output reg [7:0] a_swapped,
    output reg [7:0] b_swapped
);
reg [7:0] temp;
always @(posedge clk ) begin
        temp <= a;
        #50;
        a_swapped <= b;
        #50;
        b_swapped <= temp;
end
endmodule
