# Learn About The Git Diff Command [Terminal Command Quickie]

## Introduction

In this Terminal Command Quickie, you will learn a little about the 'git diff' command.

## What The 'git diff' Command Does

The git diff command will generate line by line file changes for each of the tracked files in your git repository.

## When To Use The 'git diff' Command

Use the 'git diff' command when you want to details of file modifications in your git project branch.

## Listing The Files That Can Be Diff'ed

Git provides a simple command to see what files and modifications are not being tracked by the local repository.

Git status.

Run this command to see the files that can be diff'ed by git.

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

That last line means you have files that can be diff'ed.

## Syntax Of The Command [Diff A Single File In Git]

Using the git diff command is pretty simple.

```
diff --git a/README.md b/README.md
```

You'll get an output similar to the following:

```
index 3361368..2314a55 124244
--- a/README.md
+++ b/README.md
@@ -1 +1,2 @@
 # Read all about my git projects!
+This is another line of text that i added to the readme file
```

## Understanding The 'git diff' Command Output

As we only changed the README.md file, Git is showing us the following:

 * diff --git a/README.md b/README.md:

here git indicates that it shows the changes made to the README.md file since the last commit compared to the current version of the file.

* @@ -1 +1,2 @@: 

Git indicates that 1 new line was added.

* +This is another line of text that i added to the readme file:

The +, which indicates that this is a new line that was added.

In case that we remove a line, you would see a - sign instead.
