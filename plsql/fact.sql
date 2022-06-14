set serveroutput on;
declare
	n number:=&n;
	f number:=1;
begin
	dbms_output.put_line('Factorial of a number:' ||n);
	for i in 1..n loop
	f:=f*i;
	end loop;
	dbms_output.put_line('Factorial=' ||f);
end;
/






Enter value for n: 5
old   2:        n number:=&n;
new   2:        n number:=5;
Factorial of a number:5
Factorial=120

PL/SQL procedure successfully completed.






