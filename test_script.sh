#!/bin/bash

#############################################################
# Author: Siddharth Gupta                                   #
# Script: test_script.sh                                    #
# Description: Check the correctness of student_solution.sh.#
#############################################################



#Counting the number of logs through running the script and storing output in count variable
count=$(bash student_solution.sh | wc -l)


# This looping statment check the variable counts with the exact count and if both match then solution is correct otherwise solution is wrong
if [ $count == 16 ]; then echo "Solution is correct !"; else echo "Solution is not correct !"; fi
