# Bundling Your React App As A Docker Container [Create Custom Docker Image]

## Introduction

In this Docker App Bundling Guide, you will learn how to bundle your existing React app into a Docker Image.

## What You'll Need

* A Linux Server to run the docker build commands.

* A React application with a package.json file.

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
docker build -t custom-react-app-docker-image .
```

This command will build the docker image using the dockerfile in the current directory.

when the container is built, the output will look like this:

```
Sending build context to Docker daemon  9.377MB
Step 1/11 : FROM node:10 AS builder
10: Pulling from library/node
76b8ef87096f: Pull complete 
73269890f6fd: Pull complete 
Digest: sha256:59531d2835edd5161c8f9512f9e095b1836f7a1fcb0ab73e005ec46047384911
Status: Downloaded newer image for node:10
 ---> 28dca6642db8
Step 2/11 : WORKDIR /app
 ---> Running in 0d54903154f2
Removing intermediate container 0d54903154f2
 ---> 034637f787b2
Step 3/11 : COPY package.json ./
 ---> 2c6eb4bcbc8c
...
 ---> 1da37e8894c7
Step 10/11 : COPY --from=builder /app/build .
 ---> 9dbeb5de28b5
Step 11/11 : ENTRYPOINT ["nginx", "-g", "daemon off;"]
 ---> Running in 8802f510e69f
Removing intermediate container 8802f510e69f
 ---> 371ea8f0b1e3
Successfully built 371ea8f0b1e3
Successfully tagged custom-react-app-docker-image:latest
```

Look for the last few lines to say successfully built.

## Run The Docker Image Using The Docker Engine

So our custom docker image has been built.

Let's run the docker image and create a new running docker container.

```
docker run -p 8888:80 custom-react-app-docker-image
```

This will start our docker container from the custom docker image we built earlier.

This docker container may not display any output.

Now let's verify the docker container website shows our custom content.

## Verify With Your Browser

Open up your favorite internet browser and connect to localhost (or the server ip)

```
## Running on the local host

http://localhost:8888/

## Running on a remote server // example

http://10.10.3.1:8888/
```

You should see your app welcome page displayed.

Note: This will be the endpoint configured under "/".

## Conclusion

Today we learned about Dockerfiles and bundling your React app into a custom docker image using a Dockerfile.

Dockerfiles are easy to work with and can be used to extend an existing Docker Image or create your own.

Give these tips a try when you want to build your own custom docker image of an html app!
