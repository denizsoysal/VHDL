// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Wed Jun 16 11:21:01 2021
// Host        : Laptop-de-Deniz running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/deniz/Desktop/Genitek_stage_tfe/TFE/VHDL/version_stable/ICTBRD_last_version/project_3.srcs/sources_1/bd/top_bd/ip/top_bd_spi_master_2_0/top_bd_spi_master_2_0_sim_netlist.v
// Design      : top_bd_spi_master_2_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "top_bd_spi_master_2_0,spi_master,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "spi_master,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module top_bd_spi_master_2_0
   (rstn,
    clk,
    w_valid,
    w_ready,
    r_ready,
    r_valid,
    r_data,
    w_data,
    spi_miso,
    spi_mosi,
    spi_clk,
    spi_csn);
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rstn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rstn;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input clk;
  input w_valid;
  output w_ready;
  input r_ready;
  output r_valid;
  output [11:0]r_data;
  input [11:0]w_data;
  input spi_miso;
  output spi_mosi;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 spi_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME spi_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN top_bd_spi_master_2_0_spi_clk, INSERT_VIP 0" *) output spi_clk;
  output spi_csn;

  wire clk;
  wire [11:0]r_data;
  wire r_ready;
  wire r_valid;
  wire rstn;
  wire spi_clk;
  wire spi_csn;
  wire spi_miso;
  wire spi_mosi;
  wire [11:0]w_data;
  wire w_ready;
  wire w_valid;

  top_bd_spi_master_2_0_spi_master U0
       (.clk(clk),
        .r_data(r_data),
        .r_ready(r_ready),
        .r_valid(r_valid),
        .rstn(rstn),
        .spi_clk(spi_clk),
        .spi_csn(spi_csn),
        .spi_miso(spi_miso),
        .spi_mosi(spi_mosi),
        .w_data(w_data),
        .w_ready(w_ready),
        .w_valid(w_valid));
endmodule

(* ORIG_REF_NAME = "spi_master" *) 
module top_bd_spi_master_2_0_spi_master
   (r_valid,
    w_ready,
    r_data,
    spi_mosi,
    spi_csn,
    spi_clk,
    clk,
    w_data,
    spi_miso,
    r_ready,
    w_valid,
    rstn);
  output r_valid;
  output w_ready;
  output [11:0]r_data;
  output spi_mosi;
  output spi_csn;
  output spi_clk;
  input clk;
  input [11:0]w_data;
  input spi_miso;
  input r_ready;
  input w_valid;
  input rstn;

  wire \FSM_onehot_next_state_reg[0]_i_1_n_0 ;
  wire \FSM_onehot_next_state_reg[1]_i_1_n_0 ;
  wire \FSM_onehot_next_state_reg[2]_i_1_n_0 ;
  wire \FSM_onehot_next_state_reg[2]_i_2_n_0 ;
  wire \FSM_onehot_next_state_reg[3]_i_1_n_0 ;
  wire \FSM_onehot_next_state_reg[3]_i_3_n_0 ;
  wire \FSM_onehot_next_state_reg_n_0_[0] ;
  wire \FSM_onehot_next_state_reg_n_0_[1] ;
  wire \FSM_onehot_next_state_reg_n_0_[2] ;
  wire \FSM_onehot_next_state_reg_n_0_[3] ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire clk;
  wire clk_en;
  wire clk_en_reg_n_0;
  wire [7:0]cnt;
  wire \cnt[0]_i_1_n_0 ;
  wire \cnt[1]_i_1_n_0 ;
  wire \cnt[2]_i_1_n_0 ;
  wire \cnt[3]_i_1_n_0 ;
  wire \cnt[4]_i_1_n_0 ;
  wire \cnt[5]_i_1_n_0 ;
  wire \cnt[6]_i_1_n_0 ;
  wire \cnt[7]_i_2_n_0 ;
  wire \cnt[7]_i_3_n_0 ;
  wire cnt_0;
  wire next_state;
  wire [11:0]r_data;
  wire [11:0]r_data_b0;
  wire \r_data_b0[0]_i_1_n_0 ;
  wire \r_data_b0[10]_i_1_n_0 ;
  wire \r_data_b0[11]_i_1_n_0 ;
  wire \r_data_b0[11]_i_2_n_0 ;
  wire \r_data_b0[11]_i_3_n_0 ;
  wire \r_data_b0[1]_i_1_n_0 ;
  wire \r_data_b0[2]_i_1_n_0 ;
  wire \r_data_b0[3]_i_1_n_0 ;
  wire \r_data_b0[3]_i_2_n_0 ;
  wire \r_data_b0[4]_i_1_n_0 ;
  wire \r_data_b0[5]_i_1_n_0 ;
  wire \r_data_b0[6]_i_1_n_0 ;
  wire \r_data_b0[7]_i_1_n_0 ;
  wire \r_data_b0[7]_i_2_n_0 ;
  wire \r_data_b0[8]_i_1_n_0 ;
  wire \r_data_b0[9]_i_1_n_0 ;
  wire r_ready;
  wire r_valid;
  wire r_valid_b0;
  wire rstn;
  wire spi_clk;
  wire spi_csn;
  wire spi_csn_i_1_n_0;
  wire spi_miso;
  wire spi_mosi;
  wire spi_mosi_i_1_n_0;
  wire spi_mosi_i_2_n_0;
  wire spi_mosi_i_3_n_0;
  wire spi_mosi_i_4_n_0;
  wire spi_mosi_i_5_n_0;
  wire [11:0]w_data;
  wire [11:0]w_data_b0;
  wire w_ready;
  wire w_ready_i_1_n_0;
  wire w_valid;

  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b1)) 
    \FSM_onehot_next_state_reg[0] 
       (.CLR(1'b0),
        .D(\FSM_onehot_next_state_reg[0]_i_1_n_0 ),
        .G(next_state),
        .GE(1'b1),
        .Q(\FSM_onehot_next_state_reg_n_0_[0] ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_next_state_reg[0]_i_1 
       (.I0(r_valid_b0),
        .I1(w_valid),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\FSM_onehot_next_state_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_next_state_reg[1] 
       (.CLR(1'b0),
        .D(\FSM_onehot_next_state_reg[1]_i_1_n_0 ),
        .G(next_state),
        .GE(1'b1),
        .Q(\FSM_onehot_next_state_reg_n_0_[1] ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_next_state_reg[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(w_valid),
        .O(\FSM_onehot_next_state_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_next_state_reg[2] 
       (.CLR(1'b0),
        .D(\FSM_onehot_next_state_reg[2]_i_1_n_0 ),
        .G(next_state),
        .GE(1'b1),
        .Q(\FSM_onehot_next_state_reg_n_0_[2] ));
  LUT6 #(
    .INIT(64'hABABBBABAAAAAAAA)) 
    \FSM_onehot_next_state_reg[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_next_state_reg[3]_i_3_n_0 ),
        .I2(cnt[3]),
        .I3(\FSM_onehot_next_state_reg[2]_i_2_n_0 ),
        .I4(cnt[2]),
        .I5(clk_en),
        .O(\FSM_onehot_next_state_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_onehot_next_state_reg[2]_i_2 
       (.I0(cnt[0]),
        .I1(cnt[1]),
        .O(\FSM_onehot_next_state_reg[2]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_next_state_reg[3] 
       (.CLR(1'b0),
        .D(\FSM_onehot_next_state_reg[3]_i_1_n_0 ),
        .G(next_state),
        .GE(1'b1),
        .Q(\FSM_onehot_next_state_reg_n_0_[3] ));
  LUT6 #(
    .INIT(64'hFFFFEA0000000000)) 
    \FSM_onehot_next_state_reg[3]_i_1 
       (.I0(cnt[2]),
        .I1(cnt[0]),
        .I2(cnt[1]),
        .I3(cnt[3]),
        .I4(\FSM_onehot_next_state_reg[3]_i_3_n_0 ),
        .I5(clk_en),
        .O(\FSM_onehot_next_state_reg[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFEFEFEFEFEFE)) 
    \FSM_onehot_next_state_reg[3]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(clk_en),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(r_ready),
        .I4(r_valid_b0),
        .I5(r_valid),
        .O(next_state));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_next_state_reg[3]_i_3 
       (.I0(cnt[6]),
        .I1(cnt[5]),
        .I2(cnt[7]),
        .I3(cnt[4]),
        .O(\FSM_onehot_next_state_reg[3]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "s_idle:0001,s_cs:0010,s_data:0100,s_sync:1000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_next_state_reg_n_0_[0] ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(w_ready_i_1_n_0));
  (* FSM_ENCODED_STATES = "s_idle:0001,s_cs:0010,s_data:0100,s_sync:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_next_state_reg_n_0_[1] ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .R(w_ready_i_1_n_0));
  (* FSM_ENCODED_STATES = "s_idle:0001,s_cs:0010,s_data:0100,s_sync:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_next_state_reg_n_0_[2] ),
        .Q(clk_en),
        .R(w_ready_i_1_n_0));
  (* FSM_ENCODED_STATES = "s_idle:0001,s_cs:0010,s_data:0100,s_sync:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_next_state_reg_n_0_[3] ),
        .Q(r_valid_b0),
        .R(w_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clk_en_reg
       (.C(clk),
        .CE(1'b1),
        .D(clk_en),
        .Q(clk_en_reg_n_0),
        .R(w_ready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[0]_i_1 
       (.I0(clk_en),
        .I1(cnt[0]),
        .O(\cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \cnt[1]_i_1 
       (.I0(cnt[1]),
        .I1(cnt[0]),
        .I2(clk_en),
        .O(\cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \cnt[2]_i_1 
       (.I0(clk_en),
        .I1(cnt[0]),
        .I2(cnt[1]),
        .I3(cnt[2]),
        .O(\cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \cnt[3]_i_1 
       (.I0(clk_en),
        .I1(cnt[1]),
        .I2(cnt[0]),
        .I3(cnt[2]),
        .I4(cnt[3]),
        .O(\cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \cnt[4]_i_1 
       (.I0(clk_en),
        .I1(cnt[2]),
        .I2(cnt[0]),
        .I3(cnt[1]),
        .I4(cnt[3]),
        .I5(cnt[4]),
        .O(\cnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA2AAAAAA08000000)) 
    \cnt[5]_i_1 
       (.I0(clk_en),
        .I1(cnt[3]),
        .I2(\FSM_onehot_next_state_reg[2]_i_2_n_0 ),
        .I3(cnt[2]),
        .I4(cnt[4]),
        .I5(cnt[5]),
        .O(\cnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \cnt[6]_i_1 
       (.I0(clk_en),
        .I1(\cnt[7]_i_3_n_0 ),
        .I2(cnt[6]),
        .O(\cnt[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \cnt[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(clk_en),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .O(cnt_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7800)) 
    \cnt[7]_i_2 
       (.I0(\cnt[7]_i_3_n_0 ),
        .I1(cnt[6]),
        .I2(cnt[7]),
        .I3(clk_en),
        .O(\cnt[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cnt[7]_i_3 
       (.I0(cnt[5]),
        .I1(cnt[4]),
        .I2(cnt[2]),
        .I3(cnt[0]),
        .I4(cnt[1]),
        .I5(cnt[3]),
        .O(\cnt[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(clk),
        .CE(cnt_0),
        .D(\cnt[0]_i_1_n_0 ),
        .Q(cnt[0]),
        .R(w_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(clk),
        .CE(cnt_0),
        .D(\cnt[1]_i_1_n_0 ),
        .Q(cnt[1]),
        .R(w_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(clk),
        .CE(cnt_0),
        .D(\cnt[2]_i_1_n_0 ),
        .Q(cnt[2]),
        .R(w_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(clk),
        .CE(cnt_0),
        .D(\cnt[3]_i_1_n_0 ),
        .Q(cnt[3]),
        .R(w_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(clk),
        .CE(cnt_0),
        .D(\cnt[4]_i_1_n_0 ),
        .Q(cnt[4]),
        .R(w_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(clk),
        .CE(cnt_0),
        .D(\cnt[5]_i_1_n_0 ),
        .Q(cnt[5]),
        .R(w_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[6] 
       (.C(clk),
        .CE(cnt_0),
        .D(\cnt[6]_i_1_n_0 ),
        .Q(cnt[6]),
        .R(w_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[7] 
       (.C(clk),
        .CE(cnt_0),
        .D(\cnt[7]_i_2_n_0 ),
        .Q(cnt[7]),
        .R(w_ready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \r_data_b0[0]_i_1 
       (.I0(spi_miso),
        .I1(\r_data_b0[11]_i_3_n_0 ),
        .I2(cnt[0]),
        .I3(cnt[1]),
        .I4(\r_data_b0[3]_i_2_n_0 ),
        .I5(r_data_b0[0]),
        .O(\r_data_b0[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \r_data_b0[10]_i_1 
       (.I0(spi_miso),
        .I1(\r_data_b0[11]_i_2_n_0 ),
        .I2(\r_data_b0[11]_i_3_n_0 ),
        .I3(cnt[1]),
        .I4(cnt[0]),
        .I5(r_data_b0[10]),
        .O(\r_data_b0[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \r_data_b0[11]_i_1 
       (.I0(spi_miso),
        .I1(\r_data_b0[11]_i_2_n_0 ),
        .I2(\r_data_b0[11]_i_3_n_0 ),
        .I3(cnt[0]),
        .I4(cnt[1]),
        .I5(r_data_b0[11]),
        .O(\r_data_b0[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0000001E)) 
    \r_data_b0[11]_i_2 
       (.I0(cnt[0]),
        .I1(cnt[1]),
        .I2(cnt[2]),
        .I3(\FSM_onehot_next_state_reg[3]_i_3_n_0 ),
        .I4(cnt[3]),
        .O(\r_data_b0[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \r_data_b0[11]_i_3 
       (.I0(cnt[3]),
        .I1(\FSM_onehot_next_state_reg[3]_i_3_n_0 ),
        .I2(cnt[1]),
        .I3(cnt[0]),
        .I4(cnt[2]),
        .I5(clk_en),
        .O(\r_data_b0[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \r_data_b0[1]_i_1 
       (.I0(spi_miso),
        .I1(\r_data_b0[11]_i_3_n_0 ),
        .I2(cnt[0]),
        .I3(cnt[1]),
        .I4(\r_data_b0[3]_i_2_n_0 ),
        .I5(r_data_b0[1]),
        .O(\r_data_b0[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \r_data_b0[2]_i_1 
       (.I0(spi_miso),
        .I1(\r_data_b0[11]_i_3_n_0 ),
        .I2(cnt[1]),
        .I3(cnt[0]),
        .I4(\r_data_b0[3]_i_2_n_0 ),
        .I5(r_data_b0[2]),
        .O(\r_data_b0[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \r_data_b0[3]_i_1 
       (.I0(spi_miso),
        .I1(\r_data_b0[11]_i_3_n_0 ),
        .I2(cnt[0]),
        .I3(cnt[1]),
        .I4(\r_data_b0[3]_i_2_n_0 ),
        .I5(r_data_b0[3]),
        .O(\r_data_b0[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFDDDDF)) 
    \r_data_b0[3]_i_2 
       (.I0(cnt[3]),
        .I1(\FSM_onehot_next_state_reg[3]_i_3_n_0 ),
        .I2(cnt[0]),
        .I3(cnt[1]),
        .I4(cnt[2]),
        .O(\r_data_b0[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \r_data_b0[4]_i_1 
       (.I0(spi_miso),
        .I1(\r_data_b0[11]_i_3_n_0 ),
        .I2(cnt[0]),
        .I3(cnt[1]),
        .I4(\r_data_b0[7]_i_2_n_0 ),
        .I5(r_data_b0[4]),
        .O(\r_data_b0[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \r_data_b0[5]_i_1 
       (.I0(spi_miso),
        .I1(\r_data_b0[11]_i_3_n_0 ),
        .I2(cnt[0]),
        .I3(cnt[1]),
        .I4(\r_data_b0[7]_i_2_n_0 ),
        .I5(r_data_b0[5]),
        .O(\r_data_b0[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \r_data_b0[6]_i_1 
       (.I0(spi_miso),
        .I1(\r_data_b0[11]_i_3_n_0 ),
        .I2(cnt[1]),
        .I3(cnt[0]),
        .I4(\r_data_b0[7]_i_2_n_0 ),
        .I5(r_data_b0[6]),
        .O(\r_data_b0[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \r_data_b0[7]_i_1 
       (.I0(spi_miso),
        .I1(\r_data_b0[11]_i_3_n_0 ),
        .I2(cnt[0]),
        .I3(cnt[1]),
        .I4(\r_data_b0[7]_i_2_n_0 ),
        .I5(r_data_b0[7]),
        .O(\r_data_b0[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFABFD)) 
    \r_data_b0[7]_i_2 
       (.I0(cnt[3]),
        .I1(cnt[0]),
        .I2(cnt[1]),
        .I3(cnt[2]),
        .I4(\FSM_onehot_next_state_reg[3]_i_3_n_0 ),
        .O(\r_data_b0[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \r_data_b0[8]_i_1 
       (.I0(spi_miso),
        .I1(\r_data_b0[11]_i_2_n_0 ),
        .I2(\r_data_b0[11]_i_3_n_0 ),
        .I3(cnt[0]),
        .I4(cnt[1]),
        .I5(r_data_b0[8]),
        .O(\r_data_b0[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \r_data_b0[9]_i_1 
       (.I0(spi_miso),
        .I1(\r_data_b0[11]_i_2_n_0 ),
        .I2(\r_data_b0[11]_i_3_n_0 ),
        .I3(cnt[0]),
        .I4(cnt[1]),
        .I5(r_data_b0[9]),
        .O(\r_data_b0[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_data_b0_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_data_b0[0]_i_1_n_0 ),
        .Q(r_data_b0[0]),
        .R(w_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_data_b0_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_data_b0[10]_i_1_n_0 ),
        .Q(r_data_b0[10]),
        .R(w_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_data_b0_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_data_b0[11]_i_1_n_0 ),
        .Q(r_data_b0[11]),
        .R(w_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_data_b0_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_data_b0[1]_i_1_n_0 ),
        .Q(r_data_b0[1]),
        .R(w_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_data_b0_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_data_b0[2]_i_1_n_0 ),
        .Q(r_data_b0[2]),
        .R(w_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_data_b0_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_data_b0[3]_i_1_n_0 ),
        .Q(r_data_b0[3]),
        .R(w_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_data_b0_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_data_b0[4]_i_1_n_0 ),
        .Q(r_data_b0[4]),
        .R(w_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_data_b0_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_data_b0[5]_i_1_n_0 ),
        .Q(r_data_b0[5]),
        .R(w_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_data_b0_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_data_b0[6]_i_1_n_0 ),
        .Q(r_data_b0[6]),
        .R(w_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_data_b0_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_data_b0[7]_i_1_n_0 ),
        .Q(r_data_b0[7]),
        .R(w_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_data_b0_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_data_b0[8]_i_1_n_0 ),
        .Q(r_data_b0[8]),
        .R(w_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_data_b0_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_data_b0[9]_i_1_n_0 ),
        .Q(r_data_b0[9]),
        .R(w_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_data_reg[0] 
       (.C(clk),
        .CE(r_valid_b0),
        .D(r_data_b0[0]),
        .Q(r_data[0]),
        .R(w_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_data_reg[10] 
       (.C(clk),
        .CE(r_valid_b0),
        .D(r_data_b0[10]),
        .Q(r_data[10]),
        .R(w_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_data_reg[11] 
       (.C(clk),
        .CE(r_valid_b0),
        .D(r_data_b0[11]),
        .Q(r_data[11]),
        .R(w_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_data_reg[1] 
       (.C(clk),
        .CE(r_valid_b0),
        .D(r_data_b0[1]),
        .Q(r_data[1]),
        .R(w_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_data_reg[2] 
       (.C(clk),
        .CE(r_valid_b0),
        .D(r_data_b0[2]),
        .Q(r_data[2]),
        .R(w_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_data_reg[3] 
       (.C(clk),
        .CE(r_valid_b0),
        .D(r_data_b0[3]),
        .Q(r_data[3]),
        .R(w_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_data_reg[4] 
       (.C(clk),
        .CE(r_valid_b0),
        .D(r_data_b0[4]),
        .Q(r_data[4]),
        .R(w_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_data_reg[5] 
       (.C(clk),
        .CE(r_valid_b0),
        .D(r_data_b0[5]),
        .Q(r_data[5]),
        .R(w_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_data_reg[6] 
       (.C(clk),
        .CE(r_valid_b0),
        .D(r_data_b0[6]),
        .Q(r_data[6]),
        .R(w_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_data_reg[7] 
       (.C(clk),
        .CE(r_valid_b0),
        .D(r_data_b0[7]),
        .Q(r_data[7]),
        .R(w_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_data_reg[8] 
       (.C(clk),
        .CE(r_valid_b0),
        .D(r_data_b0[8]),
        .Q(r_data[8]),
        .R(w_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r_data_reg[9] 
       (.C(clk),
        .CE(r_valid_b0),
        .D(r_data_b0[9]),
        .Q(r_data[9]),
        .R(w_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    r_valid_b0_reg
       (.C(clk),
        .CE(1'b1),
        .D(r_valid_b0),
        .Q(r_valid),
        .R(w_ready_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    spi_clk_INST_0
       (.I0(clk_en_reg_n_0),
        .I1(clk),
        .O(spi_clk));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hE)) 
    spi_csn_i_1
       (.I0(r_valid_b0),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .O(spi_csn_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    spi_csn_reg
       (.C(clk),
        .CE(1'b1),
        .D(spi_csn_i_1_n_0),
        .Q(spi_csn),
        .S(w_ready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    spi_mosi_i_1
       (.I0(spi_mosi_i_2_n_0),
        .I1(r_valid_b0),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(spi_mosi_i_1_n_0));
  LUT6 #(
    .INIT(64'h8AA880A88A088008)) 
    spi_mosi_i_2
       (.I0(clk_en),
        .I1(spi_mosi_i_3_n_0),
        .I2(cnt[3]),
        .I3(cnt[2]),
        .I4(spi_mosi_i_4_n_0),
        .I5(spi_mosi_i_5_n_0),
        .O(spi_mosi_i_2_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    spi_mosi_i_3
       (.I0(w_data_b0[8]),
        .I1(w_data_b0[9]),
        .I2(cnt[1]),
        .I3(w_data_b0[10]),
        .I4(cnt[0]),
        .I5(w_data_b0[11]),
        .O(spi_mosi_i_3_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    spi_mosi_i_4
       (.I0(w_data_b0[4]),
        .I1(w_data_b0[5]),
        .I2(cnt[1]),
        .I3(w_data_b0[6]),
        .I4(cnt[0]),
        .I5(w_data_b0[7]),
        .O(spi_mosi_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    spi_mosi_i_5
       (.I0(w_data_b0[0]),
        .I1(w_data_b0[1]),
        .I2(cnt[1]),
        .I3(w_data_b0[2]),
        .I4(cnt[0]),
        .I5(w_data_b0[3]),
        .O(spi_mosi_i_5_n_0));
  FDSE #(
    .INIT(1'b1)) 
    spi_mosi_reg
       (.C(clk),
        .CE(1'b1),
        .D(spi_mosi_i_1_n_0),
        .Q(spi_mosi),
        .S(w_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \w_data_b0_reg[0] 
       (.C(clk),
        .CE(\FSM_onehot_state_reg_n_0_[0] ),
        .D(w_data[0]),
        .Q(w_data_b0[0]),
        .R(w_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \w_data_b0_reg[10] 
       (.C(clk),
        .CE(\FSM_onehot_state_reg_n_0_[0] ),
        .D(w_data[10]),
        .Q(w_data_b0[10]),
        .R(w_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \w_data_b0_reg[11] 
       (.C(clk),
        .CE(\FSM_onehot_state_reg_n_0_[0] ),
        .D(w_data[11]),
        .Q(w_data_b0[11]),
        .R(w_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \w_data_b0_reg[1] 
       (.C(clk),
        .CE(\FSM_onehot_state_reg_n_0_[0] ),
        .D(w_data[1]),
        .Q(w_data_b0[1]),
        .R(w_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \w_data_b0_reg[2] 
       (.C(clk),
        .CE(\FSM_onehot_state_reg_n_0_[0] ),
        .D(w_data[2]),
        .Q(w_data_b0[2]),
        .R(w_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \w_data_b0_reg[3] 
       (.C(clk),
        .CE(\FSM_onehot_state_reg_n_0_[0] ),
        .D(w_data[3]),
        .Q(w_data_b0[3]),
        .R(w_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \w_data_b0_reg[4] 
       (.C(clk),
        .CE(\FSM_onehot_state_reg_n_0_[0] ),
        .D(w_data[4]),
        .Q(w_data_b0[4]),
        .R(w_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \w_data_b0_reg[5] 
       (.C(clk),
        .CE(\FSM_onehot_state_reg_n_0_[0] ),
        .D(w_data[5]),
        .Q(w_data_b0[5]),
        .R(w_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \w_data_b0_reg[6] 
       (.C(clk),
        .CE(\FSM_onehot_state_reg_n_0_[0] ),
        .D(w_data[6]),
        .Q(w_data_b0[6]),
        .R(w_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \w_data_b0_reg[7] 
       (.C(clk),
        .CE(\FSM_onehot_state_reg_n_0_[0] ),
        .D(w_data[7]),
        .Q(w_data_b0[7]),
        .R(w_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \w_data_b0_reg[8] 
       (.C(clk),
        .CE(\FSM_onehot_state_reg_n_0_[0] ),
        .D(w_data[8]),
        .Q(w_data_b0[8]),
        .R(w_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \w_data_b0_reg[9] 
       (.C(clk),
        .CE(\FSM_onehot_state_reg_n_0_[0] ),
        .D(w_data[9]),
        .Q(w_data_b0[9]),
        .R(w_ready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    w_ready_i_1
       (.I0(rstn),
        .O(w_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    w_ready_reg
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state_reg_n_0_[0] ),
        .Q(w_ready),
        .R(w_ready_i_1_n_0));
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
