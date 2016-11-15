#!bin/bash
#James Neverson 10193581
output=""
while IFS=' ' read student_id course_id therest;do
	if [[ "$course_id" != "courseID" ]];then
		while IFS=' ' read student_id_2 student_name therest;do
			if [[ $student_name != "studentName" ]];then
				if [[ $student_id == $student_id_2 ]];then
					output="$output"$'\n'"$student_name"
				
					while IFS=' ' read course_id_2 course_name therest;do
						if [[ $course_name != "courseName" ]];then
							if [[ $course_id == $course_id_2 ]];then
								output="$output $course_name"
							fi
						fi			
					done <"courses.txt"
				fi
			fi
		done <"Students.txt"
	fi
done <"students_courses.txt"
output=${output:1}
echo "$output" >> output
sort output
rm -rf output
