# Self Hosting A Cloud File Sharing App Using Docker Compose

## Introduction

In this Terminal Command Quickie, you will learn how to create a NextCloud server using Docker Compose and Linux.

## What Is NextCloud?

NextCloud is a web application that lets you access & share your files, calendars, contacts, & more.

You can use NextCloud from any device to sync files and content with whoever you want.

## What Is Docker Compose?

Docker Compose is a tool for defining and running multiple Docker containers.

Docker Compose lets software developers define containers, container settings, and container networking in a simple YAML file.

With Docker Docker it's easy to start and stop complex docker application applications with simple commands.

## Setting Up NextCloud

We'll set up NextCloud by creating and configuring a docker-compose file.

Then we'll run the file and load up the NextCloud home page in the web browser.

## Creating The Docker Compose File To Create The Server

In the following sections we will set up our NextCloud server using docker compose.

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
version: '3'

volumes:

  nextcloud:
  db:

services:

  db:
    image: mariadb:10.6
    restart: always
    command: --transaction-isolation=READ-COMMITTED --log-bin=binlog --binlog-format=ROW
    volumes:
      - db:/var/lib/mysql
    environment:
      - MYSQL_ROOT_PASSWORD=
      - MYSQL_PASSWORD=
      - MYSQL_DATABASE=nextcloud
      - MYSQL_USER=nextcloud

  app:
    image: nextcloud:fpm
    restart: always
    links:
      - db
    volumes:
      - nextcloud:/var/www/html
    environment:
      - MYSQL_PASSWORD=
      - MYSQL_DATABASE=nextcloud
      - MYSQL_USER=nextcloud
      - MYSQL_HOST=db

  web:
    image: nginx
    restart: always
    ports:
      - 8080:80
    links:
      - app
    volumes:
      - ./nginx.conf:/etc/nginx/nginx.conf:ro
    volumes_from:
      - app
```

## Start The Docker Compose Script

So let's start the NextCloud server using the docker-compose command.

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

Today we installed docker-compose and created our own private file sharing server using NextCloud.

Start up your own NextCloud instance and start sharing files between all your Devices!