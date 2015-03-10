FROM dockerfile/java:oracle-java8

# source files
ADD spring-hello-world /opt/spring-hello-world

# gvm
RUN curl -s get.gvmtool.net | bash

# frameworks
RUN bash -c "source ~/.gvm/bin/gvm-init.sh && gvm install gradle; exit 0"
RUN bash -c "source ~/.gvm/bin/gvm-init.sh && gvm install springboot; exit 0"

EXPOSE 8080

# build
WORKDIR /opt/spring-hello-world
RUN bash -c "~/.gvm/gradle/current/bin/gradle build"

# run
WORKDIR /opt/spring-hello-world/build/libs
CMD ["java", "-jar", "spring-hello-world.jar"]
