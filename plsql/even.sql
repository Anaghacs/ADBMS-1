set serveroutput on;
declare
	n number:=&n;
	r number;
begin
	dbms_output.put_line('Enter a number:');
	r:=mod(n,2);
	if r=0 then
		dbms_output.put_line('The number is Even');
	else
		dbms_output.put_line('odd');

	end if;
end;
/




Enter value for n: 2
old   2:        n number:=&n;
new   2:        n number:=2;
Enter a number:
The number is Even

PL/SQL procedure successfully completed.

SQL> @even.sql
Enter value for n: 5
old   2:        n number:=&n;
new   2:        n number:=5;
Enter a number:
odd

PL/SQL procedure successfully completed.
		
