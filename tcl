student@student-OptiPlex-3050:~$ sudo mysql -u root -p
[sudo] password for student: 
Enter password: 
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 36
Server version: 10.0.38-MariaDB-0ubuntu0.16.04.1 Ubuntu 16.04

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> use data;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

MariaDB [data]> create table customer(cid int,cname varchar(20),salary int);
Query OK, 0 rows affected (0.30 sec)


MariaDB [data]> insert into customer values(101,'Anju',10000);
Query OK, 1 row affected (0.03 sec)

MariaDB [data]> commit;
Query OK, 0 rows affected (0.00 sec)

MariaDB [data]> insert into customer values(102,'Abhi',25000);
Query OK, 1 row affected (0.02 sec)

MariaDB [data]> insert into customer values(104,'Eva',35000);
Query OK, 1 row affected (0.03 sec)

MariaDB [data]> insert into customer values(105,'Nandhu',30000);
Query OK, 1 row affected (0.03 sec)

MariaDB [data]> select * from customer;
+------+--------+--------+
| cid  | cname  | salary |
+------+--------+--------+
|  101 | Anju   |  10000 |
|  102 | Abhi   |  25000 |
|  104 | Eva    |  35000 |
|  105 | Nandhu |  30000 |
+------+--------+--------+
4 rows in set (0.00 sec)

MariaDB [data]> set autocommit=0;
Query OK, 0 rows affected (0.00 sec)

MariaDB [data]> insert into customer values(106,'Nandha',20000);
Query OK, 1 row affected (0.00 sec)

MariaDB [data]> commit;
Query OK, 0 rows affected (0.02 sec)

MariaDB [data]> select * from customer;
+------+--------+--------+
| cid  | cname  | salary |
+------+--------+--------+
|  101 | Anju   |  10000 |
|  102 | Abhi   |  25000 |
|  104 | Eva    |  35000 |
|  105 | Nandhu |  30000 |
|  106 | Nandha |  20000 |
+------+--------+--------+
5 rows in set (0.00 sec)

MariaDB [data]> delete from customer where cid=106;
Query OK, 1 row affected (0.00 sec)

MariaDB [data]> select * from customer;
+------+--------+--------+
| cid  | cname  | salary |
+------+--------+--------+
|  101 | Anju   |  10000 |
|  102 | Abhi   |  25000 |
|  104 | Eva    |  35000 |
|  105 | Nandhu |  30000 |
+------+--------+--------+
4 rows in set (0.00 sec)

MariaDB [data]> rollback;
Query OK, 0 rows affected (0.03 sec)

MariaDB [data]> select * from customer;
+------+--------+--------+
| cid  | cname  | salary |
+------+--------+--------+
|  101 | Anju   |  10000 |
|  102 | Abhi   |  25000 |
|  104 | Eva    |  35000 |
|  105 | Nandhu |  30000 |
|  106 | Nandha |  20000 |
+------+--------+--------+
5 rows in set (0.00 sec)

MariaDB [data]> savepoint p1;
Query OK, 0 rows affected (0.00 sec)

MariaDB [data]> delete from customer where cid=105;
Query OK, 1 row affected (0.00 sec)

MariaDB [data]> select * from customer;
+------+--------+--------+
| cid  | cname  | salary |
+------+--------+--------+
|  101 | Anju   |  10000 |
|  102 | Abhi   |  25000 |
|  104 | Eva    |  35000 |
|  106 | Nandha |  20000 |
+------+--------+--------+
4 rows in set (0.00 sec)

MariaDB [data]> rollback to savepoint p1;
Query OK, 0 rows affected (0.00 sec)

MariaDB [data]> select * from customer;
+------+--------+--------+
| cid  | cname  | salary |
+------+--------+--------+
|  101 | Anju   |  10000 |
|  102 | Abhi   |  25000 |
|  104 | Eva    |  35000 |
|  105 | Nandhu |  30000 |
|  106 | Nandha |  20000 |
+------+--------+--------+
5 rows in set (0.00 sec)

