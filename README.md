SPRING BOOT DOCKER BUILD HELLO WORLD
================================
This is a POC to have a Spring Boot project get all of the requirements and build in a Docker Container


Installation
----------------

```sh
docker build -t <username>/spring-boot-cli-docker .
docker images
docker run -it -p 8080:8080 <image id> 
```

Check it
---------------
Open browser: http://localhost:8080
