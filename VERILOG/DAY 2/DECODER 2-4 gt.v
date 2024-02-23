module de24(
    output y0, y1, y2, y3,
    input a, b, e
);

wire ac, bc, eb;

  not not0(ac,a);
  not not1(bc,b);
  not not2(eb,e);

nand nand0(y0, ac, bc, eb);
nand nand1(y1, ac, b, eb);
nand nand2(y2, a, bc, eb);
nand nand3(y3, a, b, eb);

endmodule
