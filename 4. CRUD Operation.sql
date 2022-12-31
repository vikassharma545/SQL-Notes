-- CRUD (create, read , update , delete) operations

-- 1. Create

-- Create new Table cats
create table cats(
	cat_id INT auto_increment,
	name varchar(100),
	breed varchar(100),
	age int,
	primary key(cat_id)
);

-- Inserting data 
INSERT INTO cats(name, breed, age) 
VALUES ('Ringo', 'Tabby', 4),
       ('Cindy', 'Maine Coon', 10),
       ('Dumbledore', 'Maine Coon', 11),
       ('Egg', 'Persian', 4),
       ('Misty', 'Tabby', 13),
       ('George Michael', 'Ragdoll', 9),
       ('Jackson', 'Sphynx', 7);
       
       
       
-- 2. Read

select * from cats;  
select age from cats; 
select name, age from cats; 

-- reading data with where clause 
select * from cats where age = 4;
select * from cats where name = 'egg';
select * from cats where cat_id = age;

-- reading data with 'as' alias
select name as cat_name, age as cat_age from cats;


-- 3. Update
update cats 
set 
	breed='short hair' 
where 
	breed='Tabby';
    
update cats set age=14 where name='misty';


-- 4. Delete
delete from cats where name='egg'; -- delete conditional row 
delete from cats;  -- delete all rows
DELETE FROM cats WHERE cat_id=age; -- Delete cats where cat_id is the same as their age:
