# Learn About The Git Add Command [Terminal Command Quickie]

## Introduction

In this Terminal Command Quickie, you will learn a little about the 'git add' command.

## When To Use The 'git add' Command

You want to use 'git add' when you've made changes to or created a new file inside of your git repository.

## What The 'git add' Command Does

When you create a new file inside your Git project, it is not automatically tracked by Git.

We need to tell git to start tracking the new files and modifications.

For this we use the 'git add' command.

## Listing The Files That Need To Be Added

Git provides a simple command to see what files and modifications are not being tracked by the local repository.

Git status.

Run this command to see the files to be added.

```
git status
```

If you have new files in the local repository on disk, you'll get an output similar to the following:

```bash
On branch master
Your branch is up to date with 'origin/master'.

Untracked files:
  (use "git add <file>..." to include in what will be committed)
	./

nothing added to commit but untracked files present (use "git add" to track)

```

That last line means you have files to add to git.

## Syntax Of The Command [Adding A Single File To Git]

The basic syntax for using the 'git add' command to add a single file is as follows:

```bash
git add /path/to/file/name-of-file
```

This will add the specified file (name-of-file) to the list of tracked files inside of your git project.

For for an example.So as In our case, we have only 1 filed inside our project called `brand-new-python-feature.py`, so to add this file to Git, we can use the following command:

```bash
git add brand-new-python-feature.py
```

If you then run `git status` again, you will see a different output:

```
Changes to be committed:
  (use "git rm --cached <file>..." to unstage)
        new file:   brand-new-python-feature.py
```

Here you would see that there are now some changes staged and ready to be committed. Also, Git tells us that the `brand-new-python-feature.py` is a new file that was just staged and has not been tracked before.

## Syntax Of The Command [Adding Multiple Files To Git]

In case that you have a couple of files, you could list them all seperated  by space after the `git add` command to stage them all rather than running `git add` multiple times for each individual file:

```bash
git add file1.md file2.java file3.html
```

## Syntax Of The Command [Adding All Files To Git]

Sometimes you might have a lot of new files to add to get.

Adding them one by one would be highly time-consuming. 

So there is a way to stage absolutely all files in your current project, and this is by specifying a dot after the `git add` command as follows:

```bash
git add .
```

We use a '.' (period) here instead of an actual file.

This tells git to add ALL files in the current directory and all subdirectories.

Note: Be careful with this command, you could accidently add files to Git that you did not intend to.

Accidental files pushes can be fixed. It's just annoying to do so.
