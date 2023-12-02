---

layout: post

author: softwareshinobi

title: "Learn About The 'ls' Command In Linux [Terminal Command Quickie]"

categories: [linux-server,terminal-quickie]

tags: [linux-server,terminal-quickie,terminal,linux]

image: https://random.imagecdn.app/820/360

description: "In this Terminal Command Quickie, you will learn a little about the 'ls' command in linux."

hidden: false

---

## Introduction

In this Terminal Command Quickie, you will learn a little about the 'ls' command in linux.

## When To Use The 'ls' Command

The `ls` command lets you see the files and directories inside a specific directory.

Files and directories are typically listed in ascending alphabetical order.

## Syntax Of The Command [List Directory Contents]

1. To show the files inside your current working directory:

```
ls
```

The command output may look like this:

```
assets  docker-compose.yml  kanban-app  kanban-ui  README.md
```

2. To show the files and directory inside a specific Directory:

```
ls -l /home/softwaredeveloperthings.com/public_html/
```

The command output may look like this:

```
total 16
drwxrwxr-x 4 software-shinobi software-shinobi 4096 Mar  3 22:30 css
drwxrwxr-x 4 software-shinobi software-shinobi 4096 Mar  3 22:30 images
-rwxrwxr-x 1 software-shinobi software-shinobi 1808 Mar  3 22:30 index.html
drwxrwxr-x 3 software-shinobi software-shinobi 4096 Mar  3 22:30 js
```
