CREATE TABLE books 
	(
		book_id INT AUTO_INCREMENT,
		title VARCHAR(100),
		author_fname VARCHAR(100),
		author_lname VARCHAR(100),
		released_year INT,
		stock_quantity INT,
		pages INT,
		PRIMARY KEY(book_id)
	);
    
INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
VALUES
('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
('Norse Mythology', 'Neil', 'Gaiman',2016, 43, 304),
('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
("Where I'm Calling From: Selected Stories", 'Raymond', 'Carver', 1989, 12, 526),
('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343);

select * from books;

-- Concatinating string 
select CONCAT('vikas',' ','sharma') as full_name;
select concat(author_fname, ' ', author_lname) as 'full name' from books;

-- concat with seperator
select 
	concat_ws(' ', title, author_fname, author_lname)
from 
	books;
    
-- SUBSTRING 

-- substr also used substring
-- substring index start from 1 
-- substr('value', from position, length=infinity)    
select substr('hello world', 1 ,3);
select substr('hello world', 3);
select substr('hello world', -1); -- last char
select substr('hello world', -3 , 2); -- start from -3 position to 2 char


-- Combining string functions
select concat(substr(title, 1, 15), ' ...') as short_title from books;

select 
  concat(
    substr(author_fname, 1, 1), 
    '.', 
    substr(author_lname, 1, 1), 
    '.'
  ) as author_initial 
from 
  books;
  
-- Replaced function

select replace('hello world :)', 'world', 'vikas'); 

select replace('cheese bread coffee milk', ' ', ' and ');

select replace(title, ' ', '-') as 'title with -' from books;

-- Reversed function

select reverse('hello world');

select reverse(concat(author_fname, ' ', author_lname)) as reverse_name from books;  


-- length or char_length

select length('hello world'); -- give size of bit used

select char_length('hello world'); -- give no of char used

select title, char_length(title) as title_length from books;

-- Upper or lower function

select upper('Hello World');

select lower('Hello World');

select title, upper(title) as upper_title, lower(title) as lower_title from books;

select concat_ws(' ', author_fname, author_lname) as 'FULL NAME', upper(concat_ws(' ', author_fname, author_lname)) as Upper, lower(concat_ws(' ', author_fname, author_lname)) as lower from books;
 
 
 -- other function
 
SELECT INSERT('Hello Bobby', 6, 0, 'There'); 
 
SELECT LEFT('omghahalol!', 3);
 
SELECT RIGHT('omghahalol!', 4);
 
SELECT REPEAT('ha', 4);
 
SELECT TRIM('  pickle  ');


-- practice
 
SELECT 
  REVERSE(
    UPPER(
      'Why does my cat look at me with such hatred?'
    )
  );
  
SELECT 
  REPLACE(title, ' ', '->') AS title 
FROM 
  books;
  
SELECT 
  author_lname AS forwards, 
  REVERSE(author_lname) AS backwards 
FROM 
  books;
  
SELECT 
  UPPER(
    CONCAT(author_fname, ' ', author_lname)
  ) AS 'full name in caps' 
FROM 
  books;
  
SELECT 
  CONCAT(
    title, ' was released in ', released_year
  ) AS blurb 
FROM 
  books;
  
SELECT 
  title, 
  CHAR_LENGTH(title) AS character_count 
FROM 
  books;
  
SELECT 
  CONCAT(
    SUBSTR(title, 1, 10), 
    '...'
  ) AS short_title, 
  CONCAT(author_lname, ',', author_fname) AS author, 
  CONCAT(stock_quantity, ' in stock') AS quantity 
FROM 
  books;