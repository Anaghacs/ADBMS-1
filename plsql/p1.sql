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
------

Old salary: 10000
New salary: 10500
Salary difference: 500
Old salary: 30000
New salary: 30500
Salary difference: 500
Old salary: 25000
New salary: 25500
Salary difference: 500
Old salary: 20000
New salary: 20500
Salary difference: 500
4 Customers updated
