
################################################################
# This is a generated script based on design: top_bd
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2020.1
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_gid_msg -ssname BD::TCL -id 2041 -severity "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source top_bd_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# clk_div, ctrl_adc, ctrl_io_exp, ctrl_io_exp, leds_display, power_management, sequencer, spi_master, spi_master, spi_master

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a200tfbg484-1
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name top_bd

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_gid_msg -ssname BD::TCL -id 2001 -severity "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_gid_msg -ssname BD::TCL -id 2002 -severity "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_gid_msg -ssname BD::TCL -id 2003 -severity "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_gid_msg -ssname BD::TCL -id 2004 -severity "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_gid_msg -ssname BD::TCL -id 2005 -severity "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_gid_msg -ssname BD::TCL -id 2006 -severity "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set ADC_eoc [ create_bd_port -dir I ADC_eoc ]
  set CLOCK_OUT_0 [ create_bd_port -dir I -type clk CLOCK_OUT_0 ]
  set EN_PWR_5V [ create_bd_port -dir O EN_PWR_5V ]
  set IOV_VMECPU_0 [ create_bd_port -dir I IOV_VMECPU_0 ]
  set PG_PWR_5V_0 [ create_bd_port -dir I PG_PWR_5V_0 ]
  set TST_CLK_S0_0 [ create_bd_port -dir O TST_CLK_S0_0 ]
  set TST_CLK_S1_0 [ create_bd_port -dir O TST_CLK_S1_0 ]
  set TST_CLK_S2_0 [ create_bd_port -dir O TST_CLK_S2_0 ]
  set XTAL_RTC_OE_0 [ create_bd_port -dir O XTAL_RTC_OE_0 ]
  set btn_rst_t_0 [ create_bd_port -dir O btn_rst_t_0 ]
  set clk_ref [ create_bd_port -dir I -type clk -freq_hz 20000000 clk_ref ]
  set en_5v [ create_bd_port -dir I en_5v ]
  set en_led0 [ create_bd_port -dir O en_led0 ]
  set en_led1 [ create_bd_port -dir O en_led1 ]
  set hreset_0 [ create_bd_port -dir I hreset_0 ]
  set led_rst_0 [ create_bd_port -dir I -type rst led_rst_0 ]
  set led_usr_0 [ create_bd_port -dir I led_usr_0 ]
  set led_wtd_0 [ create_bd_port -dir I led_wtd_0 ]
  set pg_1V0 [ create_bd_port -dir I pg_1V0 ]
  set pg_1V2 [ create_bd_port -dir I pg_1V2 ]
  set pg_1V8 [ create_bd_port -dir I pg_1V8 ]
  set pg_3V3 [ create_bd_port -dir I pg_3V3 ]
  set pg_5v [ create_bd_port -dir I pg_5v ]
  set pg_poreset [ create_bd_port -dir I pg_poreset ]
  set pg_vcore [ create_bd_port -dir I pg_vcore ]
  set pg_vdimm [ create_bd_port -dir I pg_vdimm ]
  set rstn [ create_bd_port -dir I -type rst rstn ]
  set spi_clk [ create_bd_port -dir O -type clk spi_clk ]
  set spi_clk_0 [ create_bd_port -dir O -type clk spi_clk_0 ]
  set spi_clk_1 [ create_bd_port -dir O -type clk spi_clk_1 ]
  set spi_csn [ create_bd_port -dir O spi_csn ]
  set spi_csn_0 [ create_bd_port -dir O spi_csn_0 ]
  set spi_csn_1 [ create_bd_port -dir O spi_csn_1 ]
  set spi_miso [ create_bd_port -dir I spi_miso ]
  set spi_miso_0 [ create_bd_port -dir I spi_miso_0 ]
  set spi_miso_1 [ create_bd_port -dir I spi_miso_1 ]
  set spi_mosi [ create_bd_port -dir O spi_mosi ]
  set spi_mosi_0 [ create_bd_port -dir O spi_mosi_0 ]
  set spi_mosi_1 [ create_bd_port -dir O spi_mosi_1 ]
  set start_btnn_0 [ create_bd_port -dir I start_btnn_0 ]
  set sw_not_programmed_0 [ create_bd_port -dir I sw_not_programmed_0 ]

  # Create instance: clk_div_0, and set properties
  set block_name clk_div
  set block_cell_name clk_div_0
  if { [catch {set clk_div_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $clk_div_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.C_DIV {20} \
 ] $clk_div_0

  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_0 ]
  set_property -dict [ list \
   CONFIG.CLKIN1_JITTER_PS {500.0} \
   CONFIG.CLKOUT1_JITTER {258.391} \
   CONFIG.CLKOUT1_PHASE_ERROR {301.005} \
   CONFIG.CLKOUT2_JITTER {349.551} \
   CONFIG.CLKOUT2_PHASE_ERROR {298.249} \
   CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {32.75862} \
   CONFIG.CLKOUT2_USED {false} \
   CONFIG.CLKOUT3_JITTER {425.793} \
   CONFIG.CLKOUT3_PHASE_ERROR {298.249} \
   CONFIG.CLKOUT3_REQUESTED_OUT_FREQ {16.10169} \
   CONFIG.CLKOUT3_USED {false} \
   CONFIG.CLKOUT4_JITTER {387.125} \
   CONFIG.CLKOUT4_PHASE_ERROR {298.249} \
   CONFIG.CLKOUT4_REQUESTED_OUT_FREQ {25.000} \
   CONFIG.CLKOUT4_USED {false} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {50.000} \
   CONFIG.MMCM_CLKIN1_PERIOD {50.000} \
   CONFIG.MMCM_CLKIN2_PERIOD {10.0} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {10.000} \
   CONFIG.MMCM_CLKOUT1_DIVIDE {1} \
   CONFIG.MMCM_CLKOUT2_DIVIDE {1} \
   CONFIG.MMCM_CLKOUT3_DIVIDE {1} \
   CONFIG.NUM_OUT_CLKS {1} \
   CONFIG.PRIM_IN_FREQ {20.000} \
   CONFIG.USE_LOCKED {false} \
   CONFIG.USE_RESET {false} \
 ] $clk_wiz_0

  # Create instance: ctrl_adc_0, and set properties
  set block_name ctrl_adc
  set block_cell_name ctrl_adc_0
  if { [catch {set ctrl_adc_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $ctrl_adc_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: ctrl_io_exp_0, and set properties
  set block_name ctrl_io_exp
  set block_cell_name ctrl_io_exp_0
  if { [catch {set ctrl_io_exp_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $ctrl_io_exp_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: ctrl_io_exp_1, and set properties
  set block_name ctrl_io_exp
  set block_cell_name ctrl_io_exp_1
  if { [catch {set ctrl_io_exp_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $ctrl_io_exp_1 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.C_LENGTH_DATA {16} \
   CONFIG.C_SLAVE_ADDR {"01000100"} \
 ] $ctrl_io_exp_1

  # Create instance: leds_display_0, and set properties
  set block_name leds_display
  set block_cell_name leds_display_0
  if { [catch {set leds_display_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $leds_display_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: power_management_0, and set properties
  set block_name power_management
  set block_cell_name power_management_0
  if { [catch {set power_management_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $power_management_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: sequencer_0, and set properties
  set block_name sequencer
  set block_cell_name sequencer_0
  if { [catch {set sequencer_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $sequencer_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: spi_master_0, and set properties
  set block_name spi_master
  set block_cell_name spi_master_0
  if { [catch {set spi_master_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $spi_master_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.C_LENGTH {32} \
 ] $spi_master_0

  # Create instance: spi_master_1, and set properties
  set block_name spi_master
  set block_cell_name spi_master_1
  if { [catch {set spi_master_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $spi_master_1 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.C_LENGTH {32} \
 ] $spi_master_1

  # Create instance: spi_master_2, and set properties
  set block_name spi_master
  set block_cell_name spi_master_2
  if { [catch {set spi_master_2 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $spi_master_2 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.C_LENGTH {12} \
 ] $spi_master_2

  # Create instance: system_ila_0, and set properties
  set system_ila_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:system_ila:1.1 system_ila_0 ]
  set_property -dict [ list \
   CONFIG.C_BRAM_CNT {17} \
   CONFIG.C_MON_TYPE {NATIVE} \
   CONFIG.C_NUM_OF_PROBES {28} \
   CONFIG.C_PROBE10_WIDTH {65} \
   CONFIG.C_PROBE11_WIDTH {65} \
   CONFIG.C_PROBE12_WIDTH {65} \
   CONFIG.C_PROBE13_WIDTH {65} \
   CONFIG.C_PROBE25_WIDTH {65} \
   CONFIG.C_PROBE6_WIDTH {65} \
   CONFIG.C_PROBE7_WIDTH {65} \
   CONFIG.C_PROBE8_WIDTH {65} \
   CONFIG.C_PROBE9_WIDTH {65} \
   CONFIG.C_PROBE_WIDTH_PROPAGATION {MANUAL} \
 ] $system_ila_0

  # Create port connections
  connect_bd_net -net ADC_eoc_0_1 [get_bd_ports ADC_eoc] [get_bd_pins ctrl_adc_0/ADC_eoc]
  connect_bd_net -net CLOCK_OUT_0_1 [get_bd_ports CLOCK_OUT_0] [get_bd_pins sequencer_0/CLOCK_OUT]
  connect_bd_net -net IOV_VMECPU_0_1 [get_bd_ports IOV_VMECPU_0] [get_bd_pins power_management_0/IOV_VMECPU]
  connect_bd_net -net PG_PWR_5V_0_1 [get_bd_ports PG_PWR_5V_0] [get_bd_pins power_management_0/PG_PWR_5V]
  connect_bd_net -net clk_div_0_clk_out [get_bd_pins clk_div_0/clk_out] [get_bd_pins ctrl_adc_0/clk] [get_bd_pins ctrl_io_exp_0/clk] [get_bd_pins ctrl_io_exp_1/clk] [get_bd_pins leds_display_0/clk] [get_bd_pins power_management_0/clk] [get_bd_pins sequencer_0/clk] [get_bd_pins spi_master_0/clk] [get_bd_pins spi_master_1/clk] [get_bd_pins spi_master_2/clk]
  connect_bd_net -net clk_ref_1 [get_bd_ports clk_ref] [get_bd_pins clk_div_0/clk_in] [get_bd_pins clk_wiz_0/clk_in1]
  connect_bd_net -net clk_wiz_0_clk_out1 [get_bd_pins clk_wiz_0/clk_out1] [get_bd_pins sequencer_0/clk_100M] [get_bd_pins system_ila_0/clk]
  connect_bd_net -net ctrl_adc_0_AIN0_value [get_bd_pins ctrl_adc_0/AIN0_value] [get_bd_pins sequencer_0/value_3V3]
  connect_bd_net -net ctrl_adc_0_AIN1_value [get_bd_pins ctrl_adc_0/AIN1_value] [get_bd_pins sequencer_0/value_1V0]
  connect_bd_net -net ctrl_adc_0_AIN2_value [get_bd_pins ctrl_adc_0/AIN2_value] [get_bd_pins sequencer_0/value_1V8]
  connect_bd_net -net ctrl_adc_0_AIN3_value [get_bd_pins ctrl_adc_0/AIN3_value] [get_bd_pins power_management_0/value_5V] [get_bd_pins sequencer_0/value_5V]
  connect_bd_net -net ctrl_adc_0_AIN4_value [get_bd_pins ctrl_adc_0/AIN4_value] [get_bd_pins sequencer_0/value_VBAT]
  connect_bd_net -net ctrl_adc_0_AIN5_value [get_bd_pins ctrl_adc_0/AIN5_value] [get_bd_pins power_management_0/value_I_VMECPU] [get_bd_pins sequencer_0/value_I_VMECPU]
  connect_bd_net -net ctrl_adc_0_AIN6_value [get_bd_pins ctrl_adc_0/AIN6_value] [get_bd_pins sequencer_0/value_VDIMM_VTT]
  connect_bd_net -net ctrl_adc_0_AIN7_value [get_bd_pins ctrl_adc_0/AIN7_value] [get_bd_pins sequencer_0/value_VDIMM]
  connect_bd_net -net ctrl_adc_0_AIN8_value [get_bd_pins ctrl_adc_0/AIN8_value] [get_bd_pins sequencer_0/value_1V2]
  connect_bd_net -net ctrl_adc_0_AIN9_value [get_bd_pins ctrl_adc_0/AIN9_value] [get_bd_pins sequencer_0/value_VCORE]
  connect_bd_net -net ctrl_adc_0_r_ready [get_bd_pins ctrl_adc_0/r_ready] [get_bd_pins spi_master_2/r_ready]
  connect_bd_net -net ctrl_adc_0_w_data [get_bd_pins ctrl_adc_0/w_data] [get_bd_pins spi_master_2/w_data]
  connect_bd_net -net ctrl_adc_0_w_valid [get_bd_pins ctrl_adc_0/w_valid] [get_bd_pins spi_master_2/w_valid]
  connect_bd_net -net ctrl_io_exp_0_en_led0 [get_bd_ports en_led0] [get_bd_pins sequencer_0/en_led0]
  connect_bd_net -net ctrl_io_exp_0_en_led1 [get_bd_ports en_led1] [get_bd_pins sequencer_0/en_led1]
  connect_bd_net -net ctrl_io_exp_0_r_ready [get_bd_pins ctrl_io_exp_0/r_ready] [get_bd_pins spi_master_0/r_ready]
  connect_bd_net -net ctrl_io_exp_0_w_data [get_bd_pins ctrl_io_exp_0/w_data] [get_bd_pins spi_master_0/w_data]
  connect_bd_net -net ctrl_io_exp_0_w_valid [get_bd_pins ctrl_io_exp_0/w_valid] [get_bd_pins spi_master_0/w_valid]
  connect_bd_net -net ctrl_io_exp_1_r_ready [get_bd_pins ctrl_io_exp_1/r_ready] [get_bd_pins spi_master_1/r_ready]
  connect_bd_net -net ctrl_io_exp_1_w_data [get_bd_pins ctrl_io_exp_1/w_data] [get_bd_pins spi_master_1/w_data]
  connect_bd_net -net ctrl_io_exp_1_w_valid [get_bd_pins ctrl_io_exp_1/w_valid] [get_bd_pins spi_master_1/w_valid]
  connect_bd_net -net en_5v_0_1 [get_bd_ports en_5v] [get_bd_pins sequencer_0/en_5v]
  connect_bd_net -net hreset_0_1 [get_bd_ports hreset_0] [get_bd_pins sequencer_0/hreset] [get_bd_pins system_ila_0/probe3] [get_bd_pins system_ila_0/probe21]
  connect_bd_net -net led_rst_0_1 [get_bd_ports led_rst_0] [get_bd_pins sequencer_0/led_rst] [get_bd_pins system_ila_0/probe0] [get_bd_pins system_ila_0/probe24]
  connect_bd_net -net led_usr_0_1 [get_bd_ports led_usr_0] [get_bd_pins sequencer_0/led_usr] [get_bd_pins system_ila_0/probe1] [get_bd_pins system_ila_0/probe23]
  connect_bd_net -net led_wtd_0_1 [get_bd_ports led_wtd_0] [get_bd_pins sequencer_0/led_wtd] [get_bd_pins system_ila_0/probe2] [get_bd_pins system_ila_0/probe22]
  connect_bd_net -net leds_display_0_io_exp_0 [get_bd_pins ctrl_io_exp_0/leds_state] [get_bd_pins leds_display_0/io_exp_0]
  connect_bd_net -net leds_display_0_io_exp_1 [get_bd_pins ctrl_io_exp_1/leds_state] [get_bd_pins leds_display_0/io_exp_1]
  connect_bd_net -net pg_1V0_0_1 [get_bd_ports pg_1V0] [get_bd_pins sequencer_0/pg_1V0]
  connect_bd_net -net pg_1V2_0_1 [get_bd_ports pg_1V2] [get_bd_pins sequencer_0/pg_1V2]
  connect_bd_net -net pg_1V8_0_1 [get_bd_ports pg_1V8] [get_bd_pins sequencer_0/pg_1V8]
  connect_bd_net -net pg_3V3_0_1 [get_bd_ports pg_3V3] [get_bd_pins sequencer_0/pg_3V3]
  connect_bd_net -net pg_5v_0_1 [get_bd_ports pg_5v] [get_bd_pins sequencer_0/pg_5v]
  connect_bd_net -net pg_poreset_0_1 [get_bd_ports pg_poreset] [get_bd_pins sequencer_0/pg_poreset] [get_bd_pins system_ila_0/probe5]
  connect_bd_net -net pg_vcore_0_1 [get_bd_ports pg_vcore] [get_bd_pins sequencer_0/pg_vcore]
  connect_bd_net -net pg_vdimm_0_1 [get_bd_ports pg_vdimm] [get_bd_pins sequencer_0/pg_vdimm]
  connect_bd_net -net power_management_0_EN_PWR_5V [get_bd_ports EN_PWR_5V] [get_bd_pins power_management_0/EN_PWR_5V]
  connect_bd_net -net power_management_0_board_started [get_bd_pins leds_display_0/board_started] [get_bd_pins power_management_0/board_started] [get_bd_pins sequencer_0/board_started]
  connect_bd_net -net power_management_0_shut_down [get_bd_pins leds_display_0/shut_down] [get_bd_pins power_management_0/shut_down]
  connect_bd_net -net rstn_0_1 [get_bd_ports rstn] [get_bd_pins ctrl_adc_0/rstn] [get_bd_pins ctrl_io_exp_0/rstn] [get_bd_pins ctrl_io_exp_1/rstn] [get_bd_pins leds_display_0/rstn] [get_bd_pins power_management_0/rstn] [get_bd_pins sequencer_0/rstn] [get_bd_pins spi_master_0/rstn] [get_bd_pins spi_master_1/rstn] [get_bd_pins spi_master_2/rstn]
  connect_bd_net -net sequencer_0_TST_CLK_S0 [get_bd_ports TST_CLK_S0_0] [get_bd_pins sequencer_0/TST_CLK_S0]
  connect_bd_net -net sequencer_0_TST_CLK_S1 [get_bd_ports TST_CLK_S1_0] [get_bd_pins sequencer_0/TST_CLK_S1]
  connect_bd_net -net sequencer_0_TST_CLK_S2 [get_bd_ports TST_CLK_S2_0] [get_bd_pins sequencer_0/TST_CLK_S2]
  connect_bd_net -net sequencer_0_XTAL_RTC_OE [get_bd_ports XTAL_RTC_OE_0] [get_bd_pins sequencer_0/XTAL_RTC_OE]
  connect_bd_net -net sequencer_0_btn_rst_ok [get_bd_pins sequencer_0/btn_rst_ok] [get_bd_pins system_ila_0/probe17]
  connect_bd_net -net sequencer_0_btn_rst_t [get_bd_ports btn_rst_t_0] [get_bd_pins sequencer_0/btn_rst_t] [get_bd_pins system_ila_0/probe4]
  connect_bd_net -net sequencer_0_clk_slow [get_bd_pins leds_display_0/clk_slow] [get_bd_pins sequencer_0/clk_slow]
  connect_bd_net -net sequencer_0_cnt_b4_for_ILA [get_bd_pins sequencer_0/cnt_b4_for_ILA] [get_bd_pins system_ila_0/probe25]
  connect_bd_net -net sequencer_0_cnt_btn_reset_to_btn_reset_off_for_ILA [get_bd_pins sequencer_0/cnt_btn_reset_to_btn_reset_off_for_ILA] [get_bd_pins system_ila_0/probe13]
  connect_bd_net -net sequencer_0_cnt_hreset_to_led_usr_2_for_ILA [get_bd_pins sequencer_0/cnt_hreset_to_led_usr_2_for_ILA] [get_bd_pins system_ila_0/probe12]
  connect_bd_net -net sequencer_0_cnt_hreset_to_led_usr_for_ILA [get_bd_pins sequencer_0/cnt_hreset_to_led_usr_for_ILA] [get_bd_pins system_ila_0/probe8]
  connect_bd_net -net sequencer_0_cnt_led_usr_to_btn_reset_for_ILA [get_bd_pins sequencer_0/cnt_led_usr_to_btn_reset_for_ILA] [get_bd_pins system_ila_0/probe9]
  connect_bd_net -net sequencer_0_cnt_pgvdimm_to_poreset_2_for_ILA [get_bd_pins sequencer_0/cnt_pgvdimm_to_poreset_2_for_ILA] [get_bd_pins system_ila_0/probe10]
  connect_bd_net -net sequencer_0_cnt_pgvdimm_to_poreset_for_ILA [get_bd_pins sequencer_0/cnt_pgvdimm_to_poreset_for_ILA] [get_bd_pins system_ila_0/probe6]
  connect_bd_net -net sequencer_0_cnt_poreset_to_hreset_2_for_ILA [get_bd_pins sequencer_0/cnt_poreset_to_hreset_2_for_ILA] [get_bd_pins system_ila_0/probe11]
  connect_bd_net -net sequencer_0_cnt_poreset_to_hreset_for_ILA [get_bd_pins sequencer_0/cnt_poreset_to_hreset_for_ILA] [get_bd_pins system_ila_0/probe7]
  connect_bd_net -net sequencer_0_hreset_2_ok [get_bd_pins sequencer_0/hreset_2_ok] [get_bd_pins system_ila_0/probe15]
  connect_bd_net -net sequencer_0_hreset_ok [get_bd_pins sequencer_0/hreset_ok] [get_bd_pins system_ila_0/probe19]
  connect_bd_net -net sequencer_0_led_usr_ok [get_bd_pins sequencer_0/led_usr_ok] [get_bd_pins system_ila_0/probe18]
  connect_bd_net -net sequencer_0_poreset_2_ok [get_bd_pins sequencer_0/poreset_2_ok] [get_bd_pins system_ila_0/probe16]
  connect_bd_net -net sequencer_0_poreset_ok [get_bd_pins sequencer_0/poreset_ok] [get_bd_pins system_ila_0/probe20]
  connect_bd_net -net sequencer_0_rst_done_ok [get_bd_pins sequencer_0/rst_done_ok] [get_bd_pins system_ila_0/probe14]
  connect_bd_net -net sequencer_0_test_done [get_bd_pins leds_display_0/test_done] [get_bd_pins sequencer_0/test_done]
  connect_bd_net -net sequencer_0_test_results [get_bd_pins leds_display_0/test_results] [get_bd_pins sequencer_0/test_results]
  connect_bd_net -net spi_master_0_r_data [get_bd_pins ctrl_io_exp_0/r_data] [get_bd_pins spi_master_0/r_data]
  connect_bd_net -net spi_master_0_r_valid [get_bd_pins ctrl_io_exp_0/r_valid] [get_bd_pins spi_master_0/r_valid]
  connect_bd_net -net spi_master_0_spi_clk [get_bd_ports spi_clk] [get_bd_pins spi_master_0/spi_clk]
  connect_bd_net -net spi_master_0_spi_csn [get_bd_ports spi_csn] [get_bd_pins spi_master_0/spi_csn]
  connect_bd_net -net spi_master_0_spi_mosi [get_bd_ports spi_mosi] [get_bd_pins spi_master_0/spi_mosi]
  connect_bd_net -net spi_master_0_w_ready [get_bd_pins ctrl_io_exp_0/w_ready] [get_bd_pins spi_master_0/w_ready]
  connect_bd_net -net spi_master_1_r_data [get_bd_pins ctrl_io_exp_1/r_data] [get_bd_pins spi_master_1/r_data]
  connect_bd_net -net spi_master_1_r_valid [get_bd_pins ctrl_io_exp_1/r_valid] [get_bd_pins spi_master_1/r_valid]
  connect_bd_net -net spi_master_1_spi_clk [get_bd_ports spi_clk_1] [get_bd_pins spi_master_1/spi_clk]
  connect_bd_net -net spi_master_1_spi_csn [get_bd_ports spi_csn_1] [get_bd_pins spi_master_1/spi_csn]
  connect_bd_net -net spi_master_1_spi_mosi [get_bd_ports spi_mosi_1] [get_bd_pins spi_master_1/spi_mosi]
  connect_bd_net -net spi_master_1_w_ready [get_bd_pins ctrl_io_exp_1/w_ready] [get_bd_pins spi_master_1/w_ready]
  connect_bd_net -net spi_master_2_r_data [get_bd_pins ctrl_adc_0/r_data] [get_bd_pins spi_master_2/r_data]
  connect_bd_net -net spi_master_2_r_valid [get_bd_pins ctrl_adc_0/r_valid] [get_bd_pins spi_master_2/r_valid]
  connect_bd_net -net spi_master_2_spi_clk [get_bd_ports spi_clk_0] [get_bd_pins spi_master_2/spi_clk]
  connect_bd_net -net spi_master_2_spi_csn [get_bd_ports spi_csn_0] [get_bd_pins spi_master_2/spi_csn]
  connect_bd_net -net spi_master_2_spi_mosi [get_bd_ports spi_mosi_0] [get_bd_pins spi_master_2/spi_mosi]
  connect_bd_net -net spi_master_2_w_ready [get_bd_pins ctrl_adc_0/w_ready] [get_bd_pins spi_master_2/w_ready]
  connect_bd_net -net spi_miso_0_1 [get_bd_ports spi_miso_1] [get_bd_pins spi_master_1/spi_miso]
  connect_bd_net -net spi_miso_0_2 [get_bd_ports spi_miso_0] [get_bd_pins spi_master_2/spi_miso]
  connect_bd_net -net spi_miso_2 [get_bd_ports spi_miso] [get_bd_pins spi_master_0/spi_miso]
  connect_bd_net -net start_btnn_0_1 [get_bd_ports start_btnn_0] [get_bd_pins power_management_0/start_btnn]
  connect_bd_net -net sw_not_programmed_0_1 [get_bd_ports sw_not_programmed_0] [get_bd_pins leds_display_0/sw_not_programmed] [get_bd_pins sequencer_0/sw_not_programmed]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


