// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    2011a.126 Production Release
//  HLS Date:       Wed Aug  8 00:52:07 PDT 2012
// 
//  Generated by:   mf2915@EEWS104A-015
//  Generated date: Fri May 06 15:56:46 2016
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    markers_core
// ------------------------------------------------------------------


module markers_core (
  vin, vga_xy, clk, en, arst_n, vout_rsc_mgc_out_stdreg_d, volume_rsc_mgc_out_stdreg_d
);
  input [89:0] vin;
  input [19:0] vga_xy;
  input clk;
  input en;
  input arst_n;
  output [29:0] vout_rsc_mgc_out_stdreg_d;
  reg [29:0] vout_rsc_mgc_out_stdreg_d;
  output [3:0] volume_rsc_mgc_out_stdreg_d;
  reg [3:0] volume_rsc_mgc_out_stdreg_d;


  // Interconnect Declarations
  wire or_dcpl_5;
  wire or_dcpl_6;
  reg [3:0] volume_previous_sva;
  reg aif_17_slc_svs;
  reg [3:0] acc_12_0_sva_dfm_2;
  reg [3:0] acc_12_1_sva_dfm_2;
  reg [9:0] red_xy_0_sva_dfm_3;
  reg [9:0] red_xy_1_sva_dfm_3;
  reg [9:0] blue_xy_0_sva_dfm_3;
  reg [9:0] blue_xy_1_sva_dfm_3;
  reg land_2_lpi_1_dfm_1;
  reg land_4_lpi_1_dfm_1;
  reg [9:0] red_xy_1_sva_dfm_4;
  reg [9:0] blue_xy_1_sva_dfm_4;
  reg land_13_lpi_1_dfm_1;
  reg [4:0] volume_current_slc_acc_idiv_itm_1;
  reg volume_current_slc_acc_idiv_12_itm_2;
  reg [1:0] volume_current_acc_9_itm_1;
  wire [2:0] nl_volume_current_acc_9_itm_1;
  reg [1:0] volume_current_acc_8_itm_1;
  wire [2:0] nl_volume_current_acc_8_itm_1;
  reg [2:0] volume_current_slc_acc_idiv_10_itm_1;
  reg [2:0] volume_current_slc_acc_idiv_10_itm_2;
  reg volume_current_slc_acc_idiv_7_itm_1;
  reg volume_current_slc_acc_idiv_14_itm_1;
  reg volume_current_slc_acc_idiv_5_itm_1;
  reg volume_current_slc_acc_idiv_8_itm_1;
  reg [1:0] volume_current_acc_10_itm_1;
  wire [2:0] nl_volume_current_acc_10_itm_1;
  reg and_11_itm_1;
  reg land_12_lpi_1_dfm_st_1;
  reg land_14_lpi_1_dfm_st_1;
  reg main_stage_0_2;
  reg main_stage_0_3;
  reg main_stage_0_4;
  wire [3:0] acc_12_1_sva_dfm_1_mx0;
  wire [3:0] acc_12_0_sva_dfm_1_mx0;
  reg reg_deltay_square_red_acc_psp_sva_tmp;
  reg reg_deltay_square_blue_acc_psp_sva_tmp;
  wire or_13_cse;
  wire and_23_cse;
  wire [5:0] if_14_acc_1_itm;
  wire [6:0] nl_if_14_acc_1_itm;
  wire [11:0] deltay_square_red_acc_1_itm;
  wire [12:0] nl_deltay_square_red_acc_1_itm;
  wire [11:0] deltay_square_blue_acc_1_itm;
  wire [12:0] nl_deltay_square_blue_acc_1_itm;
  wire [11:0] deltax_square_blue_acc_1_itm;
  wire [12:0] nl_deltax_square_blue_acc_1_itm;
  wire [11:0] deltax_square_red_acc_1_itm;
  wire [12:0] nl_deltax_square_red_acc_1_itm;
  wire [10:0] aif_13_aif_acc_itm;
  wire [11:0] nl_aif_13_aif_acc_itm;
  wire [10:0] aif_11_acc_itm;
  wire [11:0] nl_aif_11_acc_itm;
  wire [3:0] volume_current_sva;
  wire [5:0] nl_volume_current_sva;
  wire land_13_lpi_1_dfm;
  wire [9:0] red_xy_1_sva_dfm_4_mx0;
  wire [9:0] blue_xy_1_sva_dfm_4_mx0;
  wire [9:0] red_xy_0_sva_dfm_2_mx0;
  wire [9:0] blue_xy_0_sva_dfm_2_mx0;
  wire aif_17_slc_svs_mx0;
  wire [5:0] conc_imod_1_sg1_sva;
  wire [6:0] nl_conc_imod_1_sg1_sva;
  wire [6:0] conc_imod_sg1_sva;
  wire [8:0] nl_conc_imod_sg1_sva;
  wire [3:0] if_acc_svs;
  wire [4:0] nl_if_acc_svs;
  wire [3:0] if_acc_1_psp_sva;
  wire [4:0] nl_if_acc_1_psp_sva;
  wire [5:0] acc_imod_sva;
  wire [6:0] nl_acc_imod_sva;
  wire [10:0] volume_current_acc_psp;
  wire [11:0] nl_volume_current_acc_psp;
  wire [10:0] volume_current_acc_sdt;
  wire [11:0] nl_volume_current_acc_sdt;
  wire nand_2_itm;
  wire or_itm;


  // Interconnect Declarations for Component Instantiations 
  assign and_23_cse = (~ or_13_cse) & main_stage_0_4;
  assign or_13_cse = (readslicef_6_1_5((conv_s2s_5_6(if_14_acc_1_itm[5:1]) + 6'b1)))
      | (readslicef_5_1_4((conv_s2u_4_5(~ (if_14_acc_1_itm[5:2])) + 5'b1)));
  assign nl_volume_current_sva = (({(~ volume_current_slc_acc_idiv_12_itm_2) , 2'b11
      , (~ volume_current_slc_acc_idiv_12_itm_2)}) + conv_u2u_3_4(conv_u2u_2_3(volume_current_acc_9_itm_1)
      + conv_u2u_2_3(volume_current_acc_8_itm_1))) + (conv_u2s_3_4(volume_current_slc_acc_idiv_10_itm_2)
      + conv_s2s_2_4(volume_current_acc_10_itm_1));
  assign volume_current_sva = nl_volume_current_sva[3:0];
  assign nl_if_14_acc_1_itm = ({1'b1 , volume_current_sva , 1'b1}) + conv_u2s_5_6({(~
      volume_previous_sva) , 1'b1});
  assign if_14_acc_1_itm = nl_if_14_acc_1_itm[5:0];
  assign land_13_lpi_1_dfm = (~ (readslicef_11_1_10((({1'b1 , (~ (deltay_square_blue_acc_1_itm[10:1]))})
      + 11'b101001)))) & (~ (deltay_square_blue_acc_1_itm[11])) & land_14_lpi_1_dfm_st_1;
  assign nl_deltay_square_red_acc_1_itm = ({1'b1 , (vga_xy[19:10]) , 1'b1}) + conv_u2s_11_12({(~
      red_xy_1_sva_dfm_4) , 1'b1});
  assign deltay_square_red_acc_1_itm = nl_deltay_square_red_acc_1_itm[11:0];
  assign red_xy_1_sva_dfm_4_mx0 = MUX_v_10_2_2({(vga_xy[19:10]) , red_xy_1_sva_dfm_3},
      or_dcpl_5);
  assign nl_deltay_square_blue_acc_1_itm = ({1'b1 , (vga_xy[19:10]) , 1'b1}) + conv_u2s_11_12({(~
      blue_xy_1_sva_dfm_4) , 1'b1});
  assign deltay_square_blue_acc_1_itm = nl_deltay_square_blue_acc_1_itm[11:0];
  assign blue_xy_1_sva_dfm_4_mx0 = MUX_v_10_2_2({(vga_xy[19:10]) , blue_xy_1_sva_dfm_3},
      or_dcpl_6);
  assign red_xy_0_sva_dfm_2_mx0 = MUX_v_10_2_2({(vga_xy[9:0]) , red_xy_0_sva_dfm_3},
      or_dcpl_5);
  assign blue_xy_0_sva_dfm_2_mx0 = MUX_v_10_2_2({(vga_xy[9:0]) , blue_xy_0_sva_dfm_3},
      or_dcpl_6);
  assign nl_deltax_square_blue_acc_1_itm = ({1'b1 , (vga_xy[9:0]) , 1'b1}) + conv_u2s_11_12({(~
      blue_xy_0_sva_dfm_2_mx0) , 1'b1});
  assign deltax_square_blue_acc_1_itm = nl_deltax_square_blue_acc_1_itm[11:0];
  assign nl_deltax_square_red_acc_1_itm = ({1'b1 , (vga_xy[9:0]) , 1'b1}) + conv_u2s_11_12({(~
      red_xy_0_sva_dfm_2_mx0) , 1'b1});
  assign deltax_square_red_acc_1_itm = nl_deltax_square_red_acc_1_itm[11:0];
  assign acc_12_1_sva_dfm_1_mx0 = MUX_v_4_2_2({acc_12_1_sva_dfm_2 , (acc_12_1_sva_dfm_2
      + 4'b1)}, land_4_lpi_1_dfm_1);
  assign acc_12_0_sva_dfm_1_mx0 = MUX_v_4_2_2({acc_12_0_sva_dfm_2 , (acc_12_0_sva_dfm_2
      + 4'b1)}, land_2_lpi_1_dfm_1);
  assign aif_17_slc_svs_mx0 = MUX_s_1_2_2({(readslicef_8_1_7((conv_u2u_7_8(vin[9:3])
      + 8'b11010011))) , aif_17_slc_svs}, (aif_11_acc_itm[10]) | (aif_13_aif_acc_itm[10]));
  assign nl_aif_13_aif_acc_itm = ({1'b1 , (~ (vin[19:10]))}) + 11'b101000001;
  assign aif_13_aif_acc_itm = nl_aif_13_aif_acc_itm[10:0];
  assign nl_aif_11_acc_itm = ({1'b1 , (~ (vin[29:20]))}) + 11'b101000001;
  assign aif_11_acc_itm = nl_aif_11_acc_itm[10:0];
  assign nl_conc_imod_1_sg1_sva = (readslicef_7_6_1((conv_s2s_6_7({1'b1 , (~ (conc_imod_sg1_sva[6]))
      , 2'b11 , (~ (conc_imod_sg1_sva[6])) , 1'b1}) + conv_u2s_6_7({(conc_imod_sg1_sva[4:0])
      , 1'b1})))) + ({(conc_imod_sg1_sva[5]) , 1'b0 , (conc_imod_sg1_sva[5]) , 2'b0
      , (conc_imod_sg1_sva[5])});
  assign conc_imod_1_sg1_sva = nl_conc_imod_1_sg1_sva[5:0];
  assign nl_conc_imod_sg1_sva = (conv_u2s_6_7(readslicef_7_6_1((conv_u2u_6_7({(volume_current_slc_acc_idiv_10_itm_1[1:0])
      , 1'b0 , (volume_current_slc_acc_idiv_10_itm_1[1:0]) , 1'b1}) + conv_u2u_6_7({(~
      volume_current_slc_acc_idiv_7_itm_1) , 3'b111 , (~ volume_current_slc_acc_idiv_7_itm_1)
      , 1'b1})))) + conv_s2s_6_7({volume_current_slc_acc_idiv_8_itm_1 , 1'b0 , volume_current_slc_acc_idiv_8_itm_1
      , 2'b0 , volume_current_slc_acc_idiv_8_itm_1})) + ({1'b1 , (({(volume_current_slc_acc_idiv_10_itm_1[2])
      , 1'b0 , (signext_2_1(volume_current_slc_acc_idiv_10_itm_1[2])) , 1'b0 , (volume_current_slc_acc_idiv_10_itm_1[2])})
      + ({1'b1 , volume_current_slc_acc_idiv_itm_1}))});
  assign conc_imod_sg1_sva = nl_conc_imod_sg1_sva[6:0];
  assign nl_if_acc_svs = conv_s2u_1_4(if_acc_1_psp_sva[3]) + if_acc_1_psp_sva;
  assign if_acc_svs = nl_if_acc_svs[3:0];
  assign nl_if_acc_1_psp_sva = (readslicef_5_4_1((({(~ (acc_imod_sva[3])) , 4'b1})
      + conv_s2u_3_5(acc_imod_sva[5:3])))) + ({1'b1 , (acc_imod_sva[2:0])});
  assign if_acc_1_psp_sva = nl_if_acc_1_psp_sva[3:0];
  assign nl_acc_imod_sva = conv_s2s_5_6(({3'b100 , (vga_xy[9:8])}) + conv_u2s_4_5(readslicef_5_4_1((conv_u2u_4_5({(vga_xy[2:0])
      , 1'b1}) + conv_u2u_4_5(vga_xy[6:3]))))) + conv_u2s_5_6({(conv_u2u_1_2(~ (vga_xy[3]))
      + conv_u2u_1_2(~ (vga_xy[7]))) , 2'b0 , (readslicef_2_1_1((conv_u2u_1_2(vga_xy[7])
      + 2'b1)))});
  assign acc_imod_sva = nl_acc_imod_sva[5:0];
  assign nl_volume_current_acc_psp = conv_u2u_10_11(volume_current_acc_sdt[10:1])
      + 11'b10111100001;
  assign volume_current_acc_psp = nl_volume_current_acc_psp[10:0];
  assign nl_volume_current_acc_sdt = conv_u2u_10_11(~ red_xy_1_sva_dfm_4_mx0) + conv_u2u_10_11(~
      blue_xy_1_sva_dfm_4_mx0);
  assign volume_current_acc_sdt = nl_volume_current_acc_sdt[10:0];
  assign nand_2_itm = ~((~((vga_xy[9]) | (vga_xy[8]) | (vga_xy[7]) | (vga_xy[6])
      | (vga_xy[5]) | (vga_xy[4]) | (vga_xy[3]) | (vga_xy[2]) | (vga_xy[1]) | (vga_xy[0])))
      & (~((vga_xy[19]) | (vga_xy[18]) | (vga_xy[17]) | (vga_xy[16]) | (vga_xy[15])
      | (vga_xy[14]) | (vga_xy[13]) | (vga_xy[12]) | (vga_xy[11]) | (vga_xy[10]))));
  assign or_itm = (if_acc_svs[3]) | (if_acc_svs[2]) | (if_acc_svs[1]) | (if_acc_svs[0]);
  assign or_dcpl_5 = ~((~((red_xy_1_sva_dfm_3[9]) | (red_xy_1_sva_dfm_3[8]) | (red_xy_1_sva_dfm_3[7])
      | (red_xy_1_sva_dfm_3[6]) | (red_xy_1_sva_dfm_3[5]) | (red_xy_1_sva_dfm_3[4])
      | (red_xy_1_sva_dfm_3[3]) | (red_xy_1_sva_dfm_3[2]) | (red_xy_1_sva_dfm_3[1])
      | (red_xy_1_sva_dfm_3[0]) | (red_xy_0_sva_dfm_3[9]) | (red_xy_0_sva_dfm_3[8])
      | (red_xy_0_sva_dfm_3[7]) | (red_xy_0_sva_dfm_3[6]) | (red_xy_0_sva_dfm_3[5])
      | (red_xy_0_sva_dfm_3[4]) | (red_xy_0_sva_dfm_3[3]) | (red_xy_0_sva_dfm_3[2])
      | (red_xy_0_sva_dfm_3[1]) | (red_xy_0_sva_dfm_3[0]))) & (readslicef_5_1_4((({1'b1
      , (~ acc_12_0_sva_dfm_1_mx0)}) + 5'b101))));
  assign or_dcpl_6 = ~((~((blue_xy_1_sva_dfm_3[9]) | (blue_xy_1_sva_dfm_3[8]) | (blue_xy_1_sva_dfm_3[7])
      | (blue_xy_1_sva_dfm_3[6]) | (blue_xy_1_sva_dfm_3[5]) | (blue_xy_1_sva_dfm_3[4])
      | (blue_xy_1_sva_dfm_3[3]) | (blue_xy_1_sva_dfm_3[2]) | (blue_xy_1_sva_dfm_3[1])
      | (blue_xy_1_sva_dfm_3[0]) | (blue_xy_0_sva_dfm_3[9]) | (blue_xy_0_sva_dfm_3[8])
      | (blue_xy_0_sva_dfm_3[7]) | (blue_xy_0_sva_dfm_3[6]) | (blue_xy_0_sva_dfm_3[5])
      | (blue_xy_0_sva_dfm_3[4]) | (blue_xy_0_sva_dfm_3[3]) | (blue_xy_0_sva_dfm_3[2])
      | (blue_xy_0_sva_dfm_3[1]) | (blue_xy_0_sva_dfm_3[0]))) & (readslicef_5_1_4((({1'b1
      , (~ acc_12_1_sva_dfm_1_mx0)}) + 5'b101))));
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      vout_rsc_mgc_out_stdreg_d <= 30'b0;
      volume_rsc_mgc_out_stdreg_d <= 4'b0;
      volume_previous_sva <= 4'b0;
      and_11_itm_1 <= 1'b0;
      land_13_lpi_1_dfm_1 <= 1'b0;
      volume_current_slc_acc_idiv_12_itm_2 <= 1'b0;
      volume_current_acc_9_itm_1 <= 2'b0;
      volume_current_acc_8_itm_1 <= 2'b0;
      volume_current_slc_acc_idiv_10_itm_2 <= 3'b0;
      volume_current_acc_10_itm_1 <= 2'b0;
      red_xy_1_sva_dfm_4 <= 10'b0;
      blue_xy_1_sva_dfm_4 <= 10'b0;
      land_14_lpi_1_dfm_st_1 <= 1'b0;
      land_12_lpi_1_dfm_st_1 <= 1'b0;
      acc_12_0_sva_dfm_2 <= 4'b0;
      acc_12_1_sva_dfm_2 <= 4'b0;
      red_xy_0_sva_dfm_3 <= 10'b0;
      red_xy_1_sva_dfm_3 <= 10'b0;
      blue_xy_0_sva_dfm_3 <= 10'b0;
      blue_xy_1_sva_dfm_3 <= 10'b0;
      land_4_lpi_1_dfm_1 <= 1'b0;
      land_2_lpi_1_dfm_1 <= 1'b0;
      aif_17_slc_svs <= 1'b0;
      main_stage_0_2 <= 1'b0;
      main_stage_0_3 <= 1'b0;
      main_stage_0_4 <= 1'b0;
      volume_current_slc_acc_idiv_7_itm_1 <= 1'b0;
      volume_current_slc_acc_idiv_14_itm_1 <= 1'b0;
      volume_current_slc_acc_idiv_5_itm_1 <= 1'b0;
      volume_current_slc_acc_idiv_8_itm_1 <= 1'b0;
      volume_current_slc_acc_idiv_itm_1 <= 5'b0;
      volume_current_slc_acc_idiv_10_itm_1 <= 3'b0;
      reg_deltay_square_red_acc_psp_sva_tmp <= 1'b0;
      reg_deltay_square_blue_acc_psp_sva_tmp <= 1'b0;
    end
    else begin
      if ( en ) begin
        vout_rsc_mgc_out_stdreg_d <= MUX_v_30_2_2({vout_rsc_mgc_out_stdreg_d , ({({{9{and_11_itm_1}},
            and_11_itm_1}) , 10'b0 , ({{9{land_13_lpi_1_dfm_1}}, land_13_lpi_1_dfm_1})})},
            main_stage_0_4);
        volume_rsc_mgc_out_stdreg_d <= MUX1HOT_v_4_3_2({volume_rsc_mgc_out_stdreg_d
            , volume_current_sva , volume_previous_sva}, {(~ main_stage_0_4) , and_23_cse
            , (or_13_cse & main_stage_0_4)});
        volume_previous_sva <= MUX_v_4_2_2({volume_previous_sva , volume_current_sva},
            and_23_cse);
        and_11_itm_1 <= ~((readslicef_11_1_10((({1'b1 , (~ (deltay_square_red_acc_1_itm[10:1]))})
            + 11'b101001))) | (deltay_square_red_acc_1_itm[11]) | (~ land_12_lpi_1_dfm_st_1)
            | land_13_lpi_1_dfm);
        land_13_lpi_1_dfm_1 <= land_13_lpi_1_dfm;
        volume_current_slc_acc_idiv_12_itm_2 <= volume_current_slc_acc_idiv_7_itm_1;
        volume_current_acc_9_itm_1 <= nl_volume_current_acc_9_itm_1[1:0];
        volume_current_acc_8_itm_1 <= nl_volume_current_acc_8_itm_1[1:0];
        volume_current_slc_acc_idiv_10_itm_2 <= volume_current_slc_acc_idiv_10_itm_1;
        volume_current_acc_10_itm_1 <= nl_volume_current_acc_10_itm_1[1:0];
        red_xy_1_sva_dfm_4 <= red_xy_1_sva_dfm_4_mx0;
        blue_xy_1_sva_dfm_4 <= blue_xy_1_sva_dfm_4_mx0;
        land_14_lpi_1_dfm_st_1 <= ~((readslicef_11_1_10((({1'b1 , (~ (deltax_square_blue_acc_1_itm[10:1]))})
            + 11'b101001))) | (deltax_square_blue_acc_1_itm[11]));
        land_12_lpi_1_dfm_st_1 <= ~((readslicef_11_1_10((({1'b1 , (~ (deltax_square_red_acc_1_itm[10:1]))})
            + 11'b101001))) | (deltax_square_red_acc_1_itm[11]));
        acc_12_0_sva_dfm_2 <= acc_12_0_sva_dfm_1_mx0 & ({{3{main_stage_0_2}}, main_stage_0_2})
            & ({{3{or_itm}}, or_itm});
        acc_12_1_sva_dfm_2 <= acc_12_1_sva_dfm_1_mx0 & ({{3{main_stage_0_2}}, main_stage_0_2})
            & ({{3{or_itm}}, or_itm});
        red_xy_0_sva_dfm_3 <= red_xy_0_sva_dfm_2_mx0 & ({{9{main_stage_0_2}}, main_stage_0_2})
            & ({{9{nand_2_itm}}, nand_2_itm});
        red_xy_1_sva_dfm_3 <= red_xy_1_sva_dfm_4_mx0 & ({{9{main_stage_0_2}}, main_stage_0_2})
            & ({{9{nand_2_itm}}, nand_2_itm});
        blue_xy_0_sva_dfm_3 <= blue_xy_0_sva_dfm_2_mx0 & ({{9{main_stage_0_2}}, main_stage_0_2})
            & ({{9{nand_2_itm}}, nand_2_itm});
        blue_xy_1_sva_dfm_3 <= blue_xy_1_sva_dfm_4_mx0 & ({{9{main_stage_0_2}}, main_stage_0_2})
            & ({{9{nand_2_itm}}, nand_2_itm});
        land_4_lpi_1_dfm_1 <= ~((readslicef_10_1_9(((~ (vin[9:0])) + 10'b1011010001)))
            | aif_17_slc_svs_mx0 | (aif_13_aif_acc_itm[10]) | (aif_11_acc_itm[10]));
        land_2_lpi_1_dfm_1 <= ~((readslicef_11_1_10((({1'b1 , (~ (vin[19:10]))})
            + 11'b110010001))) | (readslicef_10_1_9((conv_u2s_9_10(~ (vin[28:20]))
            + 10'b1111111101))) | (readslicef_4_1_3((conv_u2u_3_4(vin[29:27]) + 4'b1011))));
        aif_17_slc_svs <= aif_17_slc_svs_mx0;
        main_stage_0_2 <= 1'b1;
        main_stage_0_3 <= main_stage_0_2;
        main_stage_0_4 <= main_stage_0_3;
        volume_current_slc_acc_idiv_7_itm_1 <= volume_current_acc_psp[10];
        volume_current_slc_acc_idiv_14_itm_1 <= volume_current_acc_psp[0];
        volume_current_slc_acc_idiv_5_itm_1 <= volume_current_acc_sdt[0];
        volume_current_slc_acc_idiv_8_itm_1 <= volume_current_acc_psp[6];
        volume_current_slc_acc_idiv_itm_1 <= volume_current_acc_psp[5:1];
        volume_current_slc_acc_idiv_10_itm_1 <= volume_current_acc_psp[9:7];
        reg_deltay_square_red_acc_psp_sva_tmp <= MUX_s_1_2_2({reg_deltay_square_red_acc_psp_sva_tmp
            , (MUX_s_1_2_2({reg_deltay_square_red_acc_psp_sva_tmp , (deltay_square_red_acc_1_itm[11])},
            land_12_lpi_1_dfm_st_1))}, main_stage_0_3);
        reg_deltay_square_blue_acc_psp_sva_tmp <= MUX_s_1_2_2({reg_deltay_square_blue_acc_psp_sva_tmp
            , (MUX_s_1_2_2({reg_deltay_square_blue_acc_psp_sva_tmp , (deltay_square_blue_acc_1_itm[11])},
            land_14_lpi_1_dfm_st_1))}, main_stage_0_3);
      end
    end
  end
  assign nl_volume_current_acc_9_itm_1  = conv_u2u_1_2(volume_current_slc_acc_idiv_10_itm_1[2])
      + conv_u2u_1_2(conc_imod_sg1_sva[5]);
  assign nl_volume_current_acc_8_itm_1  = conv_u2u_1_2(~ (conc_imod_sg1_sva[6]))
      + conv_u2u_1_2(~((conc_imod_1_sg1_sva[5]) & (~ volume_current_slc_acc_idiv_7_itm_1)));
  assign nl_volume_current_acc_10_itm_1  = conv_s2s_1_2(~(volume_current_slc_acc_idiv_7_itm_1
      & (~ (conc_imod_1_sg1_sva[5])) & ((conc_imod_1_sg1_sva[4]) | (conc_imod_1_sg1_sva[3])
      | (conc_imod_1_sg1_sva[2]) | (conc_imod_1_sg1_sva[1]) | (conc_imod_1_sg1_sva[0])
      | volume_current_slc_acc_idiv_14_itm_1 | volume_current_slc_acc_idiv_5_itm_1)))
      + conv_u2s_1_2(volume_current_slc_acc_idiv_8_itm_1);

  function [0:0] readslicef_6_1_5;
    input [5:0] vector;
    reg [5:0] tmp;
  begin
    tmp = vector >> 5;
    readslicef_6_1_5 = tmp[0:0];
  end
  endfunction


  function [0:0] readslicef_5_1_4;
    input [4:0] vector;
    reg [4:0] tmp;
  begin
    tmp = vector >> 4;
    readslicef_5_1_4 = tmp[0:0];
  end
  endfunction


  function [0:0] readslicef_11_1_10;
    input [10:0] vector;
    reg [10:0] tmp;
  begin
    tmp = vector >> 10;
    readslicef_11_1_10 = tmp[0:0];
  end
  endfunction


  function [9:0] MUX_v_10_2_2;
    input [19:0] inputs;
    input [0:0] sel;
    reg [9:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = inputs[19:10];
      end
      1'b1 : begin
        result = inputs[9:0];
      end
      default : begin
        result = inputs[19:10];
      end
    endcase
    MUX_v_10_2_2 = result;
  end
  endfunction


  function [3:0] MUX_v_4_2_2;
    input [7:0] inputs;
    input [0:0] sel;
    reg [3:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = inputs[7:4];
      end
      1'b1 : begin
        result = inputs[3:0];
      end
      default : begin
        result = inputs[7:4];
      end
    endcase
    MUX_v_4_2_2 = result;
  end
  endfunction


  function [0:0] MUX_s_1_2_2;
    input [1:0] inputs;
    input [0:0] sel;
    reg [0:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = inputs[1:1];
      end
      1'b1 : begin
        result = inputs[0:0];
      end
      default : begin
        result = inputs[1:1];
      end
    endcase
    MUX_s_1_2_2 = result;
  end
  endfunction


  function [0:0] readslicef_8_1_7;
    input [7:0] vector;
    reg [7:0] tmp;
  begin
    tmp = vector >> 7;
    readslicef_8_1_7 = tmp[0:0];
  end
  endfunction


  function [5:0] readslicef_7_6_1;
    input [6:0] vector;
    reg [6:0] tmp;
  begin
    tmp = vector >> 1;
    readslicef_7_6_1 = tmp[5:0];
  end
  endfunction


  function [1:0] signext_2_1;
    input [0:0] vector;
  begin
    signext_2_1= {{1{vector[0]}}, vector};
  end
  endfunction


  function [3:0] readslicef_5_4_1;
    input [4:0] vector;
    reg [4:0] tmp;
  begin
    tmp = vector >> 1;
    readslicef_5_4_1 = tmp[3:0];
  end
  endfunction


  function [0:0] readslicef_2_1_1;
    input [1:0] vector;
    reg [1:0] tmp;
  begin
    tmp = vector >> 1;
    readslicef_2_1_1 = tmp[0:0];
  end
  endfunction


  function [29:0] MUX_v_30_2_2;
    input [59:0] inputs;
    input [0:0] sel;
    reg [29:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = inputs[59:30];
      end
      1'b1 : begin
        result = inputs[29:0];
      end
      default : begin
        result = inputs[59:30];
      end
    endcase
    MUX_v_30_2_2 = result;
  end
  endfunction


  function [3:0] MUX1HOT_v_4_3_2;
    input [11:0] inputs;
    input [2:0] sel;
    reg [3:0] result;
    integer i;
  begin
    result = inputs[0+:4] & {4{sel[0]}};
    for( i = 1; i < 3; i = i + 1 )
      result = result | (inputs[i*4+:4] & {4{sel[i]}});
    MUX1HOT_v_4_3_2 = result;
  end
  endfunction


  function [0:0] readslicef_10_1_9;
    input [9:0] vector;
    reg [9:0] tmp;
  begin
    tmp = vector >> 9;
    readslicef_10_1_9 = tmp[0:0];
  end
  endfunction


  function [0:0] readslicef_4_1_3;
    input [3:0] vector;
    reg [3:0] tmp;
  begin
    tmp = vector >> 3;
    readslicef_4_1_3 = tmp[0:0];
  end
  endfunction


  function signed [5:0] conv_s2s_5_6 ;
    input signed [4:0]  vector ;
  begin
    conv_s2s_5_6 = {vector[4], vector};
  end
  endfunction


  function  [4:0] conv_s2u_4_5 ;
    input signed [3:0]  vector ;
  begin
    conv_s2u_4_5 = {vector[3], vector};
  end
  endfunction


  function  [3:0] conv_u2u_3_4 ;
    input [2:0]  vector ;
  begin
    conv_u2u_3_4 = {1'b0, vector};
  end
  endfunction


  function  [2:0] conv_u2u_2_3 ;
    input [1:0]  vector ;
  begin
    conv_u2u_2_3 = {1'b0, vector};
  end
  endfunction


  function signed [3:0] conv_u2s_3_4 ;
    input [2:0]  vector ;
  begin
    conv_u2s_3_4 = {1'b0, vector};
  end
  endfunction


  function signed [3:0] conv_s2s_2_4 ;
    input signed [1:0]  vector ;
  begin
    conv_s2s_2_4 = {{2{vector[1]}}, vector};
  end
  endfunction


  function signed [5:0] conv_u2s_5_6 ;
    input [4:0]  vector ;
  begin
    conv_u2s_5_6 = {1'b0, vector};
  end
  endfunction


  function signed [11:0] conv_u2s_11_12 ;
    input [10:0]  vector ;
  begin
    conv_u2s_11_12 = {1'b0, vector};
  end
  endfunction


  function  [7:0] conv_u2u_7_8 ;
    input [6:0]  vector ;
  begin
    conv_u2u_7_8 = {1'b0, vector};
  end
  endfunction


  function signed [6:0] conv_s2s_6_7 ;
    input signed [5:0]  vector ;
  begin
    conv_s2s_6_7 = {vector[5], vector};
  end
  endfunction


  function signed [6:0] conv_u2s_6_7 ;
    input [5:0]  vector ;
  begin
    conv_u2s_6_7 = {1'b0, vector};
  end
  endfunction


  function  [6:0] conv_u2u_6_7 ;
    input [5:0]  vector ;
  begin
    conv_u2u_6_7 = {1'b0, vector};
  end
  endfunction


  function  [3:0] conv_s2u_1_4 ;
    input signed [0:0]  vector ;
  begin
    conv_s2u_1_4 = {{3{vector[0]}}, vector};
  end
  endfunction


  function  [4:0] conv_s2u_3_5 ;
    input signed [2:0]  vector ;
  begin
    conv_s2u_3_5 = {{2{vector[2]}}, vector};
  end
  endfunction


  function signed [4:0] conv_u2s_4_5 ;
    input [3:0]  vector ;
  begin
    conv_u2s_4_5 = {1'b0, vector};
  end
  endfunction


  function  [4:0] conv_u2u_4_5 ;
    input [3:0]  vector ;
  begin
    conv_u2u_4_5 = {1'b0, vector};
  end
  endfunction


  function  [1:0] conv_u2u_1_2 ;
    input [0:0]  vector ;
  begin
    conv_u2u_1_2 = {1'b0, vector};
  end
  endfunction


  function  [10:0] conv_u2u_10_11 ;
    input [9:0]  vector ;
  begin
    conv_u2u_10_11 = {1'b0, vector};
  end
  endfunction


  function signed [9:0] conv_u2s_9_10 ;
    input [8:0]  vector ;
  begin
    conv_u2s_9_10 = {1'b0, vector};
  end
  endfunction


  function signed [1:0] conv_s2s_1_2 ;
    input signed [0:0]  vector ;
  begin
    conv_s2s_1_2 = {vector[0], vector};
  end
  endfunction


  function signed [1:0] conv_u2s_1_2 ;
    input [0:0]  vector ;
  begin
    conv_u2s_1_2 = {1'b0, vector};
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    markers
//  Generated from file(s):
//    2) $PROJECT_HOME/../markers_source/blur.c
// ------------------------------------------------------------------


module markers (
  vin, vout_rsc_z, vga_xy, volume_rsc_z, clk, en, arst_n
);
  input [89:0] vin;
  output [29:0] vout_rsc_z;
  input [19:0] vga_xy;
  output [3:0] volume_rsc_z;
  input clk;
  input en;
  input arst_n;


  // Interconnect Declarations
  wire [29:0] vout_rsc_mgc_out_stdreg_d;
  wire [3:0] volume_rsc_mgc_out_stdreg_d;


  // Interconnect Declarations for Component Instantiations 
  mgc_out_stdreg #(.rscid(2),
  .width(30)) vout_rsc_mgc_out_stdreg (
      .d(vout_rsc_mgc_out_stdreg_d),
      .z(vout_rsc_z)
    );
  mgc_out_stdreg #(.rscid(4),
  .width(4)) volume_rsc_mgc_out_stdreg (
      .d(volume_rsc_mgc_out_stdreg_d),
      .z(volume_rsc_z)
    );
  markers_core markers_core_inst (
      .vin(vin),
      .vga_xy(vga_xy),
      .clk(clk),
      .en(en),
      .arst_n(arst_n),
      .vout_rsc_mgc_out_stdreg_d(vout_rsc_mgc_out_stdreg_d),
      .volume_rsc_mgc_out_stdreg_d(volume_rsc_mgc_out_stdreg_d)
    );
endmodule


