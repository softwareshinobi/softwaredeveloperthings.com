# Learn About The Git Push Command [Terminal Command Quickie]

## Introduction

In this Terminal Command Quickie, you will learn a little about the 'git push' command.

## What The Git Push Command Does

The 'git push' command pushes committed changes from your local repository to your remote Git Repository (GitHub, BitBucket, Gitea, etc).

This ensures that the remote repository is brought up-to-date with your local repository.

## When To Use The Git Push Command

Use the 'git push' command when you have changes that have been ADDED and COMMITTED to your local repository, but not pushed to the remote repository on GitHub.

## Creating and Linking a Remote Repository

Before you can push to your remote GitHub repository, you need to first create your remote repository in GitHub..

Once you have your remote GitHub repository ready, you can add it to your local project with the following command:

```bash
git remote add origin git@github.com:your_username/your_repo_name.git
```

Note: Make sure to change the `your_username` and `your_repo_name` details accordingly.

This is how you can link your local Git project with your remote GitHub repository.

## Verifying The Details Of The Remote Repository

To verify your remote repository, run the following command:

```bash
git remote -v
```

You'll see an output similar to the following:

```
ddddd
```

## Syntax Of The Command [Push Changes To The Remote Repository]

To push your committed changes to the linked remote repository, you can use the `git push` command:

```bash
git push -u origin main
```
Note: In this command, `-u origin main` tells Git to set the main branch of the remote repository as the upstream branch within the `git push` command.

This is the best practice when using Git as it allows the `git push` and `git pull` commands to work as intended. Alternatively, you can use `--set-upstream origin main` for this as well. 

## Output Of Running A Git Push

The output from successfully issuing a git push will look like this:

```bash
Password for 'https://software-shinobi@code.softwaredeveloperthings.online': 
Enumerating objects: 5, done.
Counting objects: 100% (5/5), done.
Compressing objects: 100% (3/3), done.
Writing objects: 100% (4/4), 394 bytes | 394.00 KiB/s, done.
Total 4 (delta 1), reused 0 (delta 0), pack-reused 0
remote: . Processing 1 references
remote: Processed 1 references in total
To https://code.softwaredeveloperthings.online/software-shinobi/React-Weather.git
   c474408..a17d99c  master -> master
```

## What Happens When You Don't Run Git remote add'

In case that you did not run the `git remote add` command as outlined in earlier in this chapter, you will receive the following error:

```
fatal: 'origin' does not appear to be a git repository
fatal: Could not read from remote repository.

Please make sure you have the correct access rights
and the repository exists.
```

This would mean that you've not added your GitHub repository as the remote repository.

This is why we run the `git remote add` command to create that connection between your local repository and the remote GitHub repository.

## If You Cloned The Repo From GitHub, You Don't Need To 'git remote add'

if you used the `git clone` command to clone an existing repository from GitHub to your local machine you will not need to run 'git remote add'.

This configuration was automatically added if you git a 'git clone...'.

## Checking the Remote Repository

After running the `git push` command, you can head over to your GitHub project and you will be able to see the commits that you've made locally reflected in GitHub.

If you were to click on the `commits` link, you would be able to see all commits just as if you were to run the `git push` command.
