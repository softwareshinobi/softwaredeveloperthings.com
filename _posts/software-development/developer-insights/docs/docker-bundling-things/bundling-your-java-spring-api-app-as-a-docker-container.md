# Bundling Your Spring API As A Docker Container [Create Custom Docker Image]

## Introduction

In this Docker App Bundling Guide, you will learn how to bundle your existing Spring API into a Docker Image.

## What You'll Need

* A Linux Server to run the docker build commands.

* A Spring API Application with a pom.xml file.

## What We'll Do

* Install Docker Compose to the linux server

* Create and configure a Dockerfile

* Build the Docker Image from the Dockerfile

* Run The Docker Image Locally

## Installing Docker Compose

Let's run these commands quickly to install Docker Compose.

```

## Update OS Packages

sudo apt-get update;

## Install Docker Compose

sudo apt-get install -y docker-compose;

```

## Create A Basic Dockerfile And Add Customizations

So first let's create a simple dockerfile.

Change to the /tmp directory.

```
cd /tmp 
```

Create a New Directory for our Dockerfile.

```
mkdir custom-html-app-docker-image
```

Change directories into the new directory.

```
cd custom-html-app-docker-image
```

Create a new Dockerfile.

```
touch Dockerfile
```

Open the Dockerfile for editing. 

```
nano Dockerfile
```

Paste the following text and press "Control + X" to save the file after you are done.

Note: The Application name in this example is "admin-dashboard-user-api".

```

## the first stage of our build will use a maven 3.6.1 parent image

FROM maven:3.8.7-openjdk-18-slim AS MAVEN_BUILD

## copy the pom and src code to the container

COPY ./ ./

## package our application code

RUN mvn clean package

## see what files are available 

# RUN ls /target/

# RUN find / | grep .properties

## the second stage of our build will use open jdk 8 on alpine 3.9

FROM eclipse-temurin:18-jre-alpine

RUN apk add py3-pip

## copy only the artifacts we need from the first stage and discard the rest

COPY --from=MAVEN_BUILD /target/admin-dashboard-user-api-4.44.jar /admin-dashboard-user-api.jar

COPY --from=MAVEN_BUILD /src/main/resources/application.properties /application.properties

# COPY --from=MAVEN_BUILD /src/test/resources/conf/database.properties /conf/database.properties

# set the startup command to execute the jar

CMD ["java", "-jar", "/admin-dashboard-user-api.jar"]

```

## Build The Docker Image Using the Dockerfile

```
docker build -t custom-spring-api-app-docker-image .
```

This command will build the docker image using the dockerfile in the current directory.

when the container is built, the output will look like this:

```
Sending build context to Docker daemon  756.2kB
Step 1/8 : FROM maven:3.8.7-openjdk-18-slim AS MAVEN_BUILD
3.8.7-openjdk-18-slim: Pulling from library/maven
bb263680fed1: Extracting  16.38MB/31.41MB
10286f48c71b: Download complete 
718b77cc4686: Downloading    179MB/189.1MB
ff4591d9913c: Download complete 
fdc43b75e66d: Download complete 
30271a756915: Download complete 
d2995f37a2b8: Download complete 
...
(23/23) Installing py3-pip (22.1.1-r0)
Executing busybox-1.35.0-r17.trigger
OK: 102 MiB in 51 packages
Removing intermediate container be01d7f6d9f9
 ---> d14c946656c8
Step 6/8 : COPY --from=MAVEN_BUILD /target/admin-dashboard-user-api-4.44.jar /admin-dashboard-user-api.jar
 ---> 4768764bbf36
Step 7/8 : COPY --from=MAVEN_BUILD /src/main/resources/application.properties /application.properties
 ---> a8c92e0f1466
Step 8/8 : CMD ["java", "-jar", "/admin-dashboard-user-api.jar"]
 ---> Running in 6f5acfbad7ff
Removing intermediate container 6f5acfbad7ff
 ---> a246b46f4c71
Successfully built a246b46f4c71
Successfully tagged custom-spring-api-app-docker-image:latest
```

Look for the last few lines to say successfully built.

## Run The Docker Image Using The Docker Engine

So our custom docker image has been built.

Let's run the docker image and create a new running docker container.
o
This Docker container will have our custom index.html file from the Dockerfile.

```
docker run -p 8888:80 custom-spring-api-app-docker-image
```

This will start our docker container from the custom-docker-image we built before.

You'll see output like the following:

```

  .   ____          _            __ _ _
 /\\ / ___'_ __ _ _(_)_ __  __ _ \ \ \ \
( ( )\___ | '_ | '_| | '_ \/ _` | \ \ \ \
 \\/  ___)| |_)| | | | | || (_| |  ) ) ) )
  '  |____| .__|_| |_|_| |_\__, | / / / /
 =========|_|==============|___/=/_/_/_/
 :: Spring Boot ::                (v3.0.2)

2023-06-21T04:41:24.785Z  INFO 1 --- [           main] o.t.api.AdminDashboardUserApiRunner        : Starting AdminDashboardUserApiRunner v4.44 using Java 18.0.2.1 with PID 1 (/admin-dashboard-user-api.jar started by root in /)
2023-06-21T04:41:24.807Z  INFO 1 --- [           main] o.t.api.AdminDashboardUserApiRunner        : No active profile set, falling back to 1 default profile: "default"
2023-06-21T04:41:29.660Z  INFO 1 --- [           main] o.s.b.w.embedded.tomcat.TomcatWebServer  : Tomcat initialized with port(s): 8080 (http)
2023-06-21T04:41:29.723Z  INFO 1 --- [           main] o.apache.catalina.core.StandardService   : Starting service [Tomcat]
2023-06-21T04:41:29.725Z  INFO 1 --- [           main] o.apache.catalina.core.StandardEngine    : Starting Servlet engine: [Apache Tomcat/10.1.5]
2023-06-21T04:41:30.307Z  INFO 1 --- [           main] o.a.c.c.C.[Tomcat].[localhost].[/]       : Initializing Spring embedded WebApplicationContext
2023-06-21T04:41:30.316Z  INFO 1 --- [           main] w.s.c.ServletWebServerApplicationContext : Root WebApplicationContext: initialization completed in 5226 ms

*** 
*** init -- AdminDashboardUserApiRunner.online API
*** 

2023-06-21T04:41:33.079Z  INFO 1 --- [           main] o.s.b.w.embedded.tomcat.TomcatWebServer  : Tomcat started on port(s): 8080 (http) with context path ''
2023-06-21T04:41:33.162Z  INFO 1 --- [           main] o.t.api.AdminDashboardUserApiRunner        : Started AdminDashboardUserApiRunner in 10.305 seconds (process running for 12.703)
all done :: AdminDashboardUserApiRunner
```

The application is up. 

Now let's verify the docker container website shows our custom content.

## Verify With Your Browser

Open up your favorite internet browser and connect to localhost (or the server ip)

```
## Running on the local host

http://localhost:8888/

## Running on a remote server // example

http://10.10.3.1:8888/
```

You should see your API welcome page displayed.

Note: This will be the endpoint configured under "/".

## Conclusion

Today we learned about Dockerfiles and bundling your Spring API app into a custom docker image using a Dockerfile.

Dockerfiles are easy to work with and can be used to extend an existing Docker Image or create your own.

Give these tips a try when you want to build your own custom docker image of an html app!
