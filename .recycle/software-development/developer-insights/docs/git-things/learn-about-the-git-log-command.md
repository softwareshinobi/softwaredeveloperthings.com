# Learn About The Git Log Command [Terminal Command Quickie]

## Introduction

In this Terminal Command Quickie, you will learn a little about the 'git log' command.

## What The 'git log' Command Does

The 'git log' command lists the commit history for your git reposoitory.

## When To Use The 'git log' Command

Use the 'git log' command when you want to list all of the previous commits to your repository.

## Syntax Of The Command [See Git Commit History

Using the 'git commit' command is simple.

```bash
git log
```

This will provide you with your commit history.

The output would look like this:

```
commit da46ce39a3fd663ff802d013f834431d4b4159a5 (HEAD -> main)
Author: Software Shinobi <troy@softwareshinobi.online>
Date:   Thu Mar 11 17:14:02 2023 +0000

    Updated readme.md

commit fa583473b4be2807b45f35b755aa84ac78922259
Author: Software Shinobi <troy@softwareshinobi.online>
Date:   Fri Mar 12 8:01:17 2023 +0000

    Initial commit to repository
```
## Understanding The 'git log' Command Output

The output entries are listed, in order, from most recent to oldest.

* `commit da46ce39a3fd663ff802d013f834431d4b4159a5`:

Here you can see the specific commit ID for this specific commit.

* `Author: Software Shinobi... `:

The git user who created the changes.

* `Date:   Fri Mar 12...`:

The exact date and time when the commit was created.

* Finally, the commit message.

The commit message posted by the developer when pushing to the repository for this specific commit.
