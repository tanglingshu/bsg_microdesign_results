

module top
(
  data_i,
  rot_i,
  o
);

  input [127:0] data_i;
  input [6:0] rot_i;
  output [127:0] o;

  bsg_rotate_right
  wrapper
  (
    .data_i(data_i),
    .rot_i(rot_i),
    .o(o)
  );


endmodule



module bsg_rotate_right
(
  data_i,
  rot_i,
  o
);

  input [127:0] data_i;
  input [6:0] rot_i;
  output [127:0] o;
  wire [127:0] o;
  wire SYNOPSYS_UNCONNECTED_1,SYNOPSYS_UNCONNECTED_2,SYNOPSYS_UNCONNECTED_3,
  SYNOPSYS_UNCONNECTED_4,SYNOPSYS_UNCONNECTED_5,SYNOPSYS_UNCONNECTED_6,
  SYNOPSYS_UNCONNECTED_7,SYNOPSYS_UNCONNECTED_8,SYNOPSYS_UNCONNECTED_9,SYNOPSYS_UNCONNECTED_10,
  SYNOPSYS_UNCONNECTED_11,SYNOPSYS_UNCONNECTED_12,SYNOPSYS_UNCONNECTED_13,
  SYNOPSYS_UNCONNECTED_14,SYNOPSYS_UNCONNECTED_15,SYNOPSYS_UNCONNECTED_16,SYNOPSYS_UNCONNECTED_17,
  SYNOPSYS_UNCONNECTED_18,SYNOPSYS_UNCONNECTED_19,SYNOPSYS_UNCONNECTED_20,
  SYNOPSYS_UNCONNECTED_21,SYNOPSYS_UNCONNECTED_22,SYNOPSYS_UNCONNECTED_23,
  SYNOPSYS_UNCONNECTED_24,SYNOPSYS_UNCONNECTED_25,SYNOPSYS_UNCONNECTED_26,SYNOPSYS_UNCONNECTED_27,
  SYNOPSYS_UNCONNECTED_28,SYNOPSYS_UNCONNECTED_29,SYNOPSYS_UNCONNECTED_30,
  SYNOPSYS_UNCONNECTED_31,SYNOPSYS_UNCONNECTED_32,SYNOPSYS_UNCONNECTED_33,
  SYNOPSYS_UNCONNECTED_34,SYNOPSYS_UNCONNECTED_35,SYNOPSYS_UNCONNECTED_36,SYNOPSYS_UNCONNECTED_37,
  SYNOPSYS_UNCONNECTED_38,SYNOPSYS_UNCONNECTED_39,SYNOPSYS_UNCONNECTED_40,
  SYNOPSYS_UNCONNECTED_41,SYNOPSYS_UNCONNECTED_42,SYNOPSYS_UNCONNECTED_43,
  SYNOPSYS_UNCONNECTED_44,SYNOPSYS_UNCONNECTED_45,SYNOPSYS_UNCONNECTED_46,SYNOPSYS_UNCONNECTED_47,
  SYNOPSYS_UNCONNECTED_48,SYNOPSYS_UNCONNECTED_49,SYNOPSYS_UNCONNECTED_50,
  SYNOPSYS_UNCONNECTED_51,SYNOPSYS_UNCONNECTED_52,SYNOPSYS_UNCONNECTED_53,
  SYNOPSYS_UNCONNECTED_54,SYNOPSYS_UNCONNECTED_55,SYNOPSYS_UNCONNECTED_56,SYNOPSYS_UNCONNECTED_57,
  SYNOPSYS_UNCONNECTED_58,SYNOPSYS_UNCONNECTED_59,SYNOPSYS_UNCONNECTED_60,
  SYNOPSYS_UNCONNECTED_61,SYNOPSYS_UNCONNECTED_62,SYNOPSYS_UNCONNECTED_63,
  SYNOPSYS_UNCONNECTED_64,SYNOPSYS_UNCONNECTED_65,SYNOPSYS_UNCONNECTED_66,SYNOPSYS_UNCONNECTED_67,
  SYNOPSYS_UNCONNECTED_68,SYNOPSYS_UNCONNECTED_69,SYNOPSYS_UNCONNECTED_70,
  SYNOPSYS_UNCONNECTED_71,SYNOPSYS_UNCONNECTED_72,SYNOPSYS_UNCONNECTED_73,
  SYNOPSYS_UNCONNECTED_74,SYNOPSYS_UNCONNECTED_75,SYNOPSYS_UNCONNECTED_76,SYNOPSYS_UNCONNECTED_77,
  SYNOPSYS_UNCONNECTED_78,SYNOPSYS_UNCONNECTED_79,SYNOPSYS_UNCONNECTED_80,
  SYNOPSYS_UNCONNECTED_81,SYNOPSYS_UNCONNECTED_82,SYNOPSYS_UNCONNECTED_83,
  SYNOPSYS_UNCONNECTED_84,SYNOPSYS_UNCONNECTED_85,SYNOPSYS_UNCONNECTED_86,SYNOPSYS_UNCONNECTED_87,
  SYNOPSYS_UNCONNECTED_88,SYNOPSYS_UNCONNECTED_89,SYNOPSYS_UNCONNECTED_90,
  SYNOPSYS_UNCONNECTED_91,SYNOPSYS_UNCONNECTED_92,SYNOPSYS_UNCONNECTED_93,
  SYNOPSYS_UNCONNECTED_94,SYNOPSYS_UNCONNECTED_95,SYNOPSYS_UNCONNECTED_96,SYNOPSYS_UNCONNECTED_97,
  SYNOPSYS_UNCONNECTED_98,SYNOPSYS_UNCONNECTED_99,SYNOPSYS_UNCONNECTED_100,
  SYNOPSYS_UNCONNECTED_101,SYNOPSYS_UNCONNECTED_102,SYNOPSYS_UNCONNECTED_103,
  SYNOPSYS_UNCONNECTED_104,SYNOPSYS_UNCONNECTED_105,SYNOPSYS_UNCONNECTED_106,
  SYNOPSYS_UNCONNECTED_107,SYNOPSYS_UNCONNECTED_108,SYNOPSYS_UNCONNECTED_109,
  SYNOPSYS_UNCONNECTED_110,SYNOPSYS_UNCONNECTED_111,SYNOPSYS_UNCONNECTED_112,SYNOPSYS_UNCONNECTED_113,
  SYNOPSYS_UNCONNECTED_114,SYNOPSYS_UNCONNECTED_115,SYNOPSYS_UNCONNECTED_116,
  SYNOPSYS_UNCONNECTED_117,SYNOPSYS_UNCONNECTED_118,SYNOPSYS_UNCONNECTED_119,
  SYNOPSYS_UNCONNECTED_120,SYNOPSYS_UNCONNECTED_121,SYNOPSYS_UNCONNECTED_122,
  SYNOPSYS_UNCONNECTED_123,SYNOPSYS_UNCONNECTED_124,SYNOPSYS_UNCONNECTED_125,
  SYNOPSYS_UNCONNECTED_126,SYNOPSYS_UNCONNECTED_127;
  assign { SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8, SYNOPSYS_UNCONNECTED_9, SYNOPSYS_UNCONNECTED_10, SYNOPSYS_UNCONNECTED_11, SYNOPSYS_UNCONNECTED_12, SYNOPSYS_UNCONNECTED_13, SYNOPSYS_UNCONNECTED_14, SYNOPSYS_UNCONNECTED_15, SYNOPSYS_UNCONNECTED_16, SYNOPSYS_UNCONNECTED_17, SYNOPSYS_UNCONNECTED_18, SYNOPSYS_UNCONNECTED_19, SYNOPSYS_UNCONNECTED_20, SYNOPSYS_UNCONNECTED_21, SYNOPSYS_UNCONNECTED_22, SYNOPSYS_UNCONNECTED_23, SYNOPSYS_UNCONNECTED_24, SYNOPSYS_UNCONNECTED_25, SYNOPSYS_UNCONNECTED_26, SYNOPSYS_UNCONNECTED_27, SYNOPSYS_UNCONNECTED_28, SYNOPSYS_UNCONNECTED_29, SYNOPSYS_UNCONNECTED_30, SYNOPSYS_UNCONNECTED_31, SYNOPSYS_UNCONNECTED_32, SYNOPSYS_UNCONNECTED_33, SYNOPSYS_UNCONNECTED_34, SYNOPSYS_UNCONNECTED_35, SYNOPSYS_UNCONNECTED_36, SYNOPSYS_UNCONNECTED_37, SYNOPSYS_UNCONNECTED_38, SYNOPSYS_UNCONNECTED_39, SYNOPSYS_UNCONNECTED_40, SYNOPSYS_UNCONNECTED_41, SYNOPSYS_UNCONNECTED_42, SYNOPSYS_UNCONNECTED_43, SYNOPSYS_UNCONNECTED_44, SYNOPSYS_UNCONNECTED_45, SYNOPSYS_UNCONNECTED_46, SYNOPSYS_UNCONNECTED_47, SYNOPSYS_UNCONNECTED_48, SYNOPSYS_UNCONNECTED_49, SYNOPSYS_UNCONNECTED_50, SYNOPSYS_UNCONNECTED_51, SYNOPSYS_UNCONNECTED_52, SYNOPSYS_UNCONNECTED_53, SYNOPSYS_UNCONNECTED_54, SYNOPSYS_UNCONNECTED_55, SYNOPSYS_UNCONNECTED_56, SYNOPSYS_UNCONNECTED_57, SYNOPSYS_UNCONNECTED_58, SYNOPSYS_UNCONNECTED_59, SYNOPSYS_UNCONNECTED_60, SYNOPSYS_UNCONNECTED_61, SYNOPSYS_UNCONNECTED_62, SYNOPSYS_UNCONNECTED_63, SYNOPSYS_UNCONNECTED_64, SYNOPSYS_UNCONNECTED_65, SYNOPSYS_UNCONNECTED_66, SYNOPSYS_UNCONNECTED_67, SYNOPSYS_UNCONNECTED_68, SYNOPSYS_UNCONNECTED_69, SYNOPSYS_UNCONNECTED_70, SYNOPSYS_UNCONNECTED_71, SYNOPSYS_UNCONNECTED_72, SYNOPSYS_UNCONNECTED_73, SYNOPSYS_UNCONNECTED_74, SYNOPSYS_UNCONNECTED_75, SYNOPSYS_UNCONNECTED_76, SYNOPSYS_UNCONNECTED_77, SYNOPSYS_UNCONNECTED_78, SYNOPSYS_UNCONNECTED_79, SYNOPSYS_UNCONNECTED_80, SYNOPSYS_UNCONNECTED_81, SYNOPSYS_UNCONNECTED_82, SYNOPSYS_UNCONNECTED_83, SYNOPSYS_UNCONNECTED_84, SYNOPSYS_UNCONNECTED_85, SYNOPSYS_UNCONNECTED_86, SYNOPSYS_UNCONNECTED_87, SYNOPSYS_UNCONNECTED_88, SYNOPSYS_UNCONNECTED_89, SYNOPSYS_UNCONNECTED_90, SYNOPSYS_UNCONNECTED_91, SYNOPSYS_UNCONNECTED_92, SYNOPSYS_UNCONNECTED_93, SYNOPSYS_UNCONNECTED_94, SYNOPSYS_UNCONNECTED_95, SYNOPSYS_UNCONNECTED_96, SYNOPSYS_UNCONNECTED_97, SYNOPSYS_UNCONNECTED_98, SYNOPSYS_UNCONNECTED_99, SYNOPSYS_UNCONNECTED_100, SYNOPSYS_UNCONNECTED_101, SYNOPSYS_UNCONNECTED_102, SYNOPSYS_UNCONNECTED_103, SYNOPSYS_UNCONNECTED_104, SYNOPSYS_UNCONNECTED_105, SYNOPSYS_UNCONNECTED_106, SYNOPSYS_UNCONNECTED_107, SYNOPSYS_UNCONNECTED_108, SYNOPSYS_UNCONNECTED_109, SYNOPSYS_UNCONNECTED_110, SYNOPSYS_UNCONNECTED_111, SYNOPSYS_UNCONNECTED_112, SYNOPSYS_UNCONNECTED_113, SYNOPSYS_UNCONNECTED_114, SYNOPSYS_UNCONNECTED_115, SYNOPSYS_UNCONNECTED_116, SYNOPSYS_UNCONNECTED_117, SYNOPSYS_UNCONNECTED_118, SYNOPSYS_UNCONNECTED_119, SYNOPSYS_UNCONNECTED_120, SYNOPSYS_UNCONNECTED_121, SYNOPSYS_UNCONNECTED_122, SYNOPSYS_UNCONNECTED_123, SYNOPSYS_UNCONNECTED_124, SYNOPSYS_UNCONNECTED_125, SYNOPSYS_UNCONNECTED_126, SYNOPSYS_UNCONNECTED_127, o } = { data_i[126:0], data_i } >> rot_i;

endmodule
