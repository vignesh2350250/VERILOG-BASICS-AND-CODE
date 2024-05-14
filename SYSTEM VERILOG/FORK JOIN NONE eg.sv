module fj;
  initial begin
    $display($time,"-- fork join eg");
    #10 $display($time,"--sequential after 10");
    fork
      $display($time,"--parallel start");
      #50 $display($time,"--parallel after 50");
      #10 $display($time,"--parallel after 10");
      begin
        #30 $display($time,"--sequential after 30");
        #10 $display($time,"--sequential after 10");
      end
    join_none
    $display($time,"--ouside fork join");
    #80 $display($time,"--final after 80");
  end
endmodule
