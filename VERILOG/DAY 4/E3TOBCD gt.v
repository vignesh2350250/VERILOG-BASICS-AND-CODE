module ex3_to_bcd(
    input w, x, y, z,
    output a, b, c, d
);
  assign a = ((w & x) | (w & y & z));
  assign b = (((~x) & (~y)) | ((~x) & (~z)) | (x & y & z));
  assign c = (((~y) & z) | (y & (~z)));
  assign d = ~z;
endmodule
