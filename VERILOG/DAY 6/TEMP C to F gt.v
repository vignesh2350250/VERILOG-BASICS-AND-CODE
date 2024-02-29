module simple_task();
  int temp_out;
  task convert(int temp_in, output int temp_out);
    temp_out = (9/5) *( temp_in + 32);
    $display("temp in f=",temp_out);
   endtask
  initial
    convert(34,temp_out);
  endmodule
