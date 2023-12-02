---

layout: post

author: softwareshinobi

title:  "Bundling Your Static HTML App As A Docker Container [Create Custom Docker Image]
"

categories: [html,docker-image]

tags: [html,docker,how-to,docker-image]

image: https://random.imagecdn.app/820/360

description: "In this Docker App Bundling Guide, you will learn how to bundle your existing HTML App into a Docker Image."

hidden: false

---

## Introduction

In this Docker App Bundling Guide, you will learn how to bundle your existing HTML App into a Docker Image.

## What You'll Need

* A Linux Server to run the docker build commands.

* An HTML Application with an index.html file

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

```
##
## Dockerfile To bundle HTML App into Docker Image
##

FROM httpd

MAINTAINER Software Shinobi "troy@softwareshinobi.com"

USER root

## Set An Environment Variable to use across the Dockerfile

ENV webServerFileRoot /usr/local/apache2/htdocs/

##

RUN rm -rf $webServerFileRoot

COPY ./ $webServerFileRoot

RUN ls -lha $webServerFileRoot

## Expose ports

EXPOSE 80

```

## Build The Docker Image Using the Dockerfile

```
docker build -t custom-html-app-docker-image .
```

This command will build the docker image using the dockerfile in the current directory.

when the container is built, the output will look like this:

```
Sending build context to Docker daemon  3.072kB
Step 1/8 : FROM httpd
latest: Pulling from library/httpd
5b5fe70539cd: Already exists 
1d40567696ba: Pull complete 
d6cb3e372b06: Pull complete 
fbc80fe62958: Pull complete 
3da840f9e96e: Pull complete 
Digest: sha256:f499227681dff576d6ae8c49550c57f11970b358ee720bb8557b9fa7daf3a06d
Status: Downloaded newer image for httpd:latest
 ---> ad303d7f80f9
Step 2/8 : MAINTAINER Software Shinobi "troy@softwareshinobi.com"
 ---> Running in df3ffeec4d5c
Removing intermediate container df3ffeec4d5c
 ---> c678cf87c072
Step 3/8 : USER root
 ---> Running in e214fa2947e5
Removing intermediate container e214fa2947e5
 ---> 9a1d5bbcce85
Step 4/8 : ENV webServerFileRoot /usr/local/apache2/htdocs/
 ---> Running in 91683423f741
Removing intermediate container 91683423f741
 ---> bcbf3a282715
Step 5/8 : RUN rm -rf $webServerFileRoot
 ---> Running in f7b2a89c8af5
Removing intermediate container f7b2a89c8af5
 ---> d63c9da12291
Step 6/8 : COPY ./ $webServerFileRoot
 ---> 721792f39084
Step 7/8 : RUN ls -lha $webServerFileRoot
 ---> Running in 88180d4dfc7a
total 16K
drwxr-xr-x 2 root     root     4.0K Jun 21 02:32 .
drwxr-xr-x 1 www-data www-data 4.0K Jun 21 02:32 ..
-rw-rw-r-- 1 root     root      403 Jun 21 02:32 Dockerfile
-rw-rw-r-- 1 root     root       10 Jun 21 02:32 index.html
Removing intermediate container 88180d4dfc7a
 ---> c1e318e8603c
Step 8/8 : EXPOSE 80
 ---> Running in 7d5259b55692
Removing intermediate container 7d5259b55692
 ---> 4db8c8f01635
 built 4db8c8f01635
Successfully tagged custom-html-app-docker-image:latest
```

Look for the last few lines to say successfully built.

## Run The Docker Image Using The Docker Engine

So our custom docker image has been built.

Let's run the docker image and create a new running docker container.

This Docker container will have our custom index.html file from the Dockerfile.

```
docker run -p 8888:80 custom-html-app-docker-image
```
This will start our docker container from the custom docker image we built earlier.

You'll see output like the following:

```
AH00558: httpd: Could not reliably determine the server's fully qualified domain name, using 172.17.0.4. Set the 'ServerName' directive globally to suppress this message
AH00558: httpd: Could not reliably determine the server's fully qualified domain name, using 172.17.0.4. Set the 'ServerName' directive globally to suppress this message
[Wed Jun 21 02:38:33.434846 2023] [mpm_event:notice] [pid 1:tid 140152742000512] AH00489: Apache/2.4.57 (Unix) configured -- resuming normal operations
[Wed Jun 21 02:38:33.435431 2023] [core:notice] [pid 1:tid 140152742000512] AH00094: Command line: 'httpd -D FOREGROUND'
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

You should see your html app under this address.

If you do... then you are all done!

## Conclusion

Today we learned about Dockerfiles and bundling your html app into a custom docker image using a Dockerfile.

Dockerfiles are easy to work with and can be used to extend an existing Docker Image or create your own.

Give these tips a try when you want to build your own custom docker image of an html app!
