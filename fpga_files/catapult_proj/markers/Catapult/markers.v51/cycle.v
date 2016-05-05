// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    2011a.126 Production Release
//  HLS Date:       Wed Aug  8 00:52:07 PDT 2012
// 
//  Generated by:   mf2915@EEWS305-026
//  Generated date: Thu May 05 11:46:35 2016
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



  // Interconnect Declarations for Component Instantiations 
  always @(*)
  begin : core
    // Interconnect Declarations
    reg [3:0] acc_6_1_sva;
    reg [9:0] blue_xy_0_sva;
    reg [9:0] blue_xy_1_sva;
    reg [9:0] blue_xy_previous_0_sva;
    reg [9:0] blue_xy_previous_1_sva;
    reg [5:0] acc_imod_sva;
    reg [3:0] if_acc_1_psp_sva;
    reg [3:0] if_acc_svs;
    reg else_2_aif_slc_svs;
    reg else_2_land_1_sva_1;
    reg else_2_land_1_lpi_1_dfm;
    reg else_2_land_sva_1;
    reg else_2_land_lpi_1_dfm;
    reg [3:0] acc_6_1_sva_2;
    reg [3:0] acc_6_1_sva_dfm_1;
    reg if_6_land_lpi_1_dfm;
    reg [9:0] blue_xy_0_sva_1;
    reg [9:0] blue_xy_1_sva_1;
    reg [9:0] blue_xy_0_sva_dfm_1;
    reg [9:0] blue_xy_1_sva_dfm_1;
    reg land_6_lpi_1_dfm;
    reg [10:0] deltax_blue_acc_psp_sva;
    reg slc_4_svs;
    reg land_7_sva_1;
    reg [9:0] blue_xy_previous_0_sva_dfm_1;
    reg [9:0] blue_xy_previous_1_sva_dfm_1;
    reg slc_5_svs;
    reg land_9_sva_1;
    reg land_9_lpi_1_dfm;
    reg aif_35_slc_svs;
    reg aif_35_land_sva_1;
    reg land_8_lpi_1_dfm;
    reg [10:0] deltax_square_blue_acc_psp_sva;
    reg else_12_slc_svs;
    reg else_12_land_1_sva_1;
    reg else_12_land_1_lpi_1_dfm;
    reg [10:0] deltay_square_blue_acc_psp_sva;
    reg else_12_aif_1_slc_svs;
    reg else_12_aif_1_land_sva_1;
    reg [3:0] acc_6_1_sva_dfm_2;
    reg else_2_land_lpi_1_dfm_1;
    reg [9:0] blue_xy_0_sva_dfm_2;
    reg [9:0] blue_xy_1_sva_dfm_2;
    reg land_6_lpi_1_dfm_1;
    reg [10:0] deltax_blue_acc_psp_sva_1;
    reg slc_4_svs_1;
    reg [9:0] blue_xy_previous_1_sva_dfm_2;
    reg land_8_lpi_1_dfm_1;
    reg land_8_lpi_1_dfm_2;
    reg land_8_lpi_1_dfm_3;
    reg else_12_land_1_lpi_1_dfm_2;
    reg slc_4_svs_st;
    reg else_12_land_1_lpi_1_dfm_st;
    reg else_2_land_lpi_1_dfm_st_1;
    reg slc_4_svs_st_1;
    reg land_8_lpi_1_dfm_st_1;
    reg land_8_lpi_1_dfm_st_2;
    reg land_8_lpi_1_dfm_st_3;
    reg else_12_land_1_lpi_1_dfm_st_1;
    reg main_stage_0_2;
    reg main_stage_0_3;
    reg main_stage_0_4;
    reg or_3_cse;
    reg and_2_cse;

    reg[9:0] mux_4_nl;
    begin : core_rlpExit
      forever begin : core_rlp
        // C-Step 0 of Loop 'core_rlp'
        acc_6_1_sva = 4'b0;
        blue_xy_0_sva = 10'b0;
        blue_xy_1_sva = 10'b0;
        blue_xy_previous_0_sva = 10'b0;
        blue_xy_previous_1_sva = 10'b0;
        main_stage_0_2 = 1'b0;
        main_stage_0_3 = 1'b0;
        main_stage_0_4 = 1'b0;
        begin : mainExit
          forever begin : main
            // C-Step 0 of Loop 'main'
            begin : waitLoop0Exit
              forever begin : waitLoop0
                @(posedge clk or negedge ( arst_n ));
                if ( ~ arst_n )
                  disable core_rlpExit;
                if ( en )
                  disable waitLoop0Exit;
              end
            end
            // C-Step 1 of Loop 'main'
            if ( main_stage_0_4 ) begin
              else_12_aif_1_land_sva_1 = 1'b0;
              if ( land_8_lpi_1_dfm_st_3 ) begin
              end
              else if ( else_12_land_1_lpi_1_dfm_st_1 ) begin
                deltay_square_blue_acc_psp_sva = readslicef_12_11_1((({1'b1 , (vga_xy[19:10])
                    , 1'b1}) + conv_u2s_11_12({(~ blue_xy_previous_1_sva_dfm_2) ,
                    1'b1})));
                else_12_aif_1_slc_svs = readslicef_11_1_10(((~ deltay_square_blue_acc_psp_sva)
                    + 11'b1));
                if ( else_12_aif_1_slc_svs ) begin
                  else_12_aif_1_land_sva_1 = readslicef_8_1_7((conv_u2s_7_8(deltay_square_blue_acc_psp_sva[9:3])
                      + 8'b11111011));
                end
              end
              vout_rsc_mgc_out_stdreg_d <= {({{9{land_8_lpi_1_dfm_3}}, land_8_lpi_1_dfm_3})
                  , 10'b0 , (signext_10_1(else_12_aif_1_land_sva_1 & else_12_aif_1_slc_svs
                  & else_12_land_1_lpi_1_dfm_2 & (~ land_8_lpi_1_dfm_3)))};
            end
            if ( main_stage_0_3 ) begin
              else_12_land_1_sva_1 = 1'b0;
              land_7_sva_1 = 1'b0;
              if ( slc_4_svs_st_1 ) begin
                land_7_sva_1 = readslicef_12_1_11((conv_s2s_11_12(~ deltax_blue_acc_psp_sva_1)
                    + 12'b111111101101));
              end
              or_3_cse = land_6_lpi_1_dfm_1 | (land_7_sva_1 & slc_4_svs_1);
              blue_xy_previous_0_sva_dfm_1 = MUX_v_10_2_2({blue_xy_previous_0_sva
                  , blue_xy_0_sva_dfm_2}, or_3_cse);
              blue_xy_previous_1_sva_dfm_1 = MUX_v_10_2_2({blue_xy_previous_1_sva
                  , blue_xy_1_sva_dfm_2}, or_3_cse);
              if ( land_8_lpi_1_dfm_st_2 ) begin
              end
              else begin
                deltax_square_blue_acc_psp_sva = readslicef_12_11_1((({1'b1 , (vga_xy[9:0])
                    , 1'b1}) + conv_u2s_11_12({(~ blue_xy_previous_0_sva_dfm_1) ,
                    1'b1})));
                else_12_slc_svs = readslicef_11_1_10(((~ deltax_square_blue_acc_psp_sva)
                    + 11'b1));
                if ( else_12_slc_svs ) begin
                  else_12_land_1_sva_1 = readslicef_8_1_7((conv_u2s_7_8(deltax_square_blue_acc_psp_sva[9:3])
                      + 8'b11111011));
                end
                else_12_land_1_lpi_1_dfm = else_12_land_1_sva_1 & else_12_slc_svs;
                else_12_land_1_lpi_1_dfm_st = else_12_land_1_lpi_1_dfm;
              end
              blue_xy_0_sva = blue_xy_0_sva_dfm_2;
              blue_xy_1_sva = blue_xy_1_sva_dfm_2;
              blue_xy_previous_0_sva = blue_xy_previous_0_sva_dfm_1;
              blue_xy_previous_1_sva = blue_xy_previous_1_sva_dfm_1;
            end
            if ( main_stage_0_2 ) begin
              if_6_land_lpi_1_dfm = 1'b0;
              blue_xy_1_sva_1 = 10'b0;
              blue_xy_0_sva_1 = 10'b0;
              acc_6_1_sva_2 = 4'b0;
              if ( else_2_land_lpi_1_dfm_st_1 ) begin
                acc_6_1_sva_2 = acc_6_1_sva_dfm_2 + 4'b1;
              end
              acc_6_1_sva_dfm_1 = MUX_v_4_2_2({acc_6_1_sva_dfm_2 , acc_6_1_sva_2},
                  else_2_land_lpi_1_dfm_1);
              if ( acc_6_1_sva_dfm_1[3] ) begin
                if_6_land_lpi_1_dfm = ~((blue_xy_1_sva[9]) | (blue_xy_1_sva[8]) |
                    (blue_xy_1_sva[7]) | (blue_xy_1_sva[6]) | (blue_xy_1_sva[5])
                    | (blue_xy_1_sva[4]) | (blue_xy_1_sva[3]) | (blue_xy_1_sva[2])
                    | (blue_xy_1_sva[1]) | (blue_xy_1_sva[0]) | (blue_xy_0_sva[9])
                    | (blue_xy_0_sva[8]) | (blue_xy_0_sva[7]) | (blue_xy_0_sva[6])
                    | (blue_xy_0_sva[5]) | (blue_xy_0_sva[4]) | (blue_xy_0_sva[3])
                    | (blue_xy_0_sva[2]) | (blue_xy_0_sva[1]) | (blue_xy_0_sva[0]));
                if ( if_6_land_lpi_1_dfm ) begin
                  blue_xy_0_sva_1 = vga_xy[9:0];
                  blue_xy_1_sva_1 = vga_xy[19:10];
                end
              end
              and_2_cse = if_6_land_lpi_1_dfm & (acc_6_1_sva_dfm_1[3]);
              blue_xy_0_sva_dfm_1 = MUX_v_10_2_2({blue_xy_0_sva , blue_xy_0_sva_1},
                  and_2_cse);
              blue_xy_1_sva_dfm_1 = MUX_v_10_2_2({blue_xy_1_sva , blue_xy_1_sva_1},
                  and_2_cse);
              land_6_lpi_1_dfm = ~((~((blue_xy_0_sva_dfm_1[9]) | (blue_xy_0_sva_dfm_1[8])
                  | (blue_xy_0_sva_dfm_1[7]) | (blue_xy_0_sva_dfm_1[6]) | (blue_xy_0_sva_dfm_1[5])
                  | (blue_xy_0_sva_dfm_1[4]) | (blue_xy_0_sva_dfm_1[3]) | (blue_xy_0_sva_dfm_1[2])
                  | (blue_xy_0_sva_dfm_1[1]) | (blue_xy_0_sva_dfm_1[0]))) | (blue_xy_previous_0_sva[9])
                  | (blue_xy_previous_0_sva[8]) | (blue_xy_previous_0_sva[7]) | (blue_xy_previous_0_sva[6])
                  | (blue_xy_previous_0_sva[5]) | (blue_xy_previous_0_sva[4]) | (blue_xy_previous_0_sva[3])
                  | (blue_xy_previous_0_sva[2]) | (blue_xy_previous_0_sva[1]) | (blue_xy_previous_0_sva[0]));
              mux_4_nl = MUX_v_10_2_2({blue_xy_previous_0_sva , blue_xy_0_sva_dfm_1},
                  land_6_lpi_1_dfm);
              deltax_blue_acc_psp_sva = readslicef_12_11_1((({1'b1 , blue_xy_0_sva_dfm_1
                  , 1'b1}) + conv_u2s_11_12({(~ (mux_4_nl)) , 1'b1})));
              slc_4_svs = readslicef_10_1_9((conv_s2u_9_10(deltax_blue_acc_psp_sva[10:2])
                  + 10'b1111111011));
              slc_4_svs_st = slc_4_svs;
              acc_6_1_sva = acc_6_1_sva_dfm_1;
            end
            aif_35_land_sva_1 = 1'b0;
            land_9_sva_1 = 1'b0;
            else_2_land_sva_1 = 1'b0;
            else_2_land_1_sva_1 = 1'b0;
            acc_imod_sva = conv_s2s_5_6(({3'b100 , (vga_xy[9:8])}) + conv_u2s_4_5(readslicef_5_4_1((conv_u2u_4_5({(vga_xy[2:0])
                , 1'b1}) + conv_u2u_4_5(vga_xy[6:3]))))) + conv_u2s_5_6({(conv_u2u_1_2(~
                (vga_xy[3])) + conv_u2u_1_2(~ (vga_xy[7]))) , 2'b0 , (readslicef_2_1_1((conv_u2u_1_2(vga_xy[7])
                + 2'b1)))});
            if_acc_1_psp_sva = (readslicef_5_4_1((({(~ (acc_imod_sva[3])) , 4'b1})
                + conv_s2u_3_5(acc_imod_sva[5:3])))) + ({1'b1 , (acc_imod_sva[2:0])});
            if_acc_svs = conv_s2u_1_4(if_acc_1_psp_sva[3]) + if_acc_1_psp_sva;
            else_2_aif_slc_svs = readslicef_9_1_8((({1'b1 , (~ (vin[29:22]))}) +
                9'b1011011));
            if ( else_2_aif_slc_svs ) begin
            end
            else begin
              else_2_land_1_sva_1 = ~ (readslicef_9_1_8((({1'b1 , (~ (vin[19:12]))})
                  + 9'b1011011)));
            end
            else_2_land_1_lpi_1_dfm = else_2_land_1_sva_1 & (~ else_2_aif_slc_svs);
            if ( else_2_land_1_lpi_1_dfm ) begin
              else_2_land_sva_1 = ~ (readslicef_8_1_7((conv_u2u_7_8(vin[9:3]) + 8'b10100001)));
            end
            else_2_land_lpi_1_dfm = else_2_land_sva_1 & else_2_land_1_lpi_1_dfm;
            slc_5_svs = readslicef_11_1_10((({1'b1 , (~ (vga_xy[9:0]))}) + 11'b1));
            if ( slc_5_svs ) begin
              land_9_sva_1 = readslicef_8_1_7((conv_u2s_7_8(vga_xy[9:3]) + 8'b11111011));
            end
            land_9_lpi_1_dfm = land_9_sva_1 & slc_5_svs;
            if ( land_9_lpi_1_dfm ) begin
              aif_35_slc_svs = readslicef_11_1_10((({1'b1 , (~ (vga_xy[19:10]))})
                  + 11'b1));
              if ( aif_35_slc_svs ) begin
                aif_35_land_sva_1 = readslicef_8_1_7((conv_u2s_7_8(vga_xy[19:13])
                    + 8'b11111011));
              end
            end
            land_8_lpi_1_dfm = aif_35_land_sva_1 & aif_35_slc_svs & land_9_lpi_1_dfm;
            acc_6_1_sva_dfm_2 = acc_6_1_sva & (signext_4_1((if_acc_svs[3]) | (if_acc_svs[2])
                | (if_acc_svs[1]) | (if_acc_svs[0])));
            else_2_land_lpi_1_dfm_1 = else_2_land_lpi_1_dfm;
            blue_xy_0_sva_dfm_2 = blue_xy_0_sva_dfm_1;
            blue_xy_1_sva_dfm_2 = blue_xy_1_sva_dfm_1;
            land_6_lpi_1_dfm_1 = land_6_lpi_1_dfm;
            deltax_blue_acc_psp_sva_1 = deltax_blue_acc_psp_sva;
            slc_4_svs_1 = slc_4_svs;
            blue_xy_previous_1_sva_dfm_2 = blue_xy_previous_1_sva_dfm_1;
            land_8_lpi_1_dfm_3 = land_8_lpi_1_dfm_2;
            land_8_lpi_1_dfm_2 = land_8_lpi_1_dfm_1;
            land_8_lpi_1_dfm_1 = land_8_lpi_1_dfm;
            else_12_land_1_lpi_1_dfm_2 = else_12_land_1_lpi_1_dfm;
            else_2_land_lpi_1_dfm_st_1 = else_2_land_lpi_1_dfm;
            slc_4_svs_st_1 = slc_4_svs_st;
            land_8_lpi_1_dfm_st_3 = land_8_lpi_1_dfm_st_2;
            land_8_lpi_1_dfm_st_2 = land_8_lpi_1_dfm_st_1;
            land_8_lpi_1_dfm_st_1 = land_8_lpi_1_dfm;
            else_12_land_1_lpi_1_dfm_st_1 = else_12_land_1_lpi_1_dfm_st;
            main_stage_0_4 = main_stage_0_3;
            main_stage_0_3 = main_stage_0_2;
            main_stage_0_2 = 1'b1;
          end
        end
      end
    end
    and_2_cse = 1'b0;
    or_3_cse = 1'b0;
    main_stage_0_4 = 1'b0;
    main_stage_0_3 = 1'b0;
    main_stage_0_2 = 1'b0;
    else_12_land_1_lpi_1_dfm_st_1 = 1'b0;
    land_8_lpi_1_dfm_st_3 = 1'b0;
    land_8_lpi_1_dfm_st_2 = 1'b0;
    land_8_lpi_1_dfm_st_1 = 1'b0;
    slc_4_svs_st_1 = 1'b0;
    else_2_land_lpi_1_dfm_st_1 = 1'b0;
    else_12_land_1_lpi_1_dfm_st = 1'b0;
    slc_4_svs_st = 1'b0;
    else_12_land_1_lpi_1_dfm_2 = 1'b0;
    land_8_lpi_1_dfm_3 = 1'b0;
    land_8_lpi_1_dfm_2 = 1'b0;
    land_8_lpi_1_dfm_1 = 1'b0;
    blue_xy_previous_1_sva_dfm_2 = 10'b0;
    slc_4_svs_1 = 1'b0;
    deltax_blue_acc_psp_sva_1 = 11'b0;
    land_6_lpi_1_dfm_1 = 1'b0;
    blue_xy_1_sva_dfm_2 = 10'b0;
    blue_xy_0_sva_dfm_2 = 10'b0;
    else_2_land_lpi_1_dfm_1 = 1'b0;
    acc_6_1_sva_dfm_2 = 4'b0;
    else_12_aif_1_land_sva_1 = 1'b0;
    else_12_aif_1_slc_svs = 1'b0;
    deltay_square_blue_acc_psp_sva = 11'b0;
    else_12_land_1_lpi_1_dfm = 1'b0;
    else_12_land_1_sva_1 = 1'b0;
    else_12_slc_svs = 1'b0;
    deltax_square_blue_acc_psp_sva = 11'b0;
    land_8_lpi_1_dfm = 1'b0;
    aif_35_land_sva_1 = 1'b0;
    aif_35_slc_svs = 1'b0;
    land_9_lpi_1_dfm = 1'b0;
    land_9_sva_1 = 1'b0;
    slc_5_svs = 1'b0;
    blue_xy_previous_1_sva_dfm_1 = 10'b0;
    blue_xy_previous_0_sva_dfm_1 = 10'b0;
    land_7_sva_1 = 1'b0;
    slc_4_svs = 1'b0;
    deltax_blue_acc_psp_sva = 11'b0;
    land_6_lpi_1_dfm = 1'b0;
    blue_xy_1_sva_dfm_1 = 10'b0;
    blue_xy_0_sva_dfm_1 = 10'b0;
    blue_xy_1_sva_1 = 10'b0;
    blue_xy_0_sva_1 = 10'b0;
    if_6_land_lpi_1_dfm = 1'b0;
    acc_6_1_sva_dfm_1 = 4'b0;
    acc_6_1_sva_2 = 4'b0;
    else_2_land_lpi_1_dfm = 1'b0;
    else_2_land_sva_1 = 1'b0;
    else_2_land_1_lpi_1_dfm = 1'b0;
    else_2_land_1_sva_1 = 1'b0;
    else_2_aif_slc_svs = 1'b0;
    if_acc_svs = 4'b0;
    if_acc_1_psp_sva = 4'b0;
    acc_imod_sva = 6'b0;
    blue_xy_previous_1_sva = 10'b0;
    blue_xy_previous_0_sva = 10'b0;
    blue_xy_1_sva = 10'b0;
    blue_xy_0_sva = 10'b0;
    acc_6_1_sva = 4'b0;
    vout_rsc_mgc_out_stdreg_d <= 30'b0;
  end


  function [10:0] readslicef_12_11_1;
    input [11:0] vector;
    reg [11:0] tmp;
  begin
    tmp = vector >> 1;
    readslicef_12_11_1 = tmp[10:0];
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


  function [0:0] readslicef_8_1_7;
    input [7:0] vector;
    reg [7:0] tmp;
  begin
    tmp = vector >> 7;
    readslicef_8_1_7 = tmp[0:0];
  end
  endfunction


  function [9:0] signext_10_1;
    input [0:0] vector;
  begin
    signext_10_1= {{9{vector[0]}}, vector};
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


  function [0:0] readslicef_10_1_9;
    input [9:0] vector;
    reg [9:0] tmp;
  begin
    tmp = vector >> 9;
    readslicef_10_1_9 = tmp[0:0];
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


  function [0:0] readslicef_9_1_8;
    input [8:0] vector;
    reg [8:0] tmp;
  begin
    tmp = vector >> 8;
    readslicef_9_1_8 = tmp[0:0];
  end
  endfunction


  function [3:0] signext_4_1;
    input [0:0] vector;
  begin
    signext_4_1= {{3{vector[0]}}, vector};
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


  function  [4:0] conv_s2u_3_5 ;
    input signed [2:0]  vector ;
  begin
    conv_s2u_3_5 = {{2{vector[2]}}, vector};
  end
  endfunction


  function  [3:0] conv_s2u_1_4 ;
    input signed [0:0]  vector ;
  begin
    conv_s2u_1_4 = {{3{vector[0]}}, vector};
  end
  endfunction


  function  [7:0] conv_u2u_7_8 ;
    input [6:0]  vector ;
  begin
    conv_u2u_7_8 = {1'b0, vector};
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



