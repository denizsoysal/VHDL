// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Wed Jun 16 11:20:02 2021
// Host        : Laptop-de-Deniz running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/deniz/Desktop/Genitek_stage_tfe/TFE/VHDL/version_stable/ICTBRD_last_version/project_3.srcs/sources_1/bd/top_bd/ip/top_bd_clk_div_0_0/top_bd_clk_div_0_0_sim_netlist.v
// Design      : top_bd_clk_div_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "top_bd_clk_div_0_0,clk_div,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "clk_div,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module top_bd_clk_div_0_0
   (clk_in,
    clk_out);
  input clk_in;
  output clk_out;

  wire clk_in;
  wire clk_out;

  top_bd_clk_div_0_0_clk_div U0
       (.clk_in(clk_in),
        .clk_out(clk_out));
endmodule

(* ORIG_REF_NAME = "clk_div" *) 
module top_bd_clk_div_0_0_clk_div
   (clk_out,
    clk_in);
  output clk_out;
  input clk_in;

  wire clk_in;
  wire clk_out;
  wire clk_out_i_i_1_n_0;
  wire clk_out_i_i_2_n_0;
  wire [7:0]cnt;
  wire \cnt[4]_i_2_n_0 ;
  wire \cnt[4]_i_3_n_0 ;
  wire \cnt[7]_i_2_n_0 ;
  wire [7:0]cnt_0;

  LUT6 #(
    .INIT(64'hFFFFFFEF00000010)) 
    clk_out_i_i_1
       (.I0(clk_out_i_i_2_n_0),
        .I1(cnt[3]),
        .I2(cnt[4]),
        .I3(cnt[7]),
        .I4(cnt[6]),
        .I5(clk_out),
        .O(clk_out_i_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    clk_out_i_i_2
       (.I0(cnt[1]),
        .I1(cnt[0]),
        .I2(cnt[5]),
        .I3(cnt[2]),
        .O(clk_out_i_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clk_out_i_reg
       (.C(clk_in),
        .CE(1'b1),
        .D(clk_out_i_i_1_n_0),
        .Q(clk_out),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1 
       (.I0(cnt[0]),
        .O(cnt_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt[1]_i_1 
       (.I0(cnt[0]),
        .I1(cnt[1]),
        .O(cnt_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h0FFFB000)) 
    \cnt[2]_i_1 
       (.I0(cnt[5]),
        .I1(\cnt[4]_i_2_n_0 ),
        .I2(cnt[0]),
        .I3(cnt[1]),
        .I4(cnt[2]),
        .O(cnt_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \cnt[3]_i_1 
       (.I0(cnt[3]),
        .I1(cnt[0]),
        .I2(cnt[1]),
        .I3(cnt[2]),
        .O(cnt_0[3]));
  LUT6 #(
    .INIT(64'hF0F00FF0F0F0D0D0)) 
    \cnt[4]_i_1 
       (.I0(\cnt[4]_i_2_n_0 ),
        .I1(cnt[5]),
        .I2(cnt[4]),
        .I3(cnt[3]),
        .I4(\cnt[4]_i_3_n_0 ),
        .I5(cnt[2]),
        .O(cnt_0[4]));
  LUT4 #(
    .INIT(16'h0004)) 
    \cnt[4]_i_2 
       (.I0(cnt[3]),
        .I1(cnt[4]),
        .I2(cnt[7]),
        .I3(cnt[6]),
        .O(\cnt[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \cnt[4]_i_3 
       (.I0(cnt[0]),
        .I1(cnt[1]),
        .O(\cnt[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \cnt[5]_i_1 
       (.I0(cnt[5]),
        .I1(cnt[4]),
        .I2(cnt[3]),
        .I3(cnt[0]),
        .I4(cnt[1]),
        .I5(cnt[2]),
        .O(cnt_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \cnt[6]_i_1 
       (.I0(cnt[6]),
        .I1(\cnt[7]_i_2_n_0 ),
        .I2(cnt[5]),
        .O(cnt_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \cnt[7]_i_1 
       (.I0(cnt[7]),
        .I1(cnt[5]),
        .I2(\cnt[7]_i_2_n_0 ),
        .I3(cnt[6]),
        .O(cnt_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \cnt[7]_i_2 
       (.I0(cnt[2]),
        .I1(cnt[1]),
        .I2(cnt[0]),
        .I3(cnt[3]),
        .I4(cnt[4]),
        .O(\cnt[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(clk_in),
        .CE(1'b1),
        .D(cnt_0[0]),
        .Q(cnt[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(clk_in),
        .CE(1'b1),
        .D(cnt_0[1]),
        .Q(cnt[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(clk_in),
        .CE(1'b1),
        .D(cnt_0[2]),
        .Q(cnt[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(clk_in),
        .CE(1'b1),
        .D(cnt_0[3]),
        .Q(cnt[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(clk_in),
        .CE(1'b1),
        .D(cnt_0[4]),
        .Q(cnt[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(clk_in),
        .CE(1'b1),
        .D(cnt_0[5]),
        .Q(cnt[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[6] 
       (.C(clk_in),
        .CE(1'b1),
        .D(cnt_0[6]),
        .Q(cnt[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[7] 
       (.C(clk_in),
        .CE(1'b1),
        .D(cnt_0[7]),
        .Q(cnt[7]),
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
