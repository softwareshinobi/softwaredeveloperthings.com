---

layout: post

author: softwareshinobi

title:  "a bunch of bash aliases you can use"

categories: [linux,bashrc]

tags: [linux,bashrc]

image: https://random.imagecdn.app/820/360

description: "a bunch of bash aliases you can use"

hidden: false

---

## introduction

this is a just a collection of aliases you can use on your linux servers and workspaces.

## how to use

just copy and paste the aliases into your `.bashrc` file.

you can find this file here:

```sh
nano ~/.bashrc
```

## directory traversal

```sh
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'
```

## system cpu usage

```sh
alias @cpu-info='lscpu'
alias @cpu-usage-all='ps auxf | sort -nr -k 3'
alias @cpu-usage-top='ps auxf | sort -nr -k 3 | head -3'
```

## system memory usage

```sh
alias @memory-info='free -m -l -t'
alias @memory-usage-all='ps auxf | sort -nr -k 4 | head -10'
alias @memory-usage-top='ps auxf | sort -nr -k 4 | head -3'
```

## more bash aliases on the internet

* https://www.cyberciti.biz/tips/bash-aliases-mac-centos-linux-unix.html
* https://opensource.com/article/19/7/bash-aliases
* https://davidjguru.github.io/blog/linux-70-commands-aliases-for-everyday-life
* https://davidjguru.github.io/blog/linux-200-commands-for-everyday-life
* https://davidjguru.github.io/blog/linux-random-commands-for-your-daily-life
* https://aruva.medium.com/100-bash-aliases-for-supersonic-productivity-d54a796422d9
