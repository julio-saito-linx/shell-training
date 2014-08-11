#!/bin/bash

#
# from http://www.shelldorado.com/goodcoding/cmdargs.html
#

set -- `getopt vf: "$@"`
[ $# -lt 1 ] && exit 1	# getopt failed
