set serveroutput on;
declare
	a number;
	b number;
	c number;
procedure FindMin(x in number,y in number,z out number)is
begin
	if x < y then
		z:= x;
	else
		z:=y;
	end if;
end;
begin
	a:=&a;
	b:=&b;
	FindMin(a,b,c);
	dbms_output.put_line('Minimum of :' ||a|| ' and ' ||b|| ' is ' ||c);
end;
/


Enter value for a: 10
old  14:        a:=&a;
new  14:        a:=10;
Enter value for b: 70
old  15:        b:=&b;
new  15:        b:=70;
Minimum of :10 and 70is 10

PL/SQL procedure successfully completed.