#!/bin/bash

#############################################################
# Author: Siddharth Gupta                                   #
# Script: test_script.sh                                    #
# Description: Check the correctness of student_solution.sh.#
#############################################################



#Counting the number of logs through running the script and storing output in count variable
count_sol=$(bash student_solution.sh | wc -l)

#Taking counts from the log file directly
count_test=$(cat Linux_2k.log | grep '^Jun 18' |awk '{print $3}' | sed 's/://g' | awk '$1 >= 20000 && $1 <= 40000' | wc -l)

# If the script count equals the count from the log file then solution is correct
if [ $count_sol == $count_test ];
then
       	echo "Solution is correct !"; 
else 
	echo "Solution is not correct !"; 
fi
