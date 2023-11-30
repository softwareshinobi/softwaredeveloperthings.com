# How To Install Docker On Ubuntu Linux [2023]

## Introduction

In this article, you learn how to install the Docker Engine to your Ubuntu Linux Server.

## Overview

Do you want to install Docker to your Ubuntu Server running Ubuntu?

Do you have sudo privileges and about five minutes?

If so, this is the Docker Installation guide for you. 

## What This Docker Installation Guide Is

In this docker installation tutorial guide, we will cover the following topics:

[ ] What is Docker and the Docker Engine?

[ ] What is a Docker Image and a Docker Container?

[ ] How to Install The Docker Engine On Ubuntu

[ ] How to Verify You Installed Docker Correctly

## Intended Audience

This installation guide is intended for Software Developers & Server Administrators installing Docker on Ubuntu and Debian based computer systems.

## Assumptions

This docker installation guide makes the following assumptions:

[ ] You are a Software Developer or Server Administrator.

[ ] You have sudo/root access to the Ubuntu server.

[ ] You are comfortable running commands in the Ubuntu Server terminal.

## What’s In the Installation Guide?

* What Is Docker? [In 8 Seconds].
* What Is The Docker Engine? [In 8 Seconds].
* What Is The Big Deal About Docker? [In 8 Seconds].
* What Is A Docker Image? [In 8 Seconds].
* What Is A Docker Container? [In 8 Seconds].
* Overview: How To Install Docker On Ubuntu.
* Getting Started Installing The Docker Engine
* How To Install Docker On Ubuntu.

## Let’s Get Started!

In the following sections, we cover the basics of Docker and followed by how to install Docker on Ubuntu.

## What Is Docker?

Docker is an open-source containerization platform.

Docker is used to automate the deployment of any application, using lightweight, portable containers.

Docker abstracts away the underlying operating system for applications and runs application as a process on the Docker Engine. 

## What Is The Docker Engine?

The Docker engine (or Docker daemon) represents the Docker Application server running on a given Docker Host.

These Docker hosts can be a Windows, Linux or MacOS servers.

## What Is The Big Deal About Docker?

Containerization with Docker allows development teams bundle and deploys apps in a standardized way.

This standardized bundling helps developers reuse docker images across projects without having to worry about application specific dependencies.

## What Is A Docker Image?

A Docker image is a pre-configured snapshot of an application.

These Docker Image snapshots are executable software that can be deployed to any computer that has the Docker Engine installed. 

Docker images are the building blocks for developing and deploying applications quickly.

Docker Images contain everything needed to run a unit of software including libraries, application code, and the base operating system.

## What Is A Docker Container?

A Docker container is a runtime instance of an Docker Image built with the Docker Engine.

Containers are deployed applications bundled with all necessary dependencies and configuration files.

Since the container isn’t tied to any one IT infrastructure, the container can be run on a different system or the in Cloud.

## Overview: How To Install Docker On Ubuntu

Installing Docker on your Ubuntu box is a fairly simple process.

Over the next few minutes, we will complete each of the following steps to install and configure Docker on your Ubuntu Server.

[ ] Update the Operating System Packages

[ ] Remove Any Old Docker Installations

[ ] Install the Docker Engine Packages

[ ] Verify the Docker Engine Is Installed Correctly

[ ] Configure User Permissions For The 
Docker Engine

[ ] Run Our First Docker Container On Your Ubuntu Server

## Getting Started Installing The Docker Engine

You don't need too much to get started.

[ ] Ubuntu Server with connection to the public Internet.

    * To download Docker Engine packages from the Ubuntu Software Repositories.

[ ] Root/sudo access on your Ubuntu Server.

    * To update the ubuntu server operating system packages and installations.
        
That’s it. So let’s get to it!

## So... How To Install The Docker Engine on Ubuntu?

Installing Docker on your Ubuntu machine is fairly straight forward.

In each section below we will perform the steps needed to install Docker on your Ubuntu Server.

## Update the Operating System Packages

We are going to install Docker using the Official Ubuntu Aptitude repositories.

To do that, we'll simply update your existing list of Aptitude packages.

```
sudo apt update
```

## Remove Any Old Docker Installations

Let's remove any possible Docker installations currently on your Ubuntu server.

```
sudo apt-get remove -y docker docker-engine docker.io containerd runc docker-compose
```

## Install the Docker Engine Packages

The Docker Engine package installion is a quick one liner command.

We will install Docker Compose using the Aptitude Package manager.

```
sudo apt-get install docker.io
```

## Verify the Docker Engine Is Installed Correctly


Now let’s verify The version Of Docker that we have installed:

```
sudo docker -v
```

After running this command you should see something similar to the following in the Terminal window.

```
Docker version 20.10.21, build 20.10.21-0ubuntu1~22.04.3
```

## Configure User Permissions For The Docker Engine

The Docker Engine created a user group on your Ubuntu Server named "docker".

Members of the "docker" group do not have to type "sudo" to execute Docker commands.

See below for an example when you are not in the docker user group on your Ubuntu Server.

Run the following command to list the currently running docker containers.

```
docker ps
```

You will get an output similar to the following:

```
Got permission denied while trying to connect to the Docker daemon socket at unix:///var/run/docker.sock: Get "http://%2Fvar%2Frun%2Fdocker.sock/v1.24/containers/json": dial unix /var/run/docker.sock: connect: permission denied
```

Easy fix. Don't worry.

Execute the following command WITH sudo.

It will add the current user to the "docker" group on your Ubuntu Server.

You can also directly specify a specific user to be added to the "docker" group.

```
## Assign the current user to the docker group

sudo usermod -a -G docker $USER

## Assign a specific user to the docker group

sudo usermod -a -G docker software-developer-things
```

Log out of the Terminal session and log back in.

Execute the following command.

```
docker ps
```

You should see an output similar to the following. 

Please Note: We haven't run any containers, so that is why there are no results.

```
CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES

```

## Run Your First Docker Container On Your Ubuntu Server
 
Let's check your work and run a trivial Docker container.

```
docker run hello-world
```

After running this command you should see something similar to the following in the Terminal window.

```
Unable to find image 'hello-world:latest' locally
latest: Pulling from library/hello-world
719385e32844: Pull complete 
Digest: sha256:c2e23624975516c7e27b1b25be3682a8c6c4c0cea011b791ce98aa423b5040a0
Status: Downloaded newer image for hello-world:latest

Hello from Docker!
This message shows that your installation appears to be working correctly.

To generate this message, Docker took the following steps:
 1. The Docker client contacted the Docker daemon.
 2. The Docker daemon pulled the "hello-world" image from the Docker Hub.
    (amd64)
 3. The Docker daemon created a new container from that image which runs the
    executable that produces the output you are currently reading.
 4. The Docker daemon streamed that output to the Docker client, which sent it
    to your terminal.

To try something more ambitious, you can run an Ubuntu container with:
 $ docker run -it ubuntu bash

Share images, automate workflows, and more with a free Docker ID:
 https://hub.docker.com/

For more examples and ideas, visit:
 https://docs.docker.com/get-started/

```

Fin.

You have now finished installing the Docker Engine on your Ubuntu server.

## Conclusion

The Docker Engine is a container-based virtualization software that allows users to create and run lightweight, portable and self-sufficient environments on any Ubuntu Linux Server.

With this Docker installation guide, you learned a bit about Docker and installed the Docker Engine.
