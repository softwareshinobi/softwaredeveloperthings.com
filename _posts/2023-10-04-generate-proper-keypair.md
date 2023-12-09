---

layout: post

author: softwareshinobi

title:  "generating proper SSH keys [ubuntu liux]"

categories: [linux,security]

tags: [linux,security,public key, private key, key infrastructure,ssh-keygen]

image: https://random.imagecdn.app/820/360?kk

description: "ssh-keygen -m PEM -t rsa -b 4096"

hidden: false

---

## introduction

use this command to generate a private and public key for linux users.

the keys generated with this command are compatible with other systems and ppk conversions.

the key created by the default `ssh-keygen` are bad and should be avoided.

## disclaimer

don't listen to me. this is just how i manage my servers.

## how to do it

run this as the user who needs a new key situation.

```bash
ssh-keygen -m PEM -t rsa -b 4096
```
