# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "C_LENGTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_SPI_CPHA" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_SPI_CPOL" -parent ${Page_0}


}

proc update_PARAM_VALUE.C_LENGTH { PARAM_VALUE.C_LENGTH } {
	# Procedure called to update C_LENGTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_LENGTH { PARAM_VALUE.C_LENGTH } {
	# Procedure called to validate C_LENGTH
	return true
}

proc update_PARAM_VALUE.C_SPI_CPHA { PARAM_VALUE.C_SPI_CPHA } {
	# Procedure called to update C_SPI_CPHA when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_SPI_CPHA { PARAM_VALUE.C_SPI_CPHA } {
	# Procedure called to validate C_SPI_CPHA
	return true
}

proc update_PARAM_VALUE.C_SPI_CPOL { PARAM_VALUE.C_SPI_CPOL } {
	# Procedure called to update C_SPI_CPOL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_SPI_CPOL { PARAM_VALUE.C_SPI_CPOL } {
	# Procedure called to validate C_SPI_CPOL
	return true
}


proc update_MODELPARAM_VALUE.C_LENGTH { MODELPARAM_VALUE.C_LENGTH PARAM_VALUE.C_LENGTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_LENGTH}] ${MODELPARAM_VALUE.C_LENGTH}
}

proc update_MODELPARAM_VALUE.C_SPI_CPOL { MODELPARAM_VALUE.C_SPI_CPOL PARAM_VALUE.C_SPI_CPOL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_SPI_CPOL}] ${MODELPARAM_VALUE.C_SPI_CPOL}
}

proc update_MODELPARAM_VALUE.C_SPI_CPHA { MODELPARAM_VALUE.C_SPI_CPHA PARAM_VALUE.C_SPI_CPHA } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_SPI_CPHA}] ${MODELPARAM_VALUE.C_SPI_CPHA}
}

