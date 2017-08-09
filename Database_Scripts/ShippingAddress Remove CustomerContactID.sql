if exists (select * from information_schema.columns where table_name = 'ShippingAddress' and column_name = 'CustomerContactId')
begin
	alter table ShippingAddress drop constraint FK_ShippingAddress_CustomerContact;
	alter table ShippingAddress drop column CustomerContactId;
end