

module top
(
  clk_i,
  reset_i,
  val_i,
  clk_r_o
);

  input [15:0] val_i;
  input clk_i;
  input reset_i;
  output clk_r_o;

  bsg_counter_clock_downsample
  wrapper
  (
    .val_i(val_i),
    .clk_i(clk_i),
    .reset_i(reset_i),
    .clk_r_o(clk_r_o)
  );


endmodule



module bsg_dff_width_p15_harden_p0_strength_p2
(
  clk_i,
  data_i,
  data_o
);

  input [14:0] data_i;
  output [14:0] data_o;
  input clk_i;
  reg [14:0] data_o;

  always @(posedge clk_i) begin
    if(1'b1) begin
      { data_o[14:0] } <= { data_i[14:0] };
    end 
  end


endmodule



module bsg_xnor_width_p16_harden_p1
(
  a_i,
  b_i,
  o
);

  input [15:0] a_i;
  input [15:0] b_i;
  output [15:0] o;
  wire [15:0] o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15;
  assign o[15] = ~N0;
  assign N0 = a_i[15] ^ b_i[15];
  assign o[14] = ~N1;
  assign N1 = a_i[14] ^ b_i[14];
  assign o[13] = ~N2;
  assign N2 = a_i[13] ^ b_i[13];
  assign o[12] = ~N3;
  assign N3 = a_i[12] ^ b_i[12];
  assign o[11] = ~N4;
  assign N4 = a_i[11] ^ b_i[11];
  assign o[10] = ~N5;
  assign N5 = a_i[10] ^ b_i[10];
  assign o[9] = ~N6;
  assign N6 = a_i[9] ^ b_i[9];
  assign o[8] = ~N7;
  assign N7 = a_i[8] ^ b_i[8];
  assign o[7] = ~N8;
  assign N8 = a_i[7] ^ b_i[7];
  assign o[6] = ~N9;
  assign N9 = a_i[6] ^ b_i[6];
  assign o[5] = ~N10;
  assign N10 = a_i[5] ^ b_i[5];
  assign o[4] = ~N11;
  assign N11 = a_i[4] ^ b_i[4];
  assign o[3] = ~N12;
  assign N12 = a_i[3] ^ b_i[3];
  assign o[2] = ~N13;
  assign N13 = a_i[2] ^ b_i[2];
  assign o[1] = ~N14;
  assign N14 = a_i[1] ^ b_i[1];
  assign o[0] = ~N15;
  assign N15 = a_i[0] ^ b_i[0];

endmodule



module bsg_muxi2_gatestack_width_p16_harden_p1
(
  i0,
  i1,
  i2,
  o
);

  input [15:0] i0;
  input [15:0] i1;
  input [15:0] i2;
  output [15:0] o;
  wire [15:0] o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,
  N42,N43,N44,N45,N46,N47;
  assign N17 = (N0)? i1[0] : 
               (N16)? i0[0] : 1'b0;
  assign N0 = i2[0];
  assign N19 = (N1)? i1[1] : 
               (N18)? i0[1] : 1'b0;
  assign N1 = i2[1];
  assign N21 = (N2)? i1[2] : 
               (N20)? i0[2] : 1'b0;
  assign N2 = i2[2];
  assign N23 = (N3)? i1[3] : 
               (N22)? i0[3] : 1'b0;
  assign N3 = i2[3];
  assign N25 = (N4)? i1[4] : 
               (N24)? i0[4] : 1'b0;
  assign N4 = i2[4];
  assign N27 = (N5)? i1[5] : 
               (N26)? i0[5] : 1'b0;
  assign N5 = i2[5];
  assign N29 = (N6)? i1[6] : 
               (N28)? i0[6] : 1'b0;
  assign N6 = i2[6];
  assign N31 = (N7)? i1[7] : 
               (N30)? i0[7] : 1'b0;
  assign N7 = i2[7];
  assign N33 = (N8)? i1[8] : 
               (N32)? i0[8] : 1'b0;
  assign N8 = i2[8];
  assign N35 = (N9)? i1[9] : 
               (N34)? i0[9] : 1'b0;
  assign N9 = i2[9];
  assign N37 = (N10)? i1[10] : 
               (N36)? i0[10] : 1'b0;
  assign N10 = i2[10];
  assign N39 = (N11)? i1[11] : 
               (N38)? i0[11] : 1'b0;
  assign N11 = i2[11];
  assign N41 = (N12)? i1[12] : 
               (N40)? i0[12] : 1'b0;
  assign N12 = i2[12];
  assign N43 = (N13)? i1[13] : 
               (N42)? i0[13] : 1'b0;
  assign N13 = i2[13];
  assign N45 = (N14)? i1[14] : 
               (N44)? i0[14] : 1'b0;
  assign N14 = i2[14];
  assign N47 = (N15)? i1[15] : 
               (N46)? i0[15] : 1'b0;
  assign N15 = i2[15];
  assign N16 = ~i2[0];
  assign o[0] = ~N17;
  assign N18 = ~i2[1];
  assign o[1] = ~N19;
  assign N20 = ~i2[2];
  assign o[2] = ~N21;
  assign N22 = ~i2[3];
  assign o[3] = ~N23;
  assign N24 = ~i2[4];
  assign o[4] = ~N25;
  assign N26 = ~i2[5];
  assign o[5] = ~N27;
  assign N28 = ~i2[6];
  assign o[6] = ~N29;
  assign N30 = ~i2[7];
  assign o[7] = ~N31;
  assign N32 = ~i2[8];
  assign o[8] = ~N33;
  assign N34 = ~i2[9];
  assign o[9] = ~N35;
  assign N36 = ~i2[10];
  assign o[10] = ~N37;
  assign N38 = ~i2[11];
  assign o[11] = ~N39;
  assign N40 = ~i2[12];
  assign o[12] = ~N41;
  assign N42 = ~i2[13];
  assign o[13] = ~N43;
  assign N44 = ~i2[14];
  assign o[14] = ~N45;
  assign N46 = ~i2[15];
  assign o[15] = ~N47;

endmodule



module bsg_dff_width_p16_harden_p0_strength_p4
(
  clk_i,
  data_i,
  data_o
);

  input [15:0] data_i;
  output [15:0] data_o;
  input clk_i;
  reg [15:0] data_o;

  always @(posedge clk_i) begin
    if(1'b1) begin
      { data_o[15:0] } <= { data_i[15:0] };
    end 
  end


endmodule



module bsg_nand_width_p16_harden_p1
(
  a_i,
  b_i,
  o
);

  input [15:0] a_i;
  input [15:0] b_i;
  output [15:0] o;
  wire [15:0] o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15;
  assign o[15] = ~N0;
  assign N0 = a_i[15] & b_i[15];
  assign o[14] = ~N1;
  assign N1 = a_i[14] & b_i[14];
  assign o[13] = ~N2;
  assign N2 = a_i[13] & b_i[13];
  assign o[12] = ~N3;
  assign N3 = a_i[12] & b_i[12];
  assign o[11] = ~N4;
  assign N4 = a_i[11] & b_i[11];
  assign o[10] = ~N5;
  assign N5 = a_i[10] & b_i[10];
  assign o[9] = ~N6;
  assign N6 = a_i[9] & b_i[9];
  assign o[8] = ~N7;
  assign N7 = a_i[8] & b_i[8];
  assign o[7] = ~N8;
  assign N8 = a_i[7] & b_i[7];
  assign o[6] = ~N9;
  assign N9 = a_i[6] & b_i[6];
  assign o[5] = ~N10;
  assign N10 = a_i[5] & b_i[5];
  assign o[4] = ~N11;
  assign N11 = a_i[4] & b_i[4];
  assign o[3] = ~N12;
  assign N12 = a_i[3] & b_i[3];
  assign o[2] = ~N13;
  assign N13 = a_i[2] & b_i[2];
  assign o[1] = ~N14;
  assign N14 = a_i[1] & b_i[1];
  assign o[0] = ~N15;
  assign N15 = a_i[0] & b_i[0];

endmodule



module bsg_nor3_width_p15_harden_p1
(
  a_i,
  b_i,
  c_i,
  o
);

  input [14:0] a_i;
  input [14:0] b_i;
  input [14:0] c_i;
  output [14:0] o;
  wire [14:0] o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29;
  assign o[14] = ~N1;
  assign N1 = N0 | c_i[14];
  assign N0 = a_i[14] | b_i[14];
  assign o[13] = ~N3;
  assign N3 = N2 | c_i[13];
  assign N2 = a_i[13] | b_i[13];
  assign o[12] = ~N5;
  assign N5 = N4 | c_i[12];
  assign N4 = a_i[12] | b_i[12];
  assign o[11] = ~N7;
  assign N7 = N6 | c_i[11];
  assign N6 = a_i[11] | b_i[11];
  assign o[10] = ~N9;
  assign N9 = N8 | c_i[10];
  assign N8 = a_i[10] | b_i[10];
  assign o[9] = ~N11;
  assign N11 = N10 | c_i[9];
  assign N10 = a_i[9] | b_i[9];
  assign o[8] = ~N13;
  assign N13 = N12 | c_i[8];
  assign N12 = a_i[8] | b_i[8];
  assign o[7] = ~N15;
  assign N15 = N14 | c_i[7];
  assign N14 = a_i[7] | b_i[7];
  assign o[6] = ~N17;
  assign N17 = N16 | c_i[6];
  assign N16 = a_i[6] | b_i[6];
  assign o[5] = ~N19;
  assign N19 = N18 | c_i[5];
  assign N18 = a_i[5] | b_i[5];
  assign o[4] = ~N21;
  assign N21 = N20 | c_i[4];
  assign N20 = a_i[4] | b_i[4];
  assign o[3] = ~N23;
  assign N23 = N22 | c_i[3];
  assign N22 = a_i[3] | b_i[3];
  assign o[2] = ~N25;
  assign N25 = N24 | c_i[2];
  assign N24 = a_i[2] | b_i[2];
  assign o[1] = ~N27;
  assign N27 = N26 | c_i[1];
  assign N26 = a_i[1] | b_i[1];
  assign o[0] = ~N29;
  assign N29 = N28 | c_i[0];
  assign N28 = a_i[0] | b_i[0];

endmodule



module bsg_reduce_width_p16_and_p1_harden_p1
(
  i,
  o
);

  input [15:0] i;
  output o;
  wire o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13;
  assign o = N13 & i[0];
  assign N13 = N12 & i[1];
  assign N12 = N11 & i[2];
  assign N11 = N10 & i[3];
  assign N10 = N9 & i[4];
  assign N9 = N8 & i[5];
  assign N8 = N7 & i[6];
  assign N7 = N6 & i[7];
  assign N6 = N5 & i[8];
  assign N5 = N4 & i[9];
  assign N4 = N3 & i[10];
  assign N3 = N2 & i[11];
  assign N2 = N1 & i[12];
  assign N1 = N0 & i[13];
  assign N0 = i[15] & i[14];

endmodule



module bsg_buf_width_p1
(
  i,
  o
);

  input [0:0] i;
  output [0:0] o;
  wire [0:0] o;
  assign o[0] = i[0];

endmodule



module bsg_strobe_width_p16_harden_p0
(
  clk_i,
  reset_r_i,
  init_val_r_i,
  strobe_r_o
);

  input [15:0] init_val_r_i;
  input clk_i;
  input reset_r_i;
  output strobe_r_o;
  wire strobe_n,new_val,strobe_n_buf;
  wire [14:0] C_n,C_r;
  wire [15:0] S_r,S_n,S_n_n,C_n_prereset;
  reg strobe_r_o;

  bsg_dff_width_p15_harden_p0_strength_p2
  C_reg
  (
    .clk_i(clk_i),
    .data_i(C_n),
    .data_o(C_r)
  );


  bsg_xnor_width_p16_harden_p1
  xnor_S_n
  (
    .a_i(S_r),
    .b_i({ C_r, 1'b1 }),
    .o(S_n)
  );


  bsg_muxi2_gatestack_width_p16_harden_p1
  muxi2_S_n
  (
    .i0(S_n),
    .i1(init_val_r_i),
    .i2({ new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val }),
    .o(S_n_n)
  );


  bsg_dff_width_p16_harden_p0_strength_p4
  S_reg
  (
    .clk_i(clk_i),
    .data_i(S_n_n),
    .data_o(S_r)
  );


  bsg_nand_width_p16_harden_p1
  nand_C_n
  (
    .a_i(S_r),
    .b_i({ C_r, 1'b1 }),
    .o(C_n_prereset)
  );


  bsg_nor3_width_p15_harden_p1
  nor3_C_n
  (
    .a_i({ strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf }),
    .b_i(C_n_prereset[14:0]),
    .c_i({ reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i }),
    .o(C_n)
  );


  bsg_reduce_width_p16_and_p1_harden_p1
  andr
  (
    .i(S_r),
    .o(strobe_n)
  );


  bsg_buf_width_p1
  strobe_buf_gate
  (
    .i(strobe_n),
    .o(strobe_n_buf)
  );

  assign new_val = reset_r_i | strobe_n;

  always @(posedge clk_i) begin
    if(1'b1) begin
      strobe_r_o <= strobe_n_buf;
    end 
  end


endmodule



module bsg_counter_clock_downsample
(
  clk_i,
  reset_i,
  val_i,
  clk_r_o
);

  input [15:0] val_i;
  input clk_i;
  input reset_i;
  output clk_r_o;
  wire N0,strobe_r,N1,N2,N3,N4,N5,N6,N7,N8;
  reg clk_r_o;

  bsg_strobe_width_p16_harden_p0
  strobe
  (
    .clk_i(clk_i),
    .reset_r_i(reset_i),
    .init_val_r_i(val_i),
    .strobe_r_o(strobe_r)
  );

  assign N5 = (N0)? 1'b1 : 
              (N8)? 1'b1 : 
              (N3)? 1'b0 : 1'b0;
  assign N0 = N1;
  assign N6 = (N0)? 1'b0 : 
              (N8)? N4 : 1'b0;
  assign N1 = reset_i;
  assign N2 = strobe_r | N1;
  assign N3 = ~N2;
  assign N4 = ~clk_r_o;
  assign N7 = ~N1;
  assign N8 = strobe_r & N7;

  always @(posedge clk_i) begin
    if(N5) begin
      clk_r_o <= N6;
    end 
  end


endmodule

