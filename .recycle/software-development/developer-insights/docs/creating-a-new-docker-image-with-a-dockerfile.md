# Creating A New Docker Image With A Dockerfile

## Introduction

In this article, you will learn how to create a custom docker image using a Dockerfile.

## Overview

You've pulled containers from DockerHub. Cool.

Now you want to make your own.

That's what this article is for, to show you a trivial example of how.

## Intended Audience

This docker command mini-guide is intended for Software Developers & Server Administrators who want to create a custom Docker Image using a Dockerfile on Ubuntu and Debian based Linux systems.

## Assumptions

This docker image creation mini-guide makes the following assumptions:

* You are a Software Developer or Server Administrator.

* You have docker terminal access to a Docker Daemon.

* You are comfortable running commands in the terminal.

## What Is Docker?

Docker is an open-source containerization platform.

Docker is used to automate the deployment of any application, using lightweight, portable containers.

Docker abstracts away the underlying operating system for applications and runs application as a process on the Docker Engine. 

## What Is The Docker Engine?

The Docker engine (or Docker daemon) represents the Docker Application server running on a given Docker Host.

These Docker hosts can be a Windows, Linux or MacOS servers.

## What Is A Docker Image?

A Docker image is a pre-configured snapshot of an application.

These Docker Image snapshots are executable software that can be deployed to any computer that has the Docker Engine installed. 

Docker images are the building blocks for developing and deploying applications quickly.

Docker Images contain everything needed to run a unit of software including libraries, application code, and the base operating system.

## What Is A Dockerfile?

A Dockerfile is a standard text file with commands for how to build a custom Docker Image.

The Dockerfile is a collection of build instructions and configurations for an image.

## Creating Our First Custom Docker Image Using A Dockerfile

The steps to creating a custom docker image are pretty straightforward.

We'll do the following this:

* create a basic Dockerfile and add customizations

* build the docker image using the Dockerfile

* run the docker image using the docker engine

* verify the server is up using the curl command

## Step #1 // Create A Basic Dockerfile And Add Customizations

So first let's create a simple dockerfile.

```

## Change to the /tmp directory

cd /tmp 

## Create a New Directory for our Dockerfile

mkdir simple-dockerfile

## Change directories into the new directory

cd simple-dockerfile

## Create a new Dockerfile

touch Dockerfile
```

Open the Dockerfile for editing. 

```
nano Dockerfile
```

Paste the following text and press "Control + X" to save the file.

```
FROM nginx

RUN  echo "hello universe!" > /usr/share/nginx/html/index.html

EXPOSE 80
```

This Dockerfile starts with the nginx static web server docker container and creates a simple but custom index.html page to display from the web server.

## Understanding the parts of the dockerfile

So let's take a quick second to break down the Keywords and sections of the Dockerfile from above.

* `FROM` Keyword:

The base docker image image that we would use as a starting point for our custom docker image.

* `MAINTAINER` Keyword:

The person attributed to maintaining this docker image.

* `RUN` Keyword:

Execute this linux command in the Docker Image.

* `WORKDIR` Keyword:

The directory inside the docker image where you want to run your commands on start from.

* `EXPOSE` Keyword:

Specify a port that the Docker Image exposes as a service.

So now... the Dockerfile is ready.

## Step #2 // Build The Docker Image Using the Dockerfile

```
docker build -t custom-docker-image .
```

This command will build the docker image using the dockerfile in the current directory.

when the container is built, the output will look like this:

```
Sending build context to Docker daemon  2.048kB
Step 1/3 : FROM nginx
latest: Pulling from library/nginx
5b5fe70539cd: Pull complete 
441a1b465367: Pull complete 
3b9543f2b500: Pull complete 
ca89ed5461a9: Pull complete 
b0e1283145af: Pull complete 
4b98867cde79: Pull complete 
4a85ce26214d: Pull complete 
Digest: sha256:593dac25b7733ffb7afe1a72649a43e574778bf025ad60514ef40f6b5d606247
Status: Downloaded newer image for nginx:latest
 ---> eb4a57159180
Step 2/3 : RUN  echo "hello universe!" > /usr/share/nginx/html/index.html
 ---> Running in 240e40b4fa07
Removing intermediate container 240e40b4fa07
 ---> 756cea47f229
Step 3/3 : EXPOSE 80
 ---> Running in dc7cf7b060b7
Removing intermediate container dc7cf7b060b7
 ---> 793fa43973b5
Successfully built 793fa43973b5
Successfully tagged custom-docker-image:latest
```

Look for the last few lines to say successfulling built.

## Step 3 // Run The Docker Image Using The Docker Engine

So our custom docker image has been built.

Let's run the docker image and create a new running docker container.

This Docker container will have our custom index.html file from the Dockerfile.

```
docker run -p 8888:80 custom-docker-image
```

This will start our docker container from the 'custom-docker-image' we built before.

You'll see output like thie following:

```
/docker-entrypoint.sh: /docker-entrypoint.d/ is not empty, will attempt to perform configuration
/docker-entrypoint.sh: Looking for shell scripts in /docker-entrypoint.d/
/docker-entrypoint.sh: Launching /docker-entrypoint.d/10-listen-on-ipv6-by-default.sh
10-listen-on-ipv6-by-default.sh: info: Getting the checksum of /etc/nginx/conf.d/default.conf
10-listen-on-ipv6-by-default.sh: info: Enabled listen on IPv6 in /etc/nginx/conf.d/default.conf
/docker-entrypoint.sh: Sourcing /docker-entrypoint.d/15-local-resolvers.envsh
/docker-entrypoint.sh: Launching /docker-entrypoint.d/20-envsubst-on-templates.sh
/docker-entrypoint.sh: Launching /docker-entrypoint.d/30-tune-worker-processes.sh
/docker-entrypoint.sh: Configuration complete; ready for start up
2023/06/20 20:32:48 [notice] 1#1: using the "epoll" event method
2023/06/20 20:32:48 [notice] 1#1: nginx/1.25.1
2023/06/20 20:32:48 [notice] 1#1: built by gcc 12.2.0 (Debian 12.2.0-14) 
2023/06/20 20:32:48 [notice] 1#1: OS: Linux 5.15.0-56-generic
2023/06/20 20:32:48 [notice] 1#1: getrlimit(RLIMIT_NOFILE): 1048576:1048576
2023/06/20 20:32:48 [notice] 1#1: start worker processes
2023/06/20 20:32:48 [notice] 1#1: start worker process 29
```

The application is up. 

Now let's verify the nginx website shows  our custom content.

## Step 3 // Verify The Custom Web Server Is Up Using The Curl Command

So we'll need to check that our container is built correctly.

We'll do this by running a curl command.

You can also check this with our favorite Internet Browser.

First let's install curl.

Note: The 'curl' application will let us fetch content from internet sites and locations.

```
sudo apt-get install -y curl
```

The output will look like this:

```
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following packages were automatically installed and are no longer required:
  fonts-droid-fallback fonts-noto-mono libflashrom1 libftdi1-2 libgs9 libgs9-common libidn12 libijs-0.35 libjbig2dec0
  libpaper-utils libpaper1 poppler-data squashfs-tools
Use 'sudo apt autoremove' to remove them.
The following NEW packages will be installed:
  curl
0 upgraded, 1 newly installed, 0 to remove and 205 not upgraded.
Need to get 0 B/194 kB of archives.
After this operation, 454 kB of additional disk space will be used.
Selecting previously unselected package curl.
(Reading database ... 151070 files and directories currently installed.)
Preparing to unpack .../curl_7.81.0-1ubuntu1.10_amd64.deb ...
Unpacking curl (7.81.0-1ubuntu1.10) ...
Setting up curl (7.81.0-1ubuntu1.10) ...
Processing triggers for man-db (2.10.2-1) ...
Scanning processes...                                                                                                         
Scanning linux images...                                                                                                      

Running kernel seems to be up-to-date.

No services need to be restarted.

No containers need to be restarted.

No user sessions are running outdated binaries.

No VM guests are running outdated hypervisor (qemu) binaries on this host.
```

Easy. Curl is installed now.

So let's curl the address of our new Docker Container run from our custom Docker image built using our Dockerfile.

Recall the docker run command we use before:

```
docker run -p 8888:80 custom-docker-image
```

Note: This command started our docker container, taking port 80 from the docker container to port 8888 on our local linux server.

So we'll point curl at localhost (from the server), to port 8888 using http.

```
curl http://localhost:8888
```

When you run this... you get the following output:

```
hello universe!
```

If you see that. then everything went well.

## Conclusion

Today we learned about Dockerfiles and created a custom docker image using a Dockerfile.

Dockerfiles are easy to work with and can be used to extend an existing Docker Image or create your own.

Give these tips a try when you want to build your own custom docker image!
