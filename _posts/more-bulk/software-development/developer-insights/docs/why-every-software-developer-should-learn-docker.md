# 5 Reasons Why Every Software Developer Should Learn Docker

## Introduction

In this article, i detail 5 quick reasons that every software developer should start learning Docker.

## Overview

Oh great.

Another article telling software developers a new thing to learn.

You are tired of it. Me too.

But this time it's not just talk.

Docker is here. And Docker is here to stay for a while.

If you are a software developer... stay tuned.

## Intended Audience

This docker command mini-guide is intended for Software Developers that develop and deploy applications to Linux Servers.

## Assumptions

This docker command mini-guide makes the following assumptions:

* You are a Software Developer or Server Administrator.

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

## Reason #1 // Docker Is Simple To Use

Docker has gained the market share it has for one simple reason.

Docker is easy to use.

Plus, easy to use.

Anybody that can copy and paste commands can start a docker project.

## Reason #2 // Pristine Isolated Execution Environments

Back in the old days before docker there different environments for your application:

* dev

* test 

* pre-production

* production

* user training.

Each server had different configurations.

Some servers were in different data centers.

Every server had something different about it.

The jar you built in the test environment is running on a different server on a different OS version and different applicaton server.

That's bad.

Docker does away with this.

All your apps and code run on an isolated run time separate from other applications and from underyling docker engine hosts.

## Reason #3 // Environment Encapsulation

An application bundled into a single Docker images can be run on Linux, macOS, Windows.

This means you can create a simple application that is pushed to a container repository, and any server that has the Docker Daemon can run that simple application.

Pretty sweet.

## Reason #4 // Application Scalability Made Easy

Docker is one type of Containerization platform.

There are others.

Docker and other Containerization Platforms make is easy to scale out an application.

This is useful for load balancing and fault tolerance.

So remember that each Docker container is a runtime instance of a Docker Image.

The Docker image is has it's own set of configurations and dependencies packed inside it.

These configurations make it very easy to run multiple instances of the same Docker Images simultaneously.

Reason#6: No More Security Issues

Security is important.

As a function of containerization, Docker containers are much more secure than any ordinary application built and deployed the classical way.

Containers have built in network security, where one container cannot access the services of another containers without appropriate.

With Docker, you can even configure multiple layers of security for each of your containers.

Bonus Reason #6: Deploy Apps With Less Headache

Application migrations, installations, and configurations are their own adventures.

Before docker, application were bundled and then executed on a server.

In a post-Docker world, the application is bundled alongside the operating system and then this is executed on the Docker Engine.

Using Docker allows you to quickly and repeatable ship your application anywhere you want without worrying about build and execution dependencies.

## Conclusion

Docker is a powerful skill that every developer should be comfortable with.

As developers, it can be easy to focus on code, code, code.

But running the application is equally important.

Docker saves the day and makes application deployments faster and easier.
