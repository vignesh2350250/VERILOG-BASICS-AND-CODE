module disablefork;
  initial begin
    $display("-------###############-------");
    fork
      begin
        $display($time,"---process 1");
        #5
        $display($time,"---process 1 end");
      end 
      begin
        $display($time,"---process 2");
        #20
        $display($time,"---process 2 end");
      end  
    join_any
    $display("----------------out 1");
      fork
      begin
        $display($time,"---process 1");
        #5
        $display($time,"---process 1 end");
      end 
      begin
        $display($time,"---process 2");
        #20
        $display($time,"---process 2 end");
      end
    join_none
    
   disable fork;

    $display($time,"-------outside -------");
      end
      endmodule
      
