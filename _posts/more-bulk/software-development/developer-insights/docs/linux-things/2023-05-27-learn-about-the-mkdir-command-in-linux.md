---

layout: post

author: softwareshinobi

title: "Learn About The 'mkdir' Command In Linux [Terminal Command Quickie]"

categories: [linux-server,terminal-quickie]

tags: [linux-server,terminal-quickie,terminal,linux]

image: https://random.imagecdn.app/820/360

description: "In this Terminal Command Quickie, you will learn a little about the 'mkdir' command in linux."

hidden: false

---

## Introduction

In this Terminal Command Quickie, you will learn a little about the 'mkdir' command in linux.

## When To Use The 'git add' Command

You want to use 'mkdir' when you want to create a new directory.

## Syntax Of The Command [Creating A New Directory]

Here is how you create new directories with the 'mkdir' command.

```bash
$ mkdir [-m=mode] [-p] [-v] [-Z=context] directory [directory ...]
```

## Example Of The 'mkdir' Command

1. Make a directory named **myfiles**.

```bash
$ mkdir myfiles
```

2. Create a directory named **myfiles** at the home directory:

```bash
$ mkdir ~/myfiles
```

3. Create the **mydir** directory, and set its file mode (`-m`) so that all users (`a`) may read (`r`), write (`w`), and execute (`x`) it.

```bash
$ mkdir -m a=rwx mydir
```

You can also create sub-directories of a directory. It will create the parent directory first, if it doesn't exist. 

If it already exists, then it move further to create the sub-directories without any error message.

For directories, this means that any user on the system may view ("read"), and create/modify/delete ("write") files in the directory.

Any user may also change to ("execute") the directory, for example with the `cd` command.

4. Create the directory **/home/software-shinobi/src/simple-simple-python-script.py-script.py**.

If any of the parent directories **/home**, **/home/software-shinobi**, or **/home/software-shinobi/src** do not already exist, they are automatically created.

```bash
$ mkdir -p /home/software-shinobi/src/simple-simple-python-script.py
```
