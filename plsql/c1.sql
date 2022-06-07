set erveroutput on;
declare
	total_rows number(2);
begin
	update customers set salary=salary + 500;
	if sql%notfound then
		dbms_output.put_line('No customers selected');
	elsif sql%found then
		total_rows := sql%rowcount;
		dbms_output.put_line(total_rows || ' Customers selected ');
	end if;
end;
/


OUTPUT
-----------

PL/SQL procedure successfully completed.

SQL> select * from customers;

        ID NAME                        AGE ADDRESS                  SALARY
---------- -------------------- ---------- -------------------- ----------
       101 Anjali                       23 Karayil                   11000
       102 Rahul                        25 Kalappatt                 31000
       103 Siya                         22 Pathazakkattil            26000
       104 Abhi                         30 Erattu                    21000
       105 Thasni                       28 Puthiyavettil             20500
