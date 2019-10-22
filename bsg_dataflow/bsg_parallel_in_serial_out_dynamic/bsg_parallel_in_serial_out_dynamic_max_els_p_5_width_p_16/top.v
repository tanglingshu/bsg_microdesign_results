

module top
(
  clk_i,
  reset_i,
  v_i,
  len_i,
  data_i,
  ready_o,
  v_o,
  len_v_o,
  data_o,
  yumi_i
);

  input [2:0] len_i;
  input [79:0] data_i;
  output [15:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input yumi_i;
  output ready_o;
  output v_o;
  output len_v_o;

  bsg_parallel_in_serial_out_dynamic
  wrapper
  (
    .len_i(len_i),
    .data_i(data_i),
    .data_o(data_o),
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(v_i),
    .yumi_i(yumi_i),
    .ready_o(ready_o),
    .v_o(v_o),
    .len_v_o(len_v_o)
  );


endmodule



module bsg_mem_1r1w_synth_width_p3_els_p2_read_write_same_addr_p0_harden_p0
(
  w_clk_i,
  w_reset_i,
  w_v_i,
  w_addr_i,
  w_data_i,
  r_v_i,
  r_addr_i,
  r_data_o
);

  input [0:0] w_addr_i;
  input [2:0] w_data_i;
  input [0:0] r_addr_i;
  output [2:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [2:0] r_data_o;
  wire N0,N1,N2,N3,N4,N5,N7,N8;
  reg [5:0] mem;
  assign r_data_o[2] = (N3)? mem[2] : 
                       (N0)? mem[5] : 1'b0;
  assign N0 = r_addr_i[0];
  assign r_data_o[1] = (N3)? mem[1] : 
                       (N0)? mem[4] : 1'b0;
  assign r_data_o[0] = (N3)? mem[0] : 
                       (N0)? mem[3] : 1'b0;
  assign N5 = ~w_addr_i[0];
  assign { N8, N7 } = (N1)? { w_addr_i[0:0], N5 } : 
                      (N2)? { 1'b0, 1'b0 } : 1'b0;
  assign N1 = w_v_i;
  assign N2 = N4;
  assign N3 = ~r_addr_i[0];
  assign N4 = ~w_v_i;

  always @(posedge w_clk_i) begin
    if(N8) begin
      { mem[5:3] } <= { w_data_i[2:0] };
    end 
    if(N7) begin
      { mem[2:0] } <= { w_data_i[2:0] };
    end 
  end


endmodule



module bsg_mem_1r1w_width_p3_els_p2_read_write_same_addr_p0
(
  w_clk_i,
  w_reset_i,
  w_v_i,
  w_addr_i,
  w_data_i,
  r_v_i,
  r_addr_i,
  r_data_o
);

  input [0:0] w_addr_i;
  input [2:0] w_data_i;
  input [0:0] r_addr_i;
  output [2:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [2:0] r_data_o;

  bsg_mem_1r1w_synth_width_p3_els_p2_read_write_same_addr_p0_harden_p0
  synth
  (
    .w_clk_i(w_clk_i),
    .w_reset_i(w_reset_i),
    .w_v_i(w_v_i),
    .w_addr_i(w_addr_i[0]),
    .w_data_i(w_data_i),
    .r_v_i(r_v_i),
    .r_addr_i(r_addr_i[0]),
    .r_data_o(r_data_o)
  );


endmodule



module bsg_two_fifo_width_p3
(
  clk_i,
  reset_i,
  ready_o,
  data_i,
  v_i,
  v_o,
  data_o,
  yumi_i
);

  input [2:0] data_i;
  output [2:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input yumi_i;
  output ready_o;
  output v_o;
  wire [2:0] data_o;
  wire ready_o,v_o,N0,N1,enq_i,n_0_net_,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,
  N15,N16,N17,N18,N19,N20,N21,N22,N23,N24;
  reg full_r,tail_r,head_r,empty_r;

  bsg_mem_1r1w_width_p3_els_p2_read_write_same_addr_p0
  mem_1r1w
  (
    .w_clk_i(clk_i),
    .w_reset_i(reset_i),
    .w_v_i(enq_i),
    .w_addr_i(tail_r),
    .w_data_i(data_i),
    .r_v_i(n_0_net_),
    .r_addr_i(head_r),
    .r_data_o(data_o)
  );

  assign N9 = (N0)? 1'b1 : 
              (N1)? N5 : 1'b0;
  assign N0 = N3;
  assign N1 = N2;
  assign N10 = (N0)? 1'b0 : 
               (N1)? N4 : 1'b0;
  assign N11 = (N0)? 1'b1 : 
               (N1)? yumi_i : 1'b0;
  assign N12 = (N0)? 1'b0 : 
               (N1)? N6 : 1'b0;
  assign N13 = (N0)? 1'b1 : 
               (N1)? N7 : 1'b0;
  assign N14 = (N0)? 1'b0 : 
               (N1)? N8 : 1'b0;
  assign n_0_net_ = ~empty_r;
  assign v_o = ~empty_r;
  assign ready_o = ~full_r;
  assign enq_i = v_i & N15;
  assign N15 = ~full_r;
  assign N2 = ~reset_i;
  assign N3 = reset_i;
  assign N5 = enq_i;
  assign N4 = ~tail_r;
  assign N6 = ~head_r;
  assign N7 = N17 | N19;
  assign N17 = empty_r & N16;
  assign N16 = ~enq_i;
  assign N19 = N18 & N16;
  assign N18 = N15 & yumi_i;
  assign N8 = N23 | N24;
  assign N23 = N21 & N22;
  assign N21 = N20 & enq_i;
  assign N20 = ~empty_r;
  assign N22 = ~yumi_i;
  assign N24 = full_r & N22;

  always @(posedge clk_i) begin
    if(1'b1) begin
      full_r <= N14;
      empty_r <= N13;
    end 
    if(N9) begin
      tail_r <= N10;
    end 
    if(N11) begin
      head_r <= N12;
    end 
  end


endmodule



module bsg_mem_1r1w_synth_width_p80_els_p2_read_write_same_addr_p0_harden_p0
(
  w_clk_i,
  w_reset_i,
  w_v_i,
  w_addr_i,
  w_data_i,
  r_v_i,
  r_addr_i,
  r_data_o
);

  input [0:0] w_addr_i;
  input [79:0] w_data_i;
  input [0:0] r_addr_i;
  output [79:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [79:0] r_data_o;
  wire N0,N1,N2,N3,N4,N5,N7,N8;
  reg [159:0] mem;
  assign r_data_o[79] = (N3)? mem[79] : 
                        (N0)? mem[159] : 1'b0;
  assign N0 = r_addr_i[0];
  assign r_data_o[78] = (N3)? mem[78] : 
                        (N0)? mem[158] : 1'b0;
  assign r_data_o[77] = (N3)? mem[77] : 
                        (N0)? mem[157] : 1'b0;
  assign r_data_o[76] = (N3)? mem[76] : 
                        (N0)? mem[156] : 1'b0;
  assign r_data_o[75] = (N3)? mem[75] : 
                        (N0)? mem[155] : 1'b0;
  assign r_data_o[74] = (N3)? mem[74] : 
                        (N0)? mem[154] : 1'b0;
  assign r_data_o[73] = (N3)? mem[73] : 
                        (N0)? mem[153] : 1'b0;
  assign r_data_o[72] = (N3)? mem[72] : 
                        (N0)? mem[152] : 1'b0;
  assign r_data_o[71] = (N3)? mem[71] : 
                        (N0)? mem[151] : 1'b0;
  assign r_data_o[70] = (N3)? mem[70] : 
                        (N0)? mem[150] : 1'b0;
  assign r_data_o[69] = (N3)? mem[69] : 
                        (N0)? mem[149] : 1'b0;
  assign r_data_o[68] = (N3)? mem[68] : 
                        (N0)? mem[148] : 1'b0;
  assign r_data_o[67] = (N3)? mem[67] : 
                        (N0)? mem[147] : 1'b0;
  assign r_data_o[66] = (N3)? mem[66] : 
                        (N0)? mem[146] : 1'b0;
  assign r_data_o[65] = (N3)? mem[65] : 
                        (N0)? mem[145] : 1'b0;
  assign r_data_o[64] = (N3)? mem[64] : 
                        (N0)? mem[144] : 1'b0;
  assign r_data_o[63] = (N3)? mem[63] : 
                        (N0)? mem[143] : 1'b0;
  assign r_data_o[62] = (N3)? mem[62] : 
                        (N0)? mem[142] : 1'b0;
  assign r_data_o[61] = (N3)? mem[61] : 
                        (N0)? mem[141] : 1'b0;
  assign r_data_o[60] = (N3)? mem[60] : 
                        (N0)? mem[140] : 1'b0;
  assign r_data_o[59] = (N3)? mem[59] : 
                        (N0)? mem[139] : 1'b0;
  assign r_data_o[58] = (N3)? mem[58] : 
                        (N0)? mem[138] : 1'b0;
  assign r_data_o[57] = (N3)? mem[57] : 
                        (N0)? mem[137] : 1'b0;
  assign r_data_o[56] = (N3)? mem[56] : 
                        (N0)? mem[136] : 1'b0;
  assign r_data_o[55] = (N3)? mem[55] : 
                        (N0)? mem[135] : 1'b0;
  assign r_data_o[54] = (N3)? mem[54] : 
                        (N0)? mem[134] : 1'b0;
  assign r_data_o[53] = (N3)? mem[53] : 
                        (N0)? mem[133] : 1'b0;
  assign r_data_o[52] = (N3)? mem[52] : 
                        (N0)? mem[132] : 1'b0;
  assign r_data_o[51] = (N3)? mem[51] : 
                        (N0)? mem[131] : 1'b0;
  assign r_data_o[50] = (N3)? mem[50] : 
                        (N0)? mem[130] : 1'b0;
  assign r_data_o[49] = (N3)? mem[49] : 
                        (N0)? mem[129] : 1'b0;
  assign r_data_o[48] = (N3)? mem[48] : 
                        (N0)? mem[128] : 1'b0;
  assign r_data_o[47] = (N3)? mem[47] : 
                        (N0)? mem[127] : 1'b0;
  assign r_data_o[46] = (N3)? mem[46] : 
                        (N0)? mem[126] : 1'b0;
  assign r_data_o[45] = (N3)? mem[45] : 
                        (N0)? mem[125] : 1'b0;
  assign r_data_o[44] = (N3)? mem[44] : 
                        (N0)? mem[124] : 1'b0;
  assign r_data_o[43] = (N3)? mem[43] : 
                        (N0)? mem[123] : 1'b0;
  assign r_data_o[42] = (N3)? mem[42] : 
                        (N0)? mem[122] : 1'b0;
  assign r_data_o[41] = (N3)? mem[41] : 
                        (N0)? mem[121] : 1'b0;
  assign r_data_o[40] = (N3)? mem[40] : 
                        (N0)? mem[120] : 1'b0;
  assign r_data_o[39] = (N3)? mem[39] : 
                        (N0)? mem[119] : 1'b0;
  assign r_data_o[38] = (N3)? mem[38] : 
                        (N0)? mem[118] : 1'b0;
  assign r_data_o[37] = (N3)? mem[37] : 
                        (N0)? mem[117] : 1'b0;
  assign r_data_o[36] = (N3)? mem[36] : 
                        (N0)? mem[116] : 1'b0;
  assign r_data_o[35] = (N3)? mem[35] : 
                        (N0)? mem[115] : 1'b0;
  assign r_data_o[34] = (N3)? mem[34] : 
                        (N0)? mem[114] : 1'b0;
  assign r_data_o[33] = (N3)? mem[33] : 
                        (N0)? mem[113] : 1'b0;
  assign r_data_o[32] = (N3)? mem[32] : 
                        (N0)? mem[112] : 1'b0;
  assign r_data_o[31] = (N3)? mem[31] : 
                        (N0)? mem[111] : 1'b0;
  assign r_data_o[30] = (N3)? mem[30] : 
                        (N0)? mem[110] : 1'b0;
  assign r_data_o[29] = (N3)? mem[29] : 
                        (N0)? mem[109] : 1'b0;
  assign r_data_o[28] = (N3)? mem[28] : 
                        (N0)? mem[108] : 1'b0;
  assign r_data_o[27] = (N3)? mem[27] : 
                        (N0)? mem[107] : 1'b0;
  assign r_data_o[26] = (N3)? mem[26] : 
                        (N0)? mem[106] : 1'b0;
  assign r_data_o[25] = (N3)? mem[25] : 
                        (N0)? mem[105] : 1'b0;
  assign r_data_o[24] = (N3)? mem[24] : 
                        (N0)? mem[104] : 1'b0;
  assign r_data_o[23] = (N3)? mem[23] : 
                        (N0)? mem[103] : 1'b0;
  assign r_data_o[22] = (N3)? mem[22] : 
                        (N0)? mem[102] : 1'b0;
  assign r_data_o[21] = (N3)? mem[21] : 
                        (N0)? mem[101] : 1'b0;
  assign r_data_o[20] = (N3)? mem[20] : 
                        (N0)? mem[100] : 1'b0;
  assign r_data_o[19] = (N3)? mem[19] : 
                        (N0)? mem[99] : 1'b0;
  assign r_data_o[18] = (N3)? mem[18] : 
                        (N0)? mem[98] : 1'b0;
  assign r_data_o[17] = (N3)? mem[17] : 
                        (N0)? mem[97] : 1'b0;
  assign r_data_o[16] = (N3)? mem[16] : 
                        (N0)? mem[96] : 1'b0;
  assign r_data_o[15] = (N3)? mem[15] : 
                        (N0)? mem[95] : 1'b0;
  assign r_data_o[14] = (N3)? mem[14] : 
                        (N0)? mem[94] : 1'b0;
  assign r_data_o[13] = (N3)? mem[13] : 
                        (N0)? mem[93] : 1'b0;
  assign r_data_o[12] = (N3)? mem[12] : 
                        (N0)? mem[92] : 1'b0;
  assign r_data_o[11] = (N3)? mem[11] : 
                        (N0)? mem[91] : 1'b0;
  assign r_data_o[10] = (N3)? mem[10] : 
                        (N0)? mem[90] : 1'b0;
  assign r_data_o[9] = (N3)? mem[9] : 
                       (N0)? mem[89] : 1'b0;
  assign r_data_o[8] = (N3)? mem[8] : 
                       (N0)? mem[88] : 1'b0;
  assign r_data_o[7] = (N3)? mem[7] : 
                       (N0)? mem[87] : 1'b0;
  assign r_data_o[6] = (N3)? mem[6] : 
                       (N0)? mem[86] : 1'b0;
  assign r_data_o[5] = (N3)? mem[5] : 
                       (N0)? mem[85] : 1'b0;
  assign r_data_o[4] = (N3)? mem[4] : 
                       (N0)? mem[84] : 1'b0;
  assign r_data_o[3] = (N3)? mem[3] : 
                       (N0)? mem[83] : 1'b0;
  assign r_data_o[2] = (N3)? mem[2] : 
                       (N0)? mem[82] : 1'b0;
  assign r_data_o[1] = (N3)? mem[1] : 
                       (N0)? mem[81] : 1'b0;
  assign r_data_o[0] = (N3)? mem[0] : 
                       (N0)? mem[80] : 1'b0;
  assign N5 = ~w_addr_i[0];
  assign { N8, N7 } = (N1)? { w_addr_i[0:0], N5 } : 
                      (N2)? { 1'b0, 1'b0 } : 1'b0;
  assign N1 = w_v_i;
  assign N2 = N4;
  assign N3 = ~r_addr_i[0];
  assign N4 = ~w_v_i;

  always @(posedge w_clk_i) begin
    if(N8) begin
      { mem[159:80] } <= { w_data_i[79:0] };
    end 
    if(N7) begin
      { mem[79:0] } <= { w_data_i[79:0] };
    end 
  end


endmodule



module bsg_mem_1r1w_width_p80_els_p2_read_write_same_addr_p0
(
  w_clk_i,
  w_reset_i,
  w_v_i,
  w_addr_i,
  w_data_i,
  r_v_i,
  r_addr_i,
  r_data_o
);

  input [0:0] w_addr_i;
  input [79:0] w_data_i;
  input [0:0] r_addr_i;
  output [79:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [79:0] r_data_o;

  bsg_mem_1r1w_synth_width_p80_els_p2_read_write_same_addr_p0_harden_p0
  synth
  (
    .w_clk_i(w_clk_i),
    .w_reset_i(w_reset_i),
    .w_v_i(w_v_i),
    .w_addr_i(w_addr_i[0]),
    .w_data_i(w_data_i),
    .r_v_i(r_v_i),
    .r_addr_i(r_addr_i[0]),
    .r_data_o(r_data_o)
  );


endmodule



module bsg_two_fifo_width_p80
(
  clk_i,
  reset_i,
  ready_o,
  data_i,
  v_i,
  v_o,
  data_o,
  yumi_i
);

  input [79:0] data_i;
  output [79:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input yumi_i;
  output ready_o;
  output v_o;
  wire [79:0] data_o;
  wire ready_o,v_o,N0,N1,enq_i,n_0_net_,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,
  N15,N16,N17,N18,N19,N20,N21,N22,N23,N24;
  reg full_r,tail_r,head_r,empty_r;

  bsg_mem_1r1w_width_p80_els_p2_read_write_same_addr_p0
  mem_1r1w
  (
    .w_clk_i(clk_i),
    .w_reset_i(reset_i),
    .w_v_i(enq_i),
    .w_addr_i(tail_r),
    .w_data_i(data_i),
    .r_v_i(n_0_net_),
    .r_addr_i(head_r),
    .r_data_o(data_o)
  );

  assign N9 = (N0)? 1'b1 : 
              (N1)? N5 : 1'b0;
  assign N0 = N3;
  assign N1 = N2;
  assign N10 = (N0)? 1'b0 : 
               (N1)? N4 : 1'b0;
  assign N11 = (N0)? 1'b1 : 
               (N1)? yumi_i : 1'b0;
  assign N12 = (N0)? 1'b0 : 
               (N1)? N6 : 1'b0;
  assign N13 = (N0)? 1'b1 : 
               (N1)? N7 : 1'b0;
  assign N14 = (N0)? 1'b0 : 
               (N1)? N8 : 1'b0;
  assign n_0_net_ = ~empty_r;
  assign v_o = ~empty_r;
  assign ready_o = ~full_r;
  assign enq_i = v_i & N15;
  assign N15 = ~full_r;
  assign N2 = ~reset_i;
  assign N3 = reset_i;
  assign N5 = enq_i;
  assign N4 = ~tail_r;
  assign N6 = ~head_r;
  assign N7 = N17 | N19;
  assign N17 = empty_r & N16;
  assign N16 = ~enq_i;
  assign N19 = N18 & N16;
  assign N18 = N15 & yumi_i;
  assign N8 = N23 | N24;
  assign N23 = N21 & N22;
  assign N21 = N20 & enq_i;
  assign N20 = ~empty_r;
  assign N22 = ~yumi_i;
  assign N24 = full_r & N22;

  always @(posedge clk_i) begin
    if(1'b1) begin
      full_r <= N14;
      empty_r <= N13;
    end 
    if(N9) begin
      tail_r <= N10;
    end 
    if(N11) begin
      head_r <= N12;
    end 
  end


endmodule



module bsg_counter_clear_up_max_val_p4_init_val_p0
(
  clk_i,
  reset_i,
  clear_i,
  up_i,
  count_o
);

  output [2:0] count_o;
  input clk_i;
  input reset_i;
  input clear_i;
  input up_i;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14;
  reg [2:0] count_o;
  assign { N8, N7, N6 } = { N14, N13, N12 } + up_i;
  assign { N11, N10, N9 } = (N0)? { 1'b0, 1'b0, 1'b0 } : 
                            (N1)? { N8, N7, N6 } : 1'b0;
  assign N0 = reset_i;
  assign N1 = N2;
  assign { N14, N13, N12 } = count_o * N4;
  assign N2 = ~reset_i;
  assign N3 = N2;
  assign N4 = ~clear_i;
  assign N5 = N3 & N4;

  always @(posedge clk_i) begin
    if(1'b1) begin
      { count_o[2:0] } <= { N11, N10, N9 };
    end 
  end


endmodule



module bsg_mux_width_p16_els_p5
(
  data_i,
  sel_i,
  data_o
);

  input [79:0] data_i;
  input [2:0] sel_i;
  output [15:0] data_o;
  wire [15:0] data_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13;
  assign N10 = N0 & N1 & N2;
  assign N0 = ~sel_i[2];
  assign N1 = ~sel_i[0];
  assign N2 = ~sel_i[1];
  assign N11 = sel_i[0] & N3;
  assign N3 = ~sel_i[1];
  assign N12 = N4 & sel_i[1];
  assign N4 = ~sel_i[0];
  assign N13 = sel_i[0] & sel_i[1];
  assign data_o[15] = (N5)? data_i[15] : 
                      (N6)? data_i[31] : 
                      (N7)? data_i[47] : 
                      (N8)? data_i[63] : 
                      (N9)? data_i[79] : 1'b0;
  assign N5 = N10;
  assign N6 = N11;
  assign N7 = N12;
  assign N8 = N13;
  assign N9 = sel_i[2];
  assign data_o[14] = (N5)? data_i[14] : 
                      (N6)? data_i[30] : 
                      (N7)? data_i[46] : 
                      (N8)? data_i[62] : 
                      (N9)? data_i[78] : 1'b0;
  assign data_o[13] = (N5)? data_i[13] : 
                      (N6)? data_i[29] : 
                      (N7)? data_i[45] : 
                      (N8)? data_i[61] : 
                      (N9)? data_i[77] : 1'b0;
  assign data_o[12] = (N5)? data_i[12] : 
                      (N6)? data_i[28] : 
                      (N7)? data_i[44] : 
                      (N8)? data_i[60] : 
                      (N9)? data_i[76] : 1'b0;
  assign data_o[11] = (N5)? data_i[11] : 
                      (N6)? data_i[27] : 
                      (N7)? data_i[43] : 
                      (N8)? data_i[59] : 
                      (N9)? data_i[75] : 1'b0;
  assign data_o[10] = (N5)? data_i[10] : 
                      (N6)? data_i[26] : 
                      (N7)? data_i[42] : 
                      (N8)? data_i[58] : 
                      (N9)? data_i[74] : 1'b0;
  assign data_o[9] = (N5)? data_i[9] : 
                     (N6)? data_i[25] : 
                     (N7)? data_i[41] : 
                     (N8)? data_i[57] : 
                     (N9)? data_i[73] : 1'b0;
  assign data_o[8] = (N5)? data_i[8] : 
                     (N6)? data_i[24] : 
                     (N7)? data_i[40] : 
                     (N8)? data_i[56] : 
                     (N9)? data_i[72] : 1'b0;
  assign data_o[7] = (N5)? data_i[7] : 
                     (N6)? data_i[23] : 
                     (N7)? data_i[39] : 
                     (N8)? data_i[55] : 
                     (N9)? data_i[71] : 1'b0;
  assign data_o[6] = (N5)? data_i[6] : 
                     (N6)? data_i[22] : 
                     (N7)? data_i[38] : 
                     (N8)? data_i[54] : 
                     (N9)? data_i[70] : 1'b0;
  assign data_o[5] = (N5)? data_i[5] : 
                     (N6)? data_i[21] : 
                     (N7)? data_i[37] : 
                     (N8)? data_i[53] : 
                     (N9)? data_i[69] : 1'b0;
  assign data_o[4] = (N5)? data_i[4] : 
                     (N6)? data_i[20] : 
                     (N7)? data_i[36] : 
                     (N8)? data_i[52] : 
                     (N9)? data_i[68] : 1'b0;
  assign data_o[3] = (N5)? data_i[3] : 
                     (N6)? data_i[19] : 
                     (N7)? data_i[35] : 
                     (N8)? data_i[51] : 
                     (N9)? data_i[67] : 1'b0;
  assign data_o[2] = (N5)? data_i[2] : 
                     (N6)? data_i[18] : 
                     (N7)? data_i[34] : 
                     (N8)? data_i[50] : 
                     (N9)? data_i[66] : 1'b0;
  assign data_o[1] = (N5)? data_i[1] : 
                     (N6)? data_i[17] : 
                     (N7)? data_i[33] : 
                     (N8)? data_i[49] : 
                     (N9)? data_i[65] : 1'b0;
  assign data_o[0] = (N5)? data_i[0] : 
                     (N6)? data_i[16] : 
                     (N7)? data_i[32] : 
                     (N8)? data_i[48] : 
                     (N9)? data_i[64] : 1'b0;

endmodule



module bsg_parallel_in_serial_out_dynamic
(
  clk_i,
  reset_i,
  v_i,
  len_i,
  data_i,
  ready_o,
  v_o,
  len_v_o,
  data_o,
  yumi_i
);

  input [2:0] len_i;
  input [79:0] data_i;
  output [15:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input yumi_i;
  output ready_o;
  output v_o;
  output len_v_o;
  wire [15:0] data_o;
  wire ready_o,v_o,len_v_o,count_r_is_last,up_li,clear_li,N0,N1,N3;
  wire [2:0] len_lo,count_lo;
  wire [79:0] fifo_data_lo;

  bsg_two_fifo_width_p3
  go_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(ready_o),
    .data_i(len_i),
    .v_i(v_i),
    .v_o(v_o),
    .data_o(len_lo),
    .yumi_i(clear_li)
  );


  bsg_two_fifo_width_p80
  data_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .data_i(data_i),
    .v_i(v_i),
    .data_o(fifo_data_lo),
    .yumi_i(clear_li)
  );

  assign count_r_is_last = count_lo == len_lo;

  bsg_counter_clear_up_max_val_p4_init_val_p0
  ctr
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .clear_i(clear_li),
    .up_i(up_li),
    .count_o(count_lo)
  );


  bsg_mux_width_p16_els_p5
  data_mux
  (
    .data_i(fifo_data_lo),
    .sel_i(count_lo),
    .data_o(data_o)
  );

  assign N0 = count_lo[1] | count_lo[2];
  assign N1 = count_lo[0] | N0;
  assign len_v_o = ~N1;
  assign up_li = yumi_i & N3;
  assign N3 = ~count_r_is_last;
  assign clear_li = yumi_i & count_r_is_last;

endmodule

