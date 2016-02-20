---
layout: post
title: "Create MySQL Database and User"
date: 2013-07-28 17:02:46 +1100
comments: true
categories: hacking
author: Danijel James
---
Install MySQL and set a default password for root. Failure to do so is a security leak.

Firstly, you need to login to the root user on MySQL:

    mysql -u root -p
    Enter password:

Now that you are logged in, create the database you need. Here I have created a database called wordpress:

    mysql> CREATE DATABASE wordpress;
    Query OK, 1 row affected (0.00 sec)

Create a user called wpUser to connect to the server from localhost using password Password1:

    mysql> GRANT USAGE ON *.* TO wpUser@localhost IDENTIFIED BY  'Password1';
    Query OK, 0 rows affected (0.00 sec)

Now grant all privileges on wordpress database to wpUser:

    mysql> GRANT ALL PRIVILEGES ON wordpress.* TO 'wpUser'@'localhost';
    Query OK, 0 rows affected (0.00 sec)

Exit from the mysql> prompt by typing **exit**. Then you can test your connection settings by typing:

    mysql -u wpUser -p'Password1' wordpress
    
You will be greeted with something like the following:


    Reading table information for completion of table and column names
    You can turn off this feature to get a quicker startup with -A
    Welcome to the MySQL monitor.
    Commands end with ; or \g.
    Your MySQL connection id is 254
    Server version: 5.1.66-0+squeeze1 (Debian)
    Copyright (c) 2000, 2012, Oracle and/or its affiliates.
    All rights reserved. Oracle is a registered trademark of
    Oracle Corporation and/or its affiliates. Other names may be
    trademarks of their respective owners. Type ‘help;’ or ‘\h’ for
    help. Type ‘\c’ to clear the current input statement.
    
    mysql>
    
`#MigratedPost`
