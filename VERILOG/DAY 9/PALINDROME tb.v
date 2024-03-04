module palindrome_test_bench;

reg [7:0]input_data;
wire pal_yes;

palindrome dut(.input_data(input_data),.pal_yes(pal_yes));

initial
begin

input_data=8'b10101010;
#25;
input_data=8'b11111111;
#25;
input_data=8'b11100111;
#25;
input_data=8'b00011100;
#25;
input_data=8'b10000001;
#25;

$finish;

end
endmodule
