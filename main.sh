#!/bin/bash
declare -i char_ascii
declare -i char_weight
declare -i total
declare -i num
declare -A ch
let num=0
LC_CTYPE=C 
for alphabet in {a..z}
do
	ch[${alphabet}]=$((++num))
done

for i in `cat all_word.txt`
do
	for j in `echo "$i" | fold -w 1`
	do
		total=$((${total}+${ch[${j}]}))
		if [ ${total} -gt 100 ]; then
			break
		fi
	done
	if [ ${total} -eq 100 ]; then
		echo "${i} is ${total}"
	fi
	total=0
done
