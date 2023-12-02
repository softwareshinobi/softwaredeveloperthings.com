# The Top Five Docker Commands I Use Everyday As A Software Developer

## Introduction

In this article, i share the top five docker commands i use on the terminal everyday as a software developer.

## Overview

You've got work to do in Docker.

Does that sound familiar?

"What was that command to do that thing again?"

"How did i do that.."

It can be overwhelming trying to remember usages and syntax for Docker and other linux commands.

So in this article i highlight the 5 docker commands I run over and over again, all day every day as a software developer.

## Intended Audience

This docker command mini-guide is intended for Software Developers & Server Administrators using Docker on Ubuntu and Debian based Linux systems.

## Assumptions

This docker command mini-guide makes the following assumptions:

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

## What Is A Docker Container?

A Docker container is a runtime instance of an Docker Image built with the Docker Engine.

Containers are deployed applications bundled with all necessary dependencies and configuration files.

Since the container isn’t tied to any one IT infrastructure, the container can be run on a different system or the in Cloud.

## What Is The Big Deal About Docker?

Containerization with Docker allows development teams bundle and deploys apps in a standardized way.

This standardized bundling helps developers reuse docker images across projects without having to worry about application specific dependencies.

## Command #1 // docker ps

This command shows me all the running containers on the server.

```
docker ps -a
```

This command will give you the following output.

And it will look just as ugly as this.

```
CONTAINER ID   IMAGE                                                    COMMAND                  CREATED        STATUS        PORTS                                                                                NAMES
089f0ca1fcc6   softwareshinobi/software-developer-things-linux:latest   "/usr/sbin/sshd -D"      31 hours ago   Up 31 hours   0.0.0.0:42422->22/tcp, :::42422->22/tcp                                              software-developer-things-linux
7b2c35235ae3   mysql                                                    "docker-entrypoint.s…"   8 weeks ago    Up 6 days     33060/tcp, 0.0.0.0:42306->3306/tcp, :::42306->3306/tcp                               project-dusty-depot-database-server
6324d8df5425   gitea/gitea:latest                                       "/usr/bin/entrypoint…"   8 weeks ago    Up 6 days     0.0.0.0:2222->22/tcp, :::2222->22/tcp, 0.0.0.0:42300->3000/tcp, :::42300->3000/tcp   project-dusty-depot-version-control
665eaac7a5db   phpmyadmin                                               "/docker-entrypoint.…"   8 weeks ago    Up 6 days     42080/tcp, 0.0.0.0:42080->80/tcp, :::42080->80/tcp
```

The output can be a bit hectic.

But it has useful information if you are troubleshooting or developing docker images.

The command output shows you information for BOTH running and stopped containers on the server.

In addition you can find out the following things about each of the containers:

* container ID

Usually i need the container id when i want to manually stop, kill, or remove a docker container.

* Container status

Troubleshooting for me starts here with the Container Status from the `ps` command and asking these questions to myself.

is the docker container up?

Is the docker container supposed to be up?

How long has the docker container been up?

Does the docker container keep force closing?

* ports 

Shows you the ports exposed and proxied by the Docker engine.

I use this when I'm getting connection based errors like this:

* Connection Timed Out

* 404 Server Not Found.


Those errors mean a network issue is happening.

So i start at the ports section looking for something being midconfigured.

## Command #2 // docker stats

'docker stats' is another docker monitoring command.

It's similar to ps but offers different information, primarily focused on the server resources.

```
docker stats
```

This command will give you the following output. It will look just as ugly as this.

```
CONTAINER ID   NAME                               CPU %     MEM USAGE / LIMIT     MEM %     NET I/O           BLOCK I/O        PIDS
089f0ca1fcc6   software-developer-things-linux    0.00%     1.379MiB / 969.4MiB   0.14%     15.3kB / 18.2kB   860kB / 1.33MB   1
7b2c35235ae3   project-dusty-depot-database-server    0.84%     8.352MiB / 969.4MiB   0.86%     91.9kB / 57.7kB   384MB / 386MB    40
6324d8df5425   project-dusty-depot-version-control    0.03%     85.52MiB / 969.4MiB   8.82%     71.9MB / 255MB    4.91GB / 185MB   19
665eaac7a5db   project-dusty-depot-database-manager   0.01%     8.922MiB / 969.4MiB   0.92%     27.8kB / 18.8kB   103MB / 28.1MB   7

```
When i use 'docker ps' i'm looking usually for the memory usage of each running container.

From the above output you can note the following things:

* I have four containers running

* My server has 1GB of ram

* I am running a database server that only consumes 8 MB of RAM.

* I am running a dockerized linux distribution that only consumes less than 2 MB of RAM.

Useful to check this out if you are getting high amounts of memory usage or disk swapping on the server.

The other stuff is useful, buti rarely look at it. I only care about the memory usage.

## Command #3 // docker images

'docker images' shows you the images downloaded to the server.

```
docker images
```

This command will give you the following output. It will look just as ugly as this.

```
REPOSITORY                                        TAG       IMAGE ID       CREATED        SIZE
softwareshinobi/software-developer-things-linux   latest    ab75014badf1   32 hours ago   282MB
mysql                                             latest    412b8cc72e4a   2 months ago   531MB
phpmyadmin                                        latest    604b7c1c3ded   2 months ago   517MB
gitea/gitea                                       latest    9f272f1af3bc   3 months ago   268MB
ubuntu                                            14.04     13b66b487594   2 years ago    197MB
```

The key information i'm looking for here is this:

* what docker images are downloaded?

* Which versions/tags of the docker images are downloaded?

* How much disk space do the docker images use?

## Command #4 // docker stop

'docker stop' is simple, you can stop a running docker container by container name or by container id.

```
docker stop [container id / container name]
```

So as an example, let's find all the running containers on my demo server and then stop one.

### Find the container id of the container you want to stop

Run this to list the running containers.

```
docker ps
```

Look at the output for the server you want to stop. we'll stop the last server, the one running the phpmyadmin container.

FYI: PhpMyAdmin is a database management site for MySQL Databases.

```
CONTAINER ID   IMAGE                                                    COMMAND                  CREATED        STATUS        PORTS                                                                                NAMES
089f0ca1fcc6   softwareshinobi/software-developer-things-linux:latest   "/usr/sbin/sshd -D"      32 hours ago   Up 32 hours   0.0.0.0:42422->22/tcp, :::42422->22/tcp                                              software-developer-things-linux
7b2c35235ae3   mysql                                                    "docker-entrypoint.s…"   8 weeks ago    Up 6 days     33060/tcp, 0.0.0.0:42306->3306/tcp, :::42306->3306/tcp                               project-dusty-depot-database-server
6324d8df5425   gitea/gitea:latest                                       "/usr/bin/entrypoint…"   8 weeks ago    Up 6 days     0.0.0.0:2222->22/tcp, :::2222->22/tcp, 0.0.0.0:42300->3000/tcp, :::42300->3000/tcp   project-dusty-depot-version-control
665eaac7a5db   phpmyadmin                                               "/docker-entrypoint.…"   8 weeks ago    Up 6 days     42080/tcp, 0.0.0.0:42080->80/tcp, :::42080->80/tcp                                   project-dusty-depot-database-manager
```

So the container id for phpmyadmin (from the output above) is "665eaac7a5db".

We'll now pass this container ID to the docker stop command.

```
docker stop 665eaac7a5db
```

After you run it will you get a single line of output.

```
665eaac7a5db
```

This means the docker container has been stopped.

Verify it's the docker container is stopped by running 'docker ps' again.

```
docker ps
```

This time the output looks like this.

```
CONTAINER ID   IMAGE                                                    COMMAND                  CREATED        STATUS        PORTS                                                                                NAMES
089f0ca1fcc6   softwareshinobi/software-developer-things-linux:latest   "/usr/sbin/sshd -D"      32 hours ago   Up 32 hours   0.0.0.0:42422->22/tcp, :::42422->22/tcp                                              software-developer-things-linux
7b2c35235ae3   mysql                                                    "docker-entrypoint.s…"   8 weeks ago    Up 6 days     33060/tcp, 0.0.0.0:42306->3306/tcp, :::42306->3306/tcp                               project-dusty-depot-database-server
6324d8df5425   gitea/gitea:latest                                       "/usr/bin/entrypoint…"   8 weeks ago    Up 6 days     0.0.0.0:2222->22/tcp, :::2222->22/tcp, 0.0.0.0:42300->3000/tcp, :::42300->3000/tcp   project-dusty-depot-version-control
```

Notice that the phpmyadmin container is no longer listed.

That's docker stop. And i use this command often when I am playing around and developer docker images.

## Command #5 // docker system prune

'docker system prune' is useful but destructive.

i use docker system prune when i want to clean up disk drive space from oodles of docker images.

I also use this command when I am building new containers and i want everything as pristine as possible.

FYI: Don't do this on production servers. If you have production access.. you always already know this.

Let's see how it works.

```
docker system prune -a
```

The output and a confirmation request are displayed similar to the following:

```
WARNING! This will remove:
  - all stopped containers
  - all networks not used by at least one container
  - all images without at least one container associated to them
  - all build cache
```

This command will not affect running containers.

Basically anything NOT tied to the docker containers currently running will be purged.

Like i said... it's destructive. But don't let that scare you.

You can just download or generate your docker resources again.

Type "y" when ready to being the docker system prune process.

This is what you'll see. I've shorted the output to save space.

```
Deleted Containers:
f0067a7f70a77f84347753a94a1ab07b310e04680589a8f7b0d2cc2149fae563
14a5743275d7b42d693cf53954f7a790ef5524a92bdf6813e4e08266c5faa531

Deleted Images:
untagged: ubuntu:14.04
untagged: ubuntu@sha256:64483f3496c1373bfd55348e88694d1c4d0c9b660dee6bfef5e12f43b9933b30
untagged: mysql:latest
untagged: mysql@sha256:15f069202c46cf861ce429423ae3f8dfa6423306fbf399eaef36094ce30dd75c
deleted: sha256:91b53e2624b431e562ed9076a9a506c5e78387f2cb4dad5968fd51ade839baa1
deleted: sha256:29fe1268c0126fd9958677211dc48660a1b1ab4ad95560a0974950feddafb488
untagged: nginx:latest
deleted: sha256:41f7f4a870813e7ed051daebd4e758b5b8804ac3029739489e17afd4f36f490b
deleted: sha256:12de05ae20395e6569095c5520c8e8807ec2ee715b482038d77bf5dffba7ca69

Total reclaimed space: 2.536GB
```

So that last line is why i run this command often: Cleaning up disk space from unused docker images.

## Conclusion

Wrapping up!

In this article, we went through the top 5 docker commands that i use everyday as a software developer.

I use these five commands everyday to monitor my docker deamon server and build out new docker images.

docker ps, docker images, docker ls, docker stop, docker system prune.

These docker commands are useful for monitoring and managing the docker resource on your docker server.
