// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Wed Jun 16 11:20:03 2021
// Host        : Laptop-de-Deniz running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/deniz/Desktop/Genitek_stage_tfe/TFE/VHDL/version_stable/ICTBRD_last_version/project_3.srcs/sources_1/bd/top_bd/ip/top_bd_ctrl_adc_0_0/top_bd_ctrl_adc_0_0_sim_netlist.v
// Design      : top_bd_ctrl_adc_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "top_bd_ctrl_adc_0_0,ctrl_adc,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "ctrl_adc,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module top_bd_ctrl_adc_0_0
   (rstn,
    clk,
    ADC_eoc,
    AIN0_value,
    AIN1_value,
    AIN2_value,
    AIN3_value,
    AIN4_value,
    AIN5_value,
    AIN6_value,
    AIN7_value,
    AIN8_value,
    AIN9_value,
    w_valid,
    w_ready,
    r_ready,
    r_valid,
    r_data,
    w_data);
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rstn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rstn;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rstn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input clk;
  input ADC_eoc;
  output [11:0]AIN0_value;
  output [11:0]AIN1_value;
  output [11:0]AIN2_value;
  output [11:0]AIN3_value;
  output [11:0]AIN4_value;
  output [11:0]AIN5_value;
  output [11:0]AIN6_value;
  output [11:0]AIN7_value;
  output [11:0]AIN8_value;
  output [11:0]AIN9_value;
  output w_valid;
  input w_ready;
  output r_ready;
  input r_valid;
  input [11:0]r_data;
  output [11:0]w_data;

  wire \<const0> ;
  wire ADC_eoc;
  wire [11:0]AIN0_value;
  wire [11:0]AIN1_value;
  wire [11:0]AIN2_value;
  wire [11:0]AIN3_value;
  wire [11:0]AIN4_value;
  wire [11:0]AIN5_value;
  wire [11:0]AIN6_value;
  wire [11:0]AIN7_value;
  wire [11:0]AIN8_value;
  wire [11:0]AIN9_value;
  wire clk;
  wire [11:0]r_data;
  wire r_ready;
  wire r_valid;
  wire rstn;
  wire [11:8]\^w_data ;
  wire w_ready;
  wire w_valid;

  assign w_data[11:8] = \^w_data [11:8];
  assign w_data[7] = \<const0> ;
  assign w_data[6] = \<const0> ;
  assign w_data[5] = \<const0> ;
  assign w_data[4] = \<const0> ;
  assign w_data[3] = \<const0> ;
  assign w_data[2] = \<const0> ;
  assign w_data[1] = \<const0> ;
  assign w_data[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  top_bd_ctrl_adc_0_0_ctrl_adc U0
       (.ADC_eoc(ADC_eoc),
        .AIN0_value(AIN0_value),
        .AIN1_value(AIN1_value),
        .AIN2_value(AIN2_value),
        .AIN3_value(AIN3_value),
        .AIN4_value(AIN4_value),
        .AIN5_value(AIN5_value),
        .AIN6_value(AIN6_value),
        .AIN7_value(AIN7_value),
        .AIN8_value(AIN8_value),
        .AIN9_value(AIN9_value),
        .clk(clk),
        .r_data(r_data),
        .r_ready(r_ready),
        .r_valid(r_valid),
        .rstn(rstn),
        .w_data(\^w_data ),
        .w_ready(w_ready),
        .w_valid(w_valid));
endmodule

(* ORIG_REF_NAME = "ctrl_adc" *) 
module top_bd_ctrl_adc_0_0_ctrl_adc
   (AIN0_value,
    AIN1_value,
    AIN2_value,
    AIN3_value,
    AIN4_value,
    AIN5_value,
    AIN6_value,
    AIN7_value,
    AIN8_value,
    AIN9_value,
    w_valid,
    r_ready,
    w_data,
    clk,
    ADC_eoc,
    r_data,
    r_valid,
    w_ready,
    rstn);
  output [11:0]AIN0_value;
  output [11:0]AIN1_value;
  output [11:0]AIN2_value;
  output [11:0]AIN3_value;
  output [11:0]AIN4_value;
  output [11:0]AIN5_value;
  output [11:0]AIN6_value;
  output [11:0]AIN7_value;
  output [11:0]AIN8_value;
  output [11:0]AIN9_value;
  output w_valid;
  output r_ready;
  output [3:0]w_data;
  input clk;
  input ADC_eoc;
  input [11:0]r_data;
  input r_valid;
  input w_ready;
  input rstn;

  wire ADC_eoc;
  wire ADC_eoc_d0;
  wire ADC_eoc_d1;
  wire [11:0]AIN0_value;
  wire AIN0_value_b0;
  wire \AIN0_value_b0[11]_i_1_n_0 ;
  wire \AIN0_value_b0[11]_i_2_n_0 ;
  wire [11:0]AIN1_value;
  wire AIN1_value_b0;
  wire \AIN1_value_b0[11]_i_1_n_0 ;
  wire [11:0]AIN2_value;
  wire AIN2_value_b0;
  wire \AIN2_value_b0[11]_i_1_n_0 ;
  wire [11:0]AIN3_value;
  wire AIN3_value_b0;
  wire \AIN3_value_b0[11]_i_1_n_0 ;
  wire [11:0]AIN4_value;
  wire AIN4_value_b0;
  wire \AIN4_value_b0[11]_i_1_n_0 ;
  wire [11:0]AIN5_value;
  wire AIN5_value_b0;
  wire \AIN5_value_b0[11]_i_1_n_0 ;
  wire [11:0]AIN6_value;
  wire AIN6_value_b0;
  wire \AIN6_value_b0[11]_i_1_n_0 ;
  wire [11:0]AIN7_value;
  wire AIN7_value_b0;
  wire \AIN7_value_b0[11]_i_1_n_0 ;
  wire [11:0]AIN8_value;
  wire AIN8_value_b0;
  wire \AIN8_value_b0[11]_i_1_n_0 ;
  wire [11:0]AIN9_value;
  wire AIN9_value_b0;
  wire \AIN9_value_b0[11]_i_1_n_0 ;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[10]_i_1_n_0 ;
  wire \FSM_onehot_state[11]_i_1_n_0 ;
  wire \FSM_onehot_state[12]_i_1_n_0 ;
  wire \FSM_onehot_state[13]_i_1_n_0 ;
  wire \FSM_onehot_state[14]_i_1_n_0 ;
  wire \FSM_onehot_state[15]_i_1_n_0 ;
  wire \FSM_onehot_state[16]_i_1_n_0 ;
  wire \FSM_onehot_state[17]_i_1_n_0 ;
  wire \FSM_onehot_state[18]_i_1_n_0 ;
  wire \FSM_onehot_state[19]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[20]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state[4]_i_1_n_0 ;
  wire \FSM_onehot_state[5]_i_1_n_0 ;
  wire \FSM_onehot_state[6]_i_1_n_0 ;
  wire \FSM_onehot_state[7]_i_1_n_0 ;
  wire \FSM_onehot_state[8]_i_1_n_0 ;
  wire \FSM_onehot_state[9]_i_1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[11] ;
  wire \FSM_onehot_state_reg_n_0_[13] ;
  wire \FSM_onehot_state_reg_n_0_[15] ;
  wire \FSM_onehot_state_reg_n_0_[17] ;
  wire \FSM_onehot_state_reg_n_0_[19] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \FSM_onehot_state_reg_n_0_[5] ;
  wire \FSM_onehot_state_reg_n_0_[7] ;
  wire \FSM_onehot_state_reg_n_0_[9] ;
  wire clk;
  wire [11:0]r_data;
  wire r_ready;
  wire r_valid;
  wire rising_edge_ADC_eoc;
  wire rising_edge_ADC_eoc_i_1_n_0;
  wire rstn;
  wire [3:0]w_data;
  wire \w_data[10]_i_1_n_0 ;
  wire \w_data[11]_i_1_n_0 ;
  wire \w_data[8]_i_1_n_0 ;
  wire \w_data[9]_i_1_n_0 ;
  wire w_ready;
  wire w_valid;
  wire w_valid_i_1_n_0;
  wire w_valid_i_2_n_0;
  wire w_valid_i_3_n_0;
  wire w_valid_i_4_n_0;
  wire w_valid_i_5_n_0;
  wire w_valid_i_6_n_0;

  FDRE #(
    .INIT(1'b0)) 
    ADC_eoc_d0_reg
       (.C(clk),
        .CE(1'b1),
        .D(ADC_eoc),
        .Q(ADC_eoc_d0),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    ADC_eoc_d1_reg
       (.C(clk),
        .CE(1'b1),
        .D(ADC_eoc_d0),
        .Q(ADC_eoc_d1),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \AIN0_value_b0[11]_i_1 
       (.I0(rstn),
        .O(\AIN0_value_b0[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \AIN0_value_b0[11]_i_2 
       (.I0(AIN0_value_b0),
        .I1(r_valid),
        .O(\AIN0_value_b0[11]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN0_value_b0_reg[0] 
       (.C(clk),
        .CE(\AIN0_value_b0[11]_i_2_n_0 ),
        .D(r_data[0]),
        .Q(AIN0_value[0]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN0_value_b0_reg[10] 
       (.C(clk),
        .CE(\AIN0_value_b0[11]_i_2_n_0 ),
        .D(r_data[10]),
        .Q(AIN0_value[10]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN0_value_b0_reg[11] 
       (.C(clk),
        .CE(\AIN0_value_b0[11]_i_2_n_0 ),
        .D(r_data[11]),
        .Q(AIN0_value[11]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN0_value_b0_reg[1] 
       (.C(clk),
        .CE(\AIN0_value_b0[11]_i_2_n_0 ),
        .D(r_data[1]),
        .Q(AIN0_value[1]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN0_value_b0_reg[2] 
       (.C(clk),
        .CE(\AIN0_value_b0[11]_i_2_n_0 ),
        .D(r_data[2]),
        .Q(AIN0_value[2]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN0_value_b0_reg[3] 
       (.C(clk),
        .CE(\AIN0_value_b0[11]_i_2_n_0 ),
        .D(r_data[3]),
        .Q(AIN0_value[3]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN0_value_b0_reg[4] 
       (.C(clk),
        .CE(\AIN0_value_b0[11]_i_2_n_0 ),
        .D(r_data[4]),
        .Q(AIN0_value[4]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN0_value_b0_reg[5] 
       (.C(clk),
        .CE(\AIN0_value_b0[11]_i_2_n_0 ),
        .D(r_data[5]),
        .Q(AIN0_value[5]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN0_value_b0_reg[6] 
       (.C(clk),
        .CE(\AIN0_value_b0[11]_i_2_n_0 ),
        .D(r_data[6]),
        .Q(AIN0_value[6]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN0_value_b0_reg[7] 
       (.C(clk),
        .CE(\AIN0_value_b0[11]_i_2_n_0 ),
        .D(r_data[7]),
        .Q(AIN0_value[7]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN0_value_b0_reg[8] 
       (.C(clk),
        .CE(\AIN0_value_b0[11]_i_2_n_0 ),
        .D(r_data[8]),
        .Q(AIN0_value[8]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN0_value_b0_reg[9] 
       (.C(clk),
        .CE(\AIN0_value_b0[11]_i_2_n_0 ),
        .D(r_data[9]),
        .Q(AIN0_value[9]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \AIN1_value_b0[11]_i_1 
       (.I0(r_valid),
        .I1(AIN1_value_b0),
        .O(\AIN1_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN1_value_b0_reg[0] 
       (.C(clk),
        .CE(\AIN1_value_b0[11]_i_1_n_0 ),
        .D(r_data[0]),
        .Q(AIN1_value[0]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN1_value_b0_reg[10] 
       (.C(clk),
        .CE(\AIN1_value_b0[11]_i_1_n_0 ),
        .D(r_data[10]),
        .Q(AIN1_value[10]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN1_value_b0_reg[11] 
       (.C(clk),
        .CE(\AIN1_value_b0[11]_i_1_n_0 ),
        .D(r_data[11]),
        .Q(AIN1_value[11]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN1_value_b0_reg[1] 
       (.C(clk),
        .CE(\AIN1_value_b0[11]_i_1_n_0 ),
        .D(r_data[1]),
        .Q(AIN1_value[1]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN1_value_b0_reg[2] 
       (.C(clk),
        .CE(\AIN1_value_b0[11]_i_1_n_0 ),
        .D(r_data[2]),
        .Q(AIN1_value[2]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN1_value_b0_reg[3] 
       (.C(clk),
        .CE(\AIN1_value_b0[11]_i_1_n_0 ),
        .D(r_data[3]),
        .Q(AIN1_value[3]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN1_value_b0_reg[4] 
       (.C(clk),
        .CE(\AIN1_value_b0[11]_i_1_n_0 ),
        .D(r_data[4]),
        .Q(AIN1_value[4]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN1_value_b0_reg[5] 
       (.C(clk),
        .CE(\AIN1_value_b0[11]_i_1_n_0 ),
        .D(r_data[5]),
        .Q(AIN1_value[5]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN1_value_b0_reg[6] 
       (.C(clk),
        .CE(\AIN1_value_b0[11]_i_1_n_0 ),
        .D(r_data[6]),
        .Q(AIN1_value[6]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN1_value_b0_reg[7] 
       (.C(clk),
        .CE(\AIN1_value_b0[11]_i_1_n_0 ),
        .D(r_data[7]),
        .Q(AIN1_value[7]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN1_value_b0_reg[8] 
       (.C(clk),
        .CE(\AIN1_value_b0[11]_i_1_n_0 ),
        .D(r_data[8]),
        .Q(AIN1_value[8]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN1_value_b0_reg[9] 
       (.C(clk),
        .CE(\AIN1_value_b0[11]_i_1_n_0 ),
        .D(r_data[9]),
        .Q(AIN1_value[9]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \AIN2_value_b0[11]_i_1 
       (.I0(r_valid),
        .I1(AIN2_value_b0),
        .O(\AIN2_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN2_value_b0_reg[0] 
       (.C(clk),
        .CE(\AIN2_value_b0[11]_i_1_n_0 ),
        .D(r_data[0]),
        .Q(AIN2_value[0]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN2_value_b0_reg[10] 
       (.C(clk),
        .CE(\AIN2_value_b0[11]_i_1_n_0 ),
        .D(r_data[10]),
        .Q(AIN2_value[10]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN2_value_b0_reg[11] 
       (.C(clk),
        .CE(\AIN2_value_b0[11]_i_1_n_0 ),
        .D(r_data[11]),
        .Q(AIN2_value[11]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN2_value_b0_reg[1] 
       (.C(clk),
        .CE(\AIN2_value_b0[11]_i_1_n_0 ),
        .D(r_data[1]),
        .Q(AIN2_value[1]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN2_value_b0_reg[2] 
       (.C(clk),
        .CE(\AIN2_value_b0[11]_i_1_n_0 ),
        .D(r_data[2]),
        .Q(AIN2_value[2]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN2_value_b0_reg[3] 
       (.C(clk),
        .CE(\AIN2_value_b0[11]_i_1_n_0 ),
        .D(r_data[3]),
        .Q(AIN2_value[3]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN2_value_b0_reg[4] 
       (.C(clk),
        .CE(\AIN2_value_b0[11]_i_1_n_0 ),
        .D(r_data[4]),
        .Q(AIN2_value[4]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN2_value_b0_reg[5] 
       (.C(clk),
        .CE(\AIN2_value_b0[11]_i_1_n_0 ),
        .D(r_data[5]),
        .Q(AIN2_value[5]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN2_value_b0_reg[6] 
       (.C(clk),
        .CE(\AIN2_value_b0[11]_i_1_n_0 ),
        .D(r_data[6]),
        .Q(AIN2_value[6]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN2_value_b0_reg[7] 
       (.C(clk),
        .CE(\AIN2_value_b0[11]_i_1_n_0 ),
        .D(r_data[7]),
        .Q(AIN2_value[7]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN2_value_b0_reg[8] 
       (.C(clk),
        .CE(\AIN2_value_b0[11]_i_1_n_0 ),
        .D(r_data[8]),
        .Q(AIN2_value[8]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN2_value_b0_reg[9] 
       (.C(clk),
        .CE(\AIN2_value_b0[11]_i_1_n_0 ),
        .D(r_data[9]),
        .Q(AIN2_value[9]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \AIN3_value_b0[11]_i_1 
       (.I0(r_valid),
        .I1(AIN3_value_b0),
        .O(\AIN3_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN3_value_b0_reg[0] 
       (.C(clk),
        .CE(\AIN3_value_b0[11]_i_1_n_0 ),
        .D(r_data[0]),
        .Q(AIN3_value[0]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN3_value_b0_reg[10] 
       (.C(clk),
        .CE(\AIN3_value_b0[11]_i_1_n_0 ),
        .D(r_data[10]),
        .Q(AIN3_value[10]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN3_value_b0_reg[11] 
       (.C(clk),
        .CE(\AIN3_value_b0[11]_i_1_n_0 ),
        .D(r_data[11]),
        .Q(AIN3_value[11]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN3_value_b0_reg[1] 
       (.C(clk),
        .CE(\AIN3_value_b0[11]_i_1_n_0 ),
        .D(r_data[1]),
        .Q(AIN3_value[1]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN3_value_b0_reg[2] 
       (.C(clk),
        .CE(\AIN3_value_b0[11]_i_1_n_0 ),
        .D(r_data[2]),
        .Q(AIN3_value[2]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN3_value_b0_reg[3] 
       (.C(clk),
        .CE(\AIN3_value_b0[11]_i_1_n_0 ),
        .D(r_data[3]),
        .Q(AIN3_value[3]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN3_value_b0_reg[4] 
       (.C(clk),
        .CE(\AIN3_value_b0[11]_i_1_n_0 ),
        .D(r_data[4]),
        .Q(AIN3_value[4]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN3_value_b0_reg[5] 
       (.C(clk),
        .CE(\AIN3_value_b0[11]_i_1_n_0 ),
        .D(r_data[5]),
        .Q(AIN3_value[5]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN3_value_b0_reg[6] 
       (.C(clk),
        .CE(\AIN3_value_b0[11]_i_1_n_0 ),
        .D(r_data[6]),
        .Q(AIN3_value[6]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN3_value_b0_reg[7] 
       (.C(clk),
        .CE(\AIN3_value_b0[11]_i_1_n_0 ),
        .D(r_data[7]),
        .Q(AIN3_value[7]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN3_value_b0_reg[8] 
       (.C(clk),
        .CE(\AIN3_value_b0[11]_i_1_n_0 ),
        .D(r_data[8]),
        .Q(AIN3_value[8]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN3_value_b0_reg[9] 
       (.C(clk),
        .CE(\AIN3_value_b0[11]_i_1_n_0 ),
        .D(r_data[9]),
        .Q(AIN3_value[9]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \AIN4_value_b0[11]_i_1 
       (.I0(r_valid),
        .I1(AIN4_value_b0),
        .O(\AIN4_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN4_value_b0_reg[0] 
       (.C(clk),
        .CE(\AIN4_value_b0[11]_i_1_n_0 ),
        .D(r_data[0]),
        .Q(AIN4_value[0]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN4_value_b0_reg[10] 
       (.C(clk),
        .CE(\AIN4_value_b0[11]_i_1_n_0 ),
        .D(r_data[10]),
        .Q(AIN4_value[10]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN4_value_b0_reg[11] 
       (.C(clk),
        .CE(\AIN4_value_b0[11]_i_1_n_0 ),
        .D(r_data[11]),
        .Q(AIN4_value[11]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN4_value_b0_reg[1] 
       (.C(clk),
        .CE(\AIN4_value_b0[11]_i_1_n_0 ),
        .D(r_data[1]),
        .Q(AIN4_value[1]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN4_value_b0_reg[2] 
       (.C(clk),
        .CE(\AIN4_value_b0[11]_i_1_n_0 ),
        .D(r_data[2]),
        .Q(AIN4_value[2]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN4_value_b0_reg[3] 
       (.C(clk),
        .CE(\AIN4_value_b0[11]_i_1_n_0 ),
        .D(r_data[3]),
        .Q(AIN4_value[3]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN4_value_b0_reg[4] 
       (.C(clk),
        .CE(\AIN4_value_b0[11]_i_1_n_0 ),
        .D(r_data[4]),
        .Q(AIN4_value[4]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN4_value_b0_reg[5] 
       (.C(clk),
        .CE(\AIN4_value_b0[11]_i_1_n_0 ),
        .D(r_data[5]),
        .Q(AIN4_value[5]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN4_value_b0_reg[6] 
       (.C(clk),
        .CE(\AIN4_value_b0[11]_i_1_n_0 ),
        .D(r_data[6]),
        .Q(AIN4_value[6]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN4_value_b0_reg[7] 
       (.C(clk),
        .CE(\AIN4_value_b0[11]_i_1_n_0 ),
        .D(r_data[7]),
        .Q(AIN4_value[7]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN4_value_b0_reg[8] 
       (.C(clk),
        .CE(\AIN4_value_b0[11]_i_1_n_0 ),
        .D(r_data[8]),
        .Q(AIN4_value[8]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN4_value_b0_reg[9] 
       (.C(clk),
        .CE(\AIN4_value_b0[11]_i_1_n_0 ),
        .D(r_data[9]),
        .Q(AIN4_value[9]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \AIN5_value_b0[11]_i_1 
       (.I0(r_valid),
        .I1(AIN5_value_b0),
        .O(\AIN5_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN5_value_b0_reg[0] 
       (.C(clk),
        .CE(\AIN5_value_b0[11]_i_1_n_0 ),
        .D(r_data[0]),
        .Q(AIN5_value[0]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN5_value_b0_reg[10] 
       (.C(clk),
        .CE(\AIN5_value_b0[11]_i_1_n_0 ),
        .D(r_data[10]),
        .Q(AIN5_value[10]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN5_value_b0_reg[11] 
       (.C(clk),
        .CE(\AIN5_value_b0[11]_i_1_n_0 ),
        .D(r_data[11]),
        .Q(AIN5_value[11]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN5_value_b0_reg[1] 
       (.C(clk),
        .CE(\AIN5_value_b0[11]_i_1_n_0 ),
        .D(r_data[1]),
        .Q(AIN5_value[1]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN5_value_b0_reg[2] 
       (.C(clk),
        .CE(\AIN5_value_b0[11]_i_1_n_0 ),
        .D(r_data[2]),
        .Q(AIN5_value[2]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN5_value_b0_reg[3] 
       (.C(clk),
        .CE(\AIN5_value_b0[11]_i_1_n_0 ),
        .D(r_data[3]),
        .Q(AIN5_value[3]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN5_value_b0_reg[4] 
       (.C(clk),
        .CE(\AIN5_value_b0[11]_i_1_n_0 ),
        .D(r_data[4]),
        .Q(AIN5_value[4]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN5_value_b0_reg[5] 
       (.C(clk),
        .CE(\AIN5_value_b0[11]_i_1_n_0 ),
        .D(r_data[5]),
        .Q(AIN5_value[5]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN5_value_b0_reg[6] 
       (.C(clk),
        .CE(\AIN5_value_b0[11]_i_1_n_0 ),
        .D(r_data[6]),
        .Q(AIN5_value[6]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN5_value_b0_reg[7] 
       (.C(clk),
        .CE(\AIN5_value_b0[11]_i_1_n_0 ),
        .D(r_data[7]),
        .Q(AIN5_value[7]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN5_value_b0_reg[8] 
       (.C(clk),
        .CE(\AIN5_value_b0[11]_i_1_n_0 ),
        .D(r_data[8]),
        .Q(AIN5_value[8]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN5_value_b0_reg[9] 
       (.C(clk),
        .CE(\AIN5_value_b0[11]_i_1_n_0 ),
        .D(r_data[9]),
        .Q(AIN5_value[9]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \AIN6_value_b0[11]_i_1 
       (.I0(r_valid),
        .I1(AIN6_value_b0),
        .O(\AIN6_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN6_value_b0_reg[0] 
       (.C(clk),
        .CE(\AIN6_value_b0[11]_i_1_n_0 ),
        .D(r_data[0]),
        .Q(AIN6_value[0]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN6_value_b0_reg[10] 
       (.C(clk),
        .CE(\AIN6_value_b0[11]_i_1_n_0 ),
        .D(r_data[10]),
        .Q(AIN6_value[10]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN6_value_b0_reg[11] 
       (.C(clk),
        .CE(\AIN6_value_b0[11]_i_1_n_0 ),
        .D(r_data[11]),
        .Q(AIN6_value[11]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN6_value_b0_reg[1] 
       (.C(clk),
        .CE(\AIN6_value_b0[11]_i_1_n_0 ),
        .D(r_data[1]),
        .Q(AIN6_value[1]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN6_value_b0_reg[2] 
       (.C(clk),
        .CE(\AIN6_value_b0[11]_i_1_n_0 ),
        .D(r_data[2]),
        .Q(AIN6_value[2]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN6_value_b0_reg[3] 
       (.C(clk),
        .CE(\AIN6_value_b0[11]_i_1_n_0 ),
        .D(r_data[3]),
        .Q(AIN6_value[3]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN6_value_b0_reg[4] 
       (.C(clk),
        .CE(\AIN6_value_b0[11]_i_1_n_0 ),
        .D(r_data[4]),
        .Q(AIN6_value[4]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN6_value_b0_reg[5] 
       (.C(clk),
        .CE(\AIN6_value_b0[11]_i_1_n_0 ),
        .D(r_data[5]),
        .Q(AIN6_value[5]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN6_value_b0_reg[6] 
       (.C(clk),
        .CE(\AIN6_value_b0[11]_i_1_n_0 ),
        .D(r_data[6]),
        .Q(AIN6_value[6]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN6_value_b0_reg[7] 
       (.C(clk),
        .CE(\AIN6_value_b0[11]_i_1_n_0 ),
        .D(r_data[7]),
        .Q(AIN6_value[7]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN6_value_b0_reg[8] 
       (.C(clk),
        .CE(\AIN6_value_b0[11]_i_1_n_0 ),
        .D(r_data[8]),
        .Q(AIN6_value[8]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN6_value_b0_reg[9] 
       (.C(clk),
        .CE(\AIN6_value_b0[11]_i_1_n_0 ),
        .D(r_data[9]),
        .Q(AIN6_value[9]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \AIN7_value_b0[11]_i_1 
       (.I0(r_valid),
        .I1(AIN7_value_b0),
        .O(\AIN7_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN7_value_b0_reg[0] 
       (.C(clk),
        .CE(\AIN7_value_b0[11]_i_1_n_0 ),
        .D(r_data[0]),
        .Q(AIN7_value[0]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN7_value_b0_reg[10] 
       (.C(clk),
        .CE(\AIN7_value_b0[11]_i_1_n_0 ),
        .D(r_data[10]),
        .Q(AIN7_value[10]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN7_value_b0_reg[11] 
       (.C(clk),
        .CE(\AIN7_value_b0[11]_i_1_n_0 ),
        .D(r_data[11]),
        .Q(AIN7_value[11]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN7_value_b0_reg[1] 
       (.C(clk),
        .CE(\AIN7_value_b0[11]_i_1_n_0 ),
        .D(r_data[1]),
        .Q(AIN7_value[1]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN7_value_b0_reg[2] 
       (.C(clk),
        .CE(\AIN7_value_b0[11]_i_1_n_0 ),
        .D(r_data[2]),
        .Q(AIN7_value[2]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN7_value_b0_reg[3] 
       (.C(clk),
        .CE(\AIN7_value_b0[11]_i_1_n_0 ),
        .D(r_data[3]),
        .Q(AIN7_value[3]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN7_value_b0_reg[4] 
       (.C(clk),
        .CE(\AIN7_value_b0[11]_i_1_n_0 ),
        .D(r_data[4]),
        .Q(AIN7_value[4]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN7_value_b0_reg[5] 
       (.C(clk),
        .CE(\AIN7_value_b0[11]_i_1_n_0 ),
        .D(r_data[5]),
        .Q(AIN7_value[5]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN7_value_b0_reg[6] 
       (.C(clk),
        .CE(\AIN7_value_b0[11]_i_1_n_0 ),
        .D(r_data[6]),
        .Q(AIN7_value[6]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN7_value_b0_reg[7] 
       (.C(clk),
        .CE(\AIN7_value_b0[11]_i_1_n_0 ),
        .D(r_data[7]),
        .Q(AIN7_value[7]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN7_value_b0_reg[8] 
       (.C(clk),
        .CE(\AIN7_value_b0[11]_i_1_n_0 ),
        .D(r_data[8]),
        .Q(AIN7_value[8]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN7_value_b0_reg[9] 
       (.C(clk),
        .CE(\AIN7_value_b0[11]_i_1_n_0 ),
        .D(r_data[9]),
        .Q(AIN7_value[9]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \AIN8_value_b0[11]_i_1 
       (.I0(r_valid),
        .I1(AIN8_value_b0),
        .O(\AIN8_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN8_value_b0_reg[0] 
       (.C(clk),
        .CE(\AIN8_value_b0[11]_i_1_n_0 ),
        .D(r_data[0]),
        .Q(AIN8_value[0]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN8_value_b0_reg[10] 
       (.C(clk),
        .CE(\AIN8_value_b0[11]_i_1_n_0 ),
        .D(r_data[10]),
        .Q(AIN8_value[10]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN8_value_b0_reg[11] 
       (.C(clk),
        .CE(\AIN8_value_b0[11]_i_1_n_0 ),
        .D(r_data[11]),
        .Q(AIN8_value[11]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN8_value_b0_reg[1] 
       (.C(clk),
        .CE(\AIN8_value_b0[11]_i_1_n_0 ),
        .D(r_data[1]),
        .Q(AIN8_value[1]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN8_value_b0_reg[2] 
       (.C(clk),
        .CE(\AIN8_value_b0[11]_i_1_n_0 ),
        .D(r_data[2]),
        .Q(AIN8_value[2]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN8_value_b0_reg[3] 
       (.C(clk),
        .CE(\AIN8_value_b0[11]_i_1_n_0 ),
        .D(r_data[3]),
        .Q(AIN8_value[3]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN8_value_b0_reg[4] 
       (.C(clk),
        .CE(\AIN8_value_b0[11]_i_1_n_0 ),
        .D(r_data[4]),
        .Q(AIN8_value[4]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN8_value_b0_reg[5] 
       (.C(clk),
        .CE(\AIN8_value_b0[11]_i_1_n_0 ),
        .D(r_data[5]),
        .Q(AIN8_value[5]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN8_value_b0_reg[6] 
       (.C(clk),
        .CE(\AIN8_value_b0[11]_i_1_n_0 ),
        .D(r_data[6]),
        .Q(AIN8_value[6]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN8_value_b0_reg[7] 
       (.C(clk),
        .CE(\AIN8_value_b0[11]_i_1_n_0 ),
        .D(r_data[7]),
        .Q(AIN8_value[7]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN8_value_b0_reg[8] 
       (.C(clk),
        .CE(\AIN8_value_b0[11]_i_1_n_0 ),
        .D(r_data[8]),
        .Q(AIN8_value[8]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN8_value_b0_reg[9] 
       (.C(clk),
        .CE(\AIN8_value_b0[11]_i_1_n_0 ),
        .D(r_data[9]),
        .Q(AIN8_value[9]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \AIN9_value_b0[11]_i_1 
       (.I0(r_valid),
        .I1(AIN9_value_b0),
        .O(\AIN9_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN9_value_b0_reg[0] 
       (.C(clk),
        .CE(\AIN9_value_b0[11]_i_1_n_0 ),
        .D(r_data[0]),
        .Q(AIN9_value[0]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN9_value_b0_reg[10] 
       (.C(clk),
        .CE(\AIN9_value_b0[11]_i_1_n_0 ),
        .D(r_data[10]),
        .Q(AIN9_value[10]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN9_value_b0_reg[11] 
       (.C(clk),
        .CE(\AIN9_value_b0[11]_i_1_n_0 ),
        .D(r_data[11]),
        .Q(AIN9_value[11]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN9_value_b0_reg[1] 
       (.C(clk),
        .CE(\AIN9_value_b0[11]_i_1_n_0 ),
        .D(r_data[1]),
        .Q(AIN9_value[1]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN9_value_b0_reg[2] 
       (.C(clk),
        .CE(\AIN9_value_b0[11]_i_1_n_0 ),
        .D(r_data[2]),
        .Q(AIN9_value[2]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN9_value_b0_reg[3] 
       (.C(clk),
        .CE(\AIN9_value_b0[11]_i_1_n_0 ),
        .D(r_data[3]),
        .Q(AIN9_value[3]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN9_value_b0_reg[4] 
       (.C(clk),
        .CE(\AIN9_value_b0[11]_i_1_n_0 ),
        .D(r_data[4]),
        .Q(AIN9_value[4]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN9_value_b0_reg[5] 
       (.C(clk),
        .CE(\AIN9_value_b0[11]_i_1_n_0 ),
        .D(r_data[5]),
        .Q(AIN9_value[5]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN9_value_b0_reg[6] 
       (.C(clk),
        .CE(\AIN9_value_b0[11]_i_1_n_0 ),
        .D(r_data[6]),
        .Q(AIN9_value[6]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN9_value_b0_reg[7] 
       (.C(clk),
        .CE(\AIN9_value_b0[11]_i_1_n_0 ),
        .D(r_data[7]),
        .Q(AIN9_value[7]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN9_value_b0_reg[8] 
       (.C(clk),
        .CE(\AIN9_value_b0[11]_i_1_n_0 ),
        .D(r_data[8]),
        .Q(AIN9_value[8]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AIN9_value_b0_reg[9] 
       (.C(clk),
        .CE(\AIN9_value_b0[11]_i_1_n_0 ),
        .D(r_data[9]),
        .Q(AIN9_value[9]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(w_ready),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \FSM_onehot_state[10]_i_1 
       (.I0(rising_edge_ADC_eoc),
        .I1(AIN3_value_b0),
        .I2(w_ready),
        .I3(\FSM_onehot_state_reg_n_0_[9] ),
        .O(\FSM_onehot_state[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_onehot_state[11]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[11] ),
        .I1(w_ready),
        .I2(rising_edge_ADC_eoc),
        .I3(AIN3_value_b0),
        .O(\FSM_onehot_state[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \FSM_onehot_state[12]_i_1 
       (.I0(rising_edge_ADC_eoc),
        .I1(AIN4_value_b0),
        .I2(w_ready),
        .I3(\FSM_onehot_state_reg_n_0_[11] ),
        .O(\FSM_onehot_state[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_onehot_state[13]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[13] ),
        .I1(w_ready),
        .I2(rising_edge_ADC_eoc),
        .I3(AIN4_value_b0),
        .O(\FSM_onehot_state[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \FSM_onehot_state[14]_i_1 
       (.I0(rising_edge_ADC_eoc),
        .I1(AIN5_value_b0),
        .I2(w_ready),
        .I3(\FSM_onehot_state_reg_n_0_[13] ),
        .O(\FSM_onehot_state[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_onehot_state[15]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[15] ),
        .I1(w_ready),
        .I2(rising_edge_ADC_eoc),
        .I3(AIN5_value_b0),
        .O(\FSM_onehot_state[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \FSM_onehot_state[16]_i_1 
       (.I0(rising_edge_ADC_eoc),
        .I1(AIN6_value_b0),
        .I2(w_ready),
        .I3(\FSM_onehot_state_reg_n_0_[15] ),
        .O(\FSM_onehot_state[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_onehot_state[17]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[17] ),
        .I1(w_ready),
        .I2(rising_edge_ADC_eoc),
        .I3(AIN6_value_b0),
        .O(\FSM_onehot_state[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \FSM_onehot_state[18]_i_1 
       (.I0(rising_edge_ADC_eoc),
        .I1(AIN7_value_b0),
        .I2(w_ready),
        .I3(\FSM_onehot_state_reg_n_0_[17] ),
        .O(\FSM_onehot_state[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_onehot_state[19]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[19] ),
        .I1(w_ready),
        .I2(rising_edge_ADC_eoc),
        .I3(AIN7_value_b0),
        .O(\FSM_onehot_state[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF88888)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(rising_edge_ADC_eoc),
        .I1(AIN8_value_b0),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(w_ready),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \FSM_onehot_state[20]_i_1 
       (.I0(rising_edge_ADC_eoc),
        .I1(AIN8_value_b0),
        .I2(w_ready),
        .I3(\FSM_onehot_state_reg_n_0_[19] ),
        .O(\FSM_onehot_state[20]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(rising_edge_ADC_eoc),
        .I1(AIN9_value_b0),
        .I2(w_ready),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(w_ready),
        .I2(rising_edge_ADC_eoc),
        .I3(AIN9_value_b0),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(rising_edge_ADC_eoc),
        .I1(AIN0_value_b0),
        .I2(w_ready),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\FSM_onehot_state[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_onehot_state[5]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(w_ready),
        .I2(rising_edge_ADC_eoc),
        .I3(AIN0_value_b0),
        .O(\FSM_onehot_state[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \FSM_onehot_state[6]_i_1 
       (.I0(rising_edge_ADC_eoc),
        .I1(AIN1_value_b0),
        .I2(w_ready),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(\FSM_onehot_state[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_onehot_state[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(w_ready),
        .I2(rising_edge_ADC_eoc),
        .I3(AIN1_value_b0),
        .O(\FSM_onehot_state[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \FSM_onehot_state[8]_i_1 
       (.I0(rising_edge_ADC_eoc),
        .I1(AIN2_value_b0),
        .I2(w_ready),
        .I3(\FSM_onehot_state_reg_n_0_[7] ),
        .O(\FSM_onehot_state[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_onehot_state[9]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(w_ready),
        .I2(rising_edge_ADC_eoc),
        .I3(AIN2_value_b0),
        .O(\FSM_onehot_state[9]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "s_read_ain4:000000001000000000000,s_config_ain6:000000010000000000000,s_read_ain3:000000000010000000000,s_config_ain9:010000000000000000000,s_read_ain6:000010000000000000000,s_config_ain1:000000000000000001000,s_read_ain8:100000000000000000000,s_config_ain8:000100000000000000000,s_read_ain5:000000100000000000000,s_config_ain0:000000000000000000010,s_config_ain5:000000000100000000000,s_idle:000000000000000000001,s_read_ain2:000000000000100000000,s_config_ain3:000000000000010000000,s_read_ain0:000000000000000010000,s_read_ain7:001000000000000000000,s_config_ain4:000000000001000000000,s_read_ain1:000000000000001000000,s_config_ain2:000000000000000100000,s_read_ain9:000000000000000000100,s_config_ain7:000001000000000000000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(\AIN0_value_b0[11]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "s_read_ain4:000000001000000000000,s_config_ain6:000000010000000000000,s_read_ain3:000000000010000000000,s_config_ain9:010000000000000000000,s_read_ain6:000010000000000000000,s_config_ain1:000000000000000001000,s_read_ain8:100000000000000000000,s_config_ain8:000100000000000000000,s_read_ain5:000000100000000000000,s_config_ain0:000000000000000000010,s_config_ain5:000000000100000000000,s_idle:000000000000000000001,s_read_ain2:000000000000100000000,s_config_ain3:000000000000010000000,s_read_ain0:000000000000000010000,s_read_ain7:001000000000000000000,s_config_ain4:000000000001000000000,s_read_ain1:000000000000001000000,s_config_ain2:000000000000000100000,s_read_ain9:000000000000000000100,s_config_ain7:000001000000000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[10]_i_1_n_0 ),
        .Q(AIN3_value_b0),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "s_read_ain4:000000001000000000000,s_config_ain6:000000010000000000000,s_read_ain3:000000000010000000000,s_config_ain9:010000000000000000000,s_read_ain6:000010000000000000000,s_config_ain1:000000000000000001000,s_read_ain8:100000000000000000000,s_config_ain8:000100000000000000000,s_read_ain5:000000100000000000000,s_config_ain0:000000000000000000010,s_config_ain5:000000000100000000000,s_idle:000000000000000000001,s_read_ain2:000000000000100000000,s_config_ain3:000000000000010000000,s_read_ain0:000000000000000010000,s_read_ain7:001000000000000000000,s_config_ain4:000000000001000000000,s_read_ain1:000000000000001000000,s_config_ain2:000000000000000100000,s_read_ain9:000000000000000000100,s_config_ain7:000001000000000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[11]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[11] ),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "s_read_ain4:000000001000000000000,s_config_ain6:000000010000000000000,s_read_ain3:000000000010000000000,s_config_ain9:010000000000000000000,s_read_ain6:000010000000000000000,s_config_ain1:000000000000000001000,s_read_ain8:100000000000000000000,s_config_ain8:000100000000000000000,s_read_ain5:000000100000000000000,s_config_ain0:000000000000000000010,s_config_ain5:000000000100000000000,s_idle:000000000000000000001,s_read_ain2:000000000000100000000,s_config_ain3:000000000000010000000,s_read_ain0:000000000000000010000,s_read_ain7:001000000000000000000,s_config_ain4:000000000001000000000,s_read_ain1:000000000000001000000,s_config_ain2:000000000000000100000,s_read_ain9:000000000000000000100,s_config_ain7:000001000000000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[12]_i_1_n_0 ),
        .Q(AIN4_value_b0),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "s_read_ain4:000000001000000000000,s_config_ain6:000000010000000000000,s_read_ain3:000000000010000000000,s_config_ain9:010000000000000000000,s_read_ain6:000010000000000000000,s_config_ain1:000000000000000001000,s_read_ain8:100000000000000000000,s_config_ain8:000100000000000000000,s_read_ain5:000000100000000000000,s_config_ain0:000000000000000000010,s_config_ain5:000000000100000000000,s_idle:000000000000000000001,s_read_ain2:000000000000100000000,s_config_ain3:000000000000010000000,s_read_ain0:000000000000000010000,s_read_ain7:001000000000000000000,s_config_ain4:000000000001000000000,s_read_ain1:000000000000001000000,s_config_ain2:000000000000000100000,s_read_ain9:000000000000000000100,s_config_ain7:000001000000000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[13]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[13] ),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "s_read_ain4:000000001000000000000,s_config_ain6:000000010000000000000,s_read_ain3:000000000010000000000,s_config_ain9:010000000000000000000,s_read_ain6:000010000000000000000,s_config_ain1:000000000000000001000,s_read_ain8:100000000000000000000,s_config_ain8:000100000000000000000,s_read_ain5:000000100000000000000,s_config_ain0:000000000000000000010,s_config_ain5:000000000100000000000,s_idle:000000000000000000001,s_read_ain2:000000000000100000000,s_config_ain3:000000000000010000000,s_read_ain0:000000000000000010000,s_read_ain7:001000000000000000000,s_config_ain4:000000000001000000000,s_read_ain1:000000000000001000000,s_config_ain2:000000000000000100000,s_read_ain9:000000000000000000100,s_config_ain7:000001000000000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[14]_i_1_n_0 ),
        .Q(AIN5_value_b0),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "s_read_ain4:000000001000000000000,s_config_ain6:000000010000000000000,s_read_ain3:000000000010000000000,s_config_ain9:010000000000000000000,s_read_ain6:000010000000000000000,s_config_ain1:000000000000000001000,s_read_ain8:100000000000000000000,s_config_ain8:000100000000000000000,s_read_ain5:000000100000000000000,s_config_ain0:000000000000000000010,s_config_ain5:000000000100000000000,s_idle:000000000000000000001,s_read_ain2:000000000000100000000,s_config_ain3:000000000000010000000,s_read_ain0:000000000000000010000,s_read_ain7:001000000000000000000,s_config_ain4:000000000001000000000,s_read_ain1:000000000000001000000,s_config_ain2:000000000000000100000,s_read_ain9:000000000000000000100,s_config_ain7:000001000000000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[15]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[15] ),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "s_read_ain4:000000001000000000000,s_config_ain6:000000010000000000000,s_read_ain3:000000000010000000000,s_config_ain9:010000000000000000000,s_read_ain6:000010000000000000000,s_config_ain1:000000000000000001000,s_read_ain8:100000000000000000000,s_config_ain8:000100000000000000000,s_read_ain5:000000100000000000000,s_config_ain0:000000000000000000010,s_config_ain5:000000000100000000000,s_idle:000000000000000000001,s_read_ain2:000000000000100000000,s_config_ain3:000000000000010000000,s_read_ain0:000000000000000010000,s_read_ain7:001000000000000000000,s_config_ain4:000000000001000000000,s_read_ain1:000000000000001000000,s_config_ain2:000000000000000100000,s_read_ain9:000000000000000000100,s_config_ain7:000001000000000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[16]_i_1_n_0 ),
        .Q(AIN6_value_b0),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "s_read_ain4:000000001000000000000,s_config_ain6:000000010000000000000,s_read_ain3:000000000010000000000,s_config_ain9:010000000000000000000,s_read_ain6:000010000000000000000,s_config_ain1:000000000000000001000,s_read_ain8:100000000000000000000,s_config_ain8:000100000000000000000,s_read_ain5:000000100000000000000,s_config_ain0:000000000000000000010,s_config_ain5:000000000100000000000,s_idle:000000000000000000001,s_read_ain2:000000000000100000000,s_config_ain3:000000000000010000000,s_read_ain0:000000000000000010000,s_read_ain7:001000000000000000000,s_config_ain4:000000000001000000000,s_read_ain1:000000000000001000000,s_config_ain2:000000000000000100000,s_read_ain9:000000000000000000100,s_config_ain7:000001000000000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[17]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[17] ),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "s_read_ain4:000000001000000000000,s_config_ain6:000000010000000000000,s_read_ain3:000000000010000000000,s_config_ain9:010000000000000000000,s_read_ain6:000010000000000000000,s_config_ain1:000000000000000001000,s_read_ain8:100000000000000000000,s_config_ain8:000100000000000000000,s_read_ain5:000000100000000000000,s_config_ain0:000000000000000000010,s_config_ain5:000000000100000000000,s_idle:000000000000000000001,s_read_ain2:000000000000100000000,s_config_ain3:000000000000010000000,s_read_ain0:000000000000000010000,s_read_ain7:001000000000000000000,s_config_ain4:000000000001000000000,s_read_ain1:000000000000001000000,s_config_ain2:000000000000000100000,s_read_ain9:000000000000000000100,s_config_ain7:000001000000000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[18]_i_1_n_0 ),
        .Q(AIN7_value_b0),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "s_read_ain4:000000001000000000000,s_config_ain6:000000010000000000000,s_read_ain3:000000000010000000000,s_config_ain9:010000000000000000000,s_read_ain6:000010000000000000000,s_config_ain1:000000000000000001000,s_read_ain8:100000000000000000000,s_config_ain8:000100000000000000000,s_read_ain5:000000100000000000000,s_config_ain0:000000000000000000010,s_config_ain5:000000000100000000000,s_idle:000000000000000000001,s_read_ain2:000000000000100000000,s_config_ain3:000000000000010000000,s_read_ain0:000000000000000010000,s_read_ain7:001000000000000000000,s_config_ain4:000000000001000000000,s_read_ain1:000000000000001000000,s_config_ain2:000000000000000100000,s_read_ain9:000000000000000000100,s_config_ain7:000001000000000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[19]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[19] ),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "s_read_ain4:000000001000000000000,s_config_ain6:000000010000000000000,s_read_ain3:000000000010000000000,s_config_ain9:010000000000000000000,s_read_ain6:000010000000000000000,s_config_ain1:000000000000000001000,s_read_ain8:100000000000000000000,s_config_ain8:000100000000000000000,s_read_ain5:000000100000000000000,s_config_ain0:000000000000000000010,s_config_ain5:000000000100000000000,s_idle:000000000000000000001,s_read_ain2:000000000000100000000,s_config_ain3:000000000000010000000,s_read_ain0:000000000000000010000,s_read_ain7:001000000000000000000,s_config_ain4:000000000001000000000,s_read_ain1:000000000000001000000,s_config_ain2:000000000000000100000,s_read_ain9:000000000000000000100,s_config_ain7:000001000000000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "s_read_ain4:000000001000000000000,s_config_ain6:000000010000000000000,s_read_ain3:000000000010000000000,s_config_ain9:010000000000000000000,s_read_ain6:000010000000000000000,s_config_ain1:000000000000000001000,s_read_ain8:100000000000000000000,s_config_ain8:000100000000000000000,s_read_ain5:000000100000000000000,s_config_ain0:000000000000000000010,s_config_ain5:000000000100000000000,s_idle:000000000000000000001,s_read_ain2:000000000000100000000,s_config_ain3:000000000000010000000,s_read_ain0:000000000000000010000,s_read_ain7:001000000000000000000,s_config_ain4:000000000001000000000,s_read_ain1:000000000000001000000,s_config_ain2:000000000000000100000,s_read_ain9:000000000000000000100,s_config_ain7:000001000000000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[20]_i_1_n_0 ),
        .Q(AIN8_value_b0),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "s_read_ain4:000000001000000000000,s_config_ain6:000000010000000000000,s_read_ain3:000000000010000000000,s_config_ain9:010000000000000000000,s_read_ain6:000010000000000000000,s_config_ain1:000000000000000001000,s_read_ain8:100000000000000000000,s_config_ain8:000100000000000000000,s_read_ain5:000000100000000000000,s_config_ain0:000000000000000000010,s_config_ain5:000000000100000000000,s_idle:000000000000000000001,s_read_ain2:000000000000100000000,s_config_ain3:000000000000010000000,s_read_ain0:000000000000000010000,s_read_ain7:001000000000000000000,s_config_ain4:000000000001000000000,s_read_ain1:000000000000001000000,s_config_ain2:000000000000000100000,s_read_ain9:000000000000000000100,s_config_ain7:000001000000000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(AIN9_value_b0),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "s_read_ain4:000000001000000000000,s_config_ain6:000000010000000000000,s_read_ain3:000000000010000000000,s_config_ain9:010000000000000000000,s_read_ain6:000010000000000000000,s_config_ain1:000000000000000001000,s_read_ain8:100000000000000000000,s_config_ain8:000100000000000000000,s_read_ain5:000000100000000000000,s_config_ain0:000000000000000000010,s_config_ain5:000000000100000000000,s_idle:000000000000000000001,s_read_ain2:000000000000100000000,s_config_ain3:000000000000010000000,s_read_ain0:000000000000000010000,s_read_ain7:001000000000000000000,s_config_ain4:000000000001000000000,s_read_ain1:000000000000001000000,s_config_ain2:000000000000000100000,s_read_ain9:000000000000000000100,s_config_ain7:000001000000000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "s_read_ain4:000000001000000000000,s_config_ain6:000000010000000000000,s_read_ain3:000000000010000000000,s_config_ain9:010000000000000000000,s_read_ain6:000010000000000000000,s_config_ain1:000000000000000001000,s_read_ain8:100000000000000000000,s_config_ain8:000100000000000000000,s_read_ain5:000000100000000000000,s_config_ain0:000000000000000000010,s_config_ain5:000000000100000000000,s_idle:000000000000000000001,s_read_ain2:000000000000100000000,s_config_ain3:000000000000010000000,s_read_ain0:000000000000000010000,s_read_ain7:001000000000000000000,s_config_ain4:000000000001000000000,s_read_ain1:000000000000001000000,s_config_ain2:000000000000000100000,s_read_ain9:000000000000000000100,s_config_ain7:000001000000000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[4]_i_1_n_0 ),
        .Q(AIN0_value_b0),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "s_read_ain4:000000001000000000000,s_config_ain6:000000010000000000000,s_read_ain3:000000000010000000000,s_config_ain9:010000000000000000000,s_read_ain6:000010000000000000000,s_config_ain1:000000000000000001000,s_read_ain8:100000000000000000000,s_config_ain8:000100000000000000000,s_read_ain5:000000100000000000000,s_config_ain0:000000000000000000010,s_config_ain5:000000000100000000000,s_idle:000000000000000000001,s_read_ain2:000000000000100000000,s_config_ain3:000000000000010000000,s_read_ain0:000000000000000010000,s_read_ain7:001000000000000000000,s_config_ain4:000000000001000000000,s_read_ain1:000000000000001000000,s_config_ain2:000000000000000100000,s_read_ain9:000000000000000000100,s_config_ain7:000001000000000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[5]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[5] ),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "s_read_ain4:000000001000000000000,s_config_ain6:000000010000000000000,s_read_ain3:000000000010000000000,s_config_ain9:010000000000000000000,s_read_ain6:000010000000000000000,s_config_ain1:000000000000000001000,s_read_ain8:100000000000000000000,s_config_ain8:000100000000000000000,s_read_ain5:000000100000000000000,s_config_ain0:000000000000000000010,s_config_ain5:000000000100000000000,s_idle:000000000000000000001,s_read_ain2:000000000000100000000,s_config_ain3:000000000000010000000,s_read_ain0:000000000000000010000,s_read_ain7:001000000000000000000,s_config_ain4:000000000001000000000,s_read_ain1:000000000000001000000,s_config_ain2:000000000000000100000,s_read_ain9:000000000000000000100,s_config_ain7:000001000000000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[6]_i_1_n_0 ),
        .Q(AIN1_value_b0),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "s_read_ain4:000000001000000000000,s_config_ain6:000000010000000000000,s_read_ain3:000000000010000000000,s_config_ain9:010000000000000000000,s_read_ain6:000010000000000000000,s_config_ain1:000000000000000001000,s_read_ain8:100000000000000000000,s_config_ain8:000100000000000000000,s_read_ain5:000000100000000000000,s_config_ain0:000000000000000000010,s_config_ain5:000000000100000000000,s_idle:000000000000000000001,s_read_ain2:000000000000100000000,s_config_ain3:000000000000010000000,s_read_ain0:000000000000000010000,s_read_ain7:001000000000000000000,s_config_ain4:000000000001000000000,s_read_ain1:000000000000001000000,s_config_ain2:000000000000000100000,s_read_ain9:000000000000000000100,s_config_ain7:000001000000000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[7]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[7] ),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "s_read_ain4:000000001000000000000,s_config_ain6:000000010000000000000,s_read_ain3:000000000010000000000,s_config_ain9:010000000000000000000,s_read_ain6:000010000000000000000,s_config_ain1:000000000000000001000,s_read_ain8:100000000000000000000,s_config_ain8:000100000000000000000,s_read_ain5:000000100000000000000,s_config_ain0:000000000000000000010,s_config_ain5:000000000100000000000,s_idle:000000000000000000001,s_read_ain2:000000000000100000000,s_config_ain3:000000000000010000000,s_read_ain0:000000000000000010000,s_read_ain7:001000000000000000000,s_config_ain4:000000000001000000000,s_read_ain1:000000000000001000000,s_config_ain2:000000000000000100000,s_read_ain9:000000000000000000100,s_config_ain7:000001000000000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[8]_i_1_n_0 ),
        .Q(AIN2_value_b0),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "s_read_ain4:000000001000000000000,s_config_ain6:000000010000000000000,s_read_ain3:000000000010000000000,s_config_ain9:010000000000000000000,s_read_ain6:000010000000000000000,s_config_ain1:000000000000000001000,s_read_ain8:100000000000000000000,s_config_ain8:000100000000000000000,s_read_ain5:000000100000000000000,s_config_ain0:000000000000000000010,s_config_ain5:000000000100000000000,s_idle:000000000000000000001,s_read_ain2:000000000000100000000,s_config_ain3:000000000000010000000,s_read_ain0:000000000000000010000,s_read_ain7:001000000000000000000,s_config_ain4:000000000001000000000,s_read_ain1:000000000000001000000,s_config_ain2:000000000000000100000,s_read_ain9:000000000000000000100,s_config_ain7:000001000000000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[9]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[9] ),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    r_ready_reg
       (.C(clk),
        .CE(w_valid_i_1_n_0),
        .D(w_valid_i_1_n_0),
        .Q(r_ready),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    rising_edge_ADC_eoc_i_1
       (.I0(ADC_eoc_d0),
        .I1(ADC_eoc_d1),
        .O(rising_edge_ADC_eoc_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rising_edge_ADC_eoc_reg
       (.C(clk),
        .CE(1'b1),
        .D(rising_edge_ADC_eoc_i_1_n_0),
        .Q(rising_edge_ADC_eoc),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \w_data[10]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[15] ),
        .I1(\FSM_onehot_state_reg_n_0_[13] ),
        .I2(\FSM_onehot_state_reg_n_0_[11] ),
        .I3(\FSM_onehot_state_reg_n_0_[9] ),
        .O(\w_data[10]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \w_data[11]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[17] ),
        .I1(\FSM_onehot_state_reg_n_0_[19] ),
        .O(\w_data[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \w_data[8]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[15] ),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\FSM_onehot_state_reg_n_0_[19] ),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_state_reg_n_0_[7] ),
        .O(\w_data[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \w_data[9]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[15] ),
        .I1(\FSM_onehot_state_reg_n_0_[13] ),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(\w_data[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \w_data_reg[10] 
       (.C(clk),
        .CE(w_valid_i_1_n_0),
        .D(\w_data[10]_i_1_n_0 ),
        .Q(w_data[2]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \w_data_reg[11] 
       (.C(clk),
        .CE(w_valid_i_1_n_0),
        .D(\w_data[11]_i_1_n_0 ),
        .Q(w_data[3]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \w_data_reg[8] 
       (.C(clk),
        .CE(w_valid_i_1_n_0),
        .D(\w_data[8]_i_1_n_0 ),
        .Q(w_data[0]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \w_data_reg[9] 
       (.C(clk),
        .CE(w_valid_i_1_n_0),
        .D(\w_data[9]_i_1_n_0 ),
        .Q(w_data[1]),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    w_valid_i_1
       (.I0(w_valid_i_3_n_0),
        .I1(\w_data[9]_i_1_n_0 ),
        .I2(w_valid_i_4_n_0),
        .I3(w_valid_i_5_n_0),
        .I4(w_valid_i_6_n_0),
        .O(w_valid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    w_valid_i_2
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\FSM_onehot_state_reg_n_0_[7] ),
        .I2(\FSM_onehot_state_reg_n_0_[13] ),
        .I3(\FSM_onehot_state_reg_n_0_[15] ),
        .I4(w_valid_i_3_n_0),
        .O(w_valid_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    w_valid_i_3
       (.I0(\FSM_onehot_state_reg_n_0_[19] ),
        .I1(\FSM_onehot_state_reg_n_0_[17] ),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_state_reg_n_0_[9] ),
        .I5(\FSM_onehot_state_reg_n_0_[11] ),
        .O(w_valid_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    w_valid_i_4
       (.I0(AIN7_value_b0),
        .I1(AIN6_value_b0),
        .I2(AIN3_value_b0),
        .I3(AIN1_value_b0),
        .O(w_valid_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    w_valid_i_5
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(AIN0_value_b0),
        .I2(AIN9_value_b0),
        .I3(AIN4_value_b0),
        .O(w_valid_i_5_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    w_valid_i_6
       (.I0(AIN5_value_b0),
        .I1(AIN8_value_b0),
        .I2(AIN2_value_b0),
        .O(w_valid_i_6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    w_valid_reg
       (.C(clk),
        .CE(w_valid_i_1_n_0),
        .D(w_valid_i_2_n_0),
        .Q(w_valid),
        .R(\AIN0_value_b0[11]_i_1_n_0 ));
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
