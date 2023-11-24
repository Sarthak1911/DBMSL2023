use endsem;
desc company;
create table department(did int, dept varchar(5));
select * from company;

insert into department values(1, 'BA');
insert into department values(2, 'CA');
insert into department values(3, 'Engi');

select * from department;

/*Inner join*/
select company.empname, department.did, company.dept from company 
inner join department on company.dept = department.dept;

/*Left join*/
select company.empname, department.did from company left join department on company.dept = department.dept;

/*Right join*/
select company.empname, department.did from company right join department on company.dept = department.dept;

/*Cross join*/
select company.empname, department.did from company cross join department where company.dept = department.dept;

