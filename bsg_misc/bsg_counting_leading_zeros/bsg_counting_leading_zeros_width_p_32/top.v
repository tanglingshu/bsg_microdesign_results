

module top
(
  a_i,
  num_zero_o
);

  input [31:0] a_i;
  output [4:0] num_zero_o;

  bsg_counting_leading_zeros
  wrapper
  (
    .a_i(a_i),
    .num_zero_o(num_zero_o)
  );


endmodule



module bsg_scan_width_p32_or_p1_lo_to_hi_p1
(
  i,
  o
);

  input [31:0] i;
  output [31:0] o;
  wire [31:0] o;
  wire t_4__31_,t_4__30_,t_4__29_,t_4__28_,t_4__27_,t_4__26_,t_4__25_,t_4__24_,
  t_4__23_,t_4__22_,t_4__21_,t_4__20_,t_4__19_,t_4__18_,t_4__17_,t_4__16_,t_4__15_,
  t_4__14_,t_4__13_,t_4__12_,t_4__11_,t_4__10_,t_4__9_,t_4__8_,t_4__7_,t_4__6_,t_4__5_,
  t_4__4_,t_4__3_,t_4__2_,t_4__1_,t_4__0_,t_3__31_,t_3__30_,t_3__29_,t_3__28_,
  t_3__27_,t_3__26_,t_3__25_,t_3__24_,t_3__23_,t_3__22_,t_3__21_,t_3__20_,t_3__19_,
  t_3__18_,t_3__17_,t_3__16_,t_3__15_,t_3__14_,t_3__13_,t_3__12_,t_3__11_,t_3__10_,
  t_3__9_,t_3__8_,t_3__7_,t_3__6_,t_3__5_,t_3__4_,t_3__3_,t_3__2_,t_3__1_,t_3__0_,
  t_2__31_,t_2__30_,t_2__29_,t_2__28_,t_2__27_,t_2__26_,t_2__25_,t_2__24_,t_2__23_,
  t_2__22_,t_2__21_,t_2__20_,t_2__19_,t_2__18_,t_2__17_,t_2__16_,t_2__15_,t_2__14_,
  t_2__13_,t_2__12_,t_2__11_,t_2__10_,t_2__9_,t_2__8_,t_2__7_,t_2__6_,t_2__5_,
  t_2__4_,t_2__3_,t_2__2_,t_2__1_,t_2__0_,t_1__31_,t_1__30_,t_1__29_,t_1__28_,t_1__27_,
  t_1__26_,t_1__25_,t_1__24_,t_1__23_,t_1__22_,t_1__21_,t_1__20_,t_1__19_,t_1__18_,
  t_1__17_,t_1__16_,t_1__15_,t_1__14_,t_1__13_,t_1__12_,t_1__11_,t_1__10_,t_1__9_,
  t_1__8_,t_1__7_,t_1__6_,t_1__5_,t_1__4_,t_1__3_,t_1__2_,t_1__1_,t_1__0_;
  assign t_1__31_ = i[0] | 1'b0;
  assign t_1__30_ = i[1] | i[0];
  assign t_1__29_ = i[2] | i[1];
  assign t_1__28_ = i[3] | i[2];
  assign t_1__27_ = i[4] | i[3];
  assign t_1__26_ = i[5] | i[4];
  assign t_1__25_ = i[6] | i[5];
  assign t_1__24_ = i[7] | i[6];
  assign t_1__23_ = i[8] | i[7];
  assign t_1__22_ = i[9] | i[8];
  assign t_1__21_ = i[10] | i[9];
  assign t_1__20_ = i[11] | i[10];
  assign t_1__19_ = i[12] | i[11];
  assign t_1__18_ = i[13] | i[12];
  assign t_1__17_ = i[14] | i[13];
  assign t_1__16_ = i[15] | i[14];
  assign t_1__15_ = i[16] | i[15];
  assign t_1__14_ = i[17] | i[16];
  assign t_1__13_ = i[18] | i[17];
  assign t_1__12_ = i[19] | i[18];
  assign t_1__11_ = i[20] | i[19];
  assign t_1__10_ = i[21] | i[20];
  assign t_1__9_ = i[22] | i[21];
  assign t_1__8_ = i[23] | i[22];
  assign t_1__7_ = i[24] | i[23];
  assign t_1__6_ = i[25] | i[24];
  assign t_1__5_ = i[26] | i[25];
  assign t_1__4_ = i[27] | i[26];
  assign t_1__3_ = i[28] | i[27];
  assign t_1__2_ = i[29] | i[28];
  assign t_1__1_ = i[30] | i[29];
  assign t_1__0_ = i[31] | i[30];
  assign t_2__31_ = t_1__31_ | 1'b0;
  assign t_2__30_ = t_1__30_ | 1'b0;
  assign t_2__29_ = t_1__29_ | t_1__31_;
  assign t_2__28_ = t_1__28_ | t_1__30_;
  assign t_2__27_ = t_1__27_ | t_1__29_;
  assign t_2__26_ = t_1__26_ | t_1__28_;
  assign t_2__25_ = t_1__25_ | t_1__27_;
  assign t_2__24_ = t_1__24_ | t_1__26_;
  assign t_2__23_ = t_1__23_ | t_1__25_;
  assign t_2__22_ = t_1__22_ | t_1__24_;
  assign t_2__21_ = t_1__21_ | t_1__23_;
  assign t_2__20_ = t_1__20_ | t_1__22_;
  assign t_2__19_ = t_1__19_ | t_1__21_;
  assign t_2__18_ = t_1__18_ | t_1__20_;
  assign t_2__17_ = t_1__17_ | t_1__19_;
  assign t_2__16_ = t_1__16_ | t_1__18_;
  assign t_2__15_ = t_1__15_ | t_1__17_;
  assign t_2__14_ = t_1__14_ | t_1__16_;
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
  assign t_3__31_ = t_2__31_ | 1'b0;
  assign t_3__30_ = t_2__30_ | 1'b0;
  assign t_3__29_ = t_2__29_ | 1'b0;
  assign t_3__28_ = t_2__28_ | 1'b0;
  assign t_3__27_ = t_2__27_ | t_2__31_;
  assign t_3__26_ = t_2__26_ | t_2__30_;
  assign t_3__25_ = t_2__25_ | t_2__29_;
  assign t_3__24_ = t_2__24_ | t_2__28_;
  assign t_3__23_ = t_2__23_ | t_2__27_;
  assign t_3__22_ = t_2__22_ | t_2__26_;
  assign t_3__21_ = t_2__21_ | t_2__25_;
  assign t_3__20_ = t_2__20_ | t_2__24_;
  assign t_3__19_ = t_2__19_ | t_2__23_;
  assign t_3__18_ = t_2__18_ | t_2__22_;
  assign t_3__17_ = t_2__17_ | t_2__21_;
  assign t_3__16_ = t_2__16_ | t_2__20_;
  assign t_3__15_ = t_2__15_ | t_2__19_;
  assign t_3__14_ = t_2__14_ | t_2__18_;
  assign t_3__13_ = t_2__13_ | t_2__17_;
  assign t_3__12_ = t_2__12_ | t_2__16_;
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
  assign t_4__31_ = t_3__31_ | 1'b0;
  assign t_4__30_ = t_3__30_ | 1'b0;
  assign t_4__29_ = t_3__29_ | 1'b0;
  assign t_4__28_ = t_3__28_ | 1'b0;
  assign t_4__27_ = t_3__27_ | 1'b0;
  assign t_4__26_ = t_3__26_ | 1'b0;
  assign t_4__25_ = t_3__25_ | 1'b0;
  assign t_4__24_ = t_3__24_ | 1'b0;
  assign t_4__23_ = t_3__23_ | t_3__31_;
  assign t_4__22_ = t_3__22_ | t_3__30_;
  assign t_4__21_ = t_3__21_ | t_3__29_;
  assign t_4__20_ = t_3__20_ | t_3__28_;
  assign t_4__19_ = t_3__19_ | t_3__27_;
  assign t_4__18_ = t_3__18_ | t_3__26_;
  assign t_4__17_ = t_3__17_ | t_3__25_;
  assign t_4__16_ = t_3__16_ | t_3__24_;
  assign t_4__15_ = t_3__15_ | t_3__23_;
  assign t_4__14_ = t_3__14_ | t_3__22_;
  assign t_4__13_ = t_3__13_ | t_3__21_;
  assign t_4__12_ = t_3__12_ | t_3__20_;
  assign t_4__11_ = t_3__11_ | t_3__19_;
  assign t_4__10_ = t_3__10_ | t_3__18_;
  assign t_4__9_ = t_3__9_ | t_3__17_;
  assign t_4__8_ = t_3__8_ | t_3__16_;
  assign t_4__7_ = t_3__7_ | t_3__15_;
  assign t_4__6_ = t_3__6_ | t_3__14_;
  assign t_4__5_ = t_3__5_ | t_3__13_;
  assign t_4__4_ = t_3__4_ | t_3__12_;
  assign t_4__3_ = t_3__3_ | t_3__11_;
  assign t_4__2_ = t_3__2_ | t_3__10_;
  assign t_4__1_ = t_3__1_ | t_3__9_;
  assign t_4__0_ = t_3__0_ | t_3__8_;
  assign o[0] = t_4__31_ | 1'b0;
  assign o[1] = t_4__30_ | 1'b0;
  assign o[2] = t_4__29_ | 1'b0;
  assign o[3] = t_4__28_ | 1'b0;
  assign o[4] = t_4__27_ | 1'b0;
  assign o[5] = t_4__26_ | 1'b0;
  assign o[6] = t_4__25_ | 1'b0;
  assign o[7] = t_4__24_ | 1'b0;
  assign o[8] = t_4__23_ | 1'b0;
  assign o[9] = t_4__22_ | 1'b0;
  assign o[10] = t_4__21_ | 1'b0;
  assign o[11] = t_4__20_ | 1'b0;
  assign o[12] = t_4__19_ | 1'b0;
  assign o[13] = t_4__18_ | 1'b0;
  assign o[14] = t_4__17_ | 1'b0;
  assign o[15] = t_4__16_ | 1'b0;
  assign o[16] = t_4__15_ | t_4__31_;
  assign o[17] = t_4__14_ | t_4__30_;
  assign o[18] = t_4__13_ | t_4__29_;
  assign o[19] = t_4__12_ | t_4__28_;
  assign o[20] = t_4__11_ | t_4__27_;
  assign o[21] = t_4__10_ | t_4__26_;
  assign o[22] = t_4__9_ | t_4__25_;
  assign o[23] = t_4__8_ | t_4__24_;
  assign o[24] = t_4__7_ | t_4__23_;
  assign o[25] = t_4__6_ | t_4__22_;
  assign o[26] = t_4__5_ | t_4__21_;
  assign o[27] = t_4__4_ | t_4__20_;
  assign o[28] = t_4__3_ | t_4__19_;
  assign o[29] = t_4__2_ | t_4__18_;
  assign o[30] = t_4__1_ | t_4__17_;
  assign o[31] = t_4__0_ | t_4__16_;

endmodule



module bsg_priority_encode_one_hot_out_width_p32_lo_to_hi_p1
(
  i,
  o
);

  input [31:0] i;
  output [31:0] o;
  wire [31:0] o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30;
  wire [31:1] scan_lo;

  bsg_scan_width_p32_or_p1_lo_to_hi_p1
  genblk1_scan
  (
    .i(i),
    .o({ scan_lo, o[0:0] })
  );

  assign o[31] = scan_lo[31] & N0;
  assign N0 = ~scan_lo[30];
  assign o[30] = scan_lo[30] & N1;
  assign N1 = ~scan_lo[29];
  assign o[29] = scan_lo[29] & N2;
  assign N2 = ~scan_lo[28];
  assign o[28] = scan_lo[28] & N3;
  assign N3 = ~scan_lo[27];
  assign o[27] = scan_lo[27] & N4;
  assign N4 = ~scan_lo[26];
  assign o[26] = scan_lo[26] & N5;
  assign N5 = ~scan_lo[25];
  assign o[25] = scan_lo[25] & N6;
  assign N6 = ~scan_lo[24];
  assign o[24] = scan_lo[24] & N7;
  assign N7 = ~scan_lo[23];
  assign o[23] = scan_lo[23] & N8;
  assign N8 = ~scan_lo[22];
  assign o[22] = scan_lo[22] & N9;
  assign N9 = ~scan_lo[21];
  assign o[21] = scan_lo[21] & N10;
  assign N10 = ~scan_lo[20];
  assign o[20] = scan_lo[20] & N11;
  assign N11 = ~scan_lo[19];
  assign o[19] = scan_lo[19] & N12;
  assign N12 = ~scan_lo[18];
  assign o[18] = scan_lo[18] & N13;
  assign N13 = ~scan_lo[17];
  assign o[17] = scan_lo[17] & N14;
  assign N14 = ~scan_lo[16];
  assign o[16] = scan_lo[16] & N15;
  assign N15 = ~scan_lo[15];
  assign o[15] = scan_lo[15] & N16;
  assign N16 = ~scan_lo[14];
  assign o[14] = scan_lo[14] & N17;
  assign N17 = ~scan_lo[13];
  assign o[13] = scan_lo[13] & N18;
  assign N18 = ~scan_lo[12];
  assign o[12] = scan_lo[12] & N19;
  assign N19 = ~scan_lo[11];
  assign o[11] = scan_lo[11] & N20;
  assign N20 = ~scan_lo[10];
  assign o[10] = scan_lo[10] & N21;
  assign N21 = ~scan_lo[9];
  assign o[9] = scan_lo[9] & N22;
  assign N22 = ~scan_lo[8];
  assign o[8] = scan_lo[8] & N23;
  assign N23 = ~scan_lo[7];
  assign o[7] = scan_lo[7] & N24;
  assign N24 = ~scan_lo[6];
  assign o[6] = scan_lo[6] & N25;
  assign N25 = ~scan_lo[5];
  assign o[5] = scan_lo[5] & N26;
  assign N26 = ~scan_lo[4];
  assign o[4] = scan_lo[4] & N27;
  assign N27 = ~scan_lo[3];
  assign o[3] = scan_lo[3] & N28;
  assign N28 = ~scan_lo[2];
  assign o[2] = scan_lo[2] & N29;
  assign N29 = ~scan_lo[1];
  assign o[1] = scan_lo[1] & N30;
  assign N30 = ~o[0];

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



module bsg_encode_one_hot_width_p16
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



module bsg_encode_one_hot_width_p32_lo_to_hi_p1
(
  i,
  addr_o,
  v_o
);

  input [31:0] i;
  output [4:0] addr_o;
  output v_o;
  wire [4:0] addr_o;
  wire v_o;
  wire [7:0] aligned_addrs;
  wire [0:0] aligned_vs;

  bsg_encode_one_hot_width_p16
  aligned_left
  (
    .i(i[15:0]),
    .addr_o(aligned_addrs[3:0]),
    .v_o(aligned_vs[0])
  );


  bsg_encode_one_hot_width_p16
  aligned_right
  (
    .i(i[31:16]),
    .addr_o(aligned_addrs[7:4]),
    .v_o(addr_o[4])
  );

  assign v_o = addr_o[4] | aligned_vs[0];
  assign addr_o[3] = aligned_addrs[3] | aligned_addrs[7];
  assign addr_o[2] = aligned_addrs[2] | aligned_addrs[6];
  assign addr_o[1] = aligned_addrs[1] | aligned_addrs[5];
  assign addr_o[0] = aligned_addrs[0] | aligned_addrs[4];

endmodule



module bsg_priority_encode_width_p32_lo_to_hi_p1
(
  i,
  addr_o,
  v_o
);

  input [31:0] i;
  output [4:0] addr_o;
  output v_o;
  wire [4:0] addr_o;
  wire v_o;
  wire [31:0] enc_lo;

  bsg_priority_encode_one_hot_out_width_p32_lo_to_hi_p1
  a
  (
    .i(i),
    .o(enc_lo)
  );


  bsg_encode_one_hot_width_p32_lo_to_hi_p1
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

  input [31:0] a_i;
  output [4:0] num_zero_o;
  wire [4:0] num_zero_o;

  bsg_priority_encode_width_p32_lo_to_hi_p1
  pe0
  (
    .i({ a_i[0:0], a_i[1:1], a_i[2:2], a_i[3:3], a_i[4:4], a_i[5:5], a_i[6:6], a_i[7:7], a_i[8:8], a_i[9:9], a_i[10:10], a_i[11:11], a_i[12:12], a_i[13:13], a_i[14:14], a_i[15:15], a_i[16:16], a_i[17:17], a_i[18:18], a_i[19:19], a_i[20:20], a_i[21:21], a_i[22:22], a_i[23:23], a_i[24:24], a_i[25:25], a_i[26:26], a_i[27:27], a_i[28:28], a_i[29:29], a_i[30:30], a_i[31:31] }),
    .addr_o(num_zero_o)
  );


endmodule

