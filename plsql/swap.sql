set serveroutput on;
declare
	a number;
	b number;
	temp number;
procedure swap(x in out number ,y in out number ) is
begin
	temp:=x;
	x:=y;
	y:=temp;
	dbms_output.put_line('Before swapping :'  ||a|| ' and '   ||b);
end;
begin
	a:=&a;
	b:=&b;
	swap(a,b);
	dbms_output.put_line('After swapping :'  ||a|| ' and '   ||b);
end;
/

OUTPUT
-------

Enter value for a: 45
old  13:        a:=&a;
new  13:        a:=45;
Enter value for b: 68
old  14:        b:=&b;
new  14:        b:=68;
Before swapping :45 and 68
After swapping :68 and 45

PL/SQL procedure successfully completed.


--PL/SQL procedure successfully completed.