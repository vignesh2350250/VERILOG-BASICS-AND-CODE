module str;
  string s;
  
  initial begin
    
    s="System Verilog";
    $display(s);
    $display(s.getc(0)); 
    $display(s.toupper());
    s={s," 3.1a"};
    $display(s);
    s.putc(s.len()-1,"b");
    $display(s);
    $display(s.substr(2,5)); 
  end
endmodule
