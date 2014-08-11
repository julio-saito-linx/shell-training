#!/bin/bash

#
# from http://www.shelldorado.com/goodcoding/cmdargs.html
#

getopt f:vl -vl -ffile one two three
# [ -v -l -f file -- one two three]