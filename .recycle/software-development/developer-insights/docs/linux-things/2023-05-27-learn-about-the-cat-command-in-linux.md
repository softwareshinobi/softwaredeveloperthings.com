---

layout: post

author: softwareshinobi

title: "Learn About The 'cat' Command In Linux [Terminal Command Quickie]"

categories: [linux-server,terminal-quickie]

tags: [linux-server,terminal-quickie,terminal,linux]

image: https://random.imagecdn.app/820/360

description: "In this Terminal Command Quickie, you will learn a little about the 'cat' command in Linux."

hidden: false

---

## Introduction

In this Terminal Command Quickie, you will learn a little about the 'cat' command in Linux.

## When To Use The 'cat' Command

You want to use 'cat' when you want to print a file to the terminal.

The "cat" stands for 'concatenate.' and it's one of the most frequently used commands in the Linux terminal.

## Syntax Of The Command [Display File Content]

1. To display the content of a file in terminal:

```
cat <specified_file_name>
```

2. To display the content of multiple files in terminal:

```
cat file1 file2 ...
```

3. To create a file with the cat command:

```
cat > file_name
```

4. To display all files in current directory with the same filetype:

```
cat *.<filetype>
```

5. To display the content of all the files in current directory:

```
cat *
```

6. To put the output of a given file into another file:

```
cat old_file_name > new_file_name
```
7. Use cat command with `more` and `less` options:

```
cat filename | more
cat filename | less
```

8. Append the contents of file1 to file2:

```
cat file1 >> file2
```

9. To concatenate two files together in a new file:

```
cat file1_name file2_name merge_file_name
```

10. Some implementations of cat, with option -n, it's possible to show line numbers:

```
cat -n file1_name file2_name > new_numbered_file_name
```
