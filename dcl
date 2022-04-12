student@student-OptiPlex-3050:~$ sudo mysql -u root -p
[sudo] password for student: 
Enter password: 
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 33
Server version: 10.0.38-MariaDB-0ubuntu0.16.04.1 Ubuntu 16.04

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> create user 'amalendu'@localhost identified by 'pass1';
Query OK, 0 rows affected (0.01 sec)

MariaDB [(none)]> grant all privileges on *.* to 'amalendu'@localhost identified by 'pass1';
Query OK, 0 rows affected (0.00 sec)

MariaDB [(none)]> show grants for 'amalendu'@localhost;
+--------------------------------------------------------------------------------------------------------------------------+
| Grants for amalendu@localhost                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------+
| GRANT ALL PRIVILEGES ON *.* TO 'amalendu'@'localhost' IDENTIFIED BY PASSWORD '*22A99BA288DB55E8E230679259740873101CD636' |
+--------------------------------------------------------------------------------------------------------------------------+
1 row in set (0.00 sec)

MariaDB [(none)]> revoke insert on *.* from 'amalendu' @'localhost';
Query OK, 0 rows affected (0.01 sec)

MariaDB [(none)]> show grants for 'amalendu' @localhost;
+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Grants for amalendu@localhost                                                                                                                                                                                                                                                                                                                                                                                                 |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| GRANT SELECT, UPDATE, DELETE, CREATE, DROP, RELOAD, SHUTDOWN, PROCESS, FILE, REFERENCES, INDEX, ALTER, SHOW DATABASES, SUPER, CREATE TEMPORARY TABLES, LOCK TABLES, EXECUTE, REPLICATION SLAVE, REPLICATION CLIENT, CREATE VIEW, SHOW VIEW, CREATE ROUTINE, ALTER ROUTINE, CREATE USER, EVENT, TRIGGER, CREATE TABLESPACE ON *.* TO 'amalendu'@'localhost' IDENTIFIED BY PASSWORD '*22A99BA288DB55E8E230679259740873101CD636' |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
1 row in set (0.00 sec)




student@student-OptiPlex-3050:~$ mysql -u amalendu -p
Enter password: 
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 34
Server version: 10.0.38-MariaDB-0ubuntu0.16.04.1 Ubuntu 16.04

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| db1                |
| dbm                |
| information_schema |
| mysql              |
| performance_schema |
+--------------------+
5 rows in set (0.02 sec)

MariaDB [(none)]> use db1;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
MariaDB [db1]> create table student1(id int,name varchar(10));
Query OK, 0 rows affected (0.22 sec)

MariaDB [db1]> insert into student1 values(1,'anu');
ERROR 1142 (42000): INSERT command denied to user 'amalendu'@'localhost' for table 'student1'
MariaDB [db1]> 

