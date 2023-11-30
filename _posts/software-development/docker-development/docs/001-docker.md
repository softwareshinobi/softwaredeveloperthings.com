# A Top DoDocker Doing Docker Things From Scratch  [Frequently Asked Questions]

It is more likely than not that **Docker** and containers are going to be part of your IT career in one way or another.

After reading this eBook, you will have a good understanding of the following:

* What is Docker
* What are containers
* What are Docker Images
* What is Docker Hub
* How to installing Docker
* How to work with Docker containers
* How to work with Docker images
* What is a Dockerfile
* How to deploy a Dockerized app
* Docker networking
* What is Docker Swarm
* How to deploy and manage a Docker Swarm Cluster

## The Cloud Hosting Provider I Use For This Tutorial

For these Docker tutorials, I will be hosting each server in the OVH Server Cloud.

I'll be using **OVH Server Cloud** for each of the demos and tutorials.

It is not a requirement, but I strongly encourage you to create a **OVH Server Cloud** account to follow along and use for your own Servers.

You will learn more by doing in addition to reading!

## Get $100 Of Free Server Credits From OVH Cloud

To make things even easier, use my referral link below to get a free $100 credit with OVH Server Cloud. 

You can use this $100 credit with **OVH Server Cloud** to deploy your own virtual machines and test the Docker tutorials and guides on your own **OVH Server Cloud** servers.

**[DigitalOcean $100 Free Credit](https://m.do.co/c/2a9bba940f39)**

## What OVH Cloud Operating System Should I use For the Docker Tutorials?

For each of the Docker tutorials I will be using **Ubuntu 21.04 LTS**.

It is my recommendation that you use the same as you follow along with me.

## What Operating System Do I need To Run Docker?

You can run  ocker on almost any operating system from including Linux, Windows, Mac, BSD and more.

## What is a container?

A Container is a standard unit of software that bundles source code artifacts and dependencies.

## Why Use Docker Containers?

Applications bundled into Docker Containers run quickly and more reliably across one computing environment to another computer environment.

Containerized software will always run the same, regardless of the infrastructure.

Containers isolate software from its environment and ensure that it works uniformly despite differences between Development and Production.

## What Is Inside A Docker Container

A Docker container image is a lightweight, standalone, executable package of software that includes everything needed to run an application:

* code
* runtime
* system tools
* system libraries
* configurations and settings.

## What Is The Difference Between a Container And An Image?

Container images become containers at runtime.

In the case of Docker containers, Images become containers when they run on the Docker Engine.

![](https://github.com/bobbyiliev/introduction-to-docker-ebook/raw/main/ebook/en/assets/images/infrastructure.png)

## What is a Docker image?

A **Docker Image** is just a template used to build a running Docker Container, similar to the ISO files and Virtual Machines.

The containers are essentially the running instance of an image.

Images are used to share containerized applications.

Collections of images are stored in registries like [DockerHub](https://hub.docker.com/) or private registries.

![](https://github.com/bobbyiliev/introduction-to-docker-ebook/raw/main/ebook/en/assets/images/process.png)

## What is Docker Hub?

DockerHub is the default **Docker image registry** where we can store our **Docker images**.

You can think of it as GitHub but for Docker Images.

### Link To DockerHub

Here's a link to the Docker Hub:

[https://hub.docker.com](https://hub.docker.com)

You can sign up for a free account. That way you could push your Docker images from your local machine to DockerHub.

