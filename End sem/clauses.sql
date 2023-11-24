use endsem;
select * from company;

/*group by*/

select count(id), salary as test from company group by salary;
select empname, max(post) as test from company group by empname;

/*having*/
select empname, max(salary) as maximumSalary from company group by empname having sum(salary) > 70000;

/*Aggregate functions*/
select count(id) from company;
select sum(salary) from company;
select avg(salary) from company;
select min(salary) from company;
select max(salary) from company;

/*sub queries*/

select id , empname, dept from company where salary in (select salary from company where post = 'CEO');

set sql_safe_updates = 0;
update company set salary = salary + (salary * 10);
select * from company;

delimiter //
create procedure p()
begin
	select id, empname, salary from company where id = 4;
end;
//

call p();
drop procedure p;


delimiter /
create procedure wow()
begin
	declare counter int default 1;
    while counter <=5 do
		select counter;
        set counter = counter + 1;
        end while;
end;
/

call wow();