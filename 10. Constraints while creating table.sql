-- Constraint and alter table

-- UNIQUE 

CREATE TABLE contacts (
	name VARCHAR(100) NOT NULL,
    phone VARCHAR(15) NOT NULL UNIQUE
);
 
INSERT INTO contacts (name, phone)
VALUES ('billybob', '8781213455');
 
-- This insert would result in an error:
INSERT INTO contacts (name, phone)
VALUES ('billybob', '8781213455'); 


-- CHECK CONSTRAINT 

CREATE TABLE users (
	username VARCHAR(20) NOT NULL,
    age INT CHECK (age > 0)
);

INSERT INTO USERS (username, age) VALUES ('VIKAS', 10);
INSERT INTO USERS (username, age) VALUES ('VIKAS', -10);
 
CREATE TABLE palindromes (
  word VARCHAR(100) CHECK(REVERSE(word) = word)
);

insert into palindromes(word) values ('asaa');
insert into palindromes(word) values ('vikassakiv');


-- Naming a constraint

drop table users;

create table users (
	username varchar(20) not null,
    age int,
    constraint age_not_negative check(age > 0)
);

drop table palindromes;
CREATE TABLE palindromes (
  word VARCHAR(100),
  constraint check_palindrome check (REVERSE(word) = word)
);

-- multiple column constraint 

create table companies (
	name varchar(20) not null,
	age int not null,
    address varchar(60),
    constraint name_adress unique (name, address)
);

insert into companies (name, age, address) values ('vikas', 20, 'delhi');
insert into companies (name, age, address) values ('vikas', 22, 'delhi'); 

create table houses(
	buy_price int not null,
    sell_price int not null,
    constraint loss_scheme check (sell_price > buy_price)
);

insert into houses(buy_price, sell_price) values (10000000, 20000000);

insert into houses(buy_price, sell_price) values (30000000, 20000000);

