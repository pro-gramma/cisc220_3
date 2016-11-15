#!bin/bash
#James Neverson 10193581
read -p "insert a list of words: " list
new_list=""
for word in $list;do
	new_word=""
	for char in $(echo $word | fold -w1);do
		new_word="$char$new_word"
	done
	new_list="$new_list $new_word"
done
new_list=${new_list:1}
echo $new_list
