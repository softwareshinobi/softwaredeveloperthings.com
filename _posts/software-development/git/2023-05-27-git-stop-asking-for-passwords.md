---

layout: post

author: softwareshinobi

title:  "git stop asking for passwords"

categories: [git]

tags: [git,gitea,github]

image: https://random.imagecdn.app/820/360

description: "Git won't stop being annoying and asking for passwords. this article teaches you how to fix that"

hidden: false

---

## 1. run this

git config --global credential.helper store

## 1. run this

run a git command that hits the server. 

git pull

you will be asked for your username and password again

## 1. run this

now let's run git pull again. this time it shouldn't ask us anything.

## way #2, temporarily store credentials but dont save

caching.

git config --global credential.helper cache

git config --global credential.helper 'cache --timeout=600' // 10 minutes

