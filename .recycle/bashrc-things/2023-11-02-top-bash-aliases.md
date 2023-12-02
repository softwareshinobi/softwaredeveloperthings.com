---

layout: post

author: softwareshinobi

title:  "top linux bash aliases"

categories: [linux-server,bash-aliases]

tags: [linux-server,bash-aliases]

image: https://random.imagecdn.app/820/360

description: "the top bash aliases to move like a pro on the termainal"

hidden: false

---

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

## system resource usage

```sh
alias @memory-info='free -m -l -t'
alias @memory-top='ps auxf | sort -nr -k 4 | head -10'
alias @memory-top-10='ps auxf | sort -nr -k 4 | head -10'
 
alias @cpu-info='lscpu'
alias @cpu-top='ps auxf | sort -nr -k 3'
alias @cpu-top-10='ps auxf | sort -nr -k 3 | head -10'
```
## resources

https://www.cyberciti.biz/tips/bash-aliases-mac-centos-linux-unix.html

- [`next`] https://opensource.com/article/19/7/bash-aliases

https://davidjguru.github.io/blog/linux-70-commands-aliases-for-everyday-life

https://davidjguru.github.io/blog/linux-200-commands-for-everyday-life

https://davidjguru.github.io/blog/linux-random-commands-for-your-daily-life

https://aruva.medium.com/100-bash-aliases-for-supersonic-productivity-d54a796422d9
