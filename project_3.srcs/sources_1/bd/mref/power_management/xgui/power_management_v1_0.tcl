# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "C_5V_MIN_POWER_ON" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_I_VMECPU_MAX" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_LENGTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.C_5V_MIN_POWER_ON { PARAM_VALUE.C_5V_MIN_POWER_ON } {
	# Procedure called to update C_5V_MIN_POWER_ON when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_5V_MIN_POWER_ON { PARAM_VALUE.C_5V_MIN_POWER_ON } {
	# Procedure called to validate C_5V_MIN_POWER_ON
	return true
}

proc update_PARAM_VALUE.C_I_VMECPU_MAX { PARAM_VALUE.C_I_VMECPU_MAX } {
	# Procedure called to update C_I_VMECPU_MAX when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_I_VMECPU_MAX { PARAM_VALUE.C_I_VMECPU_MAX } {
	# Procedure called to validate C_I_VMECPU_MAX
	return true
}

proc update_PARAM_VALUE.C_LENGTH { PARAM_VALUE.C_LENGTH } {
	# Procedure called to update C_LENGTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_LENGTH { PARAM_VALUE.C_LENGTH } {
	# Procedure called to validate C_LENGTH
	return true
}


proc update_MODELPARAM_VALUE.C_LENGTH { MODELPARAM_VALUE.C_LENGTH PARAM_VALUE.C_LENGTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_LENGTH}] ${MODELPARAM_VALUE.C_LENGTH}
}

proc update_MODELPARAM_VALUE.C_5V_MIN_POWER_ON { MODELPARAM_VALUE.C_5V_MIN_POWER_ON PARAM_VALUE.C_5V_MIN_POWER_ON } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_5V_MIN_POWER_ON}] ${MODELPARAM_VALUE.C_5V_MIN_POWER_ON}
}

proc update_MODELPARAM_VALUE.C_I_VMECPU_MAX { MODELPARAM_VALUE.C_I_VMECPU_MAX PARAM_VALUE.C_I_VMECPU_MAX } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_I_VMECPU_MAX}] ${MODELPARAM_VALUE.C_I_VMECPU_MAX}
}

