#!/bin/bash -x

read -p "Enter range to display prime numbers : " start end

for (( check_prime=$start; check_prime<$end; check_prime++ ))
do
	for (( i=2; i<=$(($check_prime/2)); i++ ))
	do
		flag=1
		if [[ $(($check_prime%$i)) -eq 0 ]]
		then
			flag=0
			break
		fi
	done
	if [[ flag -eq 1 ]]
	then
		echo "Prime num : " $check_prime
	fi
done
