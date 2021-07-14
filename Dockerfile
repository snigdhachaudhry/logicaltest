#base image
# FROM openjdk:8
 
# ADD Shell.sh /
# RUN /Shell.sh


# RUN chmod +x Shell.sh

# ENTRYPOINT ["/src/Shell.sh"]
# RUN ["javac","App.java"]
# ENTRYPOINT ["java","App"]
FROM openjdk:8
 
#ADD Shell.sh /
#RUN "Shell.sh"
# RUN mkdir /myproject
# COPY App.java /myproject

WORKDIR /logicaltest

# RUN chmod +x Shell.sh

# ENTRYPOINT ["/src/Shell.sh"]


# RUN ["javac","App.java"]
# ENTRYPOINT ["java","App"]



COPY target/*.jar /logicaltest
COPY *.sh /logicaltest

ENTRYPOINT ["/logicaltest/Shell.sh"]