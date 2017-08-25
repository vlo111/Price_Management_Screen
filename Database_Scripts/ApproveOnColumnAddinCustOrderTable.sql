if not exists (select * from information_schema.columns where table_name = 'CustOrder' and column_name = 'ApproveOn')
begin
alter table CustOrder
add ApproveOn datetime null
end