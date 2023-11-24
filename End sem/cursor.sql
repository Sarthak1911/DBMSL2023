use endsem;
show tables;
select * from purchase;
create table purchase1(p_id int, p_name varchar(10), b_id int, c_id int ,m_year year, list_price int);

insert into purchase1 values(1, 'Airpods', '1', '1', 2023, 12000);
insert into purchase1 values(2, 'MacBook', '1', '2', 2023, 120000);

delimiter //
create procedure proc()
begin
	declare v_name varchar(10);
    declare v_price int;
    declare v_finished integer default 0;
    declare c1 cursor for select p_name, list_price from purchase1;
    declare continue handler for not found set v_finished = 1;
    open c1;
    std : LOOP
		fetch c1 into v_name, v_price;
        if v_finished = 1 then
			leave std;
		end if;
        select concat(v_name, concat('-',v_price));
	end loop std;
    close c1;
end;
//

call proc();

drop procedure proc;