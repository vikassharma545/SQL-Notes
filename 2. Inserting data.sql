-- 1. Insert data into table

-- Single insert 
INSERT INTO cats (name, age) 
VALUES ('Blue Steele', 5);

-- Multi insert
INSERT INTO cats (name, age) 
VALUES 
  ('Meatball', 5), 
  ('Turkey', 1), 
  ('Potato Face', 15);


-- 2. Show all data from table
select * from cats;  

