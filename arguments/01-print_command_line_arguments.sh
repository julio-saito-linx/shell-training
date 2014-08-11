#!/bin/bash

#
# from: http://www.shelldorado.com/goodcoding/cmdargs.html
# more: http://wiki.bash-hackers.org/scripting/posparams

# cmdtest - print command line arguments

while [ $# -gt 0 ]
do
    echo "\$1=[$1], \$#=$# *before shift"
    shift
done