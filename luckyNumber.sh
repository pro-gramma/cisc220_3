#!bin/bash
#James Neverson 10193581
luckySum() {
	sum=0
	for digit in $(echo $1 | fold -w1);do
		
		sum=$(( $sum + $digit ))
	done
	if [[ ${#sum} -gt 1 ]];then
		echo $(luckySum "$sum")
	elif [[ $sum -eq 7 ]];then
		echo 1
	else
		echo 0
	fi
}
for i in {1000..10000};do
	if [[ $(luckySum "$i") -eq 1 ]];then
		echo $i
	fi
done
