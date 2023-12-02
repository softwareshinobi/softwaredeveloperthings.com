---

layout: post

author: softwareshinobi

title:  "draw.io / docker compose"

categories: [linux,apps]

tags: [linux, docker, docker-compose, apps, draw.io]

image: ./cover-image.png

description: "get a working docker compose script to run draw.io."

hidden: false

---

```yaml

version: '3'

services:

    software-shinobi-diagrams:

        container_name: software-shinobi-diagrams

        image: jgraph/drawio

        restart: always

        ports:
        
            - 8080:8080

```
