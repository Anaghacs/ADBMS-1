create or replace trigger disp_salary_changes
before delete or insert or update on customers
for each row
when (new.id > 0)
declare
	sal_diff number;
begin
	sal_diff := :new.salary - :old.salary;
	dbms_output.put_line('Old salary: '|| :old.salary);
	dbms_output.put_line('New salary: ' || :new.salary);
	dbms_output.put_line('Salary difference: ' || sal_diff);
end;
/

set serveroutput on;


declare
	total_rows number(2);
begin
	update customers set salary = salary +500;
	if sql%notfound then
		dbms_output.put_line('No customers updated');
	elsif sql%found then
		total_rows :=  sql%rowcount;
		dbms_output.put_line(total_rows || ' Customers updated ');
	end if;
end;
/


OUTPUT
-------


Old salary: 10500
New salary: 11000
Salary difference: 500
Old salary: 30500
New salary: 31000
Salary difference: 500
Old salary: 25500
New salary: 26000
Salary difference: 500
Old salary: 20500
New salary: 21000
Salary difference: 500
Old salary: 20000
New salary: 20500
Salary difference: 500
5 Customers updated

PL/SQL procedure successfully completed.