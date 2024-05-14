module fj;
  initial begin
  fork
    begin
      $display($time,"process 1");
      #5;
      $display($time,"process 1 end");
    end
    begin
      $display($time,"process 2");
      #10;
      $display($time,"process 2 end");
    end
  join
    $display($time,"outside fork join");
  end
endmodule
