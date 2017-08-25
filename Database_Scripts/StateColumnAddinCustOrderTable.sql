if not exists (select * from information_schema.columns where table_name = 'CustOrder' and column_name = 'State')
begin
	Alter Table CustOrder
	add [State] int not null default 0

end