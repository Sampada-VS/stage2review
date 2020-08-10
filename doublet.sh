#!/bin/bash -x
H_H=1
H_T=2
T_H=3
T_T=4

declare -A doublet
declare -A percent
read -p "Enter number of flips : " num_of_flip

for (( i=0; i<$num_of_flip; i++ ))
do
	flip_coin=$((RANDOM%4+1))
	case $flip_coin in
		$H_H) doublet[HH]=$((++h_h_win))
				;;
		$H_T) doublet[HT]=$((++h_t_win))
				;;
		$T_H) doublet[TH]=$((++t_h_win))
				;;
		*)	doublet[TT]=$((++t_t_win))
			;;
	esac
done
echo ${!doublet[@]}
echo ${doublet[@]}
percent[HH]=`awk "BEGIN { print $h_h_win/$num_of_flip*100 }"`
percent[HT]=`awk "BEGIN { print $h_t_win/$num_of_flip*100 }"`
percent[TH]=`awk "BEGIN { print $t_h_win/$num_of_flip*100 }"`
percent[TT]=`awk "BEGIN { print $t_t_win/$num_of_flip*100 }"`
echo ${!percent[@]}
echo ${percent[@]}

