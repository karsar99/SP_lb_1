FROM amazonlinux:latest
RUN yum update -y && yum install yum-utils -y
COPY ./SP_lb_1.sh ./SP_lb_1.sh
RUN chmod u+x SP_lb_1.sh
CMD ./SP_lb_1.sh
