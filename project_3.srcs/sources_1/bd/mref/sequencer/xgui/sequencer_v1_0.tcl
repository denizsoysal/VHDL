# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "C_1V0_MAX" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_1V0_MIN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_1V2_MAX" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_1V2_MIN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_1V8_MAX" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_1V8_MIN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_3V3_MAX" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_3V3_MIN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_5V_MAX" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_5V_MIN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_AIN_NUMBER" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_DIVIDER" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_I_VMECPU_MAX" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_I_VMECPU_MIN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_LENGTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_SEQ_1V0_TO_3V3" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_SEQ_1V2_TO_VCORE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_SEQ_1V8_TO_1V2" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_SEQ_3V3_TO_1V8" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_SEQ_VCORE_TO_VDIMM" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_SEQ_VDIMM_TO_PORESET" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_VBAT_MAX" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_VBAT_MIN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_VCORE_MAX" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_VCORE_MIN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_VDIMM_MAX" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_VDIMM_MIN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_VDIMM_VTT_MAX" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_VDIMM_VTT_MIN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_debounce_range" -parent ${Page_0}


}

proc update_PARAM_VALUE.C_1V0_MAX { PARAM_VALUE.C_1V0_MAX } {
	# Procedure called to update C_1V0_MAX when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_1V0_MAX { PARAM_VALUE.C_1V0_MAX } {
	# Procedure called to validate C_1V0_MAX
	return true
}

proc update_PARAM_VALUE.C_1V0_MIN { PARAM_VALUE.C_1V0_MIN } {
	# Procedure called to update C_1V0_MIN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_1V0_MIN { PARAM_VALUE.C_1V0_MIN } {
	# Procedure called to validate C_1V0_MIN
	return true
}

proc update_PARAM_VALUE.C_1V2_MAX { PARAM_VALUE.C_1V2_MAX } {
	# Procedure called to update C_1V2_MAX when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_1V2_MAX { PARAM_VALUE.C_1V2_MAX } {
	# Procedure called to validate C_1V2_MAX
	return true
}

proc update_PARAM_VALUE.C_1V2_MIN { PARAM_VALUE.C_1V2_MIN } {
	# Procedure called to update C_1V2_MIN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_1V2_MIN { PARAM_VALUE.C_1V2_MIN } {
	# Procedure called to validate C_1V2_MIN
	return true
}

proc update_PARAM_VALUE.C_1V8_MAX { PARAM_VALUE.C_1V8_MAX } {
	# Procedure called to update C_1V8_MAX when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_1V8_MAX { PARAM_VALUE.C_1V8_MAX } {
	# Procedure called to validate C_1V8_MAX
	return true
}

proc update_PARAM_VALUE.C_1V8_MIN { PARAM_VALUE.C_1V8_MIN } {
	# Procedure called to update C_1V8_MIN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_1V8_MIN { PARAM_VALUE.C_1V8_MIN } {
	# Procedure called to validate C_1V8_MIN
	return true
}

proc update_PARAM_VALUE.C_3V3_MAX { PARAM_VALUE.C_3V3_MAX } {
	# Procedure called to update C_3V3_MAX when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_3V3_MAX { PARAM_VALUE.C_3V3_MAX } {
	# Procedure called to validate C_3V3_MAX
	return true
}

proc update_PARAM_VALUE.C_3V3_MIN { PARAM_VALUE.C_3V3_MIN } {
	# Procedure called to update C_3V3_MIN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_3V3_MIN { PARAM_VALUE.C_3V3_MIN } {
	# Procedure called to validate C_3V3_MIN
	return true
}

proc update_PARAM_VALUE.C_5V_MAX { PARAM_VALUE.C_5V_MAX } {
	# Procedure called to update C_5V_MAX when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_5V_MAX { PARAM_VALUE.C_5V_MAX } {
	# Procedure called to validate C_5V_MAX
	return true
}

proc update_PARAM_VALUE.C_5V_MIN { PARAM_VALUE.C_5V_MIN } {
	# Procedure called to update C_5V_MIN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_5V_MIN { PARAM_VALUE.C_5V_MIN } {
	# Procedure called to validate C_5V_MIN
	return true
}

proc update_PARAM_VALUE.C_AIN_NUMBER { PARAM_VALUE.C_AIN_NUMBER } {
	# Procedure called to update C_AIN_NUMBER when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AIN_NUMBER { PARAM_VALUE.C_AIN_NUMBER } {
	# Procedure called to validate C_AIN_NUMBER
	return true
}

proc update_PARAM_VALUE.C_DIVIDER { PARAM_VALUE.C_DIVIDER } {
	# Procedure called to update C_DIVIDER when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_DIVIDER { PARAM_VALUE.C_DIVIDER } {
	# Procedure called to validate C_DIVIDER
	return true
}

proc update_PARAM_VALUE.C_I_VMECPU_MAX { PARAM_VALUE.C_I_VMECPU_MAX } {
	# Procedure called to update C_I_VMECPU_MAX when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_I_VMECPU_MAX { PARAM_VALUE.C_I_VMECPU_MAX } {
	# Procedure called to validate C_I_VMECPU_MAX
	return true
}

proc update_PARAM_VALUE.C_I_VMECPU_MIN { PARAM_VALUE.C_I_VMECPU_MIN } {
	# Procedure called to update C_I_VMECPU_MIN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_I_VMECPU_MIN { PARAM_VALUE.C_I_VMECPU_MIN } {
	# Procedure called to validate C_I_VMECPU_MIN
	return true
}

proc update_PARAM_VALUE.C_LENGTH { PARAM_VALUE.C_LENGTH } {
	# Procedure called to update C_LENGTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_LENGTH { PARAM_VALUE.C_LENGTH } {
	# Procedure called to validate C_LENGTH
	return true
}

proc update_PARAM_VALUE.C_SEQ_1V0_TO_3V3 { PARAM_VALUE.C_SEQ_1V0_TO_3V3 } {
	# Procedure called to update C_SEQ_1V0_TO_3V3 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_SEQ_1V0_TO_3V3 { PARAM_VALUE.C_SEQ_1V0_TO_3V3 } {
	# Procedure called to validate C_SEQ_1V0_TO_3V3
	return true
}

proc update_PARAM_VALUE.C_SEQ_1V2_TO_VCORE { PARAM_VALUE.C_SEQ_1V2_TO_VCORE } {
	# Procedure called to update C_SEQ_1V2_TO_VCORE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_SEQ_1V2_TO_VCORE { PARAM_VALUE.C_SEQ_1V2_TO_VCORE } {
	# Procedure called to validate C_SEQ_1V2_TO_VCORE
	return true
}

proc update_PARAM_VALUE.C_SEQ_1V8_TO_1V2 { PARAM_VALUE.C_SEQ_1V8_TO_1V2 } {
	# Procedure called to update C_SEQ_1V8_TO_1V2 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_SEQ_1V8_TO_1V2 { PARAM_VALUE.C_SEQ_1V8_TO_1V2 } {
	# Procedure called to validate C_SEQ_1V8_TO_1V2
	return true
}

proc update_PARAM_VALUE.C_SEQ_3V3_TO_1V8 { PARAM_VALUE.C_SEQ_3V3_TO_1V8 } {
	# Procedure called to update C_SEQ_3V3_TO_1V8 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_SEQ_3V3_TO_1V8 { PARAM_VALUE.C_SEQ_3V3_TO_1V8 } {
	# Procedure called to validate C_SEQ_3V3_TO_1V8
	return true
}

proc update_PARAM_VALUE.C_SEQ_VCORE_TO_VDIMM { PARAM_VALUE.C_SEQ_VCORE_TO_VDIMM } {
	# Procedure called to update C_SEQ_VCORE_TO_VDIMM when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_SEQ_VCORE_TO_VDIMM { PARAM_VALUE.C_SEQ_VCORE_TO_VDIMM } {
	# Procedure called to validate C_SEQ_VCORE_TO_VDIMM
	return true
}

proc update_PARAM_VALUE.C_SEQ_VDIMM_TO_PORESET { PARAM_VALUE.C_SEQ_VDIMM_TO_PORESET } {
	# Procedure called to update C_SEQ_VDIMM_TO_PORESET when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_SEQ_VDIMM_TO_PORESET { PARAM_VALUE.C_SEQ_VDIMM_TO_PORESET } {
	# Procedure called to validate C_SEQ_VDIMM_TO_PORESET
	return true
}

proc update_PARAM_VALUE.C_VBAT_MAX { PARAM_VALUE.C_VBAT_MAX } {
	# Procedure called to update C_VBAT_MAX when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_VBAT_MAX { PARAM_VALUE.C_VBAT_MAX } {
	# Procedure called to validate C_VBAT_MAX
	return true
}

proc update_PARAM_VALUE.C_VBAT_MIN { PARAM_VALUE.C_VBAT_MIN } {
	# Procedure called to update C_VBAT_MIN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_VBAT_MIN { PARAM_VALUE.C_VBAT_MIN } {
	# Procedure called to validate C_VBAT_MIN
	return true
}

proc update_PARAM_VALUE.C_VCORE_MAX { PARAM_VALUE.C_VCORE_MAX } {
	# Procedure called to update C_VCORE_MAX when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_VCORE_MAX { PARAM_VALUE.C_VCORE_MAX } {
	# Procedure called to validate C_VCORE_MAX
	return true
}

proc update_PARAM_VALUE.C_VCORE_MIN { PARAM_VALUE.C_VCORE_MIN } {
	# Procedure called to update C_VCORE_MIN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_VCORE_MIN { PARAM_VALUE.C_VCORE_MIN } {
	# Procedure called to validate C_VCORE_MIN
	return true
}

proc update_PARAM_VALUE.C_VDIMM_MAX { PARAM_VALUE.C_VDIMM_MAX } {
	# Procedure called to update C_VDIMM_MAX when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_VDIMM_MAX { PARAM_VALUE.C_VDIMM_MAX } {
	# Procedure called to validate C_VDIMM_MAX
	return true
}

proc update_PARAM_VALUE.C_VDIMM_MIN { PARAM_VALUE.C_VDIMM_MIN } {
	# Procedure called to update C_VDIMM_MIN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_VDIMM_MIN { PARAM_VALUE.C_VDIMM_MIN } {
	# Procedure called to validate C_VDIMM_MIN
	return true
}

proc update_PARAM_VALUE.C_VDIMM_VTT_MAX { PARAM_VALUE.C_VDIMM_VTT_MAX } {
	# Procedure called to update C_VDIMM_VTT_MAX when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_VDIMM_VTT_MAX { PARAM_VALUE.C_VDIMM_VTT_MAX } {
	# Procedure called to validate C_VDIMM_VTT_MAX
	return true
}

proc update_PARAM_VALUE.C_VDIMM_VTT_MIN { PARAM_VALUE.C_VDIMM_VTT_MIN } {
	# Procedure called to update C_VDIMM_VTT_MIN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_VDIMM_VTT_MIN { PARAM_VALUE.C_VDIMM_VTT_MIN } {
	# Procedure called to validate C_VDIMM_VTT_MIN
	return true
}

proc update_PARAM_VALUE.C_debounce_range { PARAM_VALUE.C_debounce_range } {
	# Procedure called to update C_debounce_range when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_debounce_range { PARAM_VALUE.C_debounce_range } {
	# Procedure called to validate C_debounce_range
	return true
}


proc update_MODELPARAM_VALUE.C_DIVIDER { MODELPARAM_VALUE.C_DIVIDER PARAM_VALUE.C_DIVIDER } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_DIVIDER}] ${MODELPARAM_VALUE.C_DIVIDER}
}

proc update_MODELPARAM_VALUE.C_LENGTH { MODELPARAM_VALUE.C_LENGTH PARAM_VALUE.C_LENGTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_LENGTH}] ${MODELPARAM_VALUE.C_LENGTH}
}

proc update_MODELPARAM_VALUE.C_AIN_NUMBER { MODELPARAM_VALUE.C_AIN_NUMBER PARAM_VALUE.C_AIN_NUMBER } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AIN_NUMBER}] ${MODELPARAM_VALUE.C_AIN_NUMBER}
}

proc update_MODELPARAM_VALUE.C_5V_MIN { MODELPARAM_VALUE.C_5V_MIN PARAM_VALUE.C_5V_MIN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_5V_MIN}] ${MODELPARAM_VALUE.C_5V_MIN}
}

proc update_MODELPARAM_VALUE.C_5V_MAX { MODELPARAM_VALUE.C_5V_MAX PARAM_VALUE.C_5V_MAX } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_5V_MAX}] ${MODELPARAM_VALUE.C_5V_MAX}
}

proc update_MODELPARAM_VALUE.C_3V3_MIN { MODELPARAM_VALUE.C_3V3_MIN PARAM_VALUE.C_3V3_MIN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_3V3_MIN}] ${MODELPARAM_VALUE.C_3V3_MIN}
}

proc update_MODELPARAM_VALUE.C_3V3_MAX { MODELPARAM_VALUE.C_3V3_MAX PARAM_VALUE.C_3V3_MAX } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_3V3_MAX}] ${MODELPARAM_VALUE.C_3V3_MAX}
}

proc update_MODELPARAM_VALUE.C_1V8_MIN { MODELPARAM_VALUE.C_1V8_MIN PARAM_VALUE.C_1V8_MIN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_1V8_MIN}] ${MODELPARAM_VALUE.C_1V8_MIN}
}

proc update_MODELPARAM_VALUE.C_1V8_MAX { MODELPARAM_VALUE.C_1V8_MAX PARAM_VALUE.C_1V8_MAX } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_1V8_MAX}] ${MODELPARAM_VALUE.C_1V8_MAX}
}

proc update_MODELPARAM_VALUE.C_1V2_MIN { MODELPARAM_VALUE.C_1V2_MIN PARAM_VALUE.C_1V2_MIN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_1V2_MIN}] ${MODELPARAM_VALUE.C_1V2_MIN}
}

proc update_MODELPARAM_VALUE.C_1V2_MAX { MODELPARAM_VALUE.C_1V2_MAX PARAM_VALUE.C_1V2_MAX } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_1V2_MAX}] ${MODELPARAM_VALUE.C_1V2_MAX}
}

proc update_MODELPARAM_VALUE.C_1V0_MIN { MODELPARAM_VALUE.C_1V0_MIN PARAM_VALUE.C_1V0_MIN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_1V0_MIN}] ${MODELPARAM_VALUE.C_1V0_MIN}
}

proc update_MODELPARAM_VALUE.C_1V0_MAX { MODELPARAM_VALUE.C_1V0_MAX PARAM_VALUE.C_1V0_MAX } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_1V0_MAX}] ${MODELPARAM_VALUE.C_1V0_MAX}
}

proc update_MODELPARAM_VALUE.C_VBAT_MIN { MODELPARAM_VALUE.C_VBAT_MIN PARAM_VALUE.C_VBAT_MIN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_VBAT_MIN}] ${MODELPARAM_VALUE.C_VBAT_MIN}
}

proc update_MODELPARAM_VALUE.C_VBAT_MAX { MODELPARAM_VALUE.C_VBAT_MAX PARAM_VALUE.C_VBAT_MAX } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_VBAT_MAX}] ${MODELPARAM_VALUE.C_VBAT_MAX}
}

proc update_MODELPARAM_VALUE.C_VCORE_MIN { MODELPARAM_VALUE.C_VCORE_MIN PARAM_VALUE.C_VCORE_MIN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_VCORE_MIN}] ${MODELPARAM_VALUE.C_VCORE_MIN}
}

proc update_MODELPARAM_VALUE.C_VCORE_MAX { MODELPARAM_VALUE.C_VCORE_MAX PARAM_VALUE.C_VCORE_MAX } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_VCORE_MAX}] ${MODELPARAM_VALUE.C_VCORE_MAX}
}

proc update_MODELPARAM_VALUE.C_VDIMM_MIN { MODELPARAM_VALUE.C_VDIMM_MIN PARAM_VALUE.C_VDIMM_MIN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_VDIMM_MIN}] ${MODELPARAM_VALUE.C_VDIMM_MIN}
}

proc update_MODELPARAM_VALUE.C_VDIMM_MAX { MODELPARAM_VALUE.C_VDIMM_MAX PARAM_VALUE.C_VDIMM_MAX } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_VDIMM_MAX}] ${MODELPARAM_VALUE.C_VDIMM_MAX}
}

proc update_MODELPARAM_VALUE.C_VDIMM_VTT_MIN { MODELPARAM_VALUE.C_VDIMM_VTT_MIN PARAM_VALUE.C_VDIMM_VTT_MIN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_VDIMM_VTT_MIN}] ${MODELPARAM_VALUE.C_VDIMM_VTT_MIN}
}

proc update_MODELPARAM_VALUE.C_VDIMM_VTT_MAX { MODELPARAM_VALUE.C_VDIMM_VTT_MAX PARAM_VALUE.C_VDIMM_VTT_MAX } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_VDIMM_VTT_MAX}] ${MODELPARAM_VALUE.C_VDIMM_VTT_MAX}
}

proc update_MODELPARAM_VALUE.C_I_VMECPU_MIN { MODELPARAM_VALUE.C_I_VMECPU_MIN PARAM_VALUE.C_I_VMECPU_MIN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_I_VMECPU_MIN}] ${MODELPARAM_VALUE.C_I_VMECPU_MIN}
}

proc update_MODELPARAM_VALUE.C_I_VMECPU_MAX { MODELPARAM_VALUE.C_I_VMECPU_MAX PARAM_VALUE.C_I_VMECPU_MAX } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_I_VMECPU_MAX}] ${MODELPARAM_VALUE.C_I_VMECPU_MAX}
}

proc update_MODELPARAM_VALUE.C_SEQ_1V0_TO_3V3 { MODELPARAM_VALUE.C_SEQ_1V0_TO_3V3 PARAM_VALUE.C_SEQ_1V0_TO_3V3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_SEQ_1V0_TO_3V3}] ${MODELPARAM_VALUE.C_SEQ_1V0_TO_3V3}
}

proc update_MODELPARAM_VALUE.C_SEQ_3V3_TO_1V8 { MODELPARAM_VALUE.C_SEQ_3V3_TO_1V8 PARAM_VALUE.C_SEQ_3V3_TO_1V8 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_SEQ_3V3_TO_1V8}] ${MODELPARAM_VALUE.C_SEQ_3V3_TO_1V8}
}

proc update_MODELPARAM_VALUE.C_SEQ_1V8_TO_1V2 { MODELPARAM_VALUE.C_SEQ_1V8_TO_1V2 PARAM_VALUE.C_SEQ_1V8_TO_1V2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_SEQ_1V8_TO_1V2}] ${MODELPARAM_VALUE.C_SEQ_1V8_TO_1V2}
}

proc update_MODELPARAM_VALUE.C_SEQ_1V2_TO_VCORE { MODELPARAM_VALUE.C_SEQ_1V2_TO_VCORE PARAM_VALUE.C_SEQ_1V2_TO_VCORE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_SEQ_1V2_TO_VCORE}] ${MODELPARAM_VALUE.C_SEQ_1V2_TO_VCORE}
}

proc update_MODELPARAM_VALUE.C_SEQ_VCORE_TO_VDIMM { MODELPARAM_VALUE.C_SEQ_VCORE_TO_VDIMM PARAM_VALUE.C_SEQ_VCORE_TO_VDIMM } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_SEQ_VCORE_TO_VDIMM}] ${MODELPARAM_VALUE.C_SEQ_VCORE_TO_VDIMM}
}

proc update_MODELPARAM_VALUE.C_SEQ_VDIMM_TO_PORESET { MODELPARAM_VALUE.C_SEQ_VDIMM_TO_PORESET PARAM_VALUE.C_SEQ_VDIMM_TO_PORESET } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_SEQ_VDIMM_TO_PORESET}] ${MODELPARAM_VALUE.C_SEQ_VDIMM_TO_PORESET}
}

proc update_MODELPARAM_VALUE.C_debounce_range { MODELPARAM_VALUE.C_debounce_range PARAM_VALUE.C_debounce_range } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_debounce_range}] ${MODELPARAM_VALUE.C_debounce_range}
}

