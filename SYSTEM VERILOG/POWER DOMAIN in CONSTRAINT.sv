class PowerDomainConstraints;

  logic power_domain1_active;
  logic [7:0] addr;

  function new(logic pd1_active, logic [7:0] address);
    power_domain1_active = pd1_active;
    addr = address;
  endfunction

  constraint power_domain_c {
    if (power_domain1_active) addr < 100;
    else addr > 100;
  }

endclass

module power_domain_tb;
  logic power_domain1_active;
  logic [7:0] addr;
  
  PowerDomainConstraints pdc;

  initial begin
    power_domain1_active = 1;
    addr = 50;

    pdc = new(power_domain1_active, addr);

    assert (pdc.addr < 100) 
      $display("------------assertion passed------------");
    else $fatal("Constraint failed: addr should be less than 100 when power_domain1_active is 1.");

    power_domain1_active = 0;
    addr = 150; 

    pdc = new(power_domain1_active, addr);

    assert (pdc.addr > 100) 
      else $fatal("Constraint failed: addr should be greater than 100 when power_domain1_active is 0.");
  end

endmodule
