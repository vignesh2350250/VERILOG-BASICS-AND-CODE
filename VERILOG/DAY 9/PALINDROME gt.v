module palindrome(input_data,pal_yes);
input [7:0]input_data;
output reg pal_yes;
reg [3:0]left_part;
reg [3:0]right_part;

integer i;

always@(*)
begin
    for(i=0;i<4;i=i+1)
    begin
    left_part[i]= input_data[i];
    right_part[i]= input_data[7-i];
    end
end

always@(*)
begin
if(left_part==right_part) 
    pal_yes=1'b1;
    else
    pal_yes=1'b0;
end   
  always@(*)begin
    if(pal_yes==1)begin
      $display("number is palindrome");
    end
    else begin
      $display("not palindrome");
    end
  end
endmodule

