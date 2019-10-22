

module top
(
  a_i,
  num_zero_o
);

  input [15:0] a_i;
  output [3:0] num_zero_o;

  bsg_counting_leading_zeros
  wrapper
  (
    .a_i(a_i),
    .num_zero_o(num_zero_o)
  );


endmodule



module bsg_scan_width_p16_or_p1_lo_to_hi_p1
(
  i,
  o
);

  input [15:0] i;
  output [15:0] o;
  wire [15:0] o;
  wire t_3__15_,t_3__14_,t_3__13_,t_3__12_,t_3__11_,t_3__10_,t_3__9_,t_3__8_,t_3__7_,
  t_3__6_,t_3__5_,t_3__4_,t_3__3_,t_3__2_,t_3__1_,t_3__0_,t_2__15_,t_2__14_,
  t_2__13_,t_2__12_,t_2__11_,t_2__10_,t_2__9_,t_2__8_,t_2__7_,t_2__6_,t_2__5_,t_2__4_,
  t_2__3_,t_2__2_,t_2__1_,t_2__0_,t_1__15_,t_1__14_,t_1__13_,t_1__12_,t_1__11_,
  t_1__10_,t_1__9_,t_1__8_,t_1__7_,t_1__6_,t_1__5_,t_1__4_,t_1__3_,t_1__2_,t_1__1_,
  t_1__0_;
  assign t_1__15_ = i[0] | 1'b0;
  assign t_1__14_ = i[1] | i[0];
  assign t_1__13_ = i[2] | i[1];
  assign t_1__12_ = i[3] | i[2];
  assign t_1__11_ = i[4] | i[3];
  assign t_1__10_ = i[5] | i[4];
  assign t_1__9_ = i[6] | i[5];
  assign t_1__8_ = i[7] | i[6];
  assign t_1__7_ = i[8] | i[7];
  assign t_1__6_ = i[9] | i[8];
  assign t_1__5_ = i[10] | i[9];
  assign t_1__4_ = i[11] | i[10];
  assign t_1__3_ = i[12] | i[11];
  assign t_1__2_ = i[13] | i[12];
  assign t_1__1_ = i[14] | i[13];
  assign t_1__0_ = i[15] | i[14];
  assign t_2__15_ = t_1__15_ | 1'b0;
  assign t_2__14_ = t_1__14_ | 1'b0;
  assign t_2__13_ = t_1__13_ | t_1__15_;
  assign t_2__12_ = t_1__12_ | t_1__14_;
  assign t_2__11_ = t_1__11_ | t_1__13_;
  assign t_2__10_ = t_1__10_ | t_1__12_;
  assign t_2__9_ = t_1__9_ | t_1__11_;
  assign t_2__8_ = t_1__8_ | t_1__10_;
  assign t_2__7_ = t_1__7_ | t_1__9_;
  assign t_2__6_ = t_1__6_ | t_1__8_;
  assign t_2__5_ = t_1__5_ | t_1__7_;
  assign t_2__4_ = t_1__4_ | t_1__6_;
  assign t_2__3_ = t_1__3_ | t_1__5_;
  assign t_2__2_ = t_1__2_ | t_1__4_;
  assign t_2__1_ = t_1__1_ | t_1__3_;
  assign t_2__0_ = t_1__0_ | t_1__2_;
  assign t_3__15_ = t_2__15_ | 1'b0;
  assign t_3__14_ = t_2__14_ | 1'b0;
  assign t_3__13_ = t_2__13_ | 1'b0;
  assign t_3__12_ = t_2__12_ | 1'b0;
  assign t_3__11_ = t_2__11_ | t_2__15_;
  assign t_3__10_ = t_2__10_ | t_2__14_;
  assign t_3__9_ = t_2__9_ | t_2__13_;
  assign t_3__8_ = t_2__8_ | t_2__12_;
  assign t_3__7_ = t_2__7_ | t_2__11_;
  assign t_3__6_ = t_2__6_ | t_2__10_;
  assign t_3__5_ = t_2__5_ | t_2__9_;
  assign t_3__4_ = t_2__4_ | t_2__8_;
  assign t_3__3_ = t_2__3_ | t_2__7_;
  assign t_3__2_ = t_2__2_ | t_2__6_;
  assign t_3__1_ = t_2__1_ | t_2__5_;
  assign t_3__0_ = t_2__0_ | t_2__4_;
  assign o[0] = t_3__15_ | 1'b0;
  assign o[1] = t_3__14_ | 1'b0;
  assign o[2] = t_3__13_ | 1'b0;
  assign o[3] = t_3__12_ | 1'b0;
  assign o[4] = t_3__11_ | 1'b0;
  assign o[5] = t_3__10_ | 1'b0;
  assign o[6] = t_3__9_ | 1'b0;
  assign o[7] = t_3__8_ | 1'b0;
  assign o[8] = t_3__7_ | t_3__15_;
  assign o[9] = t_3__6_ | t_3__14_;
  assign o[10] = t_3__5_ | t_3__13_;
  assign o[11] = t_3__4_ | t_3__12_;
  assign o[12] = t_3__3_ | t_3__11_;
  assign o[13] = t_3__2_ | t_3__10_;
  assign o[14] = t_3__1_ | t_3__9_;
  assign o[15] = t_3__0_ | t_3__8_;

endmodule



module bsg_priority_encode_one_hot_out_width_p16_lo_to_hi_p1
(
  i,
  o
);

  input [15:0] i;
  output [15:0] o;
  wire [15:0] o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14;
  wire [15:1] scan_lo;

  bsg_scan_width_p16_or_p1_lo_to_hi_p1
  genblk1_scan
  (
    .i(i),
    .o({ scan_lo, o[0:0] })
  );

  assign o[15] = scan_lo[15] & N0;
  assign N0 = ~scan_lo[14];
  assign o[14] = scan_lo[14] & N1;
  assign N1 = ~scan_lo[13];
  assign o[13] = scan_lo[13] & N2;
  assign N2 = ~scan_lo[12];
  assign o[12] = scan_lo[12] & N3;
  assign N3 = ~scan_lo[11];
  assign o[11] = scan_lo[11] & N4;
  assign N4 = ~scan_lo[10];
  assign o[10] = scan_lo[10] & N5;
  assign N5 = ~scan_lo[9];
  assign o[9] = scan_lo[9] & N6;
  assign N6 = ~scan_lo[8];
  assign o[8] = scan_lo[8] & N7;
  assign N7 = ~scan_lo[7];
  assign o[7] = scan_lo[7] & N8;
  assign N8 = ~scan_lo[6];
  assign o[6] = scan_lo[6] & N9;
  assign N9 = ~scan_lo[5];
  assign o[5] = scan_lo[5] & N10;
  assign N10 = ~scan_lo[4];
  assign o[4] = scan_lo[4] & N11;
  assign N11 = ~scan_lo[3];
  assign o[3] = scan_lo[3] & N12;
  assign N12 = ~scan_lo[2];
  assign o[2] = scan_lo[2] & N13;
  assign N13 = ~scan_lo[1];
  assign o[1] = scan_lo[1] & N14;
  assign N14 = ~o[0];

endmodule



module bsg_encode_one_hot_width_p1
(
  i,
  addr_o,
  v_o
);

  input [0:0] i;
  output [0:0] addr_o;
  output v_o;
  wire [0:0] addr_o;
  wire v_o;
  assign v_o = i[0];
  assign addr_o[0] = 1'b0;

endmodule



module bsg_encode_one_hot_width_p2
(
  i,
  addr_o,
  v_o
);

  input [1:0] i;
  output [0:0] addr_o;
  output v_o;
  wire [0:0] addr_o,aligned_vs;
  wire v_o;
  wire [1:0] aligned_addrs;

  bsg_encode_one_hot_width_p1
  aligned_left
  (
    .i(i[0]),
    .addr_o(aligned_addrs[0]),
    .v_o(aligned_vs[0])
  );


  bsg_encode_one_hot_width_p1
  aligned_right
  (
    .i(i[1]),
    .addr_o(aligned_addrs[1]),
    .v_o(addr_o[0])
  );

  assign v_o = addr_o[0] | aligned_vs[0];

endmodule



module bsg_encode_one_hot_width_p4
(
  i,
  addr_o,
  v_o
);

  input [3:0] i;
  output [1:0] addr_o;
  output v_o;
  wire [1:0] addr_o,aligned_addrs;
  wire v_o;
  wire [0:0] aligned_vs;

  bsg_encode_one_hot_width_p2
  aligned_left
  (
    .i(i[1:0]),
    .addr_o(aligned_addrs[0]),
    .v_o(aligned_vs[0])
  );


  bsg_encode_one_hot_width_p2
  aligned_right
  (
    .i(i[3:2]),
    .addr_o(aligned_addrs[1]),
    .v_o(addr_o[1])
  );

  assign v_o = addr_o[1] | aligned_vs[0];
  assign addr_o[0] = aligned_addrs[0] | aligned_addrs[1];

endmodule



module bsg_encode_one_hot_width_p8
(
  i,
  addr_o,
  v_o
);

  input [7:0] i;
  output [2:0] addr_o;
  output v_o;
  wire [2:0] addr_o;
  wire v_o;
  wire [3:0] aligned_addrs;
  wire [0:0] aligned_vs;

  bsg_encode_one_hot_width_p4
  aligned_left
  (
    .i(i[3:0]),
    .addr_o(aligned_addrs[1:0]),
    .v_o(aligned_vs[0])
  );


  bsg_encode_one_hot_width_p4
  aligned_right
  (
    .i(i[7:4]),
    .addr_o(aligned_addrs[3:2]),
    .v_o(addr_o[2])
  );

  assign v_o = addr_o[2] | aligned_vs[0];
  assign addr_o[1] = aligned_addrs[1] | aligned_addrs[3];
  assign addr_o[0] = aligned_addrs[0] | aligned_addrs[2];

endmodule



module bsg_encode_one_hot_width_p16_lo_to_hi_p1
(
  i,
  addr_o,
  v_o
);

  input [15:0] i;
  output [3:0] addr_o;
  output v_o;
  wire [3:0] addr_o;
  wire v_o;
  wire [5:0] aligned_addrs;
  wire [0:0] aligned_vs;

  bsg_encode_one_hot_width_p8
  aligned_left
  (
    .i(i[7:0]),
    .addr_o(aligned_addrs[2:0]),
    .v_o(aligned_vs[0])
  );


  bsg_encode_one_hot_width_p8
  aligned_right
  (
    .i(i[15:8]),
    .addr_o(aligned_addrs[5:3]),
    .v_o(addr_o[3])
  );

  assign v_o = addr_o[3] | aligned_vs[0];
  assign addr_o[2] = aligned_addrs[2] | aligned_addrs[5];
  assign addr_o[1] = aligned_addrs[1] | aligned_addrs[4];
  assign addr_o[0] = aligned_addrs[0] | aligned_addrs[3];

endmodule



module bsg_priority_encode_width_p16_lo_to_hi_p1
(
  i,
  addr_o,
  v_o
);

  input [15:0] i;
  output [3:0] addr_o;
  output v_o;
  wire [3:0] addr_o;
  wire v_o;
  wire [15:0] enc_lo;

  bsg_priority_encode_one_hot_out_width_p16_lo_to_hi_p1
  a
  (
    .i(i),
    .o(enc_lo)
  );


  bsg_encode_one_hot_width_p16_lo_to_hi_p1
  b
  (
    .i(enc_lo),
    .addr_o(addr_o),
    .v_o(v_o)
  );


endmodule



module bsg_counting_leading_zeros
(
  a_i,
  num_zero_o
);

  input [15:0] a_i;
  output [3:0] num_zero_o;
  wire [3:0] num_zero_o;

  bsg_priority_encode_width_p16_lo_to_hi_p1
  pe0
  (
    .i({ a_i[0:0], a_i[1:1], a_i[2:2], a_i[3:3], a_i[4:4], a_i[5:5], a_i[6:6], a_i[7:7], a_i[8:8], a_i[9:9], a_i[10:10], a_i[11:11], a_i[12:12], a_i[13:13], a_i[14:14], a_i[15:15] }),
    .addr_o(num_zero_o)
  );


endmodule

