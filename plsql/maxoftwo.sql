set serveroutput on;
declare
	a number;
	b number;
	c number;
function findmax(x in number,y in number)
return number
is
	z number;
begin
	if x > y then
		z:=x;
	else
		z:=y;
	end if;
	return z;
end;
begin
	a:=&a;
	b:=&b;
	c:=findmax(a,b);
	dbms_output.put_line('Maximum of :' ||a|| ' and '||b|| ' is '||c);
end;
/

OUTPUT
-------

Enter value for a: 24
old  18:        a:=&a;
new  18:        a:=24;
Enter value for b: 50
old  19:        b:=&b;
new  19:        b:=50;
Maximum of :24 and 50 is 50

PL/SQL procedure successfully completed.