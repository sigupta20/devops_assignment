FROM ubuntu:22.04
RUN apt-get update
ADD . /DevOps
WORKDIR /DevOps

RUN chmod +x student_solution.sh
RUN chmod +x test_script.sh

RUN ./student_solution.sh
RUN ./test_script.sh
