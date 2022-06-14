create procedure list_name(INOUT name_list varchar(4000))
begin
declare is_done integer default 0;
declare