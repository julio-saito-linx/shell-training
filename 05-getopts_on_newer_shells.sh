#!/bin/bash

#
# from http://www.shelldorado.com/goodcoding/cmdargs.html
#

v_flag=off
file_name=
all_files=

grabArguments(){

	while getopts vf: opt
	do
    case "$opt" in
      v)  v_flag=on;;
      f)  file_name="$OPTARG";;
      \?)		# unknown flag
			  usage "unknown flag: [$1]"
	  exit 1;;
    esac
	done

	shift `expr $OPTIND - 1`
	all_files=$@
}

usage() {
  echo -e >&2 \
  "\n \e[31;1m ** $@ ** \e[m" \
  "\n\n   usage: $0 [-v] [-f file] [files ...]" \
  "\n\n - example 1: $0 -v -f some_file *.md" \
  "\n - example 2: $0 -vfsome_file *.md" \
  "\n"
}

checkParameters() {
  if [[ $# -lt 1 ]]; then
  	usage "wrong usage"
  	exit 1
  fi
}

print_result(){
	echo -e "   ***** FINAL RESULT *****"
	echo -e "--> v_flag    = [$v_flag]"
	echo -e "--> file_name = [$file_name]"
	echo -e "--> all files = [$all_files]"
}

checkParameters $@
grabArguments $@
print_result