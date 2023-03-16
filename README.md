# This is Cloud DevOps interview task

**Requirement:-** You are developing an exercise for Cloud DevOps students where student’s solution is tested using a test script. And execution of student solution and test script should be automated using Docker.

**Solution:-** Solution consist of a Log file, a student solution script, a test script , Dockerfile and Readmd file. Functions of each file is described below in detail.

Linux_2k.log : This file contains some old logs. Which will be base for our solution.

student_solution.sh : The purpose of this script to read the log file and filter the logs for June 18 between 02:00 - 04:00. This script is a combination of cat, grep and awk commands to filter the logs and search for specific logs.

test_script.sh : The purpose of this script to check wether the student_solution script is working as expected or no or in simple words, to check if the solution is correct or not. This script will check the counts from the solution script with the count of logs i.e 16 and compared them. If count is equal then solution is correct.

Dockerfile : This file will automate the execution of both solution and test script every time this Dockerfile will be built. With the file a docker container of ubuntu image will be created and scripts will run inside the container.

Steps to build Dockerfile:-

To build image from Docker file run command: 
$ sudo docker build . -t sigupta20/devops

To check if image has been created, run command: 
$ sudo docker images

To run the container from the image built in last step, run command: 
$ sudo docker run -it -d sigupta20/devops

To check if container is running, run command: 
$ sudo docker ps

To enter inside the container, run command: 
$ sudo docker exec -it 062875b34de6 bash

To check if files has been copied correctly, run command:-
$ ls -lrt

To come out of container , run command: 
$ exit










