#!/bin/bash

#
# from http://www.shelldorado.com/goodcoding/cmdargs.html
#

v_flag=off
file_name=
while [ $# -gt 0 ]
do
	
	# "$@" contains all file names
  #echo "[$@]"

  case "$1" in
		-v)  v_flag=on;;
		-f)  file_name="$2"; shift;;
		
		# stop 
		--)	shift; break;;

		# short usage message and terminates if an 
		# unknown command line flag starting with a dash was specified
		-*)
		    echo -e >&2 \
		    " \e[31;1m ** unknown flag: [$1] ** \e[m" \
		    "\n - usage: $0 [-v] [-f file] [file ...]" \
		    "\n - example: $0 -v -f some_file *.md" \
		    "\n"
		    exit 1;;
		*)  break;;	# terminate while loop
  esac
  shift
done
# all command line switches are processed,

echo -e "-> v_flag = $v_flag"
echo -e "-> file_name = [$file_name]"
echo -e "-> all files = [$@]"
