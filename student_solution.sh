#!/bin/bash

#####################################################################
# Author: Siddharth Gupta                                           #
# Script: student_solution.sh                                       #
# Description: find and output logs of Jun 18 between 02:00 to 04:00#
#####################################################################


# Below command takes the entire logs then filter the logs only for June 18 and then awk command takes the date field and compare the time between 2 - 4
cat Linux_2k.log | grep "^Jun 18" | awk -F'[: ]' '$3 >= 02 && $3 < 04 { print }'
