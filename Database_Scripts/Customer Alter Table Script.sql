alter table customer
add CenDekDivision nvarchar(255)

alter table customer
add CustomerStatus bit

alter table customer
drop column Comments

alter table customer
drop column Address1

alter table customer
drop column Address2

alter table customer
drop column City

alter table customer
drop column Province

alter table customer
drop column PostalCode
go

alter table customer
add BillingAddress nvarchar(255)

alter table customer
add ShippingAddress nvarchar(255)

alter table customer
add BillingCity nvarchar(255)

alter table customer
add BillingProv nvarchar(255)

alter table customer
add BillingPostalCode nvarchar(255)

alter table customer
add ShippingCity nvarchar(255)

alter table customer
add ShippingProv nvarchar(255)

alter table customer
add ShippingPostalCode nvarchar(255)
go

alter table customer
drop column PhoneNo
go

alter table customer
add AreaCode nvarchar(255)

alter table customer
add BusinessPhone nvarchar(255)

alter table customer
add Cell nvarchar(255)

alter table customer
add EmailAddress nvarchar(255)

alter table customer
add Discount float

alter table customer
add SalesPerson nvarchar(255)

alter table customer
add PSTExemptionNum nvarchar(255)

alter table customer
add HST13 nvarchar(255)

alter table customer
add HST15 nvarchar(255)

alter table customer
add USAResellerPermitNum nvarchar(255)

alter table customer
add USAIRSNum nvarchar(255)

alter table customer
add PaymentMethod nvarchar(255)

alter table customer
add Currency nvarchar(255)

alter table customer
add CreditTerms money

alter table customer
add DaysBeforeDue nvarchar(255)

alter table customer
add SendStatement nvarchar(255)

alter table customer
add ShippingMethod nvarchar(255)

alter table customer
add ShippingComments nvarchar(255)

alter table customer
add CarrierOne nvarchar(255)

alter table customer
add CarrierOneAccNum nvarchar(255)

alter table customer
add CarrierTwo nvarchar(255)

alter table customer
add CarrierTwoAccNum nvarchar(255)

alter table customer
add CarrierThree nvarchar(255)

alter table customer
add CarrierThreeAccNum nvarchar(255)

alter table customer
add ShipCharges nvarchar(255)

alter table customer
add Packaging float

alter table customer
add GeneralComments nvarchar(255)

alter table customer
add GeneralComments1 nvarchar(255)
