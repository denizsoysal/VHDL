// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Wed Jun 16 11:20:02 2021
// Host        : Laptop-de-Deniz running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/deniz/Desktop/Genitek_stage_tfe/TFE/VHDL/version_stable/ICTBRD_last_version/project_3.srcs/sources_1/bd/top_bd/ip/top_bd_ctrl_io_exp_1_0/top_bd_ctrl_io_exp_1_0_sim_netlist.v
// Design      : top_bd_ctrl_io_exp_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "top_bd_ctrl_io_exp_1_0,ctrl_io_exp,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "ctrl_io_exp,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module top_bd_ctrl_io_exp_1_0
   (rstn,
    clk,
    leds_state,
    w_valid,
    w_ready,
    r_ready,
    r_valid,
    r_data,
    w_data);
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rstn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rstn;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rstn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input clk;
  input [15:0]leds_state;
  output w_valid;
  input w_ready;
  output r_ready;
  input r_valid;
  input [31:0]r_data;
  output [31:0]w_data;

  wire \<const0> ;
  wire clk;
  wire [15:0]leds_state;
  wire r_ready;
  wire rstn;
  wire [30:0]\^w_data ;
  wire w_ready;

  assign w_data[31] = \<const0> ;
  assign w_data[30] = \^w_data [30];
  assign w_data[29] = \<const0> ;
  assign w_data[28] = \<const0> ;
  assign w_data[27] = \<const0> ;
  assign w_data[26] = \^w_data [30];
  assign w_data[25] = \<const0> ;
  assign w_data[24] = \<const0> ;
  assign w_data[23] = \<const0> ;
  assign w_data[22] = \<const0> ;
  assign w_data[21] = \<const0> ;
  assign w_data[20] = \^w_data [18];
  assign w_data[19] = \<const0> ;
  assign w_data[18] = \^w_data [18];
  assign w_data[17] = \<const0> ;
  assign w_data[16] = \<const0> ;
  assign w_data[15:0] = \^w_data [15:0];
  assign w_valid = \^w_data [30];
  GND GND
       (.G(\<const0> ));
  top_bd_ctrl_io_exp_1_0_ctrl_io_exp U0
       (.clk(clk),
        .leds_state(leds_state),
        .r_ready(r_ready),
        .rstn(rstn),
        .w_data({\^w_data [30],\^w_data [18],\^w_data [15:0]}),
        .w_ready(w_ready));
endmodule

(* ORIG_REF_NAME = "ctrl_io_exp" *) 
module top_bd_ctrl_io_exp_1_0_ctrl_io_exp
   (w_data,
    r_ready,
    clk,
    leds_state,
    w_ready,
    rstn);
  output [17:0]w_data;
  output r_ready;
  input clk;
  input [15:0]leds_state;
  input w_ready;
  input rstn;

  wire \/i__n_0 ;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire clk;
  wire [15:0]in4;
  wire init_done;
  wire init_done_i_1_n_0;
  wire init_done_reg_n_0;
  wire [15:0]leds_state;
  wire leds_state_b0;
  wire r_ready;
  wire rstn;
  wire [17:0]w_data;
  wire w_data0;
  wire \w_data[0]_i_1_n_0 ;
  wire \w_data[10]_i_1_n_0 ;
  wire \w_data[11]_i_1_n_0 ;
  wire \w_data[12]_i_1_n_0 ;
  wire \w_data[13]_i_1_n_0 ;
  wire \w_data[14]_i_1_n_0 ;
  wire \w_data[15]_i_1_n_0 ;
  wire \w_data[1]_i_1_n_0 ;
  wire \w_data[2]_i_1_n_0 ;
  wire \w_data[3]_i_1_n_0 ;
  wire \w_data[4]_i_1_n_0 ;
  wire \w_data[5]_i_1_n_0 ;
  wire \w_data[6]_i_1_n_0 ;
  wire \w_data[7]_i_1_n_0 ;
  wire \w_data[8]_i_1_n_0 ;
  wire \w_data[9]_i_1_n_0 ;
  wire w_ready;
  wire w_valid_i_1_n_0;
  wire w_valid_i_2_n_0;

  LUT3 #(
    .INIT(8'hFE)) 
    \/i_ 
       (.I0(leds_state_b0),
        .I1(init_done),
        .I2(w_data0),
        .O(\/i__n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(leds_state_b0),
        .I1(init_done_reg_n_0),
        .I2(w_ready),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFAE)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(init_done),
        .I1(leds_state_b0),
        .I2(w_ready),
        .I3(w_data0),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(leds_state_b0),
        .I1(init_done_reg_n_0),
        .I2(w_ready),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "s_idle:010,s_send:100,s_init:001" *) 
  FDSE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(init_done),
        .S(w_valid_i_1_n_0));
  (* FSM_ENCODED_STATES = "s_idle:010,s_send:100,s_init:001" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(leds_state_b0),
        .R(w_valid_i_1_n_0));
  (* FSM_ENCODED_STATES = "s_idle:010,s_send:100,s_init:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(w_data0),
        .R(w_valid_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    init_done_i_1
       (.I0(init_done),
        .I1(init_done_reg_n_0),
        .O(init_done_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    init_done_reg
       (.C(clk),
        .CE(1'b1),
        .D(init_done_i_1_n_0),
        .Q(init_done_reg_n_0),
        .R(w_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \leds_state_b0_reg[0] 
       (.C(clk),
        .CE(leds_state_b0),
        .D(leds_state[0]),
        .Q(in4[0]),
        .R(w_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \leds_state_b0_reg[10] 
       (.C(clk),
        .CE(leds_state_b0),
        .D(leds_state[10]),
        .Q(in4[10]),
        .R(w_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \leds_state_b0_reg[11] 
       (.C(clk),
        .CE(leds_state_b0),
        .D(leds_state[11]),
        .Q(in4[11]),
        .R(w_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \leds_state_b0_reg[12] 
       (.C(clk),
        .CE(leds_state_b0),
        .D(leds_state[12]),
        .Q(in4[12]),
        .R(w_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \leds_state_b0_reg[13] 
       (.C(clk),
        .CE(leds_state_b0),
        .D(leds_state[13]),
        .Q(in4[13]),
        .R(w_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \leds_state_b0_reg[14] 
       (.C(clk),
        .CE(leds_state_b0),
        .D(leds_state[14]),
        .Q(in4[14]),
        .R(w_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \leds_state_b0_reg[15] 
       (.C(clk),
        .CE(leds_state_b0),
        .D(leds_state[15]),
        .Q(in4[15]),
        .R(w_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \leds_state_b0_reg[1] 
       (.C(clk),
        .CE(leds_state_b0),
        .D(leds_state[1]),
        .Q(in4[1]),
        .R(w_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \leds_state_b0_reg[2] 
       (.C(clk),
        .CE(leds_state_b0),
        .D(leds_state[2]),
        .Q(in4[2]),
        .R(w_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \leds_state_b0_reg[3] 
       (.C(clk),
        .CE(leds_state_b0),
        .D(leds_state[3]),
        .Q(in4[3]),
        .R(w_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \leds_state_b0_reg[4] 
       (.C(clk),
        .CE(leds_state_b0),
        .D(leds_state[4]),
        .Q(in4[4]),
        .R(w_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \leds_state_b0_reg[5] 
       (.C(clk),
        .CE(leds_state_b0),
        .D(leds_state[5]),
        .Q(in4[5]),
        .R(w_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \leds_state_b0_reg[6] 
       (.C(clk),
        .CE(leds_state_b0),
        .D(leds_state[6]),
        .Q(in4[6]),
        .R(w_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \leds_state_b0_reg[7] 
       (.C(clk),
        .CE(leds_state_b0),
        .D(leds_state[7]),
        .Q(in4[7]),
        .R(w_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \leds_state_b0_reg[8] 
       (.C(clk),
        .CE(leds_state_b0),
        .D(leds_state[8]),
        .Q(in4[8]),
        .R(w_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \leds_state_b0_reg[9] 
       (.C(clk),
        .CE(leds_state_b0),
        .D(leds_state[9]),
        .Q(in4[9]),
        .R(w_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    r_ready_reg
       (.C(clk),
        .CE(\/i__n_0 ),
        .D(1'b1),
        .Q(r_ready),
        .R(w_valid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \w_data[0]_i_1 
       (.I0(w_data0),
        .I1(in4[0]),
        .O(\w_data[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \w_data[10]_i_1 
       (.I0(w_data0),
        .I1(in4[10]),
        .O(\w_data[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \w_data[11]_i_1 
       (.I0(w_data0),
        .I1(in4[11]),
        .O(\w_data[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \w_data[12]_i_1 
       (.I0(w_data0),
        .I1(in4[12]),
        .O(\w_data[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \w_data[13]_i_1 
       (.I0(w_data0),
        .I1(in4[13]),
        .O(\w_data[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \w_data[14]_i_1 
       (.I0(w_data0),
        .I1(in4[14]),
        .O(\w_data[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \w_data[15]_i_1 
       (.I0(w_data0),
        .I1(in4[15]),
        .O(\w_data[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \w_data[1]_i_1 
       (.I0(w_data0),
        .I1(in4[1]),
        .O(\w_data[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \w_data[2]_i_1 
       (.I0(w_data0),
        .I1(in4[2]),
        .O(\w_data[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \w_data[3]_i_1 
       (.I0(w_data0),
        .I1(in4[3]),
        .O(\w_data[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \w_data[4]_i_1 
       (.I0(w_data0),
        .I1(in4[4]),
        .O(\w_data[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \w_data[5]_i_1 
       (.I0(w_data0),
        .I1(in4[5]),
        .O(\w_data[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \w_data[6]_i_1 
       (.I0(w_data0),
        .I1(in4[6]),
        .O(\w_data[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \w_data[7]_i_1 
       (.I0(w_data0),
        .I1(in4[7]),
        .O(\w_data[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \w_data[8]_i_1 
       (.I0(w_data0),
        .I1(in4[8]),
        .O(\w_data[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \w_data[9]_i_1 
       (.I0(w_data0),
        .I1(in4[9]),
        .O(\w_data[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \w_data_reg[0] 
       (.C(clk),
        .CE(\/i__n_0 ),
        .D(\w_data[0]_i_1_n_0 ),
        .Q(w_data[0]),
        .R(w_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \w_data_reg[10] 
       (.C(clk),
        .CE(\/i__n_0 ),
        .D(\w_data[10]_i_1_n_0 ),
        .Q(w_data[10]),
        .R(w_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \w_data_reg[11] 
       (.C(clk),
        .CE(\/i__n_0 ),
        .D(\w_data[11]_i_1_n_0 ),
        .Q(w_data[11]),
        .R(w_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \w_data_reg[12] 
       (.C(clk),
        .CE(\/i__n_0 ),
        .D(\w_data[12]_i_1_n_0 ),
        .Q(w_data[12]),
        .R(w_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \w_data_reg[13] 
       (.C(clk),
        .CE(\/i__n_0 ),
        .D(\w_data[13]_i_1_n_0 ),
        .Q(w_data[13]),
        .R(w_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \w_data_reg[14] 
       (.C(clk),
        .CE(\/i__n_0 ),
        .D(\w_data[14]_i_1_n_0 ),
        .Q(w_data[14]),
        .R(w_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \w_data_reg[15] 
       (.C(clk),
        .CE(\/i__n_0 ),
        .D(\w_data[15]_i_1_n_0 ),
        .Q(w_data[15]),
        .R(w_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \w_data_reg[1] 
       (.C(clk),
        .CE(\/i__n_0 ),
        .D(\w_data[1]_i_1_n_0 ),
        .Q(w_data[1]),
        .R(w_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \w_data_reg[20] 
       (.C(clk),
        .CE(\/i__n_0 ),
        .D(w_data0),
        .Q(w_data[16]),
        .R(w_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \w_data_reg[2] 
       (.C(clk),
        .CE(\/i__n_0 ),
        .D(\w_data[2]_i_1_n_0 ),
        .Q(w_data[2]),
        .R(w_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \w_data_reg[3] 
       (.C(clk),
        .CE(\/i__n_0 ),
        .D(\w_data[3]_i_1_n_0 ),
        .Q(w_data[3]),
        .R(w_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \w_data_reg[4] 
       (.C(clk),
        .CE(\/i__n_0 ),
        .D(\w_data[4]_i_1_n_0 ),
        .Q(w_data[4]),
        .R(w_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \w_data_reg[5] 
       (.C(clk),
        .CE(\/i__n_0 ),
        .D(\w_data[5]_i_1_n_0 ),
        .Q(w_data[5]),
        .R(w_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \w_data_reg[6] 
       (.C(clk),
        .CE(\/i__n_0 ),
        .D(\w_data[6]_i_1_n_0 ),
        .Q(w_data[6]),
        .R(w_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \w_data_reg[7] 
       (.C(clk),
        .CE(\/i__n_0 ),
        .D(\w_data[7]_i_1_n_0 ),
        .Q(w_data[7]),
        .R(w_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \w_data_reg[8] 
       (.C(clk),
        .CE(\/i__n_0 ),
        .D(\w_data[8]_i_1_n_0 ),
        .Q(w_data[8]),
        .R(w_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \w_data_reg[9] 
       (.C(clk),
        .CE(\/i__n_0 ),
        .D(\w_data[9]_i_1_n_0 ),
        .Q(w_data[9]),
        .R(w_valid_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    w_valid_i_1
       (.I0(rstn),
        .O(w_valid_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    w_valid_i_2
       (.I0(init_done),
        .I1(w_data0),
        .O(w_valid_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    w_valid_reg
       (.C(clk),
        .CE(\/i__n_0 ),
        .D(w_valid_i_2_n_0),
        .Q(w_data[17]),
        .R(w_valid_i_1_n_0));
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
