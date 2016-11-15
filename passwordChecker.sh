#!bin/bash
#James Neverson 10193581
strength=0
read -s password
if [[ ${#password} -gt 8 ]];then
	strength=$(( $strength + 1 ))
fi
if [[ $password == ""*[0-9]* ]];then
	strength=$(( $strength + 1 ))
fi
if [[ $password == *['@','#','%','&','**','+','-','=']* ]];then
	strength=$(( $strength + 1 ))
fi
results[1]="Weak"
results[2]="Moderate"
results[3]="Strong"
echo ${results[${strength}]}
