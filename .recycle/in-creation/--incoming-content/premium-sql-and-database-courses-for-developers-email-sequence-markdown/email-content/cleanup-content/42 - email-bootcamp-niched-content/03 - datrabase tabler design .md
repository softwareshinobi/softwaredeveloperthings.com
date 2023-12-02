# Day 3: Database Schema and table design

## database table design

So let’s say that you were building a to do list web app with a relational database backend.

In the relational database backend you would have different tables storing different information like:

## Web App Users Table Design

Table name: SYSTEM_USERS

In the system users table, you would have some data for your users like:

username
name
Is_active

## Web App Todo Item Table Design

Table name: TODO_LIST_ITEM

The todo list item table stores all of the tasks that you are planning to do. 

The columns of the tasks table would be for example:

task_name
status
due_date
priority

a Database if web application users
The Users table will look like this:

```
+----+----------+---------------+--------+
| id | username | name          | active |
+----+----------+---------------+--------+
| 1  |    bobby | Bobby Iliev   |   true |
| 2  |    grisi | Greisi I.     |   true |
| 3  |  devdojo | Dev Dojo      |  false |
+----+----------+---------------+--------+
```

## Reviewing Table Structure

So here is the rundown of the table structure:

* We have 4 columns: `id`, `username`, `name` and `active`.

* We also have 3 entries/users.

* The `id` column is a unique identifier of each user and is auto-incremented.

