-- ALTER TABLE

-- ADD NEW COLUMN TO TABLE

create table student(
	name varchar(30) not null,
    class varchar(5) not null
);

alter table student add column age int not null;

desc student;

-- DROPING COLUMN 

alter table student drop column age;


-- RENAMING TABLES

DESC STUDENT;

RENAME TABLE STUDENT TO COLLEGE_STUDENT;

select * from student;
select * from college_student;


-- RENAMING TABLES COLUMNS

DESC COLLEGE_STUDENT;

ALTER TABLE COLLEGE_STUDENT RENAME COLUMN CLASS TO BRANCH;

DESC COLLEGE_STUDENT;


-- MODIFY COLUMNS DATA TYPE

DESC COLLEGE_STUDENT;

-- CHANGE BRANCH VARCHAR(100)

ALTER TABLE COLLEGE_STUDENT MODIFY BRANCH VARCHAR(100); 

ALTER TABLE COLLEGE_STUDENT MODIFY BRANCH VARCHAR(100) DEFAULT 'UNKNOW'; 


-- CHANGE COLUMN NAME AND DATA TYPE TOGETHER 

ALTER TABLE COLLEGE_STUDENT CHANGE NAME FULL_NAME VARCHAR(50);

DESC COLLEGE_STUDENT;

-- ADD REMOVE CONSTRAINT 
use mydb;

drop table houses;
create table houses (
	house varchar(100) not null, 
    purchase_price varchar(100) not null
);

desc houses;

ALTER TABLE houses 
ADD CONSTRAINT positive_pprice CHECK (purchase_price >= 0);


ALTER TABLE houses DROP CONSTRAINT positive_pprice;


