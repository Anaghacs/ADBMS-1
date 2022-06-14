//Explicit cursor

set serveroutput on;
declare
	eid customers.id%type;
	ename customers.name%type;
	esal customers.salary%type;
	cursor c_customers is
		select id,name,salary from customers;
begin
	open c_customers;
	loop
	fetch c_customers into eid,ename,esal;
		exit when c_customers%notfound;
		dbms_output.put_line(eid || ' ' || ename || ' ' ||esal);
	end loop;
	close c_customers;
end;
/



OUTPUT
------------

101 Anjali 11000
102 Rahul 31000
103 Siya 26000
104 Abhi 21000
105 Thasni 20500

PL/SQL procedure successfully completed.	