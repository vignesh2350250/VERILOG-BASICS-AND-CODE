module comp(a,b,gt,eq,lt);
  input a,b;
  output lt,gt,eq;
  reg gt,lt,eq;
  always@(a or b)
    begin 
      gt=0;
      lt=0;
      eq=0;
      if (a>b)
        gt=1;
      else if(a<b)
        lt=1;
      else 
        eq=1;
    end
endmodule
