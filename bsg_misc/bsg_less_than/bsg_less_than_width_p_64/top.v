

module top
(
  a_i,
  b_i,
  o
);

  input [63:0] a_i;
  input [63:0] b_i;
  output o;

  bsg_less_than
  wrapper
  (
    .a_i(a_i),
    .b_i(b_i),
    .o(o)
  );


endmodule



module bsg_less_than
(
  a_i,
  b_i,
  o
);

  input [63:0] a_i;
  input [63:0] b_i;
  output o;
  wire o;
  assign o = a_i < b_i;

endmodule
