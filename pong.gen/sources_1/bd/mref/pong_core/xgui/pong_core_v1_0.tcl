# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "FIELD_H" -parent ${Page_0}
  ipgui::add_param $IPINST -name "FIELD_W" -parent ${Page_0}
  ipgui::add_param $IPINST -name "PADDLE_W" -parent ${Page_0}
  ipgui::add_param $IPINST -name "PADDLE_Y" -parent ${Page_0}


}

proc update_PARAM_VALUE.FIELD_H { PARAM_VALUE.FIELD_H } {
	# Procedure called to update FIELD_H when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FIELD_H { PARAM_VALUE.FIELD_H } {
	# Procedure called to validate FIELD_H
	return true
}

proc update_PARAM_VALUE.FIELD_W { PARAM_VALUE.FIELD_W } {
	# Procedure called to update FIELD_W when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FIELD_W { PARAM_VALUE.FIELD_W } {
	# Procedure called to validate FIELD_W
	return true
}

proc update_PARAM_VALUE.PADDLE_W { PARAM_VALUE.PADDLE_W } {
	# Procedure called to update PADDLE_W when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PADDLE_W { PARAM_VALUE.PADDLE_W } {
	# Procedure called to validate PADDLE_W
	return true
}

proc update_PARAM_VALUE.PADDLE_Y { PARAM_VALUE.PADDLE_Y } {
	# Procedure called to update PADDLE_Y when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PADDLE_Y { PARAM_VALUE.PADDLE_Y } {
	# Procedure called to validate PADDLE_Y
	return true
}


proc update_MODELPARAM_VALUE.FIELD_W { MODELPARAM_VALUE.FIELD_W PARAM_VALUE.FIELD_W } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FIELD_W}] ${MODELPARAM_VALUE.FIELD_W}
}

proc update_MODELPARAM_VALUE.FIELD_H { MODELPARAM_VALUE.FIELD_H PARAM_VALUE.FIELD_H } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FIELD_H}] ${MODELPARAM_VALUE.FIELD_H}
}

proc update_MODELPARAM_VALUE.PADDLE_W { MODELPARAM_VALUE.PADDLE_W PARAM_VALUE.PADDLE_W } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PADDLE_W}] ${MODELPARAM_VALUE.PADDLE_W}
}

proc update_MODELPARAM_VALUE.PADDLE_Y { MODELPARAM_VALUE.PADDLE_Y PARAM_VALUE.PADDLE_Y } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PADDLE_Y}] ${MODELPARAM_VALUE.PADDLE_Y}
}

