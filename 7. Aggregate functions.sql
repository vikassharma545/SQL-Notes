-- Aggregate functions

-- COUNT

select count(*) from books; -- count the rows

select count(title) from books;  

select count(author_lname) from books;

select count(distinct author_lname) from books;


-- Group by

-- group by generally used with aggregate functions

select author_fname from books group by author_lname;

select author_lname, count(*) as cnt from books group by author_lname order by cnt;

-- MIN and MAX

select min(released_year) from books;

select max(released_year) from books;

select author_fname, released_year from books;

select author_fname, max(released_year) from books group by author_fname;

-- getting title of books having max pages 

select title, max(pages) from books; -- title give from first row not max pages book 

select title from books order by pages desc limit 1; -- one of the way

-- USING SUBQUERIES

select title from books where pages=(select max(pages) from books);

-- group by multiple column

select author_fname, author_lname from books group by author_fname, author_lname;

select concat_ws(' ', author_fname, author_lname) as author, count(*) from books group by author;


-- MIN and MAX with group by

select author_lname, max(released_year) from books group by author_lname;

select 
	author_fname, 
	author_lname, 
    count(*) as count, 
    min(released_year) as min_year, 
    max(released_year) as max_year
from 
	books 
group by 
	author_fname, author_lname;
    

-- SUM 

select sum(pages) from books;

select author_lname, sum(pages) from books group by author_lname;

-- AVG

select avg(pages) from books; 

select avg(stock_quantity) from books;

select released_year, avg(stock_quantity), count(*) from books group by released_year;


-- Practice

SELECT COUNT(*) FROM books;
 
SELECT released_year, COUNT(*) 
FROM books GROUP BY released_year;
 
SELECT AVG(released_year) 
FROM books GROUP BY author_lname, author_fname;
 
 
SELECT CONCAT(author_fname, ' ', author_lname) AS author, pages FROM books
WHERE pages = (SELECT MAX(pages) FROM books);
 
SELECT CONCAT(author_fname, ' ', author_lname) AS author, pages FROM books
ORDER BY pages DESC LIMIT 1;
 
 
SELECT 
    released_year AS year,
    COUNT(*) AS '# books',
    AVG(pages) AS 'avg pages'
FROM books
GROUP BY released_year
ORDER BY released_year; 


  

