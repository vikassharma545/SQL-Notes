-- More on Data types

-- char vs varchar

-- CHAR --> FIXED LENGTH STRING (OR FIXED SIZE OF ALL STRING)
-- IF STRING IS LESS THAN CHAR LENGTH SPACE WILL BE ADDED BY SQL WHILE INSERTING STRING

-- VARCHAR --> VARIABLE LENGTH STRING OR SIZE DEPEND ON STRING LENGTH

create table test_string(
	char_string char(3),
    varchar_string varchar(3)
);

INSERT INTO test_string (char_string, varchar_string) VALUES ('VIKAS', 'SHARMA '); -- SHOW ERROR DATA TO LONG
INSERT INTO test_string (char_string, varchar_string) VALUES ('VI', 'SHA');

-- INT, TINYINT, BIGINT

CREATE TABLE age(age tinyint);
INSERT INTO age (age) VALUE (200); -- SHOE ERROR  TINYINT RANGE (-128 TO 127)

DROP TABLE AGE;

CREATE TABLE age(age tinyint UNSIGNED);
INSERT INTO age (age) VALUE (200); -- WORK PERFECTLY UNSIGNED TINYINT RANGE (0 TO 255)

-- DECIMAL

-- DECIMAL(5,2) MEAN -> 5 TOTAL DIGIT WHERE TWO OF THEM IS DECIMAL i.e 3 NON DECIMAL DIGIT WITH 2 DECIMAL DIGIT

CREATE TABLE BANK_BALANCE (
	AMOUNT DECIMAL (5,2)
    );
    
INSERT INTO BANK_BALANCE (AMOUNT) VALUE (999.99);
INSERT INTO BANK_BALANCE (AMOUNT) VALUE (99.999); -- SHOW WARNING BUT INSERT INTO DATA

SELECT * FROM BANK_BALANCE;

INSERT INTO BANK_BALANCE (AMOUNT) VALUE (9999.99); -- SHOW ERROR OUT OF RANGE
INSERT INTO BANK_BALANCE (AMOUNT) VALUE (9999.9); -- SHOE ERROR ALSO

-- FLOAT AND DOUBLE 

-- FAST, USE LESS SPACE, BUT NOT PRECISE
-- FLOAT AND DOUNLE ARE SAME BUT DOUBLE MORE PRECISE

CREATE TABLE FD(X FLOAT, Y DOUBLE);

INSERT INTO FD(X,Y) VALUE (123.456789, 1234567.9881263671435); -- ROUND OFF TO THEIR PRECISE VALUE 
INSERT INTO FD(X,Y) VALUE (123, 1234567);  -- INTEGER ALSO WORK 
SELECT * FROM FD; 



-- DATE AND TIME

-- FORMAT
-- DATE YYYY-MM-DD
-- TIME HH:MM:SS 
-- DATETIME YYYY-MM-DD HH:MM:SS 

CREATE TABLE PEOPLE(
	NAME VARCHAR(30),
    birthdate date,
    birthtime time,
    birthdt datetime);
    
desc people;

insert into people(name, birthdate, birthtime, birthdt) value ('vikas sharma', '2001-01-07', '06:30:15', '2001-01-07 06:30:15'); 
insert into people(name, birthdate, birthtime, birthdt) value ('vikky sharma', '2002-02-15', '06:30:15', '2002-02-15 06:30:15');
insert into people(name, birthdate, birthtime, birthdt) value ('vishal sharma', '2002-01-21', '07:30:15', '200-01-21 07:30:15');
insert into people(name, birthdate, birthtime, birthdt) value ('hament sharma', '2007-05-07', '06:30:15', '2007-05-07 06:30:15');

INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES ('Elton', '2000-12-25', '11:00:00', '2000-12-25 11:00:00');
 
INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES ('Lulu', '1985-04-11', '9:45:10', '1985-04-11 9:45:10');
 
INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES ('Juan', '2020-08-15', '23:59:00', '2020-08-15 23:59:00');
select * from people;

-- CURDATE, CURTIME, NOW
 
select now();
select curdate();
select curtime();

INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES ('Hazel', CURDATE(), CURTIME(), NOW());
 
-- DATE FUNCTIONS
 
SELECT BIRTHDATE FROM PEOPLE;
 
SELECT BIRTHDATE, day(BIRTHDATE), dayname(BIRTHDATE), dayofmonth(BIRTHDATE), dayofweek(BIRTHDATE), dayofyear(BIRTHDATE) FROM PEOPLE;

SELECT birthdt, month(birthdt), monthname(birthdt), hour(birthdt), minute(birthdt), second(birthdt), microsecond(birthdt) FROM PEOPLE;
  
SELECT birthdt, week(birthdt), weekday(birthdt), weekofyear(birthdt) FROM PEOPLE;

-- extracting value from date 

SELECT EXTRACT(YEAR FROM '2019-07-02');
SELECT EXTRACT(YEAR_MONTH FROM '2019-07-02 01:02:03');
SELECT EXTRACT(DAY_MINUTE FROM '2019-07-02 01:02:03');
SELECT EXTRACT(MICROSECOND FROM '2003-01-02 10:30:00.000123');

SELECT LAST_DAY('2003-02-05');  -- MONTH LAST DATE 

-- formating dateime

SELECT DATE_FORMAT('2009-10-04 22:23:00', '%W %M %Y');
SELECT DATE_FORMAT('2007-10-04 22:23:00', '%H:%i:%s');
SELECT DATE_FORMAT('1900-10-04 22:23:00','%D %y %a %d %m %b %j');
SELECT DATE_FORMAT('1997-10-04 22:23:00','%H %k %I %r %T %S %w');
SELECT DATE_FORMAT('1999-01-01', '%X %V');
SELECT DATE_FORMAT('2006-06-00', '%d'); 

SELECT birthdate, DATE_FORMAT(birthdate, '%a %b %D') FROM people;
 
SELECT birthdt, DATE_FORMAT(birthdt, '%H:%i') FROM people;
 
SELECT birthdt, DATE_FORMAT(birthdt, 'BORN ON: %r') FROM people;

-- date math

select birthdate, datediff(birthdate, curdate()) from people;

select date_add(now(), interval 5 minute);

select timediff(curtime(), '07:00:00');


-- TIMESTAMPS

-- What's the difference between DATETIME and TIMESTAMP?
 
-- They both store datetime information, but there's a difference in the range, 
-- TIMESTAMP has a smaller range. TIMESTAMP also takes up less space. 
-- TIMESTAMP is used for things like meta-data about when something is created or updated.


 select timestamp("12:12:12 12:12:12");  
 
 select current_timestamp();
 
 create table captions(
	name varchar(30),
    created_at timestamp default current_timestamp
    );
    
insert into captions( name ) value ('vikas');

select * from captions;

 create table captions2(
	name varchar(30),
    created_at timestamp default current_timestamp,
    updated_at timestamp on update current_timestamp
    );
    
insert into captions2 (name) values ('shRMA');

UPDATE captions2 set name='Sharma' where name='shRMA';

select * from captions2;