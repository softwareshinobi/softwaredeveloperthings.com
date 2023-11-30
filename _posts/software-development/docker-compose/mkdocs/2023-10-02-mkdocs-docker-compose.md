---

layout: post

author: softwareshinobi

title:  "mkdocs / docker compose"

categories: [apps,mkdocs]

tags: [apps,mkdocs]

image: https://random.imagecdn.app/820/360

description: "mkdocs / docker compose"

hidden: false

---

```yaml
version: "3"

services:

    software-developer-things:

        container_name: software-developer-things

        image: titom73/mkdocs
      
        volumes:
        
            - ${PWD}/mkdocs.yml:/docs/mkdocs.yml

            - ${PWD}:/docs
            
        ports:

            - 8888:8000

```
