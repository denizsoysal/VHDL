// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Wed Jun 16 14:50:43 2021
// Host        : Laptop-de-Deniz running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/deniz/Desktop/Genitek_stage_tfe/TFE/VHDL/version_stable/ICTBRD_last_version/project_3.srcs/sources_1/bd/top_bd/ip/top_bd_power_management_0_0/top_bd_power_management_0_0_sim_netlist.v
// Design      : top_bd_power_management_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "top_bd_power_management_0_0,power_management,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "power_management,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module top_bd_power_management_0_0
   (rstn,
    clk,
    value_5V,
    value_I_VMECPU,
    IOV_VMECPU,
    board_started,
    PG_PWR_5V,
    EN_PWR_5V,
    start_btnn,
    testing_bit,
    ready_bit,
    shut_down);
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rstn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rstn;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rstn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input clk;
  input [11:0]value_5V;
  input [11:0]value_I_VMECPU;
  input IOV_VMECPU;
  output board_started;
  input PG_PWR_5V;
  output EN_PWR_5V;
  input start_btnn;
  output testing_bit;
  output ready_bit;
  output shut_down;

  wire EN_PWR_5V;
  wire IOV_VMECPU;
  wire PG_PWR_5V;
  wire board_started;
  wire clk;
  wire ready_bit;
  wire rstn;
  wire shut_down;
  wire start_btnn;
  wire testing_bit;
  wire [11:0]value_5V;

  top_bd_power_management_0_0_power_management U0
       (.EN_PWR_5V(EN_PWR_5V),
        .IOV_VMECPU(IOV_VMECPU),
        .PG_PWR_5V(PG_PWR_5V),
        .board_started(board_started),
        .clk(clk),
        .ready_bit(ready_bit),
        .rstn(rstn),
        .shut_down(shut_down),
        .start_btnn(start_btnn),
        .testing_bit(testing_bit),
        .value_5V(value_5V[11:2]));
endmodule

(* ORIG_REF_NAME = "power_management" *) 
module top_bd_power_management_0_0_power_management
   (board_started,
    EN_PWR_5V,
    testing_bit,
    shut_down,
    ready_bit,
    value_5V,
    clk,
    rstn,
    PG_PWR_5V,
    IOV_VMECPU,
    start_btnn);
  output board_started;
  output EN_PWR_5V;
  output testing_bit;
  output shut_down;
  output ready_bit;
  input [9:0]value_5V;
  input clk;
  input rstn;
  input PG_PWR_5V;
  input IOV_VMECPU;
  input start_btnn;

  wire EN_PWR_5V;
  wire EN_PWR_5V_i_1_n_0;
  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[0]_i_3_n_0 ;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire \FSM_sequential_state[1]_i_3_n_0 ;
  wire \FSM_sequential_state[1]_i_4_n_0 ;
  wire \FSM_sequential_state_reg_n_0_[1] ;
  wire IOV_VMECPU;
  wire PG_PWR_5V;
  wire board_started;
  wire board_started_i_1_n_0;
  wire board_started_i_2_n_0;
  wire clk;
  wire [1:0]next_state;
  wire [0:0]p_1_out;
  wire ready_bit;
  wire ready_bit_i_1_n_0;
  wire rstn;
  wire shut_down;
  wire shut_down_i_1_n_0;
  wire [14:0]start_btn;
  wire start_btn_com;
  wire start_btn_com_b0;
  wire start_btn_com_i_1_n_0;
  wire start_btn_com_i_2_n_0;
  wire start_btn_com_i_3_n_0;
  wire start_btn_com_i_4_n_0;
  wire \start_btn_reg_n_0_[15] ;
  wire start_btnn;
  wire [0:0]state;
  wire testing_bit;
  wire testing_bit_i_1_n_0;
  wire [9:0]value_5V;

  LUT2 #(
    .INIT(4'h6)) 
    EN_PWR_5V_i_1
       (.I0(state),
        .I1(\FSM_sequential_state_reg_n_0_[1] ),
        .O(EN_PWR_5V_i_1_n_0));
  FDRE EN_PWR_5V_reg
       (.C(clk),
        .CE(1'b1),
        .D(EN_PWR_5V_i_1_n_0),
        .Q(EN_PWR_5V),
        .R(board_started_i_1_n_0));
  LUT6 #(
    .INIT(64'hEEEEFFEEEEEEFEEE)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(\FSM_sequential_state[0]_i_2_n_0 ),
        .I1(\FSM_sequential_state[0]_i_3_n_0 ),
        .I2(\FSM_sequential_state[1]_i_3_n_0 ),
        .I3(state),
        .I4(value_5V[8]),
        .I5(\FSM_sequential_state[1]_i_2_n_0 ),
        .O(next_state[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFF2A2A2A)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(state),
        .I1(PG_PWR_5V),
        .I2(value_5V[9]),
        .I3(\FSM_sequential_state_reg_n_0_[1] ),
        .I4(IOV_VMECPU),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hF002)) 
    \FSM_sequential_state[0]_i_3 
       (.I0(start_btn_com_b0),
        .I1(start_btn_com),
        .I2(state),
        .I3(\FSM_sequential_state_reg_n_0_[1] ),
        .O(\FSM_sequential_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000F100)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .I2(value_5V[8]),
        .I3(state),
        .I4(\FSM_sequential_state[1]_i_4_n_0 ),
        .I5(\FSM_sequential_state_reg_n_0_[1] ),
        .O(next_state[1]));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(value_5V[5]),
        .I1(value_5V[4]),
        .I2(value_5V[7]),
        .I3(value_5V[6]),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0007)) 
    \FSM_sequential_state[1]_i_3 
       (.I0(value_5V[1]),
        .I1(value_5V[0]),
        .I2(value_5V[3]),
        .I3(value_5V[2]),
        .O(\FSM_sequential_state[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_sequential_state[1]_i_4 
       (.I0(PG_PWR_5V),
        .I1(value_5V[9]),
        .O(\FSM_sequential_state[1]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "s_idle:00,s_start_dut:01,s_dut_powered:10,s_dut_power_off:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(next_state[0]),
        .Q(state),
        .R(board_started_i_1_n_0));
  (* FSM_ENCODED_STATES = "s_idle:00,s_start_dut:01,s_dut_powered:10,s_dut_power_off:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(next_state[1]),
        .Q(\FSM_sequential_state_reg_n_0_[1] ),
        .R(board_started_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    board_started_i_1
       (.I0(rstn),
        .O(board_started_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    board_started_i_2
       (.I0(\FSM_sequential_state_reg_n_0_[1] ),
        .I1(state),
        .O(board_started_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    board_started_reg
       (.C(clk),
        .CE(1'b1),
        .D(board_started_i_2_n_0),
        .Q(board_started),
        .R(board_started_i_1_n_0));
  LUT3 #(
    .INIT(8'h74)) 
    ready_bit_i_1
       (.I0(\FSM_sequential_state_reg_n_0_[1] ),
        .I1(rstn),
        .I2(ready_bit),
        .O(ready_bit_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ready_bit_reg
       (.C(clk),
        .CE(1'b1),
        .D(ready_bit_i_1_n_0),
        .Q(ready_bit),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    shut_down_i_1
       (.I0(state),
        .I1(\FSM_sequential_state_reg_n_0_[1] ),
        .I2(rstn),
        .I3(shut_down),
        .O(shut_down_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    shut_down_reg
       (.C(clk),
        .CE(1'b1),
        .D(shut_down_i_1_n_0),
        .Q(shut_down),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \start_btn[0]_i_1 
       (.I0(start_btnn),
        .O(p_1_out));
  FDRE #(
    .INIT(1'b0)) 
    start_btn_com_b0_reg
       (.C(clk),
        .CE(1'b1),
        .D(start_btn_com),
        .Q(start_btn_com_b0),
        .R(board_started_i_1_n_0));
  LUT5 #(
    .INIT(32'h80FF8000)) 
    start_btn_com_i_1
       (.I0(start_btn_com_i_2_n_0),
        .I1(start_btn_com_i_3_n_0),
        .I2(start_btn_com_i_4_n_0),
        .I3(rstn),
        .I4(start_btn_com),
        .O(start_btn_com_i_1_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    start_btn_com_i_2
       (.I0(start_btn[12]),
        .I1(start_btn[13]),
        .I2(start_btn[10]),
        .I3(start_btn[11]),
        .I4(\start_btn_reg_n_0_[15] ),
        .I5(start_btn[14]),
        .O(start_btn_com_i_2_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    start_btn_com_i_3
       (.I0(start_btn[1]),
        .I1(start_btn[0]),
        .I2(start_btn[3]),
        .I3(start_btn[2]),
        .O(start_btn_com_i_3_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    start_btn_com_i_4
       (.I0(start_btn[6]),
        .I1(start_btn[7]),
        .I2(start_btn[4]),
        .I3(start_btn[5]),
        .I4(start_btn[9]),
        .I5(start_btn[8]),
        .O(start_btn_com_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    start_btn_com_reg
       (.C(clk),
        .CE(1'b1),
        .D(start_btn_com_i_1_n_0),
        .Q(start_btn_com),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_btn_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_out),
        .Q(start_btn[0]),
        .R(board_started_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \start_btn_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(start_btn[9]),
        .Q(start_btn[10]),
        .R(board_started_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \start_btn_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(start_btn[10]),
        .Q(start_btn[11]),
        .R(board_started_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \start_btn_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(start_btn[11]),
        .Q(start_btn[12]),
        .R(board_started_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \start_btn_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(start_btn[12]),
        .Q(start_btn[13]),
        .R(board_started_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \start_btn_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(start_btn[13]),
        .Q(start_btn[14]),
        .R(board_started_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \start_btn_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(start_btn[14]),
        .Q(\start_btn_reg_n_0_[15] ),
        .R(board_started_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \start_btn_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(start_btn[0]),
        .Q(start_btn[1]),
        .R(board_started_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \start_btn_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(start_btn[1]),
        .Q(start_btn[2]),
        .R(board_started_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \start_btn_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(start_btn[2]),
        .Q(start_btn[3]),
        .R(board_started_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \start_btn_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(start_btn[3]),
        .Q(start_btn[4]),
        .R(board_started_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \start_btn_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(start_btn[4]),
        .Q(start_btn[5]),
        .R(board_started_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \start_btn_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(start_btn[5]),
        .Q(start_btn[6]),
        .R(board_started_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \start_btn_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(start_btn[6]),
        .Q(start_btn[7]),
        .R(board_started_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \start_btn_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(start_btn[7]),
        .Q(start_btn[8]),
        .R(board_started_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \start_btn_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(start_btn[8]),
        .Q(start_btn[9]),
        .R(board_started_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F40)) 
    testing_bit_i_1
       (.I0(state),
        .I1(rstn),
        .I2(\FSM_sequential_state_reg_n_0_[1] ),
        .I3(testing_bit),
        .O(testing_bit_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    testing_bit_reg
       (.C(clk),
        .CE(1'b1),
        .D(testing_bit_i_1_n_0),
        .Q(testing_bit),
        .R(1'b0));
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
