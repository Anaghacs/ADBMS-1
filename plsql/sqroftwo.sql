set serveroutput on;
declare
	a number;
	b number;
procedure sqr( n in number, r out number)is
begin
	r:=n*n;
end;
begin

	a:=&a;
	sqr(a,b);
	dbms_output.put_line('The square is:' ||b);
end;
/	

OUTPUT
------

Enter value for a: 5
old  10:        a:=&a;
new  10:        a:=5;
The square is:25

PL/SQL procedure successfully completed.
