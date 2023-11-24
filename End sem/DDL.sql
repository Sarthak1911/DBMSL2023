create database endsem;
use endsem;
create table company(id int primary key, empname varchar(10), dept varchar(5), post varchar(5), salary int);
desc company;

alter table company modify column id numeric;
alter table company rename column id to empid;
alter table company rename column dept to empdept;
alter table company modify column empid numeric;

insert into company values(1,'Sarthak', 'BA', 'CEO', 10000);
select * from company;

truncate company;

drop table company;