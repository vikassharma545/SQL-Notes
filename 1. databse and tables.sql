 -- 1. To show all databases
show databases;

-- 2. To create databases
create database mydb;

-- 3. Access databases
use mydb;

-- 4. Droping or removing databases
drop database mydb; 

-- 5. Create Table on database
CREATE TABLE cats (
    name VARCHAR(50),
    age INT
);
 
CREATE TABLE dogs (
    name VARCHAR(50),
    breed VARCHAR(50),
    age INT
);

-- 6. List all table in database 
SHOW tables;

-- 7. Describe Table
SHOW COLUMNS FROM cats;
DESC cats;

-- 8. Droping Table
drop table cats;



