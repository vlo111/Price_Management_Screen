if not exists (select * from information_schema.columns where table_name = 'Customer' and column_name = 'ShipCharges')
begin
	alter table Customer add ShipCharges varchar(20) null default 'Collect';
end

if not exists (select * from information_schema.columns where table_name = 'Customer' and column_name = 'Packaging')
begin
	alter table Customer add Packaging int not null default 4;
end