module opre(input [3:0]a,
            input [3:0]b,
            output reg [5:0]y1,
            output reg [5:0]y2,
            output reg [5:0]y3,
            output reg [5:0]y4);
  always@(*) begin
     y1=a > b;
     y2=a >= b;
     y3=a < b;
     y4=a <=b;
     
  end
endmodule
