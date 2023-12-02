---

layout: post

author: softwareshinobi

title:  "Learn About The Basic Shell Commands In Linux [Terminal Command Quickie]"

categories: [linux-server,terminal-quickie]

tags: [linux-server,terminal-quickie,terminal,linux]

image: https://random.imagecdn.app/820/360

description: "In this Terminal Command Quickie, you will be introduced to a few commands on the linux terminal."

hidden: false

---

## Introduction

In this Terminal Command Quickie, you will be introduced to a few commands on the linux terminal.

## The `ls` Command

The `ls` command allows you to list the contents of a folder/directory. All that you need to do in order to run the command is to open a terminal and run the following:

```bash
ls
```

The output will show you all of the files and folders that are located in your current directory.

In my case, the output is the following:

```
src LICENSE.md README.md
```

## The `cd` Command

The `cd` command stands for `Change Directory` and allows you to navigate through the file system of your linux server.

Let's say that I wanted to go inside the `text-conversion-server-java` directory from the output above. What I would need to do is to run the `cd` command followed by the directory that I want to access:

```bash
cd text-conversion-server-java
```

If I wanted to go back one level up, I would use the `cd ..` command.

## The `pwd` command

The `pwd` command stands for `Print Working Directory`.

This command shows you the current directory that you are in.

Let's take the example from above.

If I run the `pwd` command, I would get the full path to the folder that I'm currently in:

```bash
pwd
```

Output:

```
/home/software-shinobi/
```

Then I could use the `cd` command and access the `text-conversion-server-java` directory:

```bash
cd text-conversion-server-java
```

And finally, if I was to run the `pwd` command again, I would see the following output:

```
/home/software-shinobi/text-conversion-server-java
```

## The `rm` command

The `rm` command stands for `remove` and allows you to delete files and folders.

Let's say that I wanted to delete the `README.md` file, what I would have to do is run the following command:

```bash
rm README.md
```

In case that I had to delete a folder/directory, I would need to specify the `-r` flag:

```bash
rm -r text-conversion-server-java
```

Note: keep in mind that the `rm` command would completely delete the files and folders, and the action is irreversible, meaning that you can't get them back.

## The `mkdir` command

The `mkdir` command stands for `make directory` and is used for creating one or more new directories.

All you need to do in order to create a new directory using this command is to open a terminal, `cd` into desired location and run the following:

```bash
mkdir some-new-directory
```

The above command will create a new, empty directory called `some-new-directory`.

You can also create serveral new directories by placing the names of desired directories after each other:

```bash
mkdir some-new-directory another-new-directory
```

## The `touch` command

The `touch` command is used to update timestamps on files. 

A useful feature of the touch command is that it will create an empty file. 

This is useful if you want to create file in your directory that doesn't currently exist 

```bash
touch README.md
```
The above will create a new, empty file with the name README.md 

One thing that you need to keep in mind is that all shell commands are case sensitive, so if you type `LS` it would not work.
