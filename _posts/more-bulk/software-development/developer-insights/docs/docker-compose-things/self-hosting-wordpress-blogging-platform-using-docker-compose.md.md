# Self Hosting Wordpress Blogging Platform Using Docker Using Docker Compose [Wordpress CMS]

## Introduction

In this Terminal Command Quickie, you will learn how to create a Wordpress server using Docker Compose and Linux.

## What Is Wordpress?

WordPress is an open source web content management system.

WordPresss was originally created to publish blog content.

WordPress has evolved to support traditional websites, membership sites, learning management systems and online stores.

## What Is Docker Compose?

Docker Compose is a tool for defining and running multiple Docker containers.

Docker Compose lets software developers define containers, container settings, and container networking in a simple YAML file.

With Docker Docker it's easy to start and stop complex docker application applications with simple commands.

## Setting Up Wordpress

We'll set up Wordpress by creating and configuring a docker-compose file.

Then we'll run the file and load up the Wordpress home page in the web browser.

## Creating The Docker Compose File To Create The Server

In the following sections we will set up our Wordpress server using docker compose.

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
  #MySQL Database image
  my_database:
    image: mysql
    restart: always
    environment:
      MYSQL_ROOT_PASSWORD: my_password_1234789
      MYSQL_DATABASE: my_wp_database
      MYSQL_USER: my_wp_user
      MYSQL_PASSWORD: my_wp_user_password
    volumes:
      - mysql:/var/lib/mysql

  #WordPress image based on Apache
  wordpress:
    depends_on:
      - my_database
    image: wordpress:latest
    restart: always
    ports:
      - "8000:80"
    environment:
      WORDPRESS_DB_HOST: my_database:3306
      WORDPRESS_DB_USER: my_wp_user
      WORDPRESS_DB_PASSWORD: my_wp_user_password
      WORDPRESS_DB_NAME: my_wp_database
    volumes:
      ["./:/var/www/html"]
volumes:
  mysql: {}
```

## Start The Docker Compose Script

So let's start the Wordpress server using the docker-compose command.

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
http://localhost:80
```

You should see a screen asking your to create your details.

## You Can Configure The Server On Your Own

You don't need me to teach you how to set up a website.

It's super simple and you can do the rest yourself from here.

## Conclusion

Today we installed docker-compose and created our own private file sharing server using Wordpress.

Start up your own Wordpress instance and start sharing files between all your Devices!