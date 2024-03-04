module swap_testbench;

    logic [7:0] a, b;
    logic [7:0] a_swapped, b_swapped;

    swap_module uut (
        .a(a),
        .b(b),
        .a_swapped(a_swapped),
        .b_swapped(b_swapped)
    );

    initial begin
        a = 8'hAA;
        b = 8'h55;

        $display("Original values: a = %h, b = %h", a, b);

        #10;

        $display("Swapped values: a_swapped = %h, b_swapped = %h", a_swapped, b_swapped);

        $finish;
    end

endmodule
