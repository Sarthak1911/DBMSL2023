use endsem;

delimiter //
create function square(x int)
returns int deterministic

begin
return x*x;
end;

//

select square(12);

