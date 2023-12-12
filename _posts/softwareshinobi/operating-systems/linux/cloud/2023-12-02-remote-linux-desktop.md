---

layout: post

author: softwareshinobi

title:  "spinning up a linux desktop environment in the cloud"

categories: [linux,cloud]

tags: [docker-compose,linux,remote-desktop,vnc,rdp,compose]

image: https://random.imagecdn.app/820/360

description: "docker compose script to spin up a remote linux desktop environment with a desktop and vnc server baked in."

hidden: false

---

## about this script

this is a docker compose script to spin up a remote linux desktop environment with a desktop and vnc server baked in.

## docker-compose.yaml

```yaml
version: "3"

services:

    software-shinobi-desktop:

        container_name: software-shinobi-desktop

        image: dorowu/ubuntu-desktop-lxde-vnc

        restart: always

        environment:

            - USER_UID=1000

            - USER_GID=1000

        volumes:

            - /dev/shm:/dev/shm

            - ./container-desktop/:/root/

            - /etc/timezone:/etc/timezone:ro

            - /etc/localtime:/etc/localtime:ro

        ports:

            - 8888:80
```

## run the docker compose script

docker compose up. nothing fancy.

```bash
docker-compose down --remove-orphans; docker-compose up
```

then the server will start downloading docker shit.

```
Creating network "desktop_default" with the default driver
Pulling software-shinobi-desktop (dorowu/ubuntu-desktop-lxde-vnc:)...
latest: Pulling from dorowu/ubuntu-desktop-lxde-vnc
a70d879fa598: Pulling fs layer
c4394a92d1f8: Downloading [============================================>      ] c4394a92d1f8: Downloading [==================================================>] a70d879fa598: Downloading [=======a70d879fa598: Downloading [============================================>      ]  25.65MB/28.57MB
==========================>] 10e6159c56c0: Download complete
6d516dea5dcb: Download complete
2c326a79b2c1: Downloading [===>                                               ]  10.25MB/152.1MB
ting
0403b18ddc74: Waiting
c163d8624a71: Waiting
1dc3570b5fa6: Waiting
6f9c71cf3486: Waiting
e02f721e36c7: Waiting
ba596a49f65e: Waiting
31c6cc0bdd8d: Waiting
```

wait.

## access the desktop environment

when that's done, navigate your browser here:

### localhost example

```
http://localhost:8888
```

### remote server example

```
http://28.28.28.28:8888
```
