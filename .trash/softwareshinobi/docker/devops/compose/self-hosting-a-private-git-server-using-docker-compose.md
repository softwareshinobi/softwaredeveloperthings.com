# Self Hosting A Private Git Server Using Docker Compose

## Introduction

In this Terminal Command Quickie, you will learn how to create a Gitea server using Docker Compose and Linux.

## What Is Gitea?

Gitea is a software package for hosting software development version control systems using Git.

Gitea is comparable to GitHub with features like bug tracking, code review, continuous integration, kanban boards, tickets, and wikis.

## What Is Docker Compose?

Docker Compose is a tool for defining and running multiple Docker containers.

Docker Compose lets software developers define containers, container settings, and container networking in a simple YAML file.

With Docker Docker it's easy to start and stop complex docker application applications with simple commands.

## Setting Up Gitea

We'll set up Gitea by creating and configuring a docker-compose file.

Then we'll run the file and load up the Gitea home page in the web browser.

## Creating The Docker Compose File To Create The Server

In the following sections we will set up our Gitea server using docker compose.

## Installing Docker Compose

Let's run these commands quickly to install Docker Compose.

```

## Update OS Packages

sudo apt-get update;

## Install Docker Compose

sudo apt-get install -y docker-compose;

```

## Creating Our Docker Compose File

Let's first create a new file in our project root.

```bash
touch docker-compose.yaml
```

## Editing Our Docker Compose File

Open the new docker-compose.yaml file for editing.

```bash
nano docker-compose.yaml
```

Paste the following content into the docker-compose.yaml file.

```
version: "3"

networks:
  gitea:
    external: false

services:
  server:
    image: gitea/gitea:main-nightly
    container_name: gitea
    environment:
      - USER_UID=1000
      - USER_GID=1000
    restart: always
    networks:
      - gitea
    volumes:
      - ./gitea:/data
      - /etc/timezone:/etc/timezone:ro
      - /etc/localtime:/etc/localtime:ro
    ports:
      - "3000:3000"
      - "222:22"
```

## Start The Docker Compose Script

So let's start the Gitea server using the docker-compose command.

```

## Bring down the service configuration

docker-compose down

## Bring up the service configuration

docker-compose up

```

Wait for everything to load. 

When you see output messages about the server being up, you are ready!

## Open The Browser And Configure The App Details

Using your favorite web browser, navigate to the following URL:

```
http://localhost:3000
```

You should see a screen asking your to create your details.

## You Can Configure The Server On Your Own

You don't need me to teach you how to set up a website.

It's super simple and you can do the rest yourself from here.

## Conclusion

Today we installed docker-compose and created our own private git server using Gitea.

Spin up your own Gitea instance and start pushing repos for all your projects!