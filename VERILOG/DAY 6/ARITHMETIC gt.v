module opar(input [3:0]a,
            input [3:0]b,
            output reg [5:0]y1,
            output reg [5:0]y2,
            output reg [5:0]y3,
            output reg [5:0]y4,
            output reg [5:0]y5,
            output reg [5:0]y6,
            output reg [5:0]y7);
  always@(*) begin
     y1=a + b;
     y2=a - b;
     y3=a % b;
     y4=a/b;
     y5=a*b;
     y6=a**b;
     y7=b**a;
  end
endmodule
