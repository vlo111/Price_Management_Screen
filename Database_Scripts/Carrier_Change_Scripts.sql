select * from Carrier
select * from CustomerCarrier

 begin

 Alter Table [CustomerCarrier]
 add CustomerCarrierID int not null
 
 alter table customerCarrier
 drop constraint [PK_CustomerCarrier]

 Alter Table CustomerCarrier
 Add PRIMARY KEY (customerCarrierID)

 Alter Table [Carrier]
 add [CarrierName] varchar(50)
 
 end
 go

create view View_Carrier AS
select [CustomerCarrierID]
      ,customercarrier.[CarrierID]
      ,[CustomerID]
      ,[Account]
      ,customercarrier.[Comments] as customerCarrierComments
      ,carrier.[CarrierName]
      ,carrier.[Phone]
      ,carrier.[Fax]
      ,carrier.[Email]
      ,carrier.[Address1]
      ,carrier.[Address2]
      ,carrier.[City]
      ,carrier.[Province]
      ,carrier.[Country]
      ,carrier.[PostalCode]
      ,carrier.[Comments] as carrierComments
	    FROM [CenDekRyan].[dbo].[CustomerCarrier]
		full join carrier on customercarrier.CarrierID = carrier.CarrierID

go

select * from Carrier
select * from CustomerCarrier
select * from View_Carrier

