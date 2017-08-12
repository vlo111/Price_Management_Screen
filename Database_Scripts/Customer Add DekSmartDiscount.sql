if not exists (select * from information_schema.columns where table_name = 'Customer' and column_name = 'DekSmartDiscount')
begin
	alter table Customer add DekSmartDiscount int not null default 0;
end