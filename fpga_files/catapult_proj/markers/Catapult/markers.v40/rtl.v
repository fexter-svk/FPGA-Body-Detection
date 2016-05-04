// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    2011a.126 Production Release
//  HLS Date:       Wed Aug  8 00:52:07 PDT 2012
// 
//  Generated by:   mf2915@EEWS104A-015
//  Generated date: Wed May 04 14:34:46 2016
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


  // Interconnect Declarations
  reg [3:0] acc_3_1_sva;
  wire [3:0] acc_3_1_sva_dfm_2_mx0;
  reg [7:0] reg_vout_rsc_mgc_out_stdreg_d_tmp;
  reg [7:0] reg_vout_rsc_mgc_out_stdreg_d_tmp_1;
  reg [7:0] reg_vout_rsc_mgc_out_stdreg_d_tmp_2;
  wire [3:0] acc_3_1_sva_dfm;
  wire [2:0] if_acc_sdt_sva;
  wire [3:0] nl_if_acc_sdt_sva;
  wire [2:0] if_acc_1_psp_sva;
  wire [3:0] nl_if_acc_1_psp_sva;
  wire [2:0] if_acc_7_psp;
  wire [3:0] nl_if_acc_7_psp;
  wire [3:0] if_acc_5_sdt;
  wire [4:0] nl_if_acc_5_sdt;
  wire [4:0] acc_2_itm;
  wire [5:0] nl_acc_2_itm;


  // Interconnect Declarations for Component Instantiations 
  assign vout_rsc_mgc_out_stdreg_d = {reg_vout_rsc_mgc_out_stdreg_d_tmp , 2'b0 ,
      reg_vout_rsc_mgc_out_stdreg_d_tmp_1 , 2'b0 , reg_vout_rsc_mgc_out_stdreg_d_tmp_2
      , 2'b0};
  assign acc_3_1_sva_dfm = acc_3_1_sva & (signext_4_1((if_acc_sdt_sva[2]) | (if_acc_sdt_sva[1])
      | (if_acc_sdt_sva[0]) | (vga_xy[1]) | (vga_xy[0])));
  assign acc_3_1_sva_dfm_2_mx0 = MUX_v_4_2_2({(acc_3_1_sva_dfm + 4'b1) , acc_3_1_sva_dfm},
      ((~((readslicef_5_1_4((conv_u2u_4_5(vin[29:26]) + 5'b11011))) | (readslicef_7_1_6(((~
      (vin[29:23])) + 7'b1001001))) | (readslicef_8_1_7((conv_u2u_7_8(vin[19:13])
      + 8'b10110101))))) & (~((readslicef_8_1_7((conv_u2s_7_8(~ (vin[18:12])) + 8'b11100111)))
      | (readslicef_8_1_7((conv_u2u_7_8(vin[9:3]) + 8'b11110001))) | (readslicef_9_1_8((({1'b1
      , (~ (vin[9:2]))}) + 9'b1101101)))))) | (readslicef_9_1_8((conv_u2s_8_9(vin[29:22])
      + 9'b101011011))) | (readslicef_8_1_7((conv_u2s_7_8(~ (vin[28:22])) + 8'b11011111)))
      | (readslicef_9_1_8((conv_u2s_8_9(vin[19:12]) + 9'b101000111))) | (readslicef_8_1_7((conv_u2s_7_8(~
      (vin[18:12])) + 8'b11110001))) | (readslicef_9_1_8((conv_u2s_8_9(vin[9:2])
      + 9'b111001111))) | (readslicef_7_1_6(((~ (vin[9:3])) + 7'b1001011))));
  assign nl_if_acc_sdt_sva = conv_u2u_1_3(if_acc_1_psp_sva[2]) + conv_u2u_2_3(if_acc_1_psp_sva[1:0]);
  assign if_acc_sdt_sva = nl_if_acc_sdt_sva[2:0];
  assign nl_if_acc_1_psp_sva = conv_s2u_2_3(conv_s2s_1_2(~ (if_acc_7_psp[2])) + conv_u2s_1_2(~
      (if_acc_7_psp[1]))) + ({(if_acc_7_psp[2]) , (if_acc_7_psp[0]) , (if_acc_5_sdt[0])});
  assign if_acc_1_psp_sva = nl_if_acc_1_psp_sva[2:0];
  assign nl_if_acc_7_psp = (if_acc_5_sdt[3:1]) + 3'b101;
  assign if_acc_7_psp = nl_if_acc_7_psp[2:0];
  assign nl_if_acc_5_sdt = conv_u2u_3_4(conv_u2u_2_3(vga_xy[3:2]) + conv_u2u_2_3(~
      (vga_xy[5:4]))) + conv_u2u_3_4(conv_u2u_2_3(vga_xy[7:6]) + conv_u2u_2_3(~ (vga_xy[9:8])));
  assign if_acc_5_sdt = nl_if_acc_5_sdt[3:0];
  assign nl_acc_2_itm = ({1'b1 , (~ acc_3_1_sva_dfm_2_mx0)}) + 5'b111;
  assign acc_2_itm = nl_acc_2_itm[4:0];
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      acc_3_1_sva <= 4'b0;
      reg_vout_rsc_mgc_out_stdreg_d_tmp <= 8'b0;
      reg_vout_rsc_mgc_out_stdreg_d_tmp_1 <= 8'b0;
      reg_vout_rsc_mgc_out_stdreg_d_tmp_2 <= 8'b0;
    end
    else begin
      if ( en ) begin
        acc_3_1_sva <= acc_3_1_sva_dfm_2_mx0;
        reg_vout_rsc_mgc_out_stdreg_d_tmp <= (vin[29:22]) & (signext_8_1(acc_2_itm[4]));
        reg_vout_rsc_mgc_out_stdreg_d_tmp_1 <= (vin[19:12]) & (signext_8_1(acc_2_itm[4]));
        reg_vout_rsc_mgc_out_stdreg_d_tmp_2 <= (vin[9:2]) & (signext_8_1(acc_2_itm[4]));
      end
    end
  end

  function [3:0] signext_4_1;
    input [0:0] vector;
  begin
    signext_4_1= {{3{vector[0]}}, vector};
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


  function [0:0] readslicef_5_1_4;
    input [4:0] vector;
    reg [4:0] tmp;
  begin
    tmp = vector >> 4;
    readslicef_5_1_4 = tmp[0:0];
  end
  endfunction


  function [0:0] readslicef_7_1_6;
    input [6:0] vector;
    reg [6:0] tmp;
  begin
    tmp = vector >> 6;
    readslicef_7_1_6 = tmp[0:0];
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


  function [0:0] readslicef_9_1_8;
    input [8:0] vector;
    reg [8:0] tmp;
  begin
    tmp = vector >> 8;
    readslicef_9_1_8 = tmp[0:0];
  end
  endfunction


  function [7:0] signext_8_1;
    input [0:0] vector;
  begin
    signext_8_1= {{7{vector[0]}}, vector};
  end
  endfunction


  function  [4:0] conv_u2u_4_5 ;
    input [3:0]  vector ;
  begin
    conv_u2u_4_5 = {1'b0, vector};
  end
  endfunction


  function  [7:0] conv_u2u_7_8 ;
    input [6:0]  vector ;
  begin
    conv_u2u_7_8 = {1'b0, vector};
  end
  endfunction


  function signed [7:0] conv_u2s_7_8 ;
    input [6:0]  vector ;
  begin
    conv_u2s_7_8 = {1'b0, vector};
  end
  endfunction


  function signed [8:0] conv_u2s_8_9 ;
    input [7:0]  vector ;
  begin
    conv_u2s_8_9 = {1'b0, vector};
  end
  endfunction


  function  [2:0] conv_u2u_1_3 ;
    input [0:0]  vector ;
  begin
    conv_u2u_1_3 = {{2{1'b0}}, vector};
  end
  endfunction


  function  [2:0] conv_u2u_2_3 ;
    input [1:0]  vector ;
  begin
    conv_u2u_2_3 = {1'b0, vector};
  end
  endfunction


  function  [2:0] conv_s2u_2_3 ;
    input signed [1:0]  vector ;
  begin
    conv_s2u_2_3 = {vector[1], vector};
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


  function  [3:0] conv_u2u_3_4 ;
    input [2:0]  vector ;
  begin
    conv_u2u_3_4 = {1'b0, vector};
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


