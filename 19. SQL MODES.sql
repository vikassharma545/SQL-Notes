-- SQL MODES

-- To View Modes:
SELECT @@GLOBAL.sql_mode;
SELECT @@SESSION.sql_mode;
 
-- To Set Them:
SET GLOBAL sql_mode = 'modes';
SET SESSION sql_mode = 'modes';



-- MODE -> STRICT_TRANS_TABLES
-- Handle invalid or missing value in sql while insert or updating

desc reviews;
insert into reviews (rating) values ('hi');
show errors;

set session sql_mode = '';

insert into reviews (rating) values ('hi');
show warnings;

select * from reviews;


-- MODE -> NO_ZERO_IN_DATE

select date('2010-10-00');

set session sql_mode='no_zero_in_date';

select date('2010-10-00'); -- not work now

show warnings;







-- MODE -> ONLY_FOR_GROUP_BY





