// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Wed Jun 16 14:26:25 2021
// Host        : Laptop-de-Deniz running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/deniz/Desktop/Genitek_stage_tfe/TFE/VHDL/version_stable/ICTBRD_last_version/project_3.srcs/sources_1/bd/top_bd/ip/top_bd_leds_display_0_0/top_bd_leds_display_0_0_sim_netlist.v
// Design      : top_bd_leds_display_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "top_bd_leds_display_0_0,leds_display,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "leds_display,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module top_bd_leds_display_0_0
   (rstn,
    clk,
    test_done,
    test_results,
    clk_slow,
    io_exp_0,
    io_exp_1,
    board_started,
    sw_not_programmed,
    shut_down);
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rstn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rstn;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rstn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input clk;
  input [24:0]test_done;
  input [24:0]test_results;
  input clk_slow;
  output [15:0]io_exp_0;
  output [15:0]io_exp_1;
  input board_started;
  input sw_not_programmed;
  input shut_down;

  wire \<const0> ;
  wire board_started;
  wire clk;
  wire clk_slow;
  wire [15:0]io_exp_0;
  wire [15:0]\^io_exp_1 ;
  wire rstn;
  wire shut_down;
  wire sw_not_programmed;
  wire [24:0]test_done;
  wire [24:0]test_results;

  assign io_exp_1[15:14] = \^io_exp_1 [15:14];
  assign io_exp_1[13] = \<const0> ;
  assign io_exp_1[12] = \<const0> ;
  assign io_exp_1[11] = \<const0> ;
  assign io_exp_1[10] = \<const0> ;
  assign io_exp_1[9] = \<const0> ;
  assign io_exp_1[8] = \<const0> ;
  assign io_exp_1[7:6] = \^io_exp_1 [7:6];
  assign io_exp_1[5] = \<const0> ;
  assign io_exp_1[4:0] = \^io_exp_1 [4:0];
  GND GND
       (.G(\<const0> ));
  top_bd_leds_display_0_0_leds_display U0
       (.board_started(board_started),
        .clk(clk),
        .clk_slow(clk_slow),
        .io_exp_0(io_exp_0),
        .io_exp_1({\^io_exp_1 [15:14],\^io_exp_1 [7:6],\^io_exp_1 [4:0]}),
        .rstn(rstn),
        .shut_down(shut_down),
        .sw_not_programmed(sw_not_programmed),
        .test_done({test_done[24:11],test_done[9:0]}),
        .test_results(test_results));
endmodule

(* ORIG_REF_NAME = "leds_display" *) 
module top_bd_leds_display_0_0_leds_display
   (io_exp_0,
    io_exp_1,
    test_results,
    clk,
    test_done,
    clk_slow,
    board_started,
    rstn,
    sw_not_programmed,
    shut_down);
  output [15:0]io_exp_0;
  output [8:0]io_exp_1;
  input [24:0]test_results;
  input clk;
  input [23:0]test_done;
  input clk_slow;
  input board_started;
  input rstn;
  input sw_not_programmed;
  input shut_down;

  wire board_started;
  wire clk;
  wire clk_slow;
  wire [15:0]io_exp_0;
  wire \io_exp_0[15]_i_1_n_0 ;
  wire \io_exp_0[7]_i_1_n_0 ;
  wire \io_exp_0[7]_i_2_n_0 ;
  wire [8:0]io_exp_1;
  wire p_10_in;
  wire p_11_in;
  wire p_13_in;
  wire p_14_in;
  wire p_16_in;
  wire p_17_in;
  wire p_19_in;
  wire p_1_in0;
  wire p_20_in;
  wire p_22_in;
  wire p_23_in;
  wire p_25_in;
  wire p_26_in;
  wire p_28_in;
  wire p_29_in;
  wire p_2_in;
  wire p_2_in0;
  wire p_31_in;
  wire p_32_in;
  wire p_34_in;
  wire p_35_in;
  wire p_37_in;
  wire p_38_in;
  wire p_40_in;
  wire p_41_in;
  wire p_43_in;
  wire p_44_in;
  wire p_46_in;
  wire p_47_in;
  wire p_49_in;
  wire p_4_in;
  wire [10:10]p_51_in;
  wire p_5_in;
  wire p_7_in;
  wire p_8_in;
  wire \reg_leds[0]_i_1_n_0 ;
  wire \reg_leds[11]_i_1_n_0 ;
  wire \reg_leds[12]_i_1_n_0 ;
  wire \reg_leds[13]_i_1_n_0 ;
  wire \reg_leds[14]_i_1_n_0 ;
  wire \reg_leds[15]_i_1_n_0 ;
  wire \reg_leds[16]_i_1_n_0 ;
  wire \reg_leds[17]_i_1_n_0 ;
  wire \reg_leds[18]_i_1_n_0 ;
  wire \reg_leds[19]_i_1_n_0 ;
  wire \reg_leds[1]_i_1_n_0 ;
  wire \reg_leds[20]_i_1_n_0 ;
  wire \reg_leds[21]_i_1_n_0 ;
  wire \reg_leds[22]_i_1_n_0 ;
  wire \reg_leds[23]_i_1_n_0 ;
  wire \reg_leds[24]_i_2_n_0 ;
  wire \reg_leds[2]_i_1_n_0 ;
  wire \reg_leds[3]_i_1_n_0 ;
  wire \reg_leds[4]_i_1_n_0 ;
  wire \reg_leds[5]_i_1_n_0 ;
  wire \reg_leds[6]_i_1_n_0 ;
  wire \reg_leds[7]_i_1_n_0 ;
  wire \reg_leds[8]_i_1_n_0 ;
  wire \reg_leds[9]_i_1_n_0 ;
  wire [6:6]reg_leds__0;
  wire reg_leds_n_0;
  wire \reg_leds_reg_n_0_[0] ;
  wire \reg_leds_reg_n_0_[10] ;
  wire \reg_leds_reg_n_0_[11] ;
  wire \reg_leds_reg_n_0_[12] ;
  wire \reg_leds_reg_n_0_[13] ;
  wire \reg_leds_reg_n_0_[14] ;
  wire \reg_leds_reg_n_0_[15] ;
  wire \reg_leds_reg_n_0_[17] ;
  wire \reg_leds_reg_n_0_[18] ;
  wire \reg_leds_reg_n_0_[19] ;
  wire \reg_leds_reg_n_0_[20] ;
  wire \reg_leds_reg_n_0_[21] ;
  wire \reg_leds_reg_n_0_[22] ;
  wire \reg_leds_reg_n_0_[23] ;
  wire \reg_leds_reg_n_0_[24] ;
  wire \reg_leds_reg_n_0_[2] ;
  wire \reg_leds_reg_n_0_[3] ;
  wire \reg_leds_reg_n_0_[4] ;
  wire \reg_leds_reg_n_0_[5] ;
  wire \reg_leds_reg_n_0_[6] ;
  wire \reg_leds_reg_n_0_[7] ;
  wire \reg_leds_reg_n_0_[8] ;
  wire \reg_leds_reg_n_0_[9] ;
  wire \reg_test_done_reg_n_0_[0] ;
  wire \reg_test_done_reg_n_0_[17] ;
  wire \reg_test_done_reg_n_0_[18] ;
  wire \reg_test_done_reg_n_0_[19] ;
  wire \reg_test_done_reg_n_0_[20] ;
  wire \reg_test_done_reg_n_0_[21] ;
  wire \reg_test_done_reg_n_0_[22] ;
  wire \reg_test_done_reg_n_0_[24] ;
  wire \reg_test_results[24]_i_1_n_0 ;
  wire \reg_test_results_reg_n_0_[0] ;
  wire \reg_test_results_reg_n_0_[17] ;
  wire \reg_test_results_reg_n_0_[18] ;
  wire \reg_test_results_reg_n_0_[19] ;
  wire \reg_test_results_reg_n_0_[20] ;
  wire \reg_test_results_reg_n_0_[21] ;
  wire \reg_test_results_reg_n_0_[22] ;
  wire \reg_test_results_reg_n_0_[24] ;
  wire rstn;
  wire shut_down;
  wire sw_not_programmed;
  wire [23:0]test_done;
  wire [24:0]test_results;

  LUT2 #(
    .INIT(4'hB)) 
    \io_exp_0[15]_i_1 
       (.I0(shut_down),
        .I1(rstn),
        .O(\io_exp_0[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \io_exp_0[7]_i_1 
       (.I0(rstn),
        .I1(shut_down),
        .O(\io_exp_0[7]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \io_exp_0[7]_i_2 
       (.I0(shut_down),
        .O(\io_exp_0[7]_i_2_n_0 ));
  FDRE \io_exp_0_reg[0] 
       (.C(clk_slow),
        .CE(board_started),
        .D(\reg_leds_reg_n_0_[8] ),
        .Q(io_exp_0[0]),
        .R(\io_exp_0[15]_i_1_n_0 ));
  FDRE \io_exp_0_reg[10] 
       (.C(clk_slow),
        .CE(board_started),
        .D(\reg_leds_reg_n_0_[12] ),
        .Q(io_exp_0[10]),
        .R(\io_exp_0[15]_i_1_n_0 ));
  FDRE \io_exp_0_reg[11] 
       (.C(clk_slow),
        .CE(board_started),
        .D(\reg_leds_reg_n_0_[13] ),
        .Q(io_exp_0[11]),
        .R(\io_exp_0[15]_i_1_n_0 ));
  FDRE \io_exp_0_reg[12] 
       (.C(clk_slow),
        .CE(board_started),
        .D(\reg_leds_reg_n_0_[15] ),
        .Q(io_exp_0[12]),
        .R(\io_exp_0[15]_i_1_n_0 ));
  FDRE \io_exp_0_reg[13] 
       (.C(clk_slow),
        .CE(board_started),
        .D(\reg_leds_reg_n_0_[4] ),
        .Q(io_exp_0[13]),
        .R(\io_exp_0[15]_i_1_n_0 ));
  FDRE \io_exp_0_reg[14] 
       (.C(clk_slow),
        .CE(board_started),
        .D(\reg_leds_reg_n_0_[14] ),
        .Q(io_exp_0[14]),
        .R(\io_exp_0[15]_i_1_n_0 ));
  FDRE \io_exp_0_reg[15] 
       (.C(clk_slow),
        .CE(board_started),
        .D(\reg_leds_reg_n_0_[6] ),
        .Q(io_exp_0[15]),
        .R(\io_exp_0[15]_i_1_n_0 ));
  FDRE \io_exp_0_reg[1] 
       (.C(clk_slow),
        .CE(board_started),
        .D(\reg_leds_reg_n_0_[11] ),
        .Q(io_exp_0[1]),
        .R(\io_exp_0[15]_i_1_n_0 ));
  FDRE \io_exp_0_reg[2] 
       (.C(clk_slow),
        .CE(board_started),
        .D(\reg_leds_reg_n_0_[7] ),
        .Q(io_exp_0[2]),
        .R(\io_exp_0[15]_i_1_n_0 ));
  FDRE \io_exp_0_reg[3] 
       (.C(clk_slow),
        .CE(board_started),
        .D(\reg_leds_reg_n_0_[2] ),
        .Q(io_exp_0[3]),
        .R(\io_exp_0[15]_i_1_n_0 ));
  FDRE \io_exp_0_reg[4] 
       (.C(clk_slow),
        .CE(board_started),
        .D(\reg_leds_reg_n_0_[5] ),
        .Q(io_exp_0[4]),
        .R(\io_exp_0[15]_i_1_n_0 ));
  FDRE \io_exp_0_reg[5] 
       (.C(clk_slow),
        .CE(board_started),
        .D(\reg_leds_reg_n_0_[0] ),
        .Q(io_exp_0[5]),
        .R(\io_exp_0[15]_i_1_n_0 ));
  FDRE \io_exp_0_reg[6] 
       (.C(clk_slow),
        .CE(\io_exp_0[7]_i_2_n_0 ),
        .D(\reg_leds_reg_n_0_[10] ),
        .Q(io_exp_0[6]),
        .R(\io_exp_0[7]_i_1_n_0 ));
  FDRE \io_exp_0_reg[7] 
       (.C(clk_slow),
        .CE(\io_exp_0[7]_i_2_n_0 ),
        .D(\reg_leds_reg_n_0_[9] ),
        .Q(io_exp_0[7]),
        .R(\io_exp_0[7]_i_1_n_0 ));
  FDRE \io_exp_0_reg[8] 
       (.C(clk_slow),
        .CE(board_started),
        .D(\reg_leds_reg_n_0_[3] ),
        .Q(io_exp_0[8]),
        .R(\io_exp_0[15]_i_1_n_0 ));
  FDRE \io_exp_0_reg[9] 
       (.C(clk_slow),
        .CE(board_started),
        .D(p_1_in0),
        .Q(io_exp_0[9]),
        .R(\io_exp_0[15]_i_1_n_0 ));
  FDRE \io_exp_1_reg[0] 
       (.C(clk_slow),
        .CE(board_started),
        .D(\reg_leds_reg_n_0_[19] ),
        .Q(io_exp_1[0]),
        .R(\io_exp_0[15]_i_1_n_0 ));
  FDRE \io_exp_1_reg[14] 
       (.C(clk_slow),
        .CE(board_started),
        .D(\reg_leds_reg_n_0_[21] ),
        .Q(io_exp_1[7]),
        .R(\io_exp_0[15]_i_1_n_0 ));
  FDRE \io_exp_1_reg[15] 
       (.C(clk_slow),
        .CE(board_started),
        .D(\reg_leds_reg_n_0_[17] ),
        .Q(io_exp_1[8]),
        .R(\io_exp_0[15]_i_1_n_0 ));
  FDRE \io_exp_1_reg[1] 
       (.C(clk_slow),
        .CE(board_started),
        .D(\reg_leds_reg_n_0_[18] ),
        .Q(io_exp_1[1]),
        .R(\io_exp_0[15]_i_1_n_0 ));
  FDRE \io_exp_1_reg[2] 
       (.C(clk_slow),
        .CE(board_started),
        .D(\reg_leds_reg_n_0_[22] ),
        .Q(io_exp_1[2]),
        .R(\io_exp_0[15]_i_1_n_0 ));
  FDRE \io_exp_1_reg[3] 
       (.C(clk_slow),
        .CE(board_started),
        .D(\reg_leds_reg_n_0_[20] ),
        .Q(io_exp_1[3]),
        .R(\io_exp_0[15]_i_1_n_0 ));
  FDRE \io_exp_1_reg[4] 
       (.C(clk_slow),
        .CE(board_started),
        .D(\reg_leds_reg_n_0_[23] ),
        .Q(io_exp_1[4]),
        .R(\io_exp_0[15]_i_1_n_0 ));
  FDRE \io_exp_1_reg[6] 
       (.C(clk_slow),
        .CE(board_started),
        .D(p_2_in0),
        .Q(io_exp_1[5]),
        .R(\io_exp_0[15]_i_1_n_0 ));
  FDRE \io_exp_1_reg[7] 
       (.C(clk_slow),
        .CE(\io_exp_0[7]_i_2_n_0 ),
        .D(\reg_leds_reg_n_0_[24] ),
        .Q(io_exp_1[6]),
        .R(\io_exp_0[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00D5)) 
    reg_leds
       (.I0(rstn),
        .I1(sw_not_programmed),
        .I2(board_started),
        .I3(shut_down),
        .O(reg_leds_n_0));
  LUT3 #(
    .INIT(8'h8B)) 
    \reg_leds[0]_i_1 
       (.I0(\reg_test_results_reg_n_0_[0] ),
        .I1(\reg_test_done_reg_n_0_[0] ),
        .I2(\reg_leds_reg_n_0_[0] ),
        .O(\reg_leds[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8B)) 
    \reg_leds[11]_i_1 
       (.I0(p_31_in),
        .I1(p_29_in),
        .I2(\reg_leds_reg_n_0_[11] ),
        .O(\reg_leds[11]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8B)) 
    \reg_leds[12]_i_1 
       (.I0(p_34_in),
        .I1(p_32_in),
        .I2(\reg_leds_reg_n_0_[12] ),
        .O(\reg_leds[12]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8B)) 
    \reg_leds[13]_i_1 
       (.I0(p_37_in),
        .I1(p_35_in),
        .I2(\reg_leds_reg_n_0_[13] ),
        .O(\reg_leds[13]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8B)) 
    \reg_leds[14]_i_1 
       (.I0(p_40_in),
        .I1(p_38_in),
        .I2(\reg_leds_reg_n_0_[14] ),
        .O(\reg_leds[14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8B)) 
    \reg_leds[15]_i_1 
       (.I0(p_43_in),
        .I1(p_41_in),
        .I2(\reg_leds_reg_n_0_[15] ),
        .O(\reg_leds[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8B)) 
    \reg_leds[16]_i_1 
       (.I0(p_46_in),
        .I1(p_44_in),
        .I2(p_2_in0),
        .O(\reg_leds[16]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8B)) 
    \reg_leds[17]_i_1 
       (.I0(\reg_test_results_reg_n_0_[17] ),
        .I1(\reg_test_done_reg_n_0_[17] ),
        .I2(\reg_leds_reg_n_0_[17] ),
        .O(\reg_leds[17]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8B)) 
    \reg_leds[18]_i_1 
       (.I0(\reg_test_results_reg_n_0_[18] ),
        .I1(\reg_test_done_reg_n_0_[18] ),
        .I2(\reg_leds_reg_n_0_[18] ),
        .O(\reg_leds[18]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8B)) 
    \reg_leds[19]_i_1 
       (.I0(\reg_test_results_reg_n_0_[19] ),
        .I1(\reg_test_done_reg_n_0_[19] ),
        .I2(\reg_leds_reg_n_0_[19] ),
        .O(\reg_leds[19]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8B)) 
    \reg_leds[1]_i_1 
       (.I0(p_4_in),
        .I1(p_2_in),
        .I2(p_1_in0),
        .O(\reg_leds[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8B)) 
    \reg_leds[20]_i_1 
       (.I0(\reg_test_results_reg_n_0_[20] ),
        .I1(\reg_test_done_reg_n_0_[20] ),
        .I2(\reg_leds_reg_n_0_[20] ),
        .O(\reg_leds[20]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8B)) 
    \reg_leds[21]_i_1 
       (.I0(\reg_test_results_reg_n_0_[21] ),
        .I1(\reg_test_done_reg_n_0_[21] ),
        .I2(\reg_leds_reg_n_0_[21] ),
        .O(\reg_leds[21]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8B)) 
    \reg_leds[22]_i_1 
       (.I0(\reg_test_results_reg_n_0_[22] ),
        .I1(\reg_test_done_reg_n_0_[22] ),
        .I2(\reg_leds_reg_n_0_[22] ),
        .O(\reg_leds[22]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8B)) 
    \reg_leds[23]_i_1 
       (.I0(p_49_in),
        .I1(p_47_in),
        .I2(\reg_leds_reg_n_0_[23] ),
        .O(\reg_leds[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \reg_leds[24]_i_1 
       (.I0(board_started),
        .I1(shut_down),
        .O(reg_leds__0));
  LUT3 #(
    .INIT(8'h8B)) 
    \reg_leds[24]_i_2 
       (.I0(\reg_test_results_reg_n_0_[24] ),
        .I1(\reg_test_done_reg_n_0_[24] ),
        .I2(\reg_leds_reg_n_0_[24] ),
        .O(\reg_leds[24]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h8B)) 
    \reg_leds[2]_i_1 
       (.I0(p_7_in),
        .I1(p_5_in),
        .I2(\reg_leds_reg_n_0_[2] ),
        .O(\reg_leds[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8B)) 
    \reg_leds[3]_i_1 
       (.I0(p_10_in),
        .I1(p_8_in),
        .I2(\reg_leds_reg_n_0_[3] ),
        .O(\reg_leds[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8B)) 
    \reg_leds[4]_i_1 
       (.I0(p_13_in),
        .I1(p_11_in),
        .I2(\reg_leds_reg_n_0_[4] ),
        .O(\reg_leds[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8B)) 
    \reg_leds[5]_i_1 
       (.I0(p_16_in),
        .I1(p_14_in),
        .I2(\reg_leds_reg_n_0_[5] ),
        .O(\reg_leds[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8B)) 
    \reg_leds[6]_i_1 
       (.I0(p_19_in),
        .I1(p_17_in),
        .I2(\reg_leds_reg_n_0_[6] ),
        .O(\reg_leds[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8B)) 
    \reg_leds[7]_i_1 
       (.I0(p_22_in),
        .I1(p_20_in),
        .I2(\reg_leds_reg_n_0_[7] ),
        .O(\reg_leds[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8B)) 
    \reg_leds[8]_i_1 
       (.I0(p_25_in),
        .I1(p_23_in),
        .I2(\reg_leds_reg_n_0_[8] ),
        .O(\reg_leds[8]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8B)) 
    \reg_leds[9]_i_1 
       (.I0(p_28_in),
        .I1(p_26_in),
        .I2(\reg_leds_reg_n_0_[9] ),
        .O(\reg_leds[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_leds_reg[0] 
       (.C(clk_slow),
        .CE(reg_leds__0),
        .D(\reg_leds[0]_i_1_n_0 ),
        .Q(\reg_leds_reg_n_0_[0] ),
        .R(\io_exp_0[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_leds_reg[10] 
       (.C(clk_slow),
        .CE(\io_exp_0[7]_i_2_n_0 ),
        .D(p_51_in),
        .Q(\reg_leds_reg_n_0_[10] ),
        .R(\io_exp_0[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_leds_reg[11] 
       (.C(clk_slow),
        .CE(reg_leds__0),
        .D(\reg_leds[11]_i_1_n_0 ),
        .Q(\reg_leds_reg_n_0_[11] ),
        .R(\io_exp_0[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_leds_reg[12] 
       (.C(clk_slow),
        .CE(reg_leds__0),
        .D(\reg_leds[12]_i_1_n_0 ),
        .Q(\reg_leds_reg_n_0_[12] ),
        .R(\io_exp_0[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_leds_reg[13] 
       (.C(clk_slow),
        .CE(reg_leds__0),
        .D(\reg_leds[13]_i_1_n_0 ),
        .Q(\reg_leds_reg_n_0_[13] ),
        .R(\io_exp_0[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_leds_reg[14] 
       (.C(clk_slow),
        .CE(reg_leds__0),
        .D(\reg_leds[14]_i_1_n_0 ),
        .Q(\reg_leds_reg_n_0_[14] ),
        .R(\io_exp_0[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_leds_reg[15] 
       (.C(clk_slow),
        .CE(reg_leds__0),
        .D(\reg_leds[15]_i_1_n_0 ),
        .Q(\reg_leds_reg_n_0_[15] ),
        .R(\io_exp_0[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_leds_reg[16] 
       (.C(clk_slow),
        .CE(reg_leds__0),
        .D(\reg_leds[16]_i_1_n_0 ),
        .Q(p_2_in0),
        .R(\io_exp_0[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_leds_reg[17] 
       (.C(clk_slow),
        .CE(reg_leds__0),
        .D(\reg_leds[17]_i_1_n_0 ),
        .Q(\reg_leds_reg_n_0_[17] ),
        .R(reg_leds_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_leds_reg[18] 
       (.C(clk_slow),
        .CE(reg_leds__0),
        .D(\reg_leds[18]_i_1_n_0 ),
        .Q(\reg_leds_reg_n_0_[18] ),
        .R(reg_leds_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_leds_reg[19] 
       (.C(clk_slow),
        .CE(reg_leds__0),
        .D(\reg_leds[19]_i_1_n_0 ),
        .Q(\reg_leds_reg_n_0_[19] ),
        .R(reg_leds_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_leds_reg[1] 
       (.C(clk_slow),
        .CE(reg_leds__0),
        .D(\reg_leds[1]_i_1_n_0 ),
        .Q(p_1_in0),
        .R(\io_exp_0[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_leds_reg[20] 
       (.C(clk_slow),
        .CE(reg_leds__0),
        .D(\reg_leds[20]_i_1_n_0 ),
        .Q(\reg_leds_reg_n_0_[20] ),
        .R(reg_leds_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_leds_reg[21] 
       (.C(clk_slow),
        .CE(reg_leds__0),
        .D(\reg_leds[21]_i_1_n_0 ),
        .Q(\reg_leds_reg_n_0_[21] ),
        .R(reg_leds_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_leds_reg[22] 
       (.C(clk_slow),
        .CE(reg_leds__0),
        .D(\reg_leds[22]_i_1_n_0 ),
        .Q(\reg_leds_reg_n_0_[22] ),
        .R(reg_leds_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_leds_reg[23] 
       (.C(clk_slow),
        .CE(reg_leds__0),
        .D(\reg_leds[23]_i_1_n_0 ),
        .Q(\reg_leds_reg_n_0_[23] ),
        .R(\io_exp_0[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_leds_reg[24] 
       (.C(clk_slow),
        .CE(reg_leds__0),
        .D(\reg_leds[24]_i_2_n_0 ),
        .Q(\reg_leds_reg_n_0_[24] ),
        .R(\io_exp_0[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_leds_reg[2] 
       (.C(clk_slow),
        .CE(reg_leds__0),
        .D(\reg_leds[2]_i_1_n_0 ),
        .Q(\reg_leds_reg_n_0_[2] ),
        .R(\io_exp_0[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_leds_reg[3] 
       (.C(clk_slow),
        .CE(reg_leds__0),
        .D(\reg_leds[3]_i_1_n_0 ),
        .Q(\reg_leds_reg_n_0_[3] ),
        .R(\io_exp_0[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_leds_reg[4] 
       (.C(clk_slow),
        .CE(reg_leds__0),
        .D(\reg_leds[4]_i_1_n_0 ),
        .Q(\reg_leds_reg_n_0_[4] ),
        .R(\io_exp_0[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_leds_reg[5] 
       (.C(clk_slow),
        .CE(reg_leds__0),
        .D(\reg_leds[5]_i_1_n_0 ),
        .Q(\reg_leds_reg_n_0_[5] ),
        .R(\io_exp_0[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_leds_reg[6] 
       (.C(clk_slow),
        .CE(reg_leds__0),
        .D(\reg_leds[6]_i_1_n_0 ),
        .Q(\reg_leds_reg_n_0_[6] ),
        .R(\io_exp_0[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_leds_reg[7] 
       (.C(clk_slow),
        .CE(reg_leds__0),
        .D(\reg_leds[7]_i_1_n_0 ),
        .Q(\reg_leds_reg_n_0_[7] ),
        .R(\io_exp_0[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_leds_reg[8] 
       (.C(clk_slow),
        .CE(reg_leds__0),
        .D(\reg_leds[8]_i_1_n_0 ),
        .Q(\reg_leds_reg_n_0_[8] ),
        .R(\io_exp_0[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_leds_reg[9] 
       (.C(clk_slow),
        .CE(reg_leds__0),
        .D(\reg_leds[9]_i_1_n_0 ),
        .Q(\reg_leds_reg_n_0_[9] ),
        .R(\io_exp_0[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_test_done_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(test_done[0]),
        .Q(\reg_test_done_reg_n_0_[0] ),
        .R(\reg_test_results[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_test_done_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(test_done[10]),
        .Q(p_29_in),
        .R(\reg_test_results[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_test_done_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(test_done[11]),
        .Q(p_32_in),
        .R(\reg_test_results[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_test_done_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(test_done[12]),
        .Q(p_35_in),
        .R(\reg_test_results[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_test_done_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(test_done[13]),
        .Q(p_38_in),
        .R(\reg_test_results[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_test_done_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(test_done[14]),
        .Q(p_41_in),
        .R(\reg_test_results[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_test_done_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(test_done[15]),
        .Q(p_44_in),
        .R(\reg_test_results[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_test_done_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(test_done[16]),
        .Q(\reg_test_done_reg_n_0_[17] ),
        .R(\reg_test_results[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_test_done_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(test_done[17]),
        .Q(\reg_test_done_reg_n_0_[18] ),
        .R(\reg_test_results[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_test_done_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(test_done[18]),
        .Q(\reg_test_done_reg_n_0_[19] ),
        .R(\reg_test_results[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_test_done_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(test_done[1]),
        .Q(p_2_in),
        .R(\reg_test_results[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_test_done_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(test_done[19]),
        .Q(\reg_test_done_reg_n_0_[20] ),
        .R(\reg_test_results[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_test_done_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(test_done[20]),
        .Q(\reg_test_done_reg_n_0_[21] ),
        .R(\reg_test_results[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_test_done_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(test_done[21]),
        .Q(\reg_test_done_reg_n_0_[22] ),
        .R(\reg_test_results[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_test_done_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(test_done[22]),
        .Q(p_47_in),
        .R(\reg_test_results[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_test_done_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(test_done[23]),
        .Q(\reg_test_done_reg_n_0_[24] ),
        .R(\reg_test_results[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_test_done_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(test_done[2]),
        .Q(p_5_in),
        .R(\reg_test_results[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_test_done_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(test_done[3]),
        .Q(p_8_in),
        .R(\reg_test_results[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_test_done_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(test_done[4]),
        .Q(p_11_in),
        .R(\reg_test_results[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_test_done_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(test_done[5]),
        .Q(p_14_in),
        .R(\reg_test_results[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_test_done_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(test_done[6]),
        .Q(p_17_in),
        .R(\reg_test_results[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_test_done_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(test_done[7]),
        .Q(p_20_in),
        .R(\reg_test_results[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_test_done_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(test_done[8]),
        .Q(p_23_in),
        .R(\reg_test_results[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_test_done_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(test_done[9]),
        .Q(p_26_in),
        .R(\reg_test_results[24]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \reg_test_results[24]_i_1 
       (.I0(rstn),
        .O(\reg_test_results[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_test_results_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(test_results[0]),
        .Q(\reg_test_results_reg_n_0_[0] ),
        .R(\reg_test_results[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_test_results_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(test_results[10]),
        .Q(p_51_in),
        .R(\reg_test_results[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_test_results_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(test_results[11]),
        .Q(p_31_in),
        .R(\reg_test_results[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_test_results_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(test_results[12]),
        .Q(p_34_in),
        .R(\reg_test_results[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_test_results_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(test_results[13]),
        .Q(p_37_in),
        .R(\reg_test_results[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_test_results_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(test_results[14]),
        .Q(p_40_in),
        .R(\reg_test_results[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_test_results_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(test_results[15]),
        .Q(p_43_in),
        .R(\reg_test_results[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_test_results_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(test_results[16]),
        .Q(p_46_in),
        .R(\reg_test_results[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_test_results_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(test_results[17]),
        .Q(\reg_test_results_reg_n_0_[17] ),
        .R(\reg_test_results[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_test_results_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(test_results[18]),
        .Q(\reg_test_results_reg_n_0_[18] ),
        .R(\reg_test_results[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_test_results_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(test_results[19]),
        .Q(\reg_test_results_reg_n_0_[19] ),
        .R(\reg_test_results[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_test_results_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(test_results[1]),
        .Q(p_4_in),
        .R(\reg_test_results[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_test_results_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(test_results[20]),
        .Q(\reg_test_results_reg_n_0_[20] ),
        .R(\reg_test_results[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_test_results_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(test_results[21]),
        .Q(\reg_test_results_reg_n_0_[21] ),
        .R(\reg_test_results[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_test_results_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(test_results[22]),
        .Q(\reg_test_results_reg_n_0_[22] ),
        .R(\reg_test_results[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_test_results_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(test_results[23]),
        .Q(p_49_in),
        .R(\reg_test_results[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_test_results_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(test_results[24]),
        .Q(\reg_test_results_reg_n_0_[24] ),
        .R(\reg_test_results[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_test_results_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(test_results[2]),
        .Q(p_7_in),
        .R(\reg_test_results[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_test_results_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(test_results[3]),
        .Q(p_10_in),
        .R(\reg_test_results[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_test_results_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(test_results[4]),
        .Q(p_13_in),
        .R(\reg_test_results[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_test_results_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(test_results[5]),
        .Q(p_16_in),
        .R(\reg_test_results[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_test_results_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(test_results[6]),
        .Q(p_19_in),
        .R(\reg_test_results[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_test_results_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(test_results[7]),
        .Q(p_22_in),
        .R(\reg_test_results[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_test_results_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(test_results[8]),
        .Q(p_25_in),
        .R(\reg_test_results[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_test_results_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(test_results[9]),
        .Q(p_28_in),
        .R(\reg_test_results[24]_i_1_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
