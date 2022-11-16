# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "C_LENGTH_ADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_LENGTH_DATA" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_SLAVE_ADDR" -parent ${Page_0}


}

proc update_PARAM_VALUE.C_LENGTH_ADDR { PARAM_VALUE.C_LENGTH_ADDR } {
	# Procedure called to update C_LENGTH_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_LENGTH_ADDR { PARAM_VALUE.C_LENGTH_ADDR } {
	# Procedure called to validate C_LENGTH_ADDR
	return true
}

proc update_PARAM_VALUE.C_LENGTH_DATA { PARAM_VALUE.C_LENGTH_DATA } {
	# Procedure called to update C_LENGTH_DATA when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_LENGTH_DATA { PARAM_VALUE.C_LENGTH_DATA } {
	# Procedure called to validate C_LENGTH_DATA
	return true
}

proc update_PARAM_VALUE.C_SLAVE_ADDR { PARAM_VALUE.C_SLAVE_ADDR } {
	# Procedure called to update C_SLAVE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_SLAVE_ADDR { PARAM_VALUE.C_SLAVE_ADDR } {
	# Procedure called to validate C_SLAVE_ADDR
	return true
}


proc update_MODELPARAM_VALUE.C_SLAVE_ADDR { MODELPARAM_VALUE.C_SLAVE_ADDR PARAM_VALUE.C_SLAVE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_SLAVE_ADDR}] ${MODELPARAM_VALUE.C_SLAVE_ADDR}
}

proc update_MODELPARAM_VALUE.C_LENGTH_DATA { MODELPARAM_VALUE.C_LENGTH_DATA PARAM_VALUE.C_LENGTH_DATA } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_LENGTH_DATA}] ${MODELPARAM_VALUE.C_LENGTH_DATA}
}

proc update_MODELPARAM_VALUE.C_LENGTH_ADDR { MODELPARAM_VALUE.C_LENGTH_ADDR PARAM_VALUE.C_LENGTH_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_LENGTH_ADDR}] ${MODELPARAM_VALUE.C_LENGTH_ADDR}
}

