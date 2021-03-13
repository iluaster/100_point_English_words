#!/bin/bash
declare -i char_ascii
declare -i char_weight
declare -i total
declare -A ch
LC_CTYPE=C 
for a in {a..z}
do
	ch[${a}]=$((++z))
done

for i in `cat all_word.txt`
do
	for j in `echo "$i" | fold -w 1`
	do
		total=$((${total}+${ch[${j}]}))
		if [ ${total} -gt "100" ]; then
			break
		fi
	done
	if [ ${total} -eq "100" ]; then
		echo "${i} is ${total}"
	fi
	total=0
done
