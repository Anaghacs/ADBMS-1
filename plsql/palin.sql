set serveroutput on;
declare
	n number;
	m number;
	temp number:=0;
	rem number;
begin
	n:=&n;
	m:=n;
	while n>0
	loop
		rem:=mod(n,10);
		temp:=(temp*10)+rem;
		n:=trunc(n/10);
	end loop;
	if m= temp
	then
		dbms_output.put_line(temp|| ' Is Palindrome');
	else
		dbms_output.put_line(temp|| ' Is Not Palindrome');
	end if;
end;
/



Enter value for n: 454
old   7:        n:=&n;
new   7:        n:=454;
454 Is Palindrome

PL/SQL procedure successfully completed.


Enter value for n: 678
old   7:        n:=&n;
new   7:        n:=678;
876 Is Not Palindrome

PL/SQL procedure successfully completed.




