show databases;
use endsem;
create table company(id int primary key, empname varchar(10), dept varchar(5), post varchar(5), salary int);

insert into company values(1, 'Sarthak' , 'BA', 'CEO', 100000);
insert into company values(2, 'Rohan' , 'BA', 'CA', 90000);
insert into company values(3, 'Rushi' , 'Tech', 'Engi', 90000);
insert into company values(4, 'Sahil' , 'Tech', 'Engi', 90000);
insert into company values(5, 'Akahay' , 'Sales', 'GM', 90000);

select * from company;

SET SQL_SAFE_UPDATES = 0;

update company set salary = 60000 where post = 'Engi';

delete from company where dept = 'Sales';