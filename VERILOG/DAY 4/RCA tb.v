module ripple_carry_adder_tb;

	reg [3:0] in0;
	reg [3:0] in1;
	wire [3:0] out;
	wire cout;

	ripple_carry_adder rca(.in0(in0), .in1(in1), .out(out), .cout(cout));

	initial begin
		in0 = 4'b1100; in1 = 4'b0100; #10
		in0 = 4'b1100; in1 = 4'b0101; #10
		in0 = 4'b1100; in1 = 4'b0110; #10
		in0 = 4'b1100; in1 = 4'b0111; #10
		in0 = 4'b1100; in1 = 4'b1000; #10
		in0 = 4'b1100; in1 = 4'b1001; #10
		in0 = 4'b1100; in1 = 4'b1010; #10
		in0 = 4'b1100; in1 = 4'b1011; #10
		in0 = 4'b1100; in1 = 4'b1100; #10
		in0 = 4'b1100; in1 = 4'b1101; #10
		in0 = 4'b1100; in1 = 4'b1110; #10
      $finish;
		
	end

	initial begin
		$dumpfile("ripple-carry-adder.vcd");
		$dumpvars(0, ripple_carry_adder_tb);
		$monitor($time, ": %b + %b = %b, %b", in0, in1, out, cout);
	end

endmodule
