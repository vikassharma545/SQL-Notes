-- Refening selection of data

-- DISTINCT (unique value)

select distinct author_lname from books;

select distinct concat(author_fname, ' ', author_lname) from books;

select distinct author_fname, author_lname from books;

select distinct * from books;


-- ORDER BY (shorting value)

select * from books order by author_fname; 

select distinct author_lname from books order by author_lname desc;

SELECT book_id, author_fname, author_lname, pages FROM books ORDER BY 2 desc; -- order by 2nd value author_fname

SELECT book_id, author_fname, author_lname, pages FROM books ORDER BY author_lname, author_fname;


-- LIMIT 
-- notes --> row index start from zero 

SELECT * FROM books LIMIT 5;

SELECT title, released_year FROM books LIMIT 3;

SELECT title, released_year FROM books LIMIT 2,7;

SELECT title, released_year FROM books LIMIT 5,3; -- from 5th index select 3 rows 

SELECT title FROM books LIMIT 5, 123219476457;


-- LIKE used for similar match 

select * from books;

select title from books where author_lname = 'eggers'; -- used for exact match

select title from books where author_lname like 'egg'; -- not having % sign --> zero result 

select title from books where author_lname like 'egg%';  

select author_fname, author_lname from books where author_fname like '____';  -- '_'  sign donate number of char

select author_fname, author_lname from books where author_fname like '_a_';

select author_fname, author_lname from books where author_fname like '%_a_%';

select title from books where title like '%\_%'; -- title contain '_' sign
