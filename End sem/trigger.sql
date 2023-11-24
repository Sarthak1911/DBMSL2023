use endsem;
create table purchase(product varchar(10), price int);

set @total = 0;
delimiter //

create trigger tri
after insert on purchase
for each row

begin
	set @total = (select sum(price) from purchase);
end;

//
insert into purchase values('Iphone', 50000);
insert into purchase values('MacBook', 100000);
insert into purchase values('Airpods', 12000);

select * from purchase;

select @total;