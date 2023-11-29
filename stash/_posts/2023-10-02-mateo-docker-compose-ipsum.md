---

layout: post

author: softwareshinobi

title:  "lorem ipsum sed"

categories: [lorem-ipsum]

tags: [lorem-ipsum,lorem,ipsum]

image: https://random.imagecdn.app/820/360

description: "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti."

hidden: false

---

## docker-compose

```
version: "3"

services:

    mateo-montenegro-home:

        container_name: mateo-montenegro-home

        image: softwareshinobi/dwity-universe:latest

        restart: always

        ports:

            - 18080:80

    mateo-montenegro-embassy:

        container_name: mateo-montenegro-embassy

        image: softwareshinobi/embassy-mateomontenegro-online:latest

        restart: always

        ports:

            - 18088:8000

    mateo-montenegro-radio:

        container_name: mateo-montenegro-radio

        image: lscr.io/linuxserver/emby:latest

        restart: always

        ports:

            - 18096:8096

        volumes:

            - ./volume-data-mateomontenegro.online/radio-server/configuration:/config

            - /media/mateomontenegro.online/media-server-content:/media

        environment:

            - PUID=1000

            - PGID=1000

            - TZ=Etc/BOG

    mateo-montenegro-clocks:
    
        container_name: mateo-montenegro-clocks

        image: softwareshinobi/software-shinobi-pomodora-timer:latest

        restart: always

        ports:

            - 18800:80

    mateo-montenegro-todo:
    
        container_name: mateo-montenegro-todo

        image: softwareshinobi/todo-list-web-application

        restart: always

        ports:

            - 18808:80
```

## quick start

```
#!/bin/bash

##
## bash script to start mateomontenegro.online assets
##

##

options=" -f docker-compose-mateomontenegro.online.yaml"

set -e

set -x

##

reset

clear

##

docker-compose $options down --remove-orphans

docker-compose $options pull

docker-compose $options up -d

docker stats
```

## quick stop

```
#!/bin/bash

##
## bash script to stop mateomontenegro.online assets
##

##

options=" -f docker-compose-mateomontenegro.online.yaml"

set -e

set -x

##

reset

clear

##

docker-compose $options down --remove-orphans

docker ps
```
