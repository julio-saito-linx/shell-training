#!/bin/bash

new_line(){
	echo -e "\n"
}

##
# for like C
echo "for (( i = 1; i <= 10; i++ )); do ... done"
for (( i = 1; i <= 10; i++ )); do
	echo -n " $i"
done

new_line
##
# for in
echo "for i in \$(seq 10); do ... done"
for i in $(seq 10); do
	echo -n " $i"
done


new_line
##
# while CONDITION
echo "while [[ \$i -le 10 ]]; do ... done"
i=1
while [[ $i -le 10 ]]; do
	echo -n " $i"
	i=$((i+1))
done
new_line

