-- Keys in SQL table

-- Super Key
-- A super key is a set of one or more than one key that can be used to identify a record uniquely in a table. 
-- Example: Primary key, Unique key, Alternate key are a subset of Super Keys.

-- Candidate Key
-- A Candidate Key is a set of one or more fields/columns that can identify a record uniquely in a table. There can be multiple Candidate Keys in one table. 
-- Each Candidate Key can work as a Primary Key.

-- Primary Key
-- A primary key is a set of one or more fields/columns of a table that uniquely identify a record in a database table. 
-- It can not accept null, duplicate values. Only one Candidate Key can be Primary Key.

-- Alternate key
-- An Alternate key is a key that can work as a primary key. Basically, it is a candidate key that currently is not a primary key.

-- Composite/Compound Key
-- A composite Key is a combination of more than one field/column of a table. It can be a Candidate key, Primary key.

-- Unique Key
-- A unique key is a set of one or more fields/columns of a table that uniquely identify a record in a database table. 
-- It is like a Primary key but it can accept only one null value and it can not have duplicate values.

-- Foreign Key
-- Foreign Key is a field in a database table that is the Primary key in another table. It can accept multiple nulls and duplicate values.

--  NOT NULL key
-- A not null key cannot accept a null value.

-- Department Table
CREATE TABLE Department 
(
 DeptID int PRIMARY KEY, -- primary key
 Name varchar (50) NOT NULL,
 Address varchar (200) NOT NULL
); 
 
-- Student Table
CREATE TABLE Student 
(
 ID int PRIMARY KEY, -- primary key
 RollNo varchar(10) NOT NULL,
 Name varchar(50) NOT NULL,
 EnrollNo varchar(50) UNIQUE, -- unique key
 Address varchar(200) NOT NULL,
 DeptID int FOREIGN KEY REFERENCES Department(DeptID)
 );

-- reference link -> https://www.dotnettricks.com/learn/sqlserver/different-types-of-sql-keys

-- Working with auto increament
CREATE TABLE unique_cats3 (
    cat_id INT AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    PRIMARY KEY (cat_id)
); 