#base image
# FROM openjdk:8
 
# ADD Shell.sh /
# RUN /Shell.sh

FROM openjdk:8

WORKDIR /logicaltest

# RUN ["javac","App.java"]
# ENTRYPOINT ["java","App"]

COPY target/*.jar /logicaltest
COPY *.sh /logicaltest

ENTRYPOINT ["/logicaltest/Shell.sh"]
