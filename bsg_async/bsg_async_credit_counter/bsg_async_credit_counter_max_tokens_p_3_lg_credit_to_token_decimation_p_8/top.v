

module top
(
  w_clk_i,
  w_inc_token_i,
  w_reset_i,
  r_clk_i,
  r_reset_i,
  r_dec_credit_i,
  r_infinite_credits_i,
  r_credits_avail_o
);

  input w_clk_i;
  input w_inc_token_i;
  input w_reset_i;
  input r_clk_i;
  input r_reset_i;
  input r_dec_credit_i;
  input r_infinite_credits_i;
  output r_credits_avail_o;

  bsg_async_credit_counter
  wrapper
  (
    .w_clk_i(w_clk_i),
    .w_inc_token_i(w_inc_token_i),
    .w_reset_i(w_reset_i),
    .r_clk_i(r_clk_i),
    .r_reset_i(r_reset_i),
    .r_dec_credit_i(r_dec_credit_i),
    .r_infinite_credits_i(r_infinite_credits_i),
    .r_credits_avail_o(r_credits_avail_o)
  );


endmodule



module bsg_launch_sync_sync_posedge_2_unit
(
  iclk_i,
  iclk_reset_i,
  oclk_i,
  iclk_data_i,
  iclk_data_o,
  oclk_data_o
);

  input [1:0] iclk_data_i;
  output [1:0] iclk_data_o;
  output [1:0] oclk_data_o;
  input iclk_i;
  input iclk_reset_i;
  input oclk_i;
  wire N0,N1,N2,N3,N4;
  reg [1:0] iclk_data_o,bsg_SYNC_1_r,oclk_data_o;
  assign { N4, N3 } = (N0)? { 1'b0, 1'b0 } : 
                      (N1)? iclk_data_i : 1'b0;
  assign N0 = iclk_reset_i;
  assign N1 = N2;
  assign N2 = ~iclk_reset_i;

  always @(posedge iclk_i) begin
    if(1'b1) begin
      { iclk_data_o[1:0] } <= { N4, N3 };
    end 
  end


  always @(posedge oclk_i) begin
    if(1'b1) begin
      { bsg_SYNC_1_r[1:0] } <= { iclk_data_o[1:0] };
      { oclk_data_o[1:0] } <= { bsg_SYNC_1_r[1:0] };
    end 
  end


endmodule



module bsg_launch_sync_sync_width_p2_use_negedge_for_launch_p0_use_async_reset_p0
(
  iclk_i,
  iclk_reset_i,
  oclk_i,
  iclk_data_i,
  iclk_data_o,
  oclk_data_o
);

  input [1:0] iclk_data_i;
  output [1:0] iclk_data_o;
  output [1:0] oclk_data_o;
  input iclk_i;
  input iclk_reset_i;
  input oclk_i;
  wire [1:0] iclk_data_o,oclk_data_o;

  bsg_launch_sync_sync_posedge_2_unit
  sync_p_z_blss
  (
    .iclk_i(iclk_i),
    .iclk_reset_i(iclk_reset_i),
    .oclk_i(oclk_i),
    .iclk_data_i(iclk_data_i),
    .iclk_data_o(iclk_data_o),
    .oclk_data_o(oclk_data_o)
  );


endmodule



module bsg_async_ptr_gray_lg_size_p2_use_negedge_for_launch_p0_use_async_reset_p0
(
  w_clk_i,
  w_reset_i,
  w_inc_i,
  r_clk_i,
  w_ptr_binary_r_o,
  w_ptr_gray_r_o,
  w_ptr_gray_r_rsync_o
);

  output [1:0] w_ptr_binary_r_o;
  output [1:0] w_ptr_gray_r_o;
  output [1:0] w_ptr_gray_r_rsync_o;
  input w_clk_i;
  input w_reset_i;
  input w_inc_i;
  input r_clk_i;
  wire [1:0] w_ptr_gray_r_o,w_ptr_gray_r_rsync_o,w_ptr_p2,w_ptr_gray_n;
  wire N0,N1,N2,N3;
  reg [1:0] w_ptr_p1_r,w_ptr_binary_r_o;

  bsg_launch_sync_sync_width_p2_use_negedge_for_launch_p0_use_async_reset_p0
  ptr_sync
  (
    .iclk_i(w_clk_i),
    .iclk_reset_i(w_reset_i),
    .oclk_i(r_clk_i),
    .iclk_data_i(w_ptr_gray_n),
    .iclk_data_o(w_ptr_gray_r_o),
    .oclk_data_o(w_ptr_gray_r_rsync_o)
  );

  assign w_ptr_p2 = w_ptr_p1_r + 1'b1;
  assign w_ptr_gray_n = (N0)? { w_ptr_p1_r[1:1], N3 } : 
                        (N1)? w_ptr_gray_r_o : 1'b0;
  assign N0 = w_inc_i;
  assign N1 = N2;
  assign N2 = ~w_inc_i;
  assign N3 = w_ptr_p1_r[1] ^ w_ptr_p1_r[0];

  always @(posedge w_clk_i) begin
    if(w_reset_i) begin
      { w_ptr_p1_r[1:0] } <= { 1'b0, 1'b1 };
      { w_ptr_binary_r_o[1:0] } <= { 1'b0, 1'b0 };
    end else if(w_inc_i) begin
      { w_ptr_p1_r[1:0] } <= { w_ptr_p2[1:0] };
      { w_ptr_binary_r_o[1:0] } <= { w_ptr_p1_r[1:0] };
    end 
  end


endmodule



module bsg_async_credit_counter
(
  w_clk_i,
  w_inc_token_i,
  w_reset_i,
  r_clk_i,
  r_reset_i,
  r_dec_credit_i,
  r_infinite_credits_i,
  r_credits_avail_o
);

  input w_clk_i;
  input w_inc_token_i;
  input w_reset_i;
  input r_clk_i;
  input r_reset_i;
  input r_dec_credit_i;
  input r_infinite_credits_i;
  output r_credits_avail_o;
  wire r_credits_avail_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,
  N18,N19,N20,N21,N22,r_counter_r_lo_bits_nonzero,N23,N24,N25,N26,N27,N28,N29,N30,
  SYNOPSYS_UNCONNECTED_1,SYNOPSYS_UNCONNECTED_2;
  wire [1:0] w_counter_gray_r,w_counter_gray_r_rsync;
  wire [0:0] r_counter_r_hi_bits_gray;
  reg [9:0] r_counter_r;

  bsg_async_ptr_gray_lg_size_p2_use_negedge_for_launch_p0_use_async_reset_p0
  bapg
  (
    .w_clk_i(w_clk_i),
    .w_reset_i(w_reset_i),
    .w_inc_i(w_inc_token_i),
    .r_clk_i(r_clk_i),
    .w_ptr_binary_r_o({ SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2 }),
    .w_ptr_gray_r_o(w_counter_gray_r),
    .w_ptr_gray_r_rsync_o(w_counter_gray_r_rsync)
  );

  assign N23 = { r_counter_r[9:9], r_counter_r_hi_bits_gray[0:0] } != w_counter_gray_r_rsync;
  assign { N12, N11, N10, N9, N8, N7, N6, N5, N4, N3 } = r_counter_r + r_dec_credit_i;
  assign { N22, N21, N20, N19, N18, N17, N16, N15, N14, N13 } = (N0)? { 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                (N1)? { N12, N11, N10, N9, N8, N7, N6, N5, N4, N3 } : 1'b0;
  assign N0 = r_reset_i;
  assign N1 = N2;
  assign N2 = ~r_reset_i;
  assign r_counter_r_lo_bits_nonzero = N29 | r_counter_r[0];
  assign N29 = N28 | r_counter_r[1];
  assign N28 = N27 | r_counter_r[2];
  assign N27 = N26 | r_counter_r[3];
  assign N26 = N25 | r_counter_r[4];
  assign N25 = N24 | r_counter_r[5];
  assign N24 = r_counter_r[7] | r_counter_r[6];
  assign r_counter_r_hi_bits_gray[0] = r_counter_r[9] ^ r_counter_r[8];
  assign r_credits_avail_o = N30 | N23;
  assign N30 = r_infinite_credits_i | r_counter_r_lo_bits_nonzero;

  always @(posedge r_clk_i) begin
    if(1'b1) begin
      { r_counter_r[9:0] } <= { N22, N21, N20, N19, N18, N17, N16, N15, N14, N13 };
    end 
  end


endmodule
