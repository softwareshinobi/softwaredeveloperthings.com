# Self Hosting A Private Media Server Using Docker Compose [Plex Media Server]

## Introduction

In this Terminal Command Quickie, you will learn how to create a Plex server using Docker Compose and Linux.

## What Is Plex?

Plex is a web application that lets you access & share your files, calendars, contacts, & more.

You can use Plex from any device to sync files and content with whoever you want.

## What Is Docker Compose?

Docker Compose is a tool for defining and running multiple Docker containers.

Docker Compose lets software developers define containers, container settings, and container networking in a simple YAML file.

With Docker Docker it's easy to start and stop complex docker application applications with simple commands.

## Setting Up Plex

We'll set up Plex by creating and configuring a docker-compose file.

Then we'll run the file and load up the Plex home page in the web browser.

## Creating The Docker Compose File To Create The Server

In the following sections we will set up our Plex server using docker compose.

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
services:
  plex:
    image: lscr.io/linuxserver/plex:latest
    container_name: plex
    network_mode: host
    environment:
      - PUID=1000
      - PGID=1000
      - TZ=Etc/UTC
      - VERSION=docker
      - PLEX_CLAIM= #optional
    ports:
      - "8080:32400"
    volumes:
      - /path/to/library:/config
      - /path/to/tvseries:/tv
      - /path/to/movies:/movies
    restart: unless-stopped
```

## Start The Docker Compose Script

So let's start the Plex server using the docker-compose command.

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
http://localhost:8080
```

You should see a screen asking your to create your details.

## You Can Configure The Server On Your Own

You don't need me to teach you how to set up a website.

It's super simple and you can do the rest yourself from here.

## Conclusion

Today we installed docker-compose and created our own private file sharing server using Plex.

Start up your own Plex instance and start sharing files between all your Devices!