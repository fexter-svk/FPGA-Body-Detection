// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    2011a.126 Production Release
//  HLS Date:       Wed Aug  8 00:52:07 PDT 2012
// 
//  Generated by:   mf2915@EEWS305-026
//  Generated date: Thu May 05 11:35:27 2016
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    markers_core
// ------------------------------------------------------------------


module markers_core (
  vin, vga_xy, clk, en, arst_n, vout_rsc_mgc_out_stdreg_d
);
  input [89:0] vin;
  input [19:0] vga_xy;
  input clk;
  input en;
  input arst_n;
  output [29:0] vout_rsc_mgc_out_stdreg_d;
  reg [29:0] vout_rsc_mgc_out_stdreg_d;


  // Interconnect Declarations
  wire if_10_nor_tmp;
  wire or_dcpl_4;
  wire or_dcpl_9;
  reg [9:0] blue_xy_0_sva;
  reg [9:0] blue_xy_1_sva;
  reg [9:0] blue_xy_previous_0_sva;
  reg [9:0] blue_xy_previous_1_sva;
  reg aif_35_slc_svs;
  reg else_12_land_1_lpi_1_dfm;
  reg else_12_aif_1_slc_svs;
  reg [3:0] acc_6_1_sva_dfm_2;
  reg else_2_land_lpi_1_dfm_1;
  reg [9:0] blue_xy_0_sva_dfm_2;
  reg [9:0] blue_xy_1_sva_dfm_2;
  reg land_6_lpi_1_dfm_1;
  reg [10:0] deltax_blue_acc_psp_sva_1;
  reg slc_4_svs_1;
  reg [9:0] blue_xy_previous_1_sva_dfm_2;
  reg land_8_lpi_1_dfm_3;
  reg else_12_land_1_lpi_1_dfm_2;
  reg land_8_lpi_1_dfm_st_1;
  reg land_8_lpi_1_dfm_st_2;
  reg main_stage_0_2;
  reg main_stage_0_3;
  reg main_stage_0_4;
  wire and_6_cse;
  wire [3:0] acc_6_1_sva_2;
  wire [4:0] nl_acc_6_1_sva_2;
  wire [9:0] blue_xy_1_sva_mx0;
  wire [9:0] blue_xy_0_sva_mx0;
  wire and_15_cse;
  wire [11:0] deltay_square_blue_acc_1_itm;
  wire [12:0] nl_deltay_square_blue_acc_1_itm;
  wire [7:0] if_12_acc_itm;
  wire [8:0] nl_if_12_acc_itm;
  wire [10:0] acc_5_itm;
  wire [11:0] nl_acc_5_itm;
  wire else_12_land_1_lpi_1_dfm_mx0w0;
  wire [9:0] blue_xy_previous_0_sva_mx0;
  wire [9:0] blue_xy_0_sva_dfm_2_mx0;
  wire aif_35_slc_svs_mx0;
  wire [3:0] if_acc_svs;
  wire [4:0] nl_if_acc_svs;
  wire [3:0] if_acc_1_psp_sva;
  wire [4:0] nl_if_acc_1_psp_sva;
  wire [5:0] acc_imod_sva;
  wire [6:0] nl_acc_imod_sva;
  wire [10:0] else_12_aif_1_acc_itm;
  wire [11:0] nl_else_12_aif_1_acc_itm;
  wire [11:0] deltax_blue_acc_1_itm;
  wire [12:0] nl_deltax_blue_acc_1_itm;
  wire [11:0] deltax_square_blue_acc_1_itm;
  wire [12:0] nl_deltax_square_blue_acc_1_itm;

  wire[9:0] mux_10_nl;
  wire[9:0] mux_7_nl;
  wire[0:0] else_2_mux_nl;

  // Interconnect Declarations for Component Instantiations 
  assign and_15_cse = (~ and_6_cse) & main_stage_0_3;
  assign nl_else_12_aif_1_acc_itm = (~ (deltay_square_blue_acc_1_itm[11:1])) + 11'b1;
  assign else_12_aif_1_acc_itm = nl_else_12_aif_1_acc_itm[10:0];
  assign nl_deltay_square_blue_acc_1_itm = ({1'b1 , (vga_xy[19:10]) , 1'b1}) + conv_u2s_11_12({(~
      blue_xy_previous_1_sva_dfm_2) , 1'b1});
  assign deltay_square_blue_acc_1_itm = nl_deltay_square_blue_acc_1_itm[11:0];
  assign else_12_land_1_lpi_1_dfm_mx0w0 = (readslicef_8_1_7((conv_u2s_7_8(deltax_square_blue_acc_1_itm[10:4])
      + 8'b11111011))) & (readslicef_11_1_10(((~ (deltax_square_blue_acc_1_itm[11:1]))
      + 11'b1)));
  assign blue_xy_1_sva_mx0 = MUX_v_10_2_2({blue_xy_1_sva , blue_xy_1_sva_dfm_2},
      main_stage_0_3);
  assign blue_xy_0_sva_mx0 = MUX_v_10_2_2({blue_xy_0_sva , blue_xy_0_sva_dfm_2},
      main_stage_0_3);
  assign blue_xy_previous_0_sva_mx0 = MUX_v_10_2_2({blue_xy_previous_0_sva , blue_xy_0_sva_dfm_2},
      and_15_cse);
  assign blue_xy_0_sva_dfm_2_mx0 = MUX_v_10_2_2({(vga_xy[9:0]) , blue_xy_0_sva_mx0},
      or_dcpl_9);
  assign mux_10_nl = MUX_v_10_2_2({blue_xy_previous_0_sva_mx0 , blue_xy_0_sva_dfm_2_mx0},
      if_10_nor_tmp);
  assign nl_deltax_blue_acc_1_itm = ({1'b1 , blue_xy_0_sva_dfm_2_mx0 , 1'b1}) + conv_u2s_11_12({(~
      (mux_10_nl)) , 1'b1});
  assign deltax_blue_acc_1_itm = nl_deltax_blue_acc_1_itm[11:0];
  assign mux_7_nl = MUX_v_10_2_2({blue_xy_0_sva_dfm_2 , blue_xy_previous_0_sva},
      and_6_cse);
  assign nl_deltax_square_blue_acc_1_itm = ({1'b1 , (vga_xy[9:0]) , 1'b1}) + conv_u2s_11_12({(~
      (mux_7_nl)) , 1'b1});
  assign deltax_square_blue_acc_1_itm = nl_deltax_square_blue_acc_1_itm[11:0];
  assign if_10_nor_tmp = ~((~((blue_xy_0_sva_dfm_2_mx0[9]) | (blue_xy_0_sva_dfm_2_mx0[8])
      | (blue_xy_0_sva_dfm_2_mx0[7]) | (blue_xy_0_sva_dfm_2_mx0[6]) | (blue_xy_0_sva_dfm_2_mx0[5])
      | (blue_xy_0_sva_dfm_2_mx0[4]) | (blue_xy_0_sva_dfm_2_mx0[3]) | (blue_xy_0_sva_dfm_2_mx0[2])
      | (blue_xy_0_sva_dfm_2_mx0[1]) | (blue_xy_0_sva_dfm_2_mx0[0]))) | (blue_xy_previous_0_sva_mx0[9])
      | (blue_xy_previous_0_sva_mx0[8]) | (blue_xy_previous_0_sva_mx0[7]) | (blue_xy_previous_0_sva_mx0[6])
      | (blue_xy_previous_0_sva_mx0[5]) | (blue_xy_previous_0_sva_mx0[4]) | (blue_xy_previous_0_sva_mx0[3])
      | (blue_xy_previous_0_sva_mx0[2]) | (blue_xy_previous_0_sva_mx0[1]) | (blue_xy_previous_0_sva_mx0[0]));
  assign nl_acc_6_1_sva_2 = acc_6_1_sva_dfm_2 + 4'b1;
  assign acc_6_1_sva_2 = nl_acc_6_1_sva_2[3:0];
  assign aif_35_slc_svs_mx0 = MUX_s_1_2_2({(readslicef_11_1_10((({1'b1 , (~ (vga_xy[19:10]))})
      + 11'b1))) , aif_35_slc_svs}, ~((acc_5_itm[10]) & (if_12_acc_itm[7])));
  assign nl_if_12_acc_itm = conv_u2s_7_8(vga_xy[9:3]) + 8'b11111011;
  assign if_12_acc_itm = nl_if_12_acc_itm[7:0];
  assign nl_acc_5_itm = ({1'b1 , (~ (vga_xy[9:0]))}) + 11'b1;
  assign acc_5_itm = nl_acc_5_itm[10:0];
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
  assign or_dcpl_4 = land_8_lpi_1_dfm_3 | (~ else_12_land_1_lpi_1_dfm_2);
  assign and_6_cse = ~(((readslicef_12_1_11((conv_s2s_11_12(~ deltax_blue_acc_psp_sva_1)
      + 12'b111111101101))) & slc_4_svs_1) | land_6_lpi_1_dfm_1);
  assign else_2_mux_nl = MUX_s_1_2_2({(acc_6_1_sva_dfm_2[3]) , (acc_6_1_sva_2[3])},
      else_2_land_lpi_1_dfm_1);
  assign or_dcpl_9 = ~((else_2_mux_nl) & (~((blue_xy_1_sva_mx0[9]) | (blue_xy_1_sva_mx0[8])
      | (blue_xy_1_sva_mx0[7]) | (blue_xy_1_sva_mx0[6]) | (blue_xy_1_sva_mx0[5])
      | (blue_xy_1_sva_mx0[4]) | (blue_xy_1_sva_mx0[3]) | (blue_xy_1_sva_mx0[2])
      | (blue_xy_1_sva_mx0[1]) | (blue_xy_1_sva_mx0[0]) | (blue_xy_0_sva_mx0[9])
      | (blue_xy_0_sva_mx0[8]) | (blue_xy_0_sva_mx0[7]) | (blue_xy_0_sva_mx0[6])
      | (blue_xy_0_sva_mx0[5]) | (blue_xy_0_sva_mx0[4]) | (blue_xy_0_sva_mx0[3])
      | (blue_xy_0_sva_mx0[2]) | (blue_xy_0_sva_mx0[1]) | (blue_xy_0_sva_mx0[0]))));
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      vout_rsc_mgc_out_stdreg_d <= 30'b0;
      else_12_aif_1_slc_svs <= 1'b0;
      blue_xy_previous_1_sva_dfm_2 <= 10'b0;
      land_8_lpi_1_dfm_3 <= 1'b0;
      else_12_land_1_lpi_1_dfm_2 <= 1'b0;
      blue_xy_1_sva <= 10'b0;
      blue_xy_0_sva <= 10'b0;
      blue_xy_previous_0_sva <= 10'b0;
      blue_xy_0_sva_dfm_2 <= 10'b0;
      deltax_blue_acc_psp_sva_1 <= 11'b0;
      blue_xy_1_sva_dfm_2 <= 10'b0;
      land_8_lpi_1_dfm_st_2 <= 1'b0;
      land_6_lpi_1_dfm_1 <= 1'b0;
      slc_4_svs_1 <= 1'b0;
      acc_6_1_sva_dfm_2 <= 4'b0;
      else_2_land_lpi_1_dfm_1 <= 1'b0;
      aif_35_slc_svs <= 1'b0;
      main_stage_0_2 <= 1'b0;
      main_stage_0_3 <= 1'b0;
      main_stage_0_4 <= 1'b0;
      else_12_land_1_lpi_1_dfm <= 1'b0;
      blue_xy_previous_1_sva <= 10'b0;
      land_8_lpi_1_dfm_st_1 <= 1'b0;
    end
    else begin
      if ( en ) begin
        vout_rsc_mgc_out_stdreg_d <= MUX_v_30_2_2({vout_rsc_mgc_out_stdreg_d , ({({{9{land_8_lpi_1_dfm_3}},
            land_8_lpi_1_dfm_3}) , 10'b0 , (signext_10_1((readslicef_8_1_7((conv_u2s_7_8(deltay_square_blue_acc_1_itm[10:4])
            + 8'b11111011))) & (MUX_s_1_2_2({(else_12_aif_1_acc_itm[10]) , else_12_aif_1_slc_svs},
            or_dcpl_4)) & else_12_land_1_lpi_1_dfm_2 & (~ land_8_lpi_1_dfm_3)))})},
            main_stage_0_4);
        else_12_aif_1_slc_svs <= MUX_s_1_2_2({(else_12_aif_1_acc_itm[10]) , else_12_aif_1_slc_svs},
            or_dcpl_4 | (~ main_stage_0_4));
        blue_xy_previous_1_sva_dfm_2 <= MUX_v_10_2_2({blue_xy_1_sva_dfm_2 , blue_xy_previous_1_sva},
            and_6_cse);
        land_8_lpi_1_dfm_3 <= land_8_lpi_1_dfm_st_2;
        else_12_land_1_lpi_1_dfm_2 <= MUX_s_1_2_2({else_12_land_1_lpi_1_dfm_mx0w0
            , else_12_land_1_lpi_1_dfm}, land_8_lpi_1_dfm_st_2);
        blue_xy_1_sva <= blue_xy_1_sva_mx0;
        blue_xy_0_sva <= blue_xy_0_sva_mx0;
        blue_xy_previous_0_sva <= blue_xy_previous_0_sva_mx0;
        blue_xy_0_sva_dfm_2 <= blue_xy_0_sva_dfm_2_mx0;
        deltax_blue_acc_psp_sva_1 <= deltax_blue_acc_1_itm[11:1];
        blue_xy_1_sva_dfm_2 <= (MUX_v_10_2_2({(vga_xy[19:10]) , blue_xy_1_sva_mx0},
            or_dcpl_9 & main_stage_0_2)) & ({{9{main_stage_0_2}}, main_stage_0_2});
        land_8_lpi_1_dfm_st_2 <= land_8_lpi_1_dfm_st_1;
        land_6_lpi_1_dfm_1 <= if_10_nor_tmp;
        slc_4_svs_1 <= readslicef_10_1_9((conv_s2u_9_10(deltax_blue_acc_1_itm[11:3])
            + 10'b1111111011));
        acc_6_1_sva_dfm_2 <= (MUX_v_4_2_2({acc_6_1_sva_dfm_2 , acc_6_1_sva_2}, else_2_land_lpi_1_dfm_1))
            & ({{3{main_stage_0_2}}, main_stage_0_2}) & (signext_4_1((if_acc_svs[3])
            | (if_acc_svs[2]) | (if_acc_svs[1]) | (if_acc_svs[0])));
        else_2_land_lpi_1_dfm_1 <= ~((readslicef_6_1_5((conv_u2u_5_6(vin[9:5]) +
            6'b100111))) | (readslicef_9_1_8((({1'b1 , (~ (vin[19:12]))}) + 9'b1010001)))
            | (readslicef_9_1_8((({1'b1 , (~ (vin[29:22]))}) + 9'b1010001))));
        aif_35_slc_svs <= aif_35_slc_svs_mx0;
        main_stage_0_2 <= 1'b1;
        main_stage_0_3 <= main_stage_0_2;
        main_stage_0_4 <= main_stage_0_3;
        else_12_land_1_lpi_1_dfm <= MUX_s_1_2_2({else_12_land_1_lpi_1_dfm_mx0w0 ,
            else_12_land_1_lpi_1_dfm}, (~ main_stage_0_3) | land_8_lpi_1_dfm_st_2);
        blue_xy_previous_1_sva <= MUX_v_10_2_2({blue_xy_previous_1_sva , blue_xy_1_sva_dfm_2},
            and_15_cse);
        land_8_lpi_1_dfm_st_1 <= (readslicef_8_1_7((conv_u2s_7_8(vga_xy[19:13]) +
            8'b11111011))) & aif_35_slc_svs_mx0 & (if_12_acc_itm[7]) & (acc_5_itm[10]);
      end
    end
  end

  function [0:0] readslicef_8_1_7;
    input [7:0] vector;
    reg [7:0] tmp;
  begin
    tmp = vector >> 7;
    readslicef_8_1_7 = tmp[0:0];
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


  function [0:0] readslicef_12_1_11;
    input [11:0] vector;
    reg [11:0] tmp;
  begin
    tmp = vector >> 11;
    readslicef_12_1_11 = tmp[0:0];
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


  function [9:0] signext_10_1;
    input [0:0] vector;
  begin
    signext_10_1= {{9{vector[0]}}, vector};
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


  function [3:0] signext_4_1;
    input [0:0] vector;
  begin
    signext_4_1= {{3{vector[0]}}, vector};
  end
  endfunction


  function [0:0] readslicef_6_1_5;
    input [5:0] vector;
    reg [5:0] tmp;
  begin
    tmp = vector >> 5;
    readslicef_6_1_5 = tmp[0:0];
  end
  endfunction


  function [0:0] readslicef_9_1_8;
    input [8:0] vector;
    reg [8:0] tmp;
  begin
    tmp = vector >> 8;
    readslicef_9_1_8 = tmp[0:0];
  end
  endfunction


  function signed [11:0] conv_u2s_11_12 ;
    input [10:0]  vector ;
  begin
    conv_u2s_11_12 = {1'b0, vector};
  end
  endfunction


  function signed [7:0] conv_u2s_7_8 ;
    input [6:0]  vector ;
  begin
    conv_u2s_7_8 = {1'b0, vector};
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


  function signed [5:0] conv_s2s_5_6 ;
    input signed [4:0]  vector ;
  begin
    conv_s2s_5_6 = {vector[4], vector};
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


  function signed [5:0] conv_u2s_5_6 ;
    input [4:0]  vector ;
  begin
    conv_u2s_5_6 = {1'b0, vector};
  end
  endfunction


  function  [1:0] conv_u2u_1_2 ;
    input [0:0]  vector ;
  begin
    conv_u2u_1_2 = {1'b0, vector};
  end
  endfunction


  function signed [11:0] conv_s2s_11_12 ;
    input signed [10:0]  vector ;
  begin
    conv_s2s_11_12 = {vector[10], vector};
  end
  endfunction


  function  [9:0] conv_s2u_9_10 ;
    input signed [8:0]  vector ;
  begin
    conv_s2u_9_10 = {vector[8], vector};
  end
  endfunction


  function  [5:0] conv_u2u_5_6 ;
    input [4:0]  vector ;
  begin
    conv_u2u_5_6 = {1'b0, vector};
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
  output [7:0] volume_rsc_z;
  input clk;
  input en;
  input arst_n;


  // Interconnect Declarations
  wire [29:0] vout_rsc_mgc_out_stdreg_d;


  // Interconnect Declarations for Component Instantiations 
  mgc_out_stdreg #(.rscid(2),
  .width(30)) vout_rsc_mgc_out_stdreg (
      .d(vout_rsc_mgc_out_stdreg_d),
      .z(vout_rsc_z)
    );
  mgc_out_stdreg #(.rscid(4),
  .width(8)) volume_rsc_mgc_out_stdreg (
      .d(8'b0),
      .z(volume_rsc_z)
    );
  markers_core markers_core_inst (
      .vin(vin),
      .vga_xy(vga_xy),
      .clk(clk),
      .en(en),
      .arst_n(arst_n),
      .vout_rsc_mgc_out_stdreg_d(vout_rsc_mgc_out_stdreg_d)
    );
endmodule



