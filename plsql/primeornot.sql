set serveroutput on;
declare
	i number;
	j number;
	n number;
	result boolean;
function prime(x in number)
return boolean
is
	flag boolean;
begin
	for i in 2..x/2 loop
		rem:=MOD(x,i);
		if rem=0 then
			flag:=false;
			return flag;
		end if;
	end loop;
	flag:=true;
	return flag;
end;
begin
	n:=8;
	result:=prime(n);
	if result then
		dbms_output.put_line('Prime);
	else
		dbms_output.put_line('Not Prime');
	end if;

end;
/