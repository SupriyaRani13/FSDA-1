Create database shopping;
use shopping;

---------Task1---------------------

Create table shopping_history(
product varchar(50) not null,
quantity int not null,
unit_price int not null
);

desc shopping_history;

Insert into shopping_history values
('Milk', 1, 10);
Insert into shopping_history values
('bread', 3, 12);
Insert into shopping_history values
('bread', 2, 11);
Insert into shopping_history values
('Sugar', 5, 30);
Insert into shopping_history values
('Coffee', 7, 13);
Insert into shopping_history values
('Tea', 10, 19);
Insert into shopping_history values
('Somasa', 6, 50);
Insert into shopping_history values
('Jalebai', 8, 70);
Insert into shopping_history values
('Sweet', 9, 80);
Insert into shopping_history values
('Egg', 12, 40);

Select * from shopping_history;
Select distinct product,quantity from shopping_history;

ALTER TABLE shopping_history
ADD total_price int;
Alter table shopping_history
drop column total_price;

Select * from shopping_history;

desc shopping_history;

select product, sum(unit_price) as total_price
from shopping_history
group by product;

-------------------Task2---------------------
Create database call_deatils;
use call_deatils;

Create table phones(
name varchar(50) not null unique,
phone_number int not null unique
);

Insert into phones values
('Jack', 900223344);
Insert into phones values
('suupriya', 448877221);
Insert into phones values
('Jenny', 779900333);
Insert into phones values
('Riya', 900887766);
Insert into phones values
('Priya', 665588990);
Insert into phones values
('Priti', 887766550);
Insert into phones values
('Sweety', 800224444);
Insert into phones values
('Shubham', 700023344);
Insert into phones values
('Nitika', 900223311);

select * from phones;

Create table calls(
id int not null unique,
caller int not null,
callee int not null,
duration int not null
);

desc calls;

Insert into calls values
(1, 900223344,1234, 3 );
Insert into calls values
(2, 448877221,125, 2 );
Insert into calls values
(3, 779900333,908, 1 );
Insert into calls values
(4, 900887766,101, 6 );
Insert into calls values
(5,800224444 ,201, 4 );
Insert into calls values
(6,700023344 ,108, 9 );
Insert into calls values
(7, 900223311,105, 8 );
insert into calls values
(10,900223344,100,15);
Insert into calls values
(11,887766554, 809,11);
Insert into calls values
(12,665588990,104,18);

select * from calls;
select name, phone_number from phones;
select id,caller from calls;

select name,phone_number,caller
from phones
inner join calls
on phones.phone_number = calls.caller
group by phones.phone_number
having sum(calls.duration) >= 10;

select name,phone_number from phones;

------------------Task3----------------------------------

Create database balance_details;
use balance_details;

Create table transactions(
amount int not null,
date date not  null
);

Insert into transactions values
(400, '2029-02-03');
Insert into transactions values
(102, '2024-11-11');
Insert into transactions values
(208, '1990-09-23');
Insert into transactions values
(-400, '1997-07-30');
Insert into transactions values
(-75, '2022-03-04');
Insert into transactions values
(503, '1809-04-12');

select * from transactions;

select date,sum(amount) as balance
from transactions
group by amount;

select sum(amount) as balance
from transactions
group by amount;

select date from transactions;
select amount from transactions;
select distinct amount from transactions;
select distinct date from transactions;





























