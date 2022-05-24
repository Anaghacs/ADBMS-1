set serveroutput on;
declare
	num number;
	rev number:=0;
begin
	num:=&n;
	while num>0 loop
		rev:=(rev*10)+mod(num,10);
		num:=floor(num/10);
	end loop;
	dbms_output.put_line('Reverse number is:'||rev);
end;
/



Enter value for n: 123
old   5:        num:=&n;
new   5:        num:=123;
Reverse number is:321

PL/SQL procedure successfully completed.
