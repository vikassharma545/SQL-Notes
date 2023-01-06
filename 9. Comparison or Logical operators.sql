-- Comparison or Logical Operators

-- NOT EQUAL

select * from books where released_year = 2003;
select * from books where released_year != 2003;


-- NOT LIKE

select * from books where title like 'w%';
select * from books where title not like 'w%';


-- LESS THAN, GREATER THAN, LESS THAN OR EQUAL TO, GREATER THAN EQUAL TO  

select * from books where released_year > 2003;
select * from books where released_year < 2003;

select * from books where released_year >= 2003;
select * from books where released_year <= 2003;


-- LOGICAL 'AND'

select * from books where author_lname='eggers';
select * from books where author_lname='eggers' and released_year > 2005;


-- LOGICAL 'OR' 

select * from books where author_lname='eggers' or released_year >= 2010;
select * from books where (author_lname='eggers' or author_lname='gaiman') and released_year > 2003;


-- BEETWEEN

SELECT * FROM BOOKS WHERE RELEASED_YEAR >= 2004 AND RELEASED_YEAR <= 2013; -- ONE WAY
SELECT * FROM BOOKS WHERE RELEASED_YEAR between 2004 AND 2013; -- REMEMBER --> INCUSIVE ON BOTH SIDE 


-- NOT BETWEEN --> OPPOSITE OF BETWEEN

SELECT * FROM BOOKS WHERE !(RELEASED_YEAR >= 2004 AND RELEASED_YEAR <= 2013);
SELECT * FROM BOOKS WHERE RELEASED_YEAR < 2004 OR RELEASED_YEAR > 2013;
SELECT * FROM BOOKS WHERE RELEASED_YEAR NOT between 2004 AND 2013;

-- COMPARE DATETIME

select * from people where year(birthdt) < 2000;
SELECT * FROM people WHERE HOUR(birthtime) BETWEEN 12 AND 16;

-- IN OPERATOR

SELECT * from books where author_lname='lahiri' or author_lname='gaiman' or author_lname='eggers'; -- old way or long way 
select * from books where author_lname in ('lahiri', 'gaiman', 'eggers'); -- smart way


-- NOT IN 

select * from books where author_lname not in ('lahiri', 'gaiman', 'eggers');
SELECT title, released_year FROM books WHERE released_year >= 2000 AND released_year % 2 = 1;

-- CASE END important

SELECT 
    *,
    CASE
        WHEN released_year > 2000 THEN '> 2000'
        ELSE 'old'
    END AS new_column
FROM
    books;
    
SELECT 
    title,
    stock_quantity,
    CASE
        WHEN stock_quantity BETWEEN 0 AND 40 THEN '*'
        WHEN stock_quantity BETWEEN 41 AND 70 THEN '**'
        WHEN stock_quantity BETWEEN 71 AND 100 THEN '***'
        WHEN stock_quantity BETWEEN 101 AND 140 THEN '****'
    END AS stock
FROM
    books;
    
SELECT 
    title,
    stock_quantity,
    CASE
        WHEN stock_quantity <= 40 THEN '*'
        WHEN stock_quantity <= 70 THEN '**'
        WHEN stock_quantity <= 100 THEN '***'
        WHEN stock_quantity <= 140 THEN '****'
        ELSE '*****'
    END AS stock
FROM
    books;
    
-- is NULL Value 

select * from books;

insert into books (title) values ('book for null'); 
select * from books where author_lname=null; -- wrong way 
select * from books where author_lname is null; -- correct way


-- not null 
select * from books where author_lname is not null;


-- practice

SELECT * FROM books WHERE released_year < 1980;
 
SELECT * FROM books 
WHERE author_lname = 'Eggers'
OR author_lname = 'Chabon';
 
SELECT * FROM books
WHERE author_lname = 'Lahiri'
AND released_year > 2000;
 
SELECT * FROM books
WHERE pages >= 100 
AND pages <= 200;
 
SELECT * FROM books
WHERE pages BETWEEN 100 and 200;
 
SELECT title, author_lname FROM books
WHERE author_lname LIKE 'C%'
OR author_lname LIKE 'S%';
 
SELECT title, author_lname
FROM books WHERE SUBSTR(author_lname, 1, 1) in ('C', 'S');
 
SELECT title, author_lname,
CASE
    WHEN title LIKE '%stories%' THEN 'Short Stories'
    WHEN title = 'Just Kids' THEN 'Memoir' 
    WHEN title = 'A Heartbreaking Work of Staggering Genius' THEN 'Memior'
    ELSE 'Novel'
END AS type
FROM books;
 
 
SELECT author_fname, author_lname,
	CASE
        WHEN COUNT(*) = 1 THEN '1 book'
        ELSE CONCAT(COUNT(*), ' books')
	END AS count
FROM books
WHERE author_lname IS NOT NULL
GROUP BY author_fname, author_lname;

SELECT 
    author_fname,
    author_lname,
    CONCAT(COUNT(*), ' books') AS book_count
FROM
    books
WHERE
    author_lname IS NOT NULL
GROUP BY author_fname , author_lname; -- other way  
 








  