use endsem;

delimiter //
create procedure display()
begin
select * from company;
end;
//

call display();