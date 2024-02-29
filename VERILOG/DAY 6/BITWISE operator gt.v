module opbw(input [4:0]a,
            input [4:0]b,
            output reg [4:0]y1,
            output reg [4:0]y2,
            output reg [4:0]y3,
            output reg [4:0]y4,
            output reg [4:0]y5,
            output reg [4:0]y6,
            output reg [4:0]y7);
  always@(*) begin
     y1=a & b;
     y2=a | b;
     y3=a ^ b;
     y4=~a;
     y5=~&a;
     y6=~|a;
     y7=~^b;
  end
endmodule
