module swap_module(
    input logic [7:0] a, b,
    output logic [7:0] a_swapped, b_swapped
);

    always_comb begin
        a_swapped = b;
        b_swapped = a;
    end

endmodule
