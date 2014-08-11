#!/bin/bash

VAR1=false

check_var(){
	if [[ "$1" == true ]]; then
		echo "True, true"
	else
		echo "no, no"
	fi
}

set_var_to_true(){
	VAR1=true
}

check_var $VAR1
set_var_to_true
check_var $VAR1