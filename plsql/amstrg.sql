set serveroutput on;
declare
	n number;
	s number:=0;
	r number;
	len number;
	m number;
begin
	n:=&n;
	m:=n;
	len:=length(to_char(n));
	while n>0
	loop
		r:=mod(n,10);
		s:=s+power(r,len);
		n:=trunc(n/10);

	end loop;
	if m=s
	then
		dbms_output.put_line(m||'Amstrong');
	else
		dbms_output.put_line(m||'Not Amstrong');
	end if;
end;
/









Enter value for n: 153
old   8:        n:=&n;
new   8:        n:=153;
153Amstrong

PL/SQL procedure successfully completed.

SQL> @amstrg.sql
Enter value for n: 456
old   8:        n:=&n;
new   8:        n:=456;
456Not Amstrong

PL/SQL procedure successfully completed.




