delete from ContactInfo;
delete from ContactInfoType;
delete from CustomerContact;
delete from ShippingAddress;
delete from CustomerCarrier;
delete from Customer;

SET IDENTITY_INSERT Customer ON

insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2389, 'Energy Doctor', '306-665-1119', '306-665-1230', 'Apr 29 2003 12:00AM', 'Jun 16 2016 12:00AM', 0, '2202 Ave  C  North', null, 'Saskatoon', 'SK', 'Canada', 'S7L 6C3', 'INACTIVE
Is this the right Energy Doctor? NO!', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2748, 'Sandbar Construction', '403-519-6488', '403-242-9330', 'Aug 30 2007 12:00AM', 'Oct 11 2013 12:00AM', 0, '4123 - 7th Ave. S.W.', null, 'Calgary ', 'AB', 'Canada', 'T3C 0E3', 'INACTIVE
Group A
No Discount on Rail
Overland', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3193, 'Over and Above Reno and Contracting Ltd.', '403-726-1299', '403-726-1229', 'Apr 29 2015 12:00AM', 'May  2 2016 12:00AM', 0, '122 - 8490 - 44 St. SE', null, 'Calgary', 'AB', 'Canada', 'T2C 2P6', '$25,000. approved credit
Grant - 587-999-5930', 0, 1, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3221, 'Superior Exteriors', '778-220-0600', null, 'Nov  6 2015 12:00AM', 'Jun 15 2017 12:00AM', 0, '2356 Young Ave', null, 'Kamloops', 'BC', 'Canada', null, 'REMOVE 
Potential new customer
1 quote Nov/15', 0, 0, 10)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2607, 'Summer Industries', '250-295-1282', null, 'Apr 13 2005 12:00AM', 'Sep  2 2015 12:00AM', 0, 'PO Box 1022', null, 'Princeton', 'BC', 'Canada', 'v0x 1w0', 'Customer Pick Up
No Discount
approved credit', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3198, 'New Age Roofing', null, null, 'May 11 2015 12:00AM', 'May 12 2015 12:00AM', 0, null, null, null, 'MB', 'Canada', null, 'Potential new customer - KS
30% on first job', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3258, 'Blue Sky Fence', '519-652-1224', '519-652-1227', 'Apr 13 2017 12:00AM', 'Jul  4 2017 12:00AM', 0, '3392 Wonderland Rd S. Bld 5 Unit 1', null, 'London', 'ON', 'Canada', 'N6L 1A8', 'Potential new customer
USE CELL as contact #', 0, 1, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2939, 'Skyline Building Systems  Ontario', '705-728-9417', '705-728-3805', 'Apr 22 2010 12:00AM', 'Oct 11 2013 12:00AM', 0, 'Bay 17, 740 Huronia Road', null, 'Barrie', 'ON', 'Canada', 'L4N 6C6', 'INACTIVE

ONTARIO Division
approved credit
', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3206, 'The Porch Appeal Company', '780-729-0442', null, 'Jul 27 2015 12:00AM', 'Jun  8 2016 12:00AM', 0, '145 Mayfair Mews', null, 'Edmonton ', 'AB', 'Canada', 'T5E 5R7', 'New customer 
Grant Lawton - Discount AP/KS', 0, 1, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3245, 'Seymour Pacific', '250-286-8045', null, 'Aug 30 2016 12:00AM', 'Aug 30 2016 12:00AM', 0, '100 St. Ann’s Road', null, 'Campbell River', 'BC', 'Canada', 'V9W 4C4', 'Potential new customer - sent samples 09/16', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3207, 'St. Arnault Contracting', '780-614-7222', null, 'Aug 10 2015 12:00AM', 'Aug 24 2015 12:00AM', 0, '4202 - 9th Ave. ', null, 'St. Paul', 'AB', 'Canada', 'T0A 3A3', 'Potential new customer
samples sent Aug/15', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2983, 'Cantalla Decks & Fence', '877-336-2301', '877-483-4033', 'Jan  5 2011 12:00AM', 'Oct 11 2013 12:00AM', 0, 'PO Box 74', null, 'Black Creek', 'BC', 'Canada', 'V9J 1K8', 'INACTIVE
JUST QUOTES IN 2011
10% discount', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3163, 'QC Universal Coatings', '250-803-0240', '250-803-0241', 'Oct 17 2013 12:00AM', 'Oct 17 2013 12:00AM', 0, '4310-45th St. S.E.', null, 'Salmon Arm', 'BC', 'Canada', 'V1E 2W1', 'no pkg chg for powder
Credit Card on file', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2963, 'Neumann’s Contracting & Renovations', '250-496-4332', '250-496-4336', 'Jul  5 2010 12:00AM', 'Dec 18 2013 12:00AM', 0, null, null, 'Penticton', 'BC', 'Canada', null, 'INACTIVE - LAST ORDER JUL/10
no discount', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3223, 'Frosty’s Decks & Rails', null, null, 'Jan 11 2016 12:00AM', 'Apr  6 2016 12:00AM', 0, null, null, 'Springfield', 'MO', 'United States', '65804', 'Potential New Customer
Add Exchange Rate', 1, 1, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2879, 'Fuse Form Fabrication', '780-608-1881', null, 'Sep 17 2009 12:00AM', 'Dec 18 2013 12:00AM', 0, '5108  52nd Ave', null, 'Camrose ', 'AB', 'Canada', null, 'INACTIVE SAMPLES SENT SEP/10 
NO ORDERS', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3149, 'Jacob Bros. Construction', '604-541-0303', '604-541-0343', 'Apr 18 2013 12:00AM', 'Oct 11 2013 12:00AM', 0, '101-19162 22nd Ave.', null, 'Surrey', 'BC', 'Canada', 'V3S 3S6', 'New Customer - Quotes for jobs in 2013
', 0, 0, 10)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3262, 'Streit Construction', '403-605-0891', null, 'May  9 2017 12:00AM', 'May  9 2017 12:00AM', 0, '39 Drake Landing Rd.', null, 'Okotoks', 'AB', 'Canada', 'T1S 0B9', 'Potential new customer
PAYS B4 SHIPPING', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3115, 'Caruk Media Group', '416-688-1454', null, 'Jun 14 2012 12:00AM', 'Jun 19 2012 12:00AM', 0, '5500 North Service Road Suite 203', null, 'Burlington', 'ON', 'Canada', 'L7L 6W6', 'HGTV advertising as per Ted Whitehouse', 0, 1, 50)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2810, 'Berg Ventures', '403-510-3869', null, 'Nov 25 2008 12:00AM', 'Oct 11 2013 12:00AM', 0, '639 Sierra Morena Pl. SW', null, 'Calgary', 'AB', 'Canada', 't3h 2w9', 'INACTIVE
Discount 20%
Overland or Ace', 0, 1, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3067, 'Simply Superior Foods', '250-309-1425', '250-549-1210', 'Sep 13 2011 12:00AM', 'Dec 18 2013 12:00AM', 0, '134 Mt Fosthall Dr.', null, 'Vernon', 'BC', 'Canada', 'V1B 2H8', 'ONE TIME CUSTOMER
PAY BEFORE SHIPPING', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3251, 'CRC Construction Inc.', '780-904-0877', null, 'Jan 25 2017 12:00AM', 'May 29 2017 12:00AM', 0, '160 50050 Range Road 233', null, 'Leduc', 'AB', 'Canada', 'T4X 0I2', 'Potential New Customer
PAYS 1ST AP/KS', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3002, 'Complete Carpentry Ltd', '403-625-2510', '403-625-3659', 'Mar 30 2011 12:00AM', 'Aug  9 2017 12:00AM', 0, 'PO Box 1071', null, 'Claresholm', 'AB', 'Canada', 't0l 0t0', 'no discount
Approved Credit $10,000
', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2769, 'McNamara Carpet Gallery', '403-394-2495', '403-394-2498', 'May  5 2008 12:00AM', 'Oct 29 2013 12:00AM', 0, '1916 - 2nd Ave. S.', null, 'Lethbridge', 'AB', 'Canada', 'T1J 0G5', 'LAST ORDER MAY/12
Ace
Discount 15%
', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3161, 'John MacMillan', '250-497-5087', null, 'Sep 20 2013 12:00AM', 'Jan 20 2016 12:00AM', 0, null, null, 'Okanagan Falls', 'BC', 'Canada', 'v0h 1R0', 'Will pay on Credit prior when ready', 0, 0, 10)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1366, 'Save-A-Deck   ', '780-429-4443', '780-489-1971', 'Jun  1 1998 12:00AM', 'Oct 25 2013 12:00AM', 0, '#188, 9944 - 33rd Avenue', null, 'Edmonton', 'AB', 'Canada', 'T6N 1E8', 'INACTIVE
Visa on file
20% discount', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3074, 'GREG ELLIOTT', '705-716-7882', null, 'Oct 12 2011 12:00AM', 'Oct 11 2013 12:00AM', 0, '68 Turtle Path', null, 'Brechin', 'ON', 'Canada', 'L0K 1B0', 'INACTIVE
DEKSMART/CENTURY SALESMAN', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3151, 'The Worx', '403-969-5086', '403-281-5068', 'Jun 27 2013 12:00AM', 'Dec 18 2013 12:00AM', 0, '136 Canata Close SW
', null, 'Calgary', 'AB', 'Canada', 'T2W 1P7', 'New client - 2 ORDERS IN JUL/13

', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3203, 'All Slope Roofing Ltd.', '250-374-5776', null, 'Jun 17 2015 12:00AM', 'Oct 19 2015 12:00AM', 0, null, null, 'Kamloops', 'BC', 'Canada', null, 'Potential new customer (Ken, Stu)', 0, 0, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3212, 'Scott Construction', '905-357-6161', '905-374-6646', 'Oct 13 2015 12:00AM', 'Oct 13 2015 12:00AM', 0, '5-5233 Stanley Ave.', null, 'Niagara Falls', 'ON', 'Canada', 'L2E 7C2', 'Potential new customer, called in', 0, 1, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2785, 'Black Wolf Building & Design', '250-889-0953', null, 'Jul  4 2008 12:00AM', 'Oct 11 2013 12:00AM', 0, '508 Broadway Street', null, 'Victoria', 'BC', 'Canada', 'V8Z 2E8', 'INACTIVE
Ace Collect
7% Discount', 0, 0, 7)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3176, 'Excess Building Depot', '204-325-1377', '204-325-1388', 'Jul  3 2014 12:00AM', 'Jul  3 2014 12:00AM', 0, 'PO Box 160 ', null, 'Winkler', 'MB', 'Canada', 'R6W 4A4', 'New Customer 
Purolator #1009792', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3213, 'Stevens Renovations', null, null, 'Oct 14 2015 12:00AM', 'Jun 15 2017 12:00AM', 0, null, null, 'Victoria', 'BC', 'Canada', null, 'REMOVE -
Potential New Customer', 0, 0, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2558, 'Done Rite Vinyl', '250-803-3443', null, 'Sep 20 2004 12:00AM', 'Oct 11 2013 12:00AM', 0, '1200 Lakeshore Dr.N.E.', null, 'Salmon Arm', 'BC', 'Canada', 'V1E 2V7', 'INACTIVE

Overland
No Discount', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2794, 'Pro-Tech Exteriors/Continuous', '250-382-5885', '250-382-5748', 'Aug 22 2008 12:00AM', 'Oct 11 2013 12:00AM', 0, '912B Laval Crescent', null, 'Kamloops', 'BC', 'Canada', 'V2C 5P3', 'INACTIVE
DO NOT USE ANYMORE!!
', 0, 1, 23)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2826, 'Backyard Alberta', '780-455-3325', '780-483-3088', 'Apr 15 2009 12:00AM', 'Oct 11 2013 12:00AM', 0, '17418 106 A   Ave', null, 'Edmonton', 'AB', 'Canada', 'T5S 1E6', 'INACTIVE
Overland
Discount 20%', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2865, 'Aspen Ridge Landscaping', '780-689-9413', null, 'Jul 13 2009 12:00AM', 'Oct 11 2013 12:00AM', 0, 'P.O. Box 275', null, 'Boyle', 'AB', 'Canada', 'T0A 0M0', 'INACTIVE
Overland
Discount 20%', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3238, 'ATCO Communities', null, null, 'Jun  2 2016 12:00AM', 'Jun  2 2016 12:00AM', 0, null, null, 'Calgary', 'AB', 'Canada', null, 'Grant’s potential new customer', 0, 0, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2063, 'B & L Machine Shop', '250-492-2412', null, 'Jul  4 2000 12:00AM', 'Oct 11 2013 12:00AM', 0, '448 Dawson Street', null, 'Penticton', 'BC', 'Canada', 'V2A 3N7', 'INACTIVE
credit app on file
', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2762, 'Four Seasons Systems', '604-720-1253', null, 'Mar 17 2008 12:00AM', 'Oct 11 2013 12:00AM', 0, '8671 Dorval Rd.', null, 'Richmond', 'BC', 'Canada', 'V7C 3J3', 'INACTIVE
DO NOT USE THIS ONE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2869, 'Rio Vista Condos', '306-764-3485', '306-763-0553', 'Jul 15 2009 12:00AM', 'Oct 11 2013 12:00AM', 0, '1800 - 6th Ave. East', null, 'Prince Albert', 'SK', 'Canada', 's6v 5s8', 'INACTIVE

Kindersley Courier', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2989, 'Stuart Spahic', '780-904-0877', null, 'Mar 11 2011 12:00AM', 'Dec 18 2013 12:00AM', 0, '160 50050 range road 233', null, 'Leduc County', 'AB', 'Canada', 'T4X 0L2', 'INACTIVE - LAST ORDER SEP/12', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3263, 'Power Tech', '705-266-5861', null, 'May 15 2017 12:00AM', 'May 19 2017 12:00AM', 0, '100 Horseshoe Lake Rd.', null, 'Timmins', 'ON', 'Canada', 'P4R 0C6', 'New Customer
10% Discount
', 0, 1, 10)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1093, 'Wise Windows', '250-398-8583', '250-398-7983', 'Aug 18 1997 12:00AM', 'Aug  8 2017 12:00AM', 0, '12 North Broadway', null, 'Williams Lake', 'BC', 'Canada', 'V2G 1B9', 'INACTIVE 
quote sept 2012', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3138, 'VAN-KAM FREIGHTWAYS LTD', '604-299-7451', '604-299-9529', 'Sep 13 2012 12:00AM', 'Jan  4 2013 12:00AM', 0, '2355 MADISON AVENUE', null, 'BURNABY', 'BC', 'Canada', 'V5C 4Z3', 'ATTENTION RICK IN CLAIMS
', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3202, 'True Construction', '250-573-4631', '250-573-1173', 'Jun  9 2015 12:00AM', 'Jun 15 2017 12:00AM', 0, '3736 Shuswap Rd.', null, 'Kamloops', 'BC', 'Canada', 'V2H 1S6', 'Potential new customer - ', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3243, 'JBR Landscaping', '403-998-3840', null, 'Jul 22 2016 12:00AM', 'Dec  9 2016 12:00AM', 0, '984 Edgemont Rd. NW', null, 'Calgary', 'AB', 'Canada', 'T3A 2J3', 'Potential new customer -
', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1094, 'Prairie Sun Ventures', '403-381-6861', null, 'Aug 19 1997 12:00AM', 'Oct 25 2013 12:00AM', 0, '159 Mt. Crandell Cr', null, 'Lethbridge', 'AB', 'Canada', 't1k 6m8', 'INACTIVE

Group A Vinyl
', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2851, 'Cool Ventures Ltd.', '250-825-4655', '250-825-4633', 'May 27 2009 12:00AM', 'Oct 11 2013 12:00AM', 0, '5218 Kokanee Landing Rd.', null, 'Nelson', 'BC', 'Canada', 'V1L 6N6', 'INACTIVE
Ace
no discount', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2871, 'Crystal Glass', '250-423-4154', '250-423-9229', 'Jul 20 2009 12:00AM', 'Oct 11 2013 12:00AM', 0, 'PO Box 1617', null, 'Fernie ', 'BC', 'Canada', 'V0B 1m0', 'INACTIVE
DHL
No Discount', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3143, 'Airport Railings & Stairs', '905-677-1678', '905-667-8096', 'Oct 15 2012 12:00AM', 'Oct 25 2013 12:00AM', 0, '7679 Kimbel St,', null, 'Mississauga', 'ON', 'Canada', 'L5S 1A7', 'INACTIVE
4 Quote in 2012', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2840, 'Riverbend Developments Ltd.', '306-244-4487', '306-244-1299', 'May  7 2009 12:00AM', 'Oct 11 2013 12:00AM', 0, '247 5th Ave North', null, 'Saskatoon', 'SK', 'Canada', 's7K 2P2', 'INACTIVE
Vitran Courier', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1411, 'Creston Interiors', '250-428-4916', null, 'Jun 23 1998 12:00AM', 'Oct 25 2013 12:00AM', 0, 'Box 190', null, 'Creston', 'BC', 'Canada', 'V0B 1G0', 'INACTIVE
Group A Vinyl', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2692, 'K.M. Burgess Agencies Ltd.', '306-721-5700', '306-721-6100', 'Jun 28 2006 12:00AM', 'Oct 11 2013 12:00AM', 0, 'P.O. Box 841', null, 'Regina', 'SK', 'Canada', 's4p3b1', 'INACTIVE
QUOTE IN 2011', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2763, 'E.C. Siding 2000', '250-847-4224', '250-847-9852', 'Mar 17 2008 12:00AM', 'May 27 2014 12:00AM', 0, 'Box 2785', null, 'Smithers', 'BC', 'Canada', 'V0J 2N0', 'INACTIVE - DO NOT USE ', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3216, 'Epic Roofing', '403-366-3770', '403-366-3771', 'Oct 22 2015 12:00AM', 'Oct 22 2015 12:00AM', 0, '2943 19 St NE', null, 'Calgary', 'AB', 'Canada', 'T2E 7A2', 'Potential new customer', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3217, 'North Island Glass 2012 Ltd', '250-287-8396', '250-286-6568', 'Oct 27 2015 12:00AM', 'Jun 15 2017 12:00AM', 0, '1998 17th Ave.
', null, 'Campbell River', 'BC', 'Canada', 'V9W 4L9', 'Potential new customer', 0, 0, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3220, 'Temple Contracting', null, null, 'Nov  6 2015 12:00AM', 'Nov  6 2015 12:00AM', 0, null, null, 'Edmonton', 'AB', 'Canada', null, 'Potential New Customer', 0, 1, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3225, 'Carlisle Group', null, null, 'Jan 20 2016 12:00AM', 'Jan 20 2016 12:00AM', 0, null, null, 'St. Albert', 'AB', 'Canada', null, 'Potential New Customer', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3239, 'Marathon Eavestroughing', '250-964-2544', '250-964-8276', 'Jun  3 2016 12:00AM', 'Jun 15 2017 12:00AM', 0, 'Box 787', null, 'Prince George', 'BC', 'Canada', 'V2L 4T3', 'Potential new customer', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3246, 'CanPro Deck & Rail Ltd.', '403-320-9241', null, 'Nov 18 2016 12:00AM', 'Nov 25 2016 12:00AM', 0, '353 Stafford Dr. N', null, 'Lethbridge', 'AB', 'Canada', 'T1H 2A7', 'New Customer for Grant', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3247, 'Koelsch Construction', '360-943-5579', null, 'Nov 30 2016 12:00AM', 'Jun  2 2017 12:00AM', 0, '111 Market St. N.E. Ste #325', null, 'Olympia ', 'WA', 'United States', '98501', 'Potential New Customer', 1, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3249, 'FV Sundeck Solutions', '604-574-3004', null, 'Dec  8 2016 12:00AM', 'Dec  9 2016 12:00AM', 0, '2191 - 172 St.', null, 'Surrey', 'BC', 'Canada', 'V3S 9Z5', 'Potential new customer', 0, 0, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3252, 'Deck City', '204-272-0610', null, 'Feb 27 2017 12:00AM', 'May 12 2017 12:00AM', 0, '214 St. Mary’s Rd.', null, 'Winnipeg', 'MB', 'Canada', 'R2H 1J3', 'Potential New Customer', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3253, 'Wellington Designs', null, null, 'Mar  1 2017 12:00AM', 'Mar  2 2017 12:00AM', 0, null, null, 'Steinbach', 'MB', 'Canada', null, 'Potential new customer', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3256, 'RailPro Inc', '403-526-0342', null, 'Mar 23 2017 12:00AM', 'Mar 28 2017 12:00AM', 0, '#24 2nd Street NW', null, 'Redcliff', 'AB', 'Canada', 'T0J 2P0', 'Potential new customer', 0, 1, 15)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2780, 'Bill McGarry Construction', '250-517-9891', null, 'Jun 18 2008 12:00AM', 'Oct  9 2015 12:00AM', 0, '860 - 8th Ave. N.E.', null, 'Salmon Arm', 'BC', 'Canada', 'V1E 4A7', 'INACTIVE
Discount 20%', 0, 0, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2870, 'Timberline Properties', '250-668-5845', null, 'Jul 15 2009 12:00AM', 'Oct 11 2013 12:00AM', 0, '6668 Jenkins Road', null, 'Nanaimo', 'BC', 'Canada', 'v9t 6g8', 'INACTIVE

Ace Prepaid', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2816, 'Ridgewood Renovations', '250-381-8857', null, 'Feb 18 2009 12:00AM', 'Dec 18 2013 12:00AM', 0, '612 View St.', null, 'Victoria', 'BC', 'Canada', 'V8P 1T3', 'INACTIVE - NO ORDERS', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3188, 'Prodexs', '403-272-8236', null, 'Oct  7 2014 12:00AM', 'Jul 29 2015 12:00AM', 0, '370 5222-130th Ave. SE
Suite 211', null, 'Calgary', 'AB', 'Canada', 'T2H 3B8', 'New salesman for AB ', 0, 1, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1019, 'Endersby  Flooring', '250-428-0036', null, 'Jul  2 1997 12:00AM', 'Oct 17 2013 12:00AM', 0, 'Mod. 1, Comp. 7, 2433B Cedar St.', null, 'Creston', 'BC', 'Canada', 'vob 1g5', 'INACTIVE
Overland
', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2880, 'Capital City Carpets', '867-873-4560', '867-873-8211', 'Sep 29 2009 12:00AM', 'Dec 18 2013 12:00AM', 0, '#107, 349 Old Airport Rd.', null, 'Yellowknife', 'NWT', 'Canada', 'X1A 3X6', 'INACTIVE NO ORDERS', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2864, 'Caz-Tek Contracting Ltd.
', '780-907-2509', '780-453-3003', 'Jul 10 2009 12:00AM', 'Oct 11 2013 12:00AM', 0, '4450 Eleniak Rd.', null, 'Edmonton', 'AB', 'Canada', 'T6B 2S1', 'INACTIVE
Overland', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2868, 'Kula Services Ltd.', '780-909-7541', null, 'Jul 14 2009 12:00AM', 'Oct 23 2013 12:00AM', 0, '2307 - 42A Avenue', null, 'Edmonton', 'AB', 'Canada', 't6t 1m1', 'INACTIVE
Overland', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1640, 'Beaver Home Improvements Ltd.', '778-516-5779', '778-516-5667', 'Mar 11 1999 12:00AM', 'May  4 2015 12:00AM', 0, '9685 Agur Street', null, 'Summerland', 'BC', 'Canada', 'V0H 1Z2', '20% DISCOUNT', 0, 0, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1067, 'WK Contracting', '306-781-4342', null, 'Jul 28 1997 12:00AM', 'Oct 25 2013 12:00AM', 0, 'PO Box 318', null, 'Pilot Butte', 'SK', 'Canada', 's0g3z0', 'INACTIVE
', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1176, 'Imperial Contractors Ltd.', '403-347-7404', '403-886-5503', 'Oct 28 1997 12:00AM', 'Oct 25 2013 12:00AM', 0, 'P.O. Box 615', null, 'Penhold', 'AB', 'Canada', 't0m 1r0', 'INACTIVE
', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1185, '
', '250-248-1666', null, 'Oct 30 1997 12:00AM', 'Oct 25 2013 12:00AM', 0, 'Box 15', null, 'Honeymoon Bay', 'BC', 'Canada', 'v0r 1y0', 'INACTIVE
', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1008, 'Big 5 Exteriors', '403-291-3093', null, 'Jul  2 1997 12:00AM', 'Oct 17 2013 12:00AM', 0, '#5-4203-12th St. N.E.', null, 'Calgary', 'AB', 'Canada', 't2e 4p9', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1012, 'Castle Improvements


', '250-426-8481', '250-426-8481', 'Jul  2 1997 12:00AM', 'Oct 17 2013 12:00AM', 0, '2000 Highway 3 & 95', null, 'Cranbrook', 'BC', 'Canada', 'v1c 6x9', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1021, 'Nu-Vue Exteriors', '250-376-1632', '250-376-1633', 'Jul  2 1997 12:00AM', 'Oct 25 2013 12:00AM', 0, '1730 Fleetwood Ave ', null, 'Kamloops', 'BC', 'Canada', 'v2b 4r5', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1029, 'Westcan Building Products', '403-340-0990', null, 'Jul  2 1997 12:00AM', 'Dec 19 2013 12:00AM', 0, '#4-7419-50 Ave.', null, 'Red Deer', 'AB', 'Canada', 't4p 1m5', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1033, 'Four Seasons Vinyl Decking', '250-963-0099', '250-963-7650', 'Jul  2 1997 12:00AM', 'Oct 25 2013 12:00AM', 0, '13940 Giscome Rd.', null, 'Prince George', 'BC', 'Canada', 'V2N 6W6', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1038, 'Railmasters', '403-243-5180', '403-243-5180', 'Jul  3 1997 12:00AM', 'Oct 25 2013 12:00AM', 0, '4534 Manilla Road S.E.', null, 'Calgary', 'AB', 'Canada', 'T2G 4B7', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1042, 'Dynamic Floors', '250-489-2714', null, 'Jul  8 1997 12:00AM', 'Oct 25 2013 12:00AM', 0, '130 - 1525 Cranbrook St. N.', null, 'Cranbrook', 'BC', 'Canada', 'v1c 3p3', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1044, 'Decks and Decor
', '403-528-1408', null, 'Jul  8 1997 12:00AM', 'Oct 25 2013 12:00AM', 0, '265  6th St. SE', null, 'Medicine Hat', 'AB', 'Canada', 't1a 1g9', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1062, 'Valley Vinyl ', '250-549-3663', null, 'Jul 18 1997 12:00AM', 'Oct 25 2013 12:00AM', 0, '2606 Lakeshore Road', null, 'Vernon', 'BC', 'Canada', 'V1H 1N1', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1065, 'prodeck
', '403-240-1830', null, 'Jul 25 1997 12:00AM', 'Nov 19 2014 12:00AM', 0, '45 Warwick Drive', null, 'Calgary', 'AB', 'Canada', 't3c 2r5', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1071, 'Marathon Decking', '250-964-2544', '250-964-8276', 'Aug  1 1997 12:00AM', 'Oct 25 2013 12:00AM', 0, 'Box 787', null, 'Prince George', 'BC', 'Canada', 'v2l-4t3', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1090, 'Blue Knight Developments', '403-236-1039', '403-279-3146', 'Aug 15 1997 12:00AM', 'Oct 25 2013 12:00AM', 0, '85 Riverside Circle S.E.', null, 'Calgary', 'AB', 'Canada', 'T2C 3W5', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1092, 'Gino’s Construction', '250-567-8574', '250-567-4145', 'Aug 15 1997 12:00AM', 'Oct 25 2013 12:00AM', 0, 'Box  991', null, 'Vanderhoof', 'BC', 'Canada', 'v0j 3a0', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1123, 'Sundeck Centre
', '250-860-9044', '250-860-2884', 'Sep 12 1997 12:00AM', 'Oct 25 2013 12:00AM', 0, '1939 Kirschner Rd.', null, 'Kelowna', 'BC', 'Canada', 'V1Y 4N7', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1152, 'D.A. Pereira Contracting Ltd.', '250-497-8418', null, 'Oct  7 1997 12:00AM', 'Oct 25 2013 12:00AM', 0, 'Site 8 Comp 15 R.R. #1', null, 'Kaleden', 'BC', 'Canada', 'v0h 1k0', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1156, 'Duraguard Fence', '780-447-5465', null, 'Oct 16 1997 12:00AM', 'Oct 25 2013 12:00AM', 0, '10624 - 214 St.', null, 'Edmonton', 'AB', 'Canada', 't5s 2a5', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1168, ' All Kinds of Glass', '250-763-1600', '250-868-2847', 'Oct 27 1997 12:00AM', 'Oct 25 2013 12:00AM', 0, '137-1889 Springfield Rd', null, 'Kelowna', 'BC', 'Canada', 'V1X 2C1', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1182, 'RD Construction', '250-994-3411', null, 'Oct 29 1997 12:00AM', 'Oct 25 2013 12:00AM', 0, 'Box 33', null, 'Wells', 'BC', 'Canada', 'V0K 2R0', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1223, 'PCS Construction', '250-490-5591', '250-493-5685', 'Feb  3 1998 12:00AM', 'Oct 25 2013 12:00AM', 0, '3992 Finnerty Rd.', null, 'Penticton', 'BC', 'Canada', 'V2A 8W2', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1269, 'H & R Construction', null, '250-693-3502', 'Mar 23 1998 12:00AM', 'Oct 25 2013 12:00AM', 0, 'Box 235', null, 'Genelle,', 'BC', 'Canada', 'v0g 1g0', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1309, 'Len Spaurel', '250-492-3227', null, 'Apr 22 1998 12:00AM', 'Oct 25 2013 12:00AM', 0, null, null, 'Penticton', 'BC', 'Canada', 'v2a 8B3', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1315, 'Glen’s Vinyl Decking', '250-378-1548', null, 'Apr 24 1998 12:00AM', 'Oct 25 2013 12:00AM', 0, '1420 Fir Avenue', null, 'Merritt', 'BC', 'Canada', 'v1k 1L1', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1336, 'Stan Wood Construction', '250-338-4123', null, 'May 25 1998 12:00AM', 'Oct 25 2013 12:00AM', 0, '3573 Marriott Rd.', null, 'Courtenay', 'BC', 'Canada', 'v9n 9T8', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1350, 'Harco Gutters', '250-395-1831', null, 'May 27 1998 12:00AM', 'Oct 25 2013 12:00AM', 0, 'R.R.#1, C90 Young Rd', null, '100 Mile House', 'BC', 'Canada', 'v0k 2e0', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1408, 'P.C.S. Construction', null, null, 'Jun 22 1998 12:00AM', 'Oct 25 2013 12:00AM', 0, '3992 Finnerty Rd.', null, 'Penticton', 'BC', 'Canada', 'v2a 8w2', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1432, 'Unique Reproduction', '250-562-3279', null, 'Jul 10 1998 12:00AM', 'Oct 25 2013 12:00AM', 0, '3252 Christenson Road', null, 'Prince George', 'BC', 'Canada', 'v2n 1w3', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1526, 'Lloyd Construction', '250-392-7944', null, 'Sep 24 1998 12:00AM', 'Oct 25 2013 12:00AM', 0, 'Box 4802', null, 'Williams Lake', 'BC', 'Canada', 'V2G 2B8', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1559, 'Custom Window & Door', '250-832-3994', '250-832-9912', 'Oct 23 1998 12:00AM', 'Oct 25 2013 12:00AM', 0, '4620 - 40th Ave., S.E.
', null, 'Salmon Arm', 'BC', 'Canada', 'V1E 1X1', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1604, 'Bob’s Home Service', '250-304-8122', '250-304-8122', 'Dec  7 1998 12:00AM', 'Sep 12 2013 12:00AM', 0, '3013 - 5th Avenue', null, 'Castlegar', 'BC', 'Canada', 'V1N 2V3', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1612, 'A.L. Custom Covers', '250-751-1894', null, 'Jan 11 1999 12:00AM', 'Oct 25 2013 12:00AM', 0, '364 Sunrise Place', null, 'Nanaimo', 'BC', 'Canada', 'V9T 2S6', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1635, 'Dettling Electrical', '250-492-4500', '250-492-5208', 'Mar  8 1999 12:00AM', 'Oct 25 2013 12:00AM', 0, '242 Haynes Street', null, 'Penticton', 'BC', 'Canada', 'V2A 5R9', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1652, 'Wallace Construction Specialties', '306-653-2020', '306-665-2142', 'Mar 24 1999 12:00AM', 'Oct 25 2013 12:00AM', 0, '1940 Ontario Avenue', null, 'Saskatoon', 'SK', 'Canada', 'S7K 1t6', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1654, 'Redwood Developments Ltd.', '403-204-2190', '403-204-2193', 'Mar 25 1999 12:00AM', 'Oct 25 2013 12:00AM', 0, '3303 - 46th Avenue S.E.', null, 'Calgary', 'AB', 'Canada', 'T2B 3N5', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1728, 'Mastercraft Flooring', '250-748-9977', null, 'May 11 1999 12:00AM', 'Oct 25 2013 12:00AM', 0, '2727 James Street', null, 'Duncan', 'BC', 'Canada', 'V9L 2Y1', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1731, 'All About Decks', '250-722-2032', null, 'May 12 1999 12:00AM', 'Oct 25 2013 12:00AM', 0, '2175 Bluejay Way', null, 'Nanaimo', 'BC', 'Canada', 'V9X 1G4', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1772, 'Wade Thompson', '250-497-6667', null, 'Jun  1 1999 12:00AM', 'Oct 25 2013 12:00AM', 0, null, null, null, 'BC', 'Canada', null, 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1777, 'Lakeside Construction', '250-395-4289', null, 'Jun  1 1999 12:00AM', 'Dec 19 2013 12:00AM', 0, 'Box 2188', null, '100 Mile House', 'BC', 'Canada', 'V0K 2E0', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1806, 'Sunray Aluminum Railing', '250-755-3026', '250-755-3024', 'Jun 11 1999 12:00AM', 'Dec 19 2013 12:00AM', 0, '222 Fry Street', null, 'Nanaimo', 'BC', 'Canada', 'V9R 4Z1', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1809, 'Horizon Pacific Contr.', '250-380-4605', '250-380-5128', 'Jun 14 1999 12:00AM', 'Dec 19 2013 12:00AM', 0, '455 Gorge Rd East', null, 'Victoria', 'BC', 'Canada', 'V8T 2W1', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1932, 'K & S Aluminum & Ironworks', '250-754-9003', '250-754-9480', 'Sep 17 1999 12:00AM', 'Dec 19 2013 12:00AM', 0, '421 Kennedy Street', null, 'Nanaimo', 'BC', 'Canada', 'V9R 2J4', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1951, 'Lifetime Exteriors', '250-334-7889', '250-898-8187', 'Sep 29 1999 12:00AM', 'Dec 19 2013 12:00AM', 0, '3452 Sandpiper Drive', null, 'Courtenay', 'BC', 'Canada', 'V9N 9T9', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1999, 'BK Renovations', '250-562-0056', '250-562-0056', 'Mar 22 2000 12:00AM', 'Oct 11 2013 12:00AM', 0, '658 Johnson Street', null, 'Prince George', 'BC', 'Canada', 'V2M 2Z9', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2001, 'Hanson Decking', '250-352-1814', null, 'Mar 24 2000 12:00AM', 'Oct 11 2013 12:00AM', 0, '1655 Granite Road', null, 'Nelson', 'BC', 'Canada', 'V1L 6T7', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2013, 'Dek-rite Distributors', '204-334-5876', '204-755-2084', 'Apr 18 2000 12:00AM', 'Oct 11 2013 12:00AM', 0, 'P. O. Box 202', null, 'Garson', 'MB', 'Canada', 'R0E 0R0', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2026, 'Briarhill Construction Ltd.', '403-686-2203', '403-228-0366', 'May 12 2000 12:00AM', 'Oct 11 2013 12:00AM', 0, '15 Panorama Bay S.W.', null, 'Calgary', 'AB', 'Canada', 'T3Z 3L6', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2034, 'Hammerhead Construction', '250-923-3390', '250-923-3390', 'May 19 2000 12:00AM', 'Oct 11 2013 12:00AM', 0, '2276 Galerno Rd.', null, 'Campbell River', 'BC', 'Canada', 'V9H 8B6', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2038, 'High Country Weatherdek', '403-678-5437', '403-678-5437', 'May 24 2000 12:00AM', 'Oct 11 2013 12:00AM', 0, '248 - 3 Sisters Drive', null, 'Canmore', 'AB', 'Canada', 'T1W 2M7', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2075, 'The Floor Store of Prince Albert Ltd.', '306-922-3567', '306-764-1808', 'Jul 24 2000 12:00AM', 'Oct 11 2013 12:00AM', 0, '302 - 20th Street West', null, 'Prince Albert', 'SK', 'Canada', 'S6V 4G6', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2084, 'All Decked Out', '306-242-4440', null, 'Aug 14 2000 12:00AM', 'Oct 11 2013 12:00AM', 0, '217 Franklin St', null, 'Outlook ', 'SK', 'Canada', 'S7L 0T4', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2087, 'Aqua Deck', '604-792-8566', '604-792-8566', 'Aug 15 2000 12:00AM', 'Oct 11 2013 12:00AM', 0, '9409 McNaught Rd.', null, 'Chilliwack', 'BC', 'Canada', 'V2P 6E7', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2102, 'Your Home Shoppe', '250-334-9981', '250-334-9918', 'Sep 25 2000 12:00AM', 'Oct 11 2013 12:00AM', 0, '4 - 204 N. Island Highway', null, 'Courtenay', 'BC', 'Canada', 'V9N 3P1', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2110, 'Sawchuk Building', '902-665-4839', '902-665-2699', 'Oct  6 2000 12:00AM', 'Oct 11 2013 12:00AM', 0, '331 Clarence Rd. RR2', null, 'Bridgetown', 'NS', 'Canada', 'B0S1C0', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2117, 'Can Alta Bindery', '780-466-9973', '780-466-5914', 'Oct 31 2000 12:00AM', 'Oct 11 2013 12:00AM', 0, '8445 Davies Rd.', null, 'Edmonton', 'AB', 'Canada', 'T6E 4N3', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2118, 'Affordable Exteriors', '403-257-0129', null, 'Nov  2 2000 12:00AM', 'Oct 11 2013 12:00AM', 0, '92 McKerrell Close', null, 'Calgary', 'AB', 'Canada', 'T2Z 1N2', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2134, 'Winter Vinyl Decking', '780-465-6463', null, 'Jan 25 2001 12:00AM', 'Oct 11 2013 12:00AM', 0, '5206 - 17th Ave ', null, 'Edmonton', 'AB', 'Canada', 'T6L 1K6', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2166, 'Abco Waterproofing', '250-554-2156', null, 'May  8 2001 12:00AM', 'Oct 11 2013 12:00AM', 0, '2180 Ponderosa Avenue', null, 'Kamloops', 'BC', 'Canada', 'V2B 4V9', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2168, 'Vancouver Island Vinyl Sundecks', '250-727-6206', '250-727-6276', 'May 11 2001 12:00AM', 'Oct 11 2013 12:00AM', 0, '4042 Metchosin Road', null, 'Victoria', 'BC', 'Canada', 'V9P 4A4', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2179, 'Final Touch Exteriors', '403-255-8130', '403-271-4156', 'May 31 2001 12:00AM', 'Oct 11 2013 12:00AM', 0, '450, Lake Simcoe Cres. S.E.', null, 'Calgary', 'AB', 'Canada', 'T2J 5L4', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2216, 'Woodland Construction Ltd.', '250-365-8359', null, 'Sep  5 2001 12:00AM', 'Oct 11 2013 12:00AM', 0, 'P.O. Box 3037', null, 'Castlegar', 'BC', 'Canada', null, 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2227, 'Boncor Building Products', '519-253-3833', '519-253-0323', 'Sep 26 2001 12:00AM', 'Oct 11 2013 12:00AM', 0, '649 Wilton Grove Rd.', null, 'London ', 'ON', 'Canada', 'n6n 1N7', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2247, 'Rely-on', '780-623-7917', '780-623-7917', 'Dec 21 2001 12:00AM', 'Oct 11 2013 12:00AM', 0, 'Box 921', null, 'Lac La Biche', 'AB', 'Canada', 'T0A 2C0', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2249, 'Windsor Plywood', '250-492-8646', '250-492-0271', 'Feb  4 2002 12:00AM', 'Oct 11 2013 12:00AM', 0, '174 Industrial Place', null, 'Penticton', 'BC', 'Canada', 'V2A 7C8', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2254, 'Select Sunrooms Ltd.', '403-262-2999', '403-262-4336', 'Mar 28 2002 12:00AM', 'Oct 11 2013 12:00AM', 0, '2806 Ogden Rd. S.E.
', null, 'Calgary', 'AB', 'Canada', 'T2G 4R7', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2256, 'Camcour Vinyl Deck & Rail ', '250-923-1388', '250-923-1388', 'Apr  2 2002 12:00AM', 'Oct 11 2013 12:00AM', 0, 'Box 39 Station A', null, 'Campbell River', 'BC', 'Canada', 'v9w 4z9', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2268, 'All Island Renovations', '250-882-5032', null, 'May 15 2002 12:00AM', 'Oct 11 2013 12:00AM', 0, '457 Walter Ave', null, 'Saanich', 'BC', 'Canada', 'V9A 2E6', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2269, 'Floorright Interiors Ltd.', '403-329-1780', null, 'May 15 2002 12:00AM', 'Oct 11 2013 12:00AM', 0, '2915 - 32 St. South', null, 'Lethbridge', 'AB', 'Canada', 'T1K 7B1', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2275, 'United Vinyl Sundecks', '604-351-6070', '604-942-5340', 'May 30 2002 12:00AM', 'Oct 11 2013 12:00AM', 0, '2421 Glenwood Ave.', null, 'Port Coquitlam', 'BC', 'Canada', 'V3B 1Y7', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2278, 'Vancouver Island Sundeck Centre', '250-748-1418', '250-748-1472', 'Jun  4 2002 12:00AM', 'Oct 11 2013 12:00AM', 0, '2853 Roberts Rd. ', null, 'Duncan', 'BC', 'Canada', 'V9L 6W3', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2281, 'Valley Metalwork Designs', '250-492-2773', '250-492-2701', 'Jun 12 2002 12:00AM', 'Oct 11 2013 12:00AM', 0, '277 Rosetown Ave.', null, 'Penticton', 'BC', 'Canada', 'V2A 3G3', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2291, 'Evans Enterprises', '250-656-4529', null, 'Jul  4 2002 12:00AM', 'Oct 11 2013 12:00AM', 0, '1746 Forest Park Drive', null, 'Sidney', 'BC', 'Canada', 'V8L 3Z8', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2299, 'Mr.Vinyl Deck Inc. ', '250-727-8338', '250-478-5845', 'Aug  2 2002 12:00AM', 'Oct 11 2013 12:00AM', 0, '888 Cavelcade Terrace ', null, 'Langford', 'BC', 'Canada', 'V9B 6W5', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2306, 'Enerheat Renovations', '250-382-1224', '250-592-1377', 'Sep  6 2002 12:00AM', 'Oct 11 2013 12:00AM', 0, '2044 Lorne Terrace', null, 'Victoria', 'BC', 'Canada', 'V8S 2H8', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2308, 'Renew Building Products
', '250-391-4071', '250-590-9001', 'Sep  9 2002 12:00AM', 'Oct 11 2013 12:00AM', 0, '3059 Glen Lake Rd.', null, 'Victoria', 'BC', 'Canada', 'v9b 4B4', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2310, 'Urban Castle Homes Ltd.', '403-617-1068', '403-284-3096', 'Sep  9 2002 12:00AM', 'Oct 11 2013 12:00AM', 0, '5228 - 33rd St. N.W.', null, 'Calgary', 'AB', 'Canada', 'T2L 1V4', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2323, 'Dennis Chevallier', '403-844-4775', null, 'Sep 27 2002 12:00AM', 'Oct 11 2013 12:00AM', 0, '5315 - 54th St.', null, 'Rocky Mountain House', 'AB', 'Canada', 'T4T 1H1', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2328, 'Pross Renovations', '250-472-6436', '250-472-6436', 'Oct  2 2002 12:00AM', 'Oct 11 2013 12:00AM', 0, '1835 Merida Pl.', null, 'Victoria', 'BC', 'Canada', 'v8N 5E1', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2381, 'Castle Decks', '250-724-4333', '250-724-4339', 'Apr  4 2003 12:00AM', 'Oct 11 2013 12:00AM', 0, '6251 Walker Rd.', null, 'Port Alberni', 'BC', 'Canada', 'v9y 8w7', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2387, 'Frank’s Total Deck', '604-853-6964', '604-853-6976', 'Apr 22 2003 12:00AM', 'Oct 11 2013 12:00AM', 0, '1645 Gladwin Rd.', null, 'Abbotsford', 'BC', 'Canada', 'V2T 5Y5', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2391, 'Grey Wolf Deck & Railing Ltd.', null, '780-986-0296', 'Apr 30 2003 12:00AM', 'Oct 11 2013 12:00AM', 0, '4321 47th St.', null, 'Leduc', 'AB', 'Canada', 'T9E 5Z6', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2395, 'Cavro Contracting Ltd.', '403-630-7316', null, 'May  2 2003 12:00AM', 'Oct 11 2013 12:00AM', 0, '73 Valley Woods Landing N.W.', null, 'Calgary', 'AB', 'Canada', 'T3B 6A3', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2397, 'Humbolt Lumber  Mart Ltd.', '306-682-2527', '306-682-5552', 'May  5 2003 12:00AM', 'Oct 11 2013 12:00AM', 0, 'P.O. Box 1690  Hwy 20 S.', null, 'Humbolt', 'SK', 'Canada', 'S0K 2A0', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2413, 'Sunrise Developments', '403-245-5573', '403-274-9722', 'Jun 13 2003 12:00AM', 'Oct 11 2013 12:00AM', 0, '1515 Rouleau Cres. S.E.', null, 'Calgary ', 'AB', 'Canada', 'T2A 1Y8', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2414, 'MJD Glass Installations', '604-792-7718', '604-792-7017', 'Jun 16 2003 12:00AM', 'Oct 11 2013 12:00AM', 0, '45787 Yale Road', null, 'Chilliwack', 'BC', 'Canada', 'V2P 2N5', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2434, 'Ostash Exteriors Ltd.', '250-426-7146', null, 'Jul 30 2003 12:00AM', 'Oct 11 2013 12:00AM', 0, '1200 Cobham Ave W.', null, 'Cranbrook', 'BC', 'Canada', 'V1C 6T3', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2435, 'Island Deckmaster #1', '250-883-9777', '250-477-9877', 'Jul 30 2003 12:00AM', 'Oct 11 2013 12:00AM', 0, '5360 Old West Saanich Rd.', null, 'Victoria', 'BC', 'Canada', 'V8p 3S1', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2437, 'Westshore Vinyl Inc.', '250-478-8662', '250-642-1422', 'Aug  8 2003 12:00AM', 'Oct 11 2013 12:00AM', 0, '2630 Sunderland Rd.', null, 'Victoria', 'BC', 'Canada', 'V9B 3W3', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2439, 'Pacific Rim Sundecks', '604-985-6211', '604-985-6212', 'Aug 25 2003 12:00AM', 'Oct 11 2013 12:00AM', 0, '1550 Richmond St.', null, 'North Vancouver', 'BC', 'Canada', 'V7J 1B2', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2440, 'Sure Glass Ltd.', '403-627-4737', '403-627-4775', 'Aug 29 2003 12:00AM', 'Oct 11 2013 12:00AM', 0, 'P.O. Box 1945', null, 'Pincher Creek', 'AB', 'Canada', 'T0K 1W0', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2489, 'Mac Signs', '250-392-4902', '250-392-4036', 'May  7 2004 12:00AM', 'Oct 11 2013 12:00AM', 0, '89 MacKenzie Ave South', null, 'Williams Lake', 'BC', 'Canada', 'v2g 1c4', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2492, 'Home Completions Inc.', '403-663-4663', '403-663-2144', 'May 10 2004 12:00AM', 'Oct 11 2013 12:00AM', 0, '161 Wentworth  Ct. S.W.', null, 'Calgary', 'AB', 'Canada', 'T3H 5B3', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2499, 'Canex Building Supplies', '604-858-8188', null, 'May 13 2004 12:00AM', 'Oct 11 2013 12:00AM', 0, '46070 Knight Rd.', null, 'Chilliwack', 'BC', 'Canada', 'V2R 1B7', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2503, 'Woodland Design', '250-495-6842', '250-495-3407', 'May 25 2004 12:00AM', 'Oct 11 2013 12:00AM', 0, '11611 - 115th Street', null, 'Osoyoos', 'BC', 'Canada', 'V0H 1V5', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2511, 'Sutton Contracting', '250-495-3567', null, 'Jun  9 2004 12:00AM', 'Oct 11 2013 12:00AM', 0, '21001 Kruger Mtn. Rd.', null, 'Osoyoos', 'BC', 'Canada', 'v0h 1v5', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2533, 'Floorcrafters', '519-599-6417', null, 'Jul 16 2004 12:00AM', 'Oct 11 2013 12:00AM', 0, 'P.O. Box 159', null, 'Thornbury', 'ON', 'Canada', 'N0P 2P0', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2537, 'McNally Bros.', '250-835-4410', null, 'Jul 28 2004 12:00AM', 'Oct 11 2013 12:00AM', 0, 'Site 14 c-5 RRI', null, 'Sorrento', 'BC', 'Canada', 'v0e 2w0', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2557, 'Rocky Mountain Sundeck', '403-609-9461', '403-609-9451', 'Sep 20 2004 12:00AM', 'Oct 11 2013 12:00AM', 0, '#109, 170 Crossbow Place', null, 'Canmore', 'AB', 'Canada', 'T1W 3H4', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2562, 'M.D. Interiors', '403-782-4812', '403-782-0611', 'Sep 30 2004 12:00AM', 'Oct 11 2013 12:00AM', 0, 'RR1, Site 4 Box 10', null, 'Lacombe', 'AB', 'Canada', 'T4L 2N1', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2567, 'Watertec Solutions Inc', '604-541-1600', '604-882-0864', 'Oct 14 2004 12:00AM', 'Oct 11 2013 12:00AM', 0, '9337, 211 St.', null, 'Langley', 'BC', 'Canada', 'v1m 2B3', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2580, 'Ediger CP (1999) Ltd.', '604-859-2159', '604-859-2139', 'Nov 22 2004 12:00AM', 'Oct 11 2013 12:00AM', 0, 'Unit B 30550  Great Northern Ave', null, 'Abbotsford', 'BC', 'Canada', 'V2T 6H4', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2589, 'Intercoast Construction Ltd.', '250-562-4622', '250-562-2364', 'Feb  2 2005 12:00AM', 'Oct 11 2013 12:00AM', 0, '229 Onman Rd.', null, 'Prince George', 'BC', 'Canada', 'V2K 4K9', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2602, 'Sorrento Glass Ltd.', '250-675-2834', '250-675-2895', 'Mar 31 2005 12:00AM', 'Oct 11 2013 12:00AM', 0, 'P.O Box 69', null, 'Sorrento', 'BC', 'Canada', 'V0E 2W0', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2609, 'Sundeck Solutions', '403-231-3325', '403-640-9905', 'Apr 18 2005 12:00AM', 'Oct 11 2013 12:00AM', 0, 'P.O. Box 1476 Station T', null, 'Calgary', 'AB', 'Canada', 'T2H 2H7', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2655, 'Nanaimo Sundeck Solutions Ltd.', '250-751-4658', '250-741-0006', 'Aug 18 2005 12:00AM', 'Oct 11 2013 12:00AM', 0, '414 - 8th Street', null, 'Nanaimo', 'BC', 'Canada', 'V9R 1B2', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2670, 'Calgary Weatherdeck', '403-540-4729', '403-287-0044', 'Oct 25 2005 12:00AM', 'Oct 11 2013 12:00AM', 0, 'P.O. Box 61276, RPO Brentwood', null, 'Calgary ', 'AB', 'Canada', 't2L 2K6', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2679, 'Galko Homes', '403-329-3221', '403-329-4994', 'Feb  7 2006 12:00AM', 'Oct 11 2013 12:00AM', 0, 'P.O. Box 223', null, 'Lethbridge ', 'AB', 'Canada', 't1j 3y5', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2681, 'Challenger Building Supplies Ltd.', '403-327-8501', '403-329-1066', 'Mar 20 2006 12:00AM', 'Oct 11 2013 12:00AM', 0, '3304 - 8th Ave. North', null, 'Lethbridge', 'AB', 'Canada', 'T1H 5C9', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2684, 'Home Rail Ltd.', '403-202-5493', '403-241-3594', 'Apr  7 2006 12:00AM', 'Oct 11 2013 12:00AM', 0, '#9-820 28 St NE', null, 'Calgary', 'AB', 'Canada', 'T2A 6K1', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2689, 'Taylor Made Vinyl', '403-999-5102', '403-241-6689', 'May 18 2006 12:00AM', 'Oct 11 2013 12:00AM', 0, '300 Tuscany Ridge Heights NW', null, 'Calgary', 'AB', 'Canada', 't3l3b6', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2693, 'Superior Deck & Rail', '204-999-8688', '204-269-7690', 'Jul  5 2006 12:00AM', 'Oct 11 2013 12:00AM', 0, '199 Houde Drive', null, 'St. Norbert', 'MB', 'Canada', 'r3v 1c6', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2700, 'Rimcher Investments Ltd.', '250-788-1764', '250-837-4095', 'Aug 18 2006 12:00AM', 'Oct 11 2013 12:00AM', 0, 'Box 429', null, 'Revelstoke', 'BC', 'Canada', 'V0E 2S0', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2701, 'Caldeck', null, null, 'Aug 21 2006 12:00AM', 'Oct 11 2013 12:00AM', 0, '#1- 4709 14th N.E.', null, 'Calgary', 'AB', 'Canada', 't2e 6s4', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2707, 'Columbia Valley  Glass', '250-342-6300', '250-342-6302', 'Sep 22 2006 12:00AM', 'Oct 11 2013 12:00AM', 0, 'Box 2011', null, 'Invermere', 'BC', 'Canada', 'V0A 1K0', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2711, 'Fibredecks', '780-435-3300', '780-436-3864', 'Dec  6 2006 12:00AM', 'Oct 11 2013 12:00AM', 0, '11129-23b Ave', null, 'Edmonton', 'AB', 'Canada', 'T6J 4P3', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2714, 'Accent Carpet and Decor', null, null, 'Feb 28 2007 12:00AM', 'Oct 11 2013 12:00AM', 0, '#7 38921 Progress Way', null, 'Squamish', 'BC', 'Canada', 'V8B 0K6', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2715, 'Alberni Vinyl Deck', '250-724-5985', null, 'Feb 28 2007 12:00AM', 'Oct 11 2013 12:00AM', 0, '3681 China Creek Rd.', null, 'O\Port Albernie', 'BC', 'Canada', 'V9Y 1S3', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2718, 'Prestige Deck & Railing Systems', '705-741-1200', '705-741-3098', 'Mar  1 2007 12:00AM', 'Oct 11 2013 12:00AM', 0, '765 The Kingsway ', null, 'Peterborough', 'ON', 'Canada', 'K9J 6W7', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2723, 'Craftwell Sundecks', '604-886-4066', '604-530-6603', 'Apr 11 2007 12:00AM', 'Oct 11 2013 12:00AM', 0, '2518 - 206th Street', null, 'Langley', 'BC', 'Canada', 'v2z 2b5', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2725, 'Ian Thorsteinson', '250-727-9393', null, 'May  8 2007 12:00AM', 'Oct 11 2013 12:00AM', 0, '4070 Graville Road', null, 'Victoria', 'BC', 'Canada', 'V9E 2E1', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2727, 'Gracia Renovation', '604-779-2551', null, 'May  9 2007 12:00AM', 'Oct 11 2013 12:00AM', 0, '108 - 16255 - 85th Ave.', null, 'Surrey', 'BC', 'Canada', null, 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2728, 'Cunningham Construction', '250-263-4240', null, 'May 10 2007 12:00AM', 'Oct 11 2013 12:00AM', 0, 'P.O. Box 158 S12 STN Main', null, 'Fort St. John', 'BC', 'Canada', 'V1J 4M7', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2734, 'A.N.W. Construction Ltd.', '403-304-2100', '403-346-8411', 'Jun 14 2007 12:00AM', 'Oct 11 2013 12:00AM', 0, '#17, 39026 Range Rd.', null, 'Red Deer', 'AB', 'Canada', 'T4S 2A9', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2735, 'Island Deckmaster #2', '250-883-9701', null, 'Jun 20 2007 12:00AM', 'Oct 11 2013 12:00AM', 0, '1322 Prillaman Ave', null, 'Victoria', 'BC', 'Canada', 'V9E 2C6', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2736, 'Tamitik Industries Ltd.', '780-721-6500', '780-980-9232', 'Jun 29 2007 12:00AM', 'Oct 11 2013 12:00AM', 0, 'R.R.#2, Site 213, Box 2', null, 'New Sarepta', 'AB', 'Canada', 't0b 3m0', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2742, 'Alberta Vinyl Decking', '780-708-3456', '780-293-9326', 'Aug 14 2007 12:00AM', 'Oct 11 2013 12:00AM', 0, '246 Everridge Drive S.W.', null, 'Calgary', 'AB', 'Canada', 'T2Y 5H3', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2743, 'Mandra Contracting', '780-934-2739', null, 'Aug 14 2007 12:00AM', 'Oct 11 2013 12:00AM', 0, '11839 - 67th Street', null, 'Edmonton', 'AB', 'Canada', 't5b 1l9', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2744, 'Sure Shine', '403-635-3474', null, 'Aug 21 2007 12:00AM', 'Oct 11 2013 12:00AM', 0, 'Box 922', null, 'Cardston', 'AB', 'Canada', 't0k 0k0', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2747, 'Triple A Vinyl Decking Ltd.', '780-695-2917', '780-463-8121', 'Aug 29 2007 12:00AM', 'Oct 11 2013 12:00AM', 0, '8512 - 8th Ave. S.W.', null, 'Edmonton', 'AB', 'Canada', null, 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2749, 'Whiting Roofing & Construction', '406-442-9219', null, 'Sep 12 2007 12:00AM', 'Oct 11 2013 12:00AM', 0, '#2 Mule Trail ', null, 'Clancy', 'MN', 'United States', '59634', 'INACTIVE', 1, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2753, 'Aztec Ltd.', '403-607-1840', null, 'Nov 22 2007 12:00AM', 'Oct 11 2013 12:00AM', 0, '4412 - 17th Ave. N.W.', null, 'Calgary', 'AB', 'Canada', 't3b 0n8', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2755, 'T&K Enterprises', '250-756-4472', null, 'Jan 30 2008 12:00AM', 'Oct 11 2013 12:00AM', 0, '5379 Kenwill Dr.', null, 'Nanaimo', 'BC', 'Canada', 'V9T 5Z9', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2757, 'Valley Tech Ltd.', '403-504-5006', '403-504-5338', 'Feb 11 2008 12:00AM', 'Oct 11 2013 12:00AM', 0, '20 River Ridge Crt. N.W.', null, 'Medicine Hat', 'AB', 'Canada', 'T1A 8V4', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2758, 'Vancouver Sundecks Inc.', '604-723-3325', '604-322-3325', 'Feb 21 2008 12:00AM', 'Oct 11 2013 12:00AM', 0, '#108, 1001 West Broadway', null, 'Vancouver', 'BC', 'Canada', 'V6H 4E4', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2760, 'S & S Decking Ltd.', '780-994-6068', '780-432-0878', 'Mar  3 2008 12:00AM', 'Oct 11 2013 12:00AM', 0, '7515 - 104th Street', null, 'Edmonton', 'AB', 'Canada', 'T6E 4C1', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2761, 'Four Seasons Systems', '604-720-1253', null, 'Mar 14 2008 12:00AM', 'Oct 11 2013 12:00AM', 0, '8671 Dorval Rd.', null, 'Richmond', 'BC', 'Canada', 'V7C 3J3', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2766, 'Affiliated Roofers', '604-942-7738', '604-942-7738', 'Apr  8 2008 12:00AM', 'Oct 11 2013 12:00AM', 0, '#112A - 81 Golden Drive', null, 'Coquitlam', 'BC', 'Canada', 'V3K 6R2', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2767, 'Qlty Built Decks', '780-720-4063', null, 'Apr 21 2008 12:00AM', 'Oct 11 2013 12:00AM', 0, '12803 - 158th Avenue', null, 'Edmonton', 'AB', 'Canada', 'T6B 1A1', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2770, 'Dalron Home Leisure', '250-338-1330', '250-338-4846', 'May  7 2008 12:00AM', 'Oct 11 2013 12:00AM', 0, '2703A Kilpatrick Ave.', null, 'Courtenay', 'BC', 'Canada', 'v9n 6p4', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2772, 'Cariboo Vinyl Decking', '250-395-1301', null, 'May 14 2008 12:00AM', 'Oct 11 2013 12:00AM', 0, '6082 Norman Road', null, '100 Mile House', 'BC', 'Canada', 'v0k 2e3', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2773, 'J.B. Flortec Ltd.', '780-832-2089', '780-539-0912', 'May 15 2008 12:00AM', 'Oct 11 2013 12:00AM', 0, '1011, 9899 - 12th Ave. #3', null, 'Grande Prairie', 'AB', 'Canada', 't8v 7t2', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2775, 'Wilson & Sherritt Co.', '206-240-5266', null, 'May 29 2008 12:00AM', 'Oct 11 2013 12:00AM', 0, '3320 - 227th Street Court E.', null, 'Spanaway', 'WA', 'United States', '98387', 'INACTIVE', 1, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2776, 'Glen’s Vinyl Decking & Carpentry', '780-718-4779', null, 'Jun  3 2008 12:00AM', 'Oct 11 2013 12:00AM', 0, '108 Westridge Crescent', null, 'Spruce Grove', 'AB', 'Canada', 'T7X 1R6', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2777, 'Desert Valley Decking', '250-574-2224', null, 'Jun  3 2008 12:00AM', 'Oct 11 2013 12:00AM', 0, 'Box 37', null, 'Heffley Creek', 'BC', 'Canada', 'V0E 1Z0', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2778, 'Modern Windows', '250-334-2599', '250-334-8644', 'Jun 11 2008 12:00AM', 'Oct 11 2013 12:00AM', 0, '432 Puntledge Rd.', null, 'Courtenay', 'BC', 'Canada', 'V9N 3R1', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2782, 'Four Star Decking', '250-885-4229', null, 'Jun 24 2008 12:00AM', 'Oct 11 2013 12:00AM', 0, '#41, 848 Hockley Place', null, 'Victoria', 'BC', 'Canada', 'V9C 3S2', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2787, 'Summer Vinyl', '250-686-3042', null, 'Jul 21 2008 12:00AM', 'Oct 11 2013 12:00AM', 0, '254 Tolcross Avenue', null, 'Victoria', 'BC', 'Canada', 'V8Z 1C9', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2798, '663985 Alberta Ltd.', '403-240-9256', null, 'Sep 26 2008 12:00AM', 'Oct 11 2013 12:00AM', 0, '107 Schiller Place NW', null, 'Calgary', 'AB', 'Canada', 'T3L 1W8', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2799, 'Genco Engineering', '204-325-9575', '204-331-9302', 'Sep 29 2008 12:00AM', 'Oct 11 2013 12:00AM', 0, '200, 570 Centennial Street', null, 'Winkler', 'MB', 'Canada', 'R6W 1J4', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2801, 'Seymour Pacific Developments', '250-850-3229', '250-286-8047', 'Oct 16 2008 12:00AM', 'Oct 11 2013 12:00AM', 0, '920 Alder Street', null, 'Campbell River', 'BC', 'Canada', 'V9W 2P8', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2804, 'Silvernail Homes', '509-560-0936', null, 'Oct 23 2008 12:00AM', 'Oct 11 2013 12:00AM', 0, 'P.O. Box 1959, 74 Boundary Point Lane,     ', null, 'Oroville', 'WA', 'United States', '98844', 'INACTIVE', 1, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2813, 'Sundecks Unlimited', '604-463-3838', '604-463-8111', 'Dec  3 2008 12:00AM', 'Oct 11 2013 12:00AM', 0, '20780 River Road', null, 'Maple Ridge', 'BC', 'Canada', 'v2x 1z7', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2815, 'Super Seamless Of Canada', null, null, 'Dec 18 2008 12:00AM', 'Oct 11 2013 12:00AM', 0, ' 560 Henderson Drive', null, 'Regina', 'SK', 'Canada', 'S4N 5X2', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2819, 'Caldek Sundeck Systems', '403-250-9573', '403-250-3827', 'Feb 27 2009 12:00AM', 'Oct 11 2013 12:00AM', 0, 'Bay #1 4709 14th St. NE', null, 'Calgary', 'AB', 'Canada', 't2e 6s4', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2825, 'Hydro Clean', '403-382-0380', '403-553-0035', 'Apr 13 2009 12:00AM', 'Oct 11 2013 12:00AM', 0, 'P.O. Box 2321', null, 'Fort MacLeod', 'AB', 'Canada', 'T0L 0Z0', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2837, 'Lea’s Contracting', '250-720-6739', null, 'May  4 2009 12:00AM', 'Oct 11 2013 12:00AM', 0, '4693 Latham Road', null, 'Port Alberni', 'BC', 'Canada', 'V9Y 5S7', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2839, 'The Deck Depot', '780-995-1500', '780-418-1740', 'May  6 2009 12:00AM', 'Oct 11 2013 12:00AM', 0, '21 Sheridan Drive', null, 'St. Albert', 'AB', 'Canada', 't8n 0J1', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2841, 'George Jacobs Contracting', '250-785-5769', null, 'May 12 2009 12:00AM', 'Oct 11 2013 12:00AM', 0, '8205 - 89th Avenue', null, 'Fort St. John', 'BC', 'Canada', 'v1j 6e7', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2845, 'East Kootenay Insulation', '250-426-8700', '250-426-3600', 'May 14 2009 12:00AM', 'Oct 11 2013 12:00AM', 0, '125 - 10th Street S.', null, 'Cranbrook', 'BC', 'Canada', 'v1c 4p5', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2848, 'A Perfect View', '250-836-6664', '250-836-6661', 'May 25 2009 12:00AM', 'Oct 11 2013 12:00AM', 0, '1305 Rauma Ave.', null, 'Sicamous', 'BC', 'Canada', 'VoE 2v4', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2852, 'The Carpet Studio', '780-452-4044', '780-452-1716', 'May 29 2009 12:00AM', 'Oct 11 2013 12:00AM', 0, '15620 - 111th Avenue N.W.', null, 'Edmonton', 'AB', 'Canada', 'T5M 2R7', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2858, 'Done Right Roofing', '403-651-0214', '403-267-4580', 'Jun 16 2009 12:00AM', 'Oct 11 2013 12:00AM', 0, '#301-132-250 Shawville Blvd S.E.', null, 'Calgary', 'AB', 'Canada', 'T2Y 2Z7', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2860, 'Stonepine Development Grp. Ltd.', '780-624-1939', '780-624-1931', 'Jun 22 2009 12:00AM', 'Oct 11 2013 12:00AM', 0, 'P.O. Box 5281', null, 'Peace River', 'AB', 'Canada', 't8s 1r9', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2881, 'Tuscan Terrace', '250-404-0196', '250-404-0265', 'Oct 13 2009 12:00AM', 'Oct 11 2013 12:00AM', 0, 'Box 960', null, 'Summerland', 'BC', 'Canada', 'V0H 1Z0', 'INACTIVE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3060, 'Canadian Freightways- Shipment Care Centre', '403-287-4352', '403-287-4324', 'Aug 17 2011 12:00AM', 'Apr  9 2012 12:00AM', 0, 'PO Box #1108 Station T', null, 'Calgary South', 'AB', 'Canada', 'T2H 2J1', 'INACTIVE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3236, 'INTERTEK', '604-520-3321', null, 'May  4 2016 12:00AM', 'May  4 2016 12:00AM', 0, '1500 Brigatine Dr.', null, 'Coquitlam', 'BC', 'Canada', 'V3K 7C1', 'Testing ', 1, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1616, 'Action Steel', '250-492-7822', null, 'Jan 25 1999 12:00AM', 'Oct 25 2013 12:00AM', 0, '2365 Barnes Street', null, 'Penticton', 'BC', 'Canada', 'V2A 7K6', null, 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2814, 'Apel Extrusions', '403-720-1132', null, 'Dec 10 2008 12:00AM', 'Aug 26 2011 12:00AM', 0, '7929 30th St.', null, 'Calgary', 'AB', 'Canada', 'T2C1H7', null, 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2876, 'Falcon Powder Coating', '250-765-7277', null, 'Aug  4 2009 12:00AM', 'Nov  9 2016 12:00AM', 0, '747 Fitzpatrick Street', null, 'Kelowna', 'BC', 'Canada', 'V1X 5E2', null, 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2979, 'Select Decking & Maintenance', '780-460-8535', '780-460-7087', 'Dec  6 2010 12:00AM', 'Jun 15 2017 12:00AM', 0, '31D Rowland Crescent', null, 'St.Albert', 'AB', 'Canada', 't8n 4b2', null, 0, 1, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2985, 'Samples', null, null, 'Jan 27 2011 12:00AM', 'Nov 25 2015 12:00AM', 0, null, null, null, 'BC', 'Canada', null, null, 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2987, 'Home Show Displays', null, null, 'Feb 10 2011 12:00AM', 'Aug 26 2011 12:00AM', 0, null, null, null, 'BC', 'Canada', null, null, 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3145, 'Gizmo Tooling', null, null, 'Feb 26 2013 12:00AM', 'Feb 26 2013 12:00AM', 0, null, null, 'Summerland', 'BC', 'Canada', null, null, 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2898, 'Gentek Bldg Products ', '403-640-0906', '403-640-0826', 'Mar  2 2010 12:00AM', 'Aug 26 2011 12:00AM', 0, '120 MCLEVIN AVE ', null, 'SCARBOROUGH', 'ON', 'Canada', 'M1B 3E9', null, 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2899, 'Gentek Bldg Products', '780-465-5246', '780-465-2797', 'Mar  2 2010 12:00AM', 'Aug 26 2011 12:00AM', 0, '120 MCLEVIN AVE ', null, 'SCARBOROUGH', 'ON', 'Canada', 'M1B 3E9', null, 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2900, 'Gentek Bldg Products ', '403-343-7275', '403-207-4029', 'Mar  2 2010 12:00AM', 'Aug 26 2011 12:00AM', 0, '120 MCLEVIN AVE ', null, 'SCARBOROUGH', 'ON', 'Canada', 'M1B 3E9', null, 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2903, 'Gentek Bldg Products ', '204-633-8427', '204-694-0588', 'Mar  2 2010 12:00AM', 'Aug  3 2012 12:00AM', 0, '120 MCLEVIN AVE ', null, 'SCARBOROUGH', 'ON', 'Canada', 'M1B 3E9', null, 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2904, 'Gentek Bldg Products Head Office', '604-538-9366', '604-535-5696', 'Mar  2 2010 12:00AM', 'Aug 26 2011 12:00AM', 0, '120 MCLEVIN AVE ', null, 'SCARBOROUGH', 'ON', 'Canada', 'M1B 3E9', null, 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2905, 'Gentek Bldg Products Port Coquitlam', null, null, 'Mar  2 2010 12:00AM', 'Aug 26 2011 12:00AM', 0, '120 MCLEVIN AVE ', null, 'SCARBOROUGH', 'ON', 'Canada', 'M1B 3E9', null, 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2906, 'Gentek Bldg Products Kelowna', '250-765-1050', '250-765-3752', 'Mar  2 2010 12:00AM', 'Aug 26 2011 12:00AM', 0, '120 MCLEVIN AVE ', null, 'SCARBOROUGH', 'ON', 'Canada', 'M1B 3E9', null, 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2907, 'Gentek Bldg Products Nanaimo', '250-751-1553', '250-751-1554', 'Mar  2 2010 12:00AM', 'Aug 26 2011 12:00AM', 0, '120 MCLEVIN AVE ', null, 'SCARBOROUGH', 'ON', 'Canada', 'M1B 3E9', null, 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2908, 'Gentek Bldg Products Surrey', '604-888-7280', '604-888-0960', 'Mar  2 2010 12:00AM', 'Aug 26 2011 12:00AM', 0, '120 MCLEVIN AVE ', null, 'SCARBOROUGH', 'ON', 'Canada', 'M1B 3E9', null, 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2921, 'Gentek Building Products ', '306-975-0049', '306-975-0076', 'Mar  9 2010 12:00AM', 'Apr 25 2012 12:00AM', 0, '120 MCLEVIN AVE ', null, 'SCARBOROUGH', 'ON', 'Canada', 'M1B 3E9', null, 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2923, 'GENTEK BUILDING PRODUCTS', null, null, 'Mar 19 2010 12:00AM', 'Aug 26 2011 12:00AM', 0, '120 MCLEVIN AVE ', null, 'SCARBOROUGH', 'ON', 'Canada', 'M1B 3E9', null, 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2956, 'Gentek Building Products', null, null, 'Jun  9 2010 12:00AM', 'Aug 26 2011 12:00AM', 0, '120 McLevin Avenue', null, 'Scarborough', 'ON', 'Canada', 'M1B 3E9', null, 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2754, 'Best Price Railing - Regina', '306-581-4695', '306-543-7255', 'Jan 22 2008 12:00AM', 'Feb 20 2017 12:00AM', 0, '1405 Lorne Street', null, 'Regina', 'SK', 'Canada', 's4r 2k3', 'Ship with Vitran account #74093342
or Day & Ross account #103834
Greyhound acct #3000432 
discount 10% on topless glass and 20% on welded and h/r systems
approved credit $30,000
Saskatoon orders - send to Ryan Adams Ryan@bestpricerailing.com
todd.reichel@gmail.com
Wanda is for invoicing 

Address for Saskatoon - 
#1 825 45 St. E.
Saskatoon, SK S7K 3V3
Ph - 306-653-7245
CELL - 306-290-7658', 0, 1, 10)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2818, 'All Season Decking Ltd.', '403-347-5430', '403-347-5494', 'Feb 24 2009 12:00AM', 'Jul  7 2017 12:00AM', 0, '6817 52 Ave', null, 'Red Deer', 'AB', 'Canada', 'T4N 4L2', 'NO DISCOUNT ON CUSTOM GLASS
OVER 300 ft total the sell price is of welded panels $15.42 - 2017 prices
Over 300 ft post mat - $5.11


ACE Acct # 2303030 effec. Dec 14/16
Also trying Manitoulin - emaIl dimensions to Sid - the day before shipping  - 
DO NOT SHIP FRIDAYS splamondon@manitoulintransport.com 
Day & Ross #140178 (NOT APPS)
approved credit - Nancy  & Kara in office



', 0, 1, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1041, 'Circle Developments Inc', '250-807-1313', '250-807-1317', 'Jul  8 1997 12:00AM', 'Aug  4 2017 12:00AM', 0, '#3, 215 Neave Rd.', null, 'Kelowna', 'BC', 'Canada', 'V1V 2L9', 'formerly Snow Pines 
20% discount  
ONLY $5 Kit processing fee
NO BLACK B.R. SUPPORT LEGS #14 X2 HEX HEADS (R9598)
JEN in the office
FRANK’S CELL 250-868-1829
Brian Radke’s Cell 250
SEND Shipments Mon & Wed - to receive  Tue & Thu
2013 PRICING - for following projects
SOLE, ACADAMY, LEGACY(done), KENNSINGTON, BROOKSIDE, MISSION GROUP BRIGHTON
', 0, 0, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1252, 'Continuous Gutters', '250-372-5262', '250-374-2966', 'Mar  9 1998 12:00AM', 'Jul  5 2016 12:00AM', 0, '912B Laval Crescent', null, 'Kamloops', 'BC', 'Canada', 'v2c 5p3', 'INACTIVE - BAD ACCOUNT 2014
23% discount,  
HOLD SHIPMENTS 
Diamond Delivery (SHIP WEDNESDAYS)$50,000 approved credit  Mindy in accts-Thurs  email all invoices to chris@continuousgutters.ca
Chad’s email chad@atechbuildingproducts.com
pays by chg card @ end of the month for mnth priorPST EXEMPT #1002-9853

Made payments to cover owing 2015
', 0, 1, 23)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2162, 'Schiller Floors Ltd.', '250-992-1129', '250-992-1121', 'May  7 2001 12:00AM', 'Jul 19 2017 12:00AM', 0, '111 North Fraser Drive', null, 'Quesnel', 'BC', 'Canada', 'V2J 1Y8', 'PAYMENT PRIOR TO SHIPPING
credit app on file, $10,000 - Credit reversed by BB - due to late pymts
bounced a chq-1st time/issues in 2013/14
KEEP EYE ON ACCOUNT
P/U LG ORDERS (Jun/13)
Nancy in A/P only in Wednesday
Hank called to remove Terry from emails and Ace for shippers - future to determine

', 0, 0, 15)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2856, 'Park C Mechanical Services Ltd.', '306-541-6513', null, 'Jun 10 2009 12:00AM', 'Mar  7 2017 12:00AM', 0, 'Box 306', null, 'East Regina  Beach', 'SK', 'Canada', 'S0G 4C0', 'PAYS 1ST
10% CREDIT AP/KS credit app Feb/17
REACTIVE MARCH 2016 
Name change Feb/17
INACTIVE- LAST ORDER DEC/11
Previously Last Mountain Lake Sunrooms Must prepay by direct deposit in our account, can not be depended on to send certified chq, account in arrears and no response to messages/emails', 0, 1, 10)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3059, 'Borton & Sons', '509-966-3905', '509-966-3994', 'Aug 12 2011 12:00AM', 'Feb  3 2017 12:00AM', 0, '2550 Borton Road', null, 'Yakima', 'WA', 'United States', '98903', 'CREDIT APP W BRIAN (appletree)
20%  payable in US$ NO Conversion 
Kim in the office
Make sure Stan’s name and no. is on the waybilll and call an hour ahead
UPS ACCT# W8036F
IRS # 91-0859370
Reseller Permit #A03 0536 17 exp12/31/17
Inform Polly 2 days ahead for lg orders 10 pcs of railing or more', 1, 1, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2729, 'Whiting Waterproofing', '406-883-3320', '406-968-4277', 'May 24 2007 12:00AM', 'May 29 2017 12:00AM', 0, '39238  Ponderilla Lane', null, 'Polson', 'MT', 'United States', '59860', 'US Catalogue - CDN PRICING
Returned to 15% discount
DBL PACKAGE ALL ORDERS - 6%
PUT ON PARTS SHEETS - PAYS 1ST
Credit Card on file - chg when invoicing
UPS #57X16V for smaller orders
Construction Contract Registration #13624

Darringer broker - acct. #WHIWAT0013
Ph 306-332-6600 FAX 306-313-6837', 1, 1, 15)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2832, 'R & R Home Leisure', '306-249-3399', '306-651-2869', 'Apr 21 2009 12:00AM', 'Jul  7 2017 12:00AM', 0, '2412 Millar Ave', null, 'Saskatoon', 'SK', 'Canada', 'S7k 3V2', 'ADD PST # 0417832 to invoice
Discount approved by KS
New credit application received Mar 31/15
$5,000 approved credit - KS
Formerly Dexperts - changed Apr 18/15
Changed shipper to Manitoulin - Jul 29/16
Manitoulin# 1-800-265-1485  Acct #0126152  (VIA VANKAM)

Purolator Acct# 0404853', 0, 1, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2789, 'Apple Tree Construction', '509-966-3905', '509-972-2982', 'Jul 21 2008 12:00AM', 'Oct 29 2013 12:00AM', 0, '2550 Borton Road', null, 'Yakima', 'WA', 'United States', '98903', 'Last order Dec/12

Berry & Smith
melinda@bortonfruit.com for A/P
Every job is different with different job sites and contact information.  Confirm before proceeding

Discount 20% do not put in conversion
stanleykotlarz@yahoo.com
David Silvernail 509-945-2750 cell
fax 509-966-3994
', 1, 1, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3153, 'Alpine Patio Concepts', '509-467-0600', '509-467-7751', 'Jul 26 2013 12:00AM', 'Jul 12 2017 12:00AM', 0, '9300 N. Market', null, 'Spokane', 'WA', 'United States', '99217', 'LARGE PROJECT 2% PACKAGING and panels @ $17.82 also #R9596 - $7.45 & R9559 - $9.98 - for PIMLICO orders
make sure all notes are on invoices for customs border

Reseller Permit #exp 12/31/17
approved credit  $20,000
UPS ACCOUNT # 547 R6W
Alpine IRS# 2-4110687
DON’T SHIP FRIDAYS', 1, 1, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3233, 'Windsor Plywood', '250-372-7797', '250-372-1474', 'Apr 11 2016 12:00AM', 'Jun 30 2017 12:00AM', 0, '735 Laval Crescent', null, 'Kamloops', 'BC', 'Canada', 'V2C 5P2', '$5,000. Approved Credit - KS
Formerly Continuous Gutters
Loomis Acct #OK7473
PST EXEMPT  # 1002-5622
Include BP Gaskets on quotes/jobs
PAYS 1ST - chg card 
Copy Kim on shipment details & quotes statements/invoice #’s w/receipt  
bighg@live.com CC include invoice #’s
Helen
', 0, 1, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1674, 'Alpine Home Products', '509-467-0600', '509-467-7751', 'Apr  7 1999 12:00AM', 'Jul 21 2017 12:00AM', 0, '9300 N. Market', null, 'Spokane', 'WA', 'United States', '99217', 'PIMILCO PROJECT 2% PACKAGING AND PANELS @ $15.12 also #R9596 - $7.23 & R9559 - $9.69 
make sure all notes are on invoices for customs border
Reseller Permit #A14 7166 17 exp 12/31/17
approved credit  $25,000
UPS ACCOUNT # 547 R6W
Alpine IRS# 92-0882619
DON’T SHIP FRIDAYS', 1, 1, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3098, 'Continuous Gutters - Ottawa Branch', '613-738-7676', null, 'Apr 30 2012 12:00AM', 'Jul  5 2016 12:00AM', 0, '912B Laval Crescent', null, 'KAMLOOPS', 'BC', 'Canada', 'V2C 5P3', 'INACTIVE DO NOT USE
DAY & ROSS ACCT #111471
charge HST, shipped to Ontario
Ottawa pricing for orders over 1000ft at $15.09 for welded panels
any orders over 1000ft that include posts are at 3% packaging

Innovative Architectural Elements
PUROLATOR ACCT #3773049
NO SCREWS', 0, 1, 23)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3069, 'Lakeview Custom Homes ', '780-542-4082', '780-542-5363', 'Sep 20 2011 12:00AM', 'Dec 18 2013 12:00AM', 0, 'Site 450 Box 1 Comp 2 RR2', null, 'Drayton Valley', 'AB', 'Canada', 'T7A 2A7', 'INACTIVE - 2 ORDERS IN 2011
just a quote, new customer as per Stuart
CONFIRM SHIP ADDRESS ETC 
steph@lakeviewcustomhomes.ca
approved credit $5,000

get quotes for customer, does use Tiger one for hold for pickup in Edmonton and another for direct to Drayton Valley', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3189, 'Budget Glass', '250-758-3374', '250-758-7025', 'Dec  4 2014 12:00AM', 'Jul 12 2017 12:00AM', 0, '3900 Island Hwy. N.', null, 'Nanaimo', 'BC', 'Canada', 'V9T 3J7', 'Co-Business Principal - John Anderson
A/P - Joan Merkel
$15,000.00 Approved Credit
PST EXEMPT #1013-9104
Partnering with AB Hrytsak
Include Andy’s ph# 250-751-5862
Invoicing to Joan CC Andy
joan@budgetglass.com for invoices AND  melanie@budgetglass.com
', 0, 1, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3194, 'Horizon North Mfg.', '250-828-2643', '250-828-2025', 'May  4 2015 12:00AM', 'Jul 12 2017 12:00AM', 0, '540 Athabasca Street West', null, 'Kamloops', 'BC', 'Canada', 'V2C 5R7', 'New Customer - $10,000. approved credit
shipper & address may change
PST EXEMPT# 1001-2489
Kim - 778-471-8112
PO’s starting w/4221 S/B Horizon North Camps & Catering (3244)
Discount reduced from 20% ap/ks Sep/16
Marty 250-828-2644
GREYHOUND ACCT #394445', 0, 1, 10)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2808, 'Econo Lumber', '306-764-3485', '306-763-0553', 'Nov 12 2008 12:00AM', 'Jul 21 2016 12:00AM', 0, 'P.O. Box 1329', null, 'Prince Albert', 'SK', 'Canada', 'S6V 5S8', 'Asked to be removed from mailing list Apr 28/16
discount reduced because they do not purchase from us frequently
DHL Account# ER0506
Call Phylis or Curtis for payment by visa when order is shipped
Called July 21/16 to get a part - directed to Hanneson', 0, 1, 10)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2774, 'Philip Teichroeb Contracting', '250-570-1608', '250-567-4228', 'May 23 2008 12:00AM', 'Mar 16 2017 12:00AM', 0, '11435 Hwy. 16E', null, 'Vanderhoof', 'BC', 'Canada', 'V0J 3A1', 'INACTIVE - RETIRED
Van Kam or ACE 
15% Discount
$10,000 approved credit (with A&V) - sending new credit app
20% discount for own house - railing order coming soon (will order stairs next summer) 
Formerly A&V Continuous Eavestroughing - sold business', 0, 0, 15)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1011, 'Carrington Bay', '250-338-2608', '250-338-2608', 'Jul  2 1997 12:00AM', 'Jun  1 2017 12:00AM', 0, '2962 Lupton Road', null, 'Courtenay', 'BC', 'Canada', 'v9n 3v3', 'LAST ORDER OCT 24/12 - new 2/16
always trying to get us to ship prepaid and then pay us back
Discount 7%
visa on file - UPDATE MAY 2016
$5,000. Approved credit - KS
Ace Acct #1482608
New ownership CHANGED NAME TO Blackwood FyFeAluminum Railings
', 0, 0, 7)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2783, 'Golden Eagle Interiors Inc.', '250-489-4707', '250-489-1680', 'Jun 25 2008 12:00AM', 'Dec 18 2013 12:00AM', 0, '#12 600 Industrial Rd North', null, 'Cranbrook', 'BC', 'Canada', 'v1c 4C8', 'INACTIVE LAST ORDER NOV/11
141 Wattsville Road, V1C 2A1
Overland
No Discount
$5000 approved credit
discuss that they must be on prepay only, difficult to collect money, $8984.over 60 days owing
250-464-0572 all phone numbers are out of service
', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1380, 'Glacier Glass', '306-546-3990', '306-545-2093', 'Jun  8 1998 12:00AM', 'Sep 26 2016 12:00AM', 0, '410 Quebec St.', null, 'Regina', 'SK', 'Canada', 's4r 1k7', 'Ship Tiger  - 12’ Max
Long orders ship Reimer
credit app on file, $15,000
(Peter retired - updated Aug/13)
Jeff in A/P 306-545-3990 - pays by chq
DBL WRAP all orders - Put on worksheet
TIGER Acct #104893_AR_CAM - 
DON’T SHIP ON GREYHOUND $$$$
', 0, 1, 10)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2984, 'Skyline Building Systems', '403-230-6747', '403-398-9910', 'Jan  6 2011 12:00AM', 'Dec 18 2013 12:00AM', 0, '261185 Wagon Wheel Way', null, 'Rocky View', 'AB', 'Canada', 'T4A 0E2', 'INACTIVE - LAST ORDER NOV/11
Note that this is NOT the Roofing department
Be careful, be very careful
Carls email is carla@skylinegroup.com
Rachel is purchaser, email rachelp@skylinegroup.com
Invoice in email to rochellek@skylingroup.com', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2512, 'Cayer Contracting Inc.', '403-836-5588', '403-229-0458', 'Jun 10 2004 12:00AM', 'Aug 17 2015 12:00AM', 0, '55 Arbour Stone Way N.W.', null, 'Calgary', 'AB', 'Canada', 'T3G 5E9', 'INACTIVE LAST ORDER JUN/11

Call Cell phone first! Fastest way to get ahold of Curtis.  Office home # 229-0457
must pay before shipped
very difficult customer
email confirmations
Ship OVERLAND
Called Aug 17/15 for new catalogue/sent', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2827, 'Creative Deckworx Inc. Calgary', '587-999-3344', null, 'Apr 15 2009 12:00AM', 'Dec 18 2013 12:00AM', 0, 'Unit 115, 11929 40th St S.E.', null, 'Calgary', 'AB', 'Canada', 'T2Z 4M8', 'INACTIVE LAST ORDER DEC/11
OVERLAND
Discount 20%
VISA ON FILE
all invoices for both Creatives go to Jack
new cell phone for up north 403-990-0124
Powersat Communications
Shawn Byers is his business partner, 
780-897-6183', 0, 1, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3139, 'bmg.GLASS + ALUMINUM INC.', '705-735-2344', '705-735-1877', 'Sep 17 2012 12:00AM', 'May 30 2017 12:00AM', 0, '108 Victoria Street', null, 'Barrie', 'ON', 'Canada', 'l4n 2j1', 'Prev. order Sep/14 8 jobs in 2016
contact is Mike
AP - lesley.w@barriemetroglass.com
Approved credit - $35,000.
Elaine for shipping info.
Provide weights & measurements to arrange shipping
Name change effective Mar 15/17', 0, 1, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2936, 'Salmon Arm Home Repair', null, null, 'Apr  8 2010 12:00AM', 'Oct 28 2016 12:00AM', 0, '3140 8th Avenue NE', null, 'Salmon Arm', 'BC', 'Canada', 'V1E 2K5', 'Last order Oct/12-Started again Jun/16
Formerly Shuswap Home Repair
Approved credit of 2,000
ACE Courier
Asked for a cat June 2/14 emailed - quote
Discount waiting approved by KS - 1st quote a go before discount given', 0, 0, 10)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3250, 'Freeport Industries', '250-707-3950', '250-707-3951', 'Dec 22 2016 12:00AM', 'Jun 26 2017 12:00AM', 0, '3522 B Red Cloud Way', null, 'West Kelowna', 'BC', 'Canada', 'V4T 2G9', 'Potential new customer
PST EXEMPT # 1015-0120
$15,000 approved credit
A/P - Simone Peterson - speterson@freeportindustries.ca
invoices to alove@freeportindustries.ca
gfrancis@freeportindustries.ca - Buyer  PO Required', 0, 1, 10)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3080, 'A. B. Hrytsak Ltd.', '250-756-4937', '250-756-4937', 'Dec  2 2011 12:00AM', 'Sep 23 2015 12:00AM', 0, '380 Summit Dr.', null, 'Nanaimo', 'BC', 'Canada', 'V9T 5R2', 'Credit approved $15,000.
PST EXEMPT 1000-9281
CDN Freightways account #0920888790
DO NOT SHIP ACE
25% discount for Show Home
Stocking orders 20% discount - 
Welded panels $14.53 over 800 ft
Partnered w/BUDGET GLASS
', 0, 1, 12)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3104, 'J & G Glass', '780-837-2612', '780-837-2266', 'May 17 2012 12:00AM', 'Oct  4 2016 12:00AM', 0, 'PO Box 1049', null, 'Falher', 'AB', 'Canada', 'T0H 1M0', 'INACTIVE - 7 Quotes in/14 Last job Aug/13 -  - Jobs in 2015/16
approved credit $20,000
New credit app rec’d
A/R Denis or Marie

Greyhound for small packages - hold for pick up in Grimshaw for large ship to address', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2588, 'Quality Sundecks', '250-809-2380', '250-707-5172', 'Jan 31 2005 12:00AM', 'Aug  5 2017 12:00AM', 0, '2475 Dobbin Rd, #22 Suite 505', null, 'Westbank', 'BC', 'Canada', 'v4t 2e9', 'No Screws - Except for #10
SKAHA PO’s remain 2016 prices
Cr. Card on file
Customer pickup, 2no packaging chg
Steve’s cell 250-469-3981
CC Steve sales@qualitysundecks.com list of jobs that are ready
Must pay 1st 
', 0, 0, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3264, 'Ram Manufacturing Ltd.', '306-764-5470', '306-763-4266', 'May 18 2017 12:00AM', 'Jul 26 2017 12:00AM', 0, '#17 - 17th St. West', null, 'Prince Albert', 'SK', 'Canada', 'S6V 3X2', 'Division of the Energy Doctor
reg jobs - disc 10%, incr’d to 15% May/17 
Over 1000’ will have 20% discount
Approved credit $30,000
Lynn in A/P
ship with Kindersley
Samples sent prepaid Apr/17 - building business
', 0, 1, 15)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2978, 'Nu View Sales', '250-891-3848', null, 'Nov 30 2010 12:00AM', 'Sep 24 2013 12:00AM', 0, 'PO Box 20103', null, 'Sidney', 'BC', 'Canada', 'V8L 5C9', 'pay by visa at the end of each month whatever is owing.
contact Ms.Martine Kilniwnik
Cell # is Martine’s cell
alternate email sales@nuviewsales.com 
10% discount $5000.00 approved credit
sent catalogue Aug 22/13', 0, 0, 10)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2822, 'Northern Exteriors', '780-742-5541', null, 'Mar 31 2009 12:00AM', 'Jul 26 2017 12:00AM', 0, '289 Smallwood St.', null, 'Fort McMurray', 'AB', 'Canada', 'T9K 2N3', 'welded panels $13.81 plus discount
Discount 20% on all over 300’
Florida cell #941-567-8426
PREPAID SHIPPING, ADD 15% 
GREYHOUND FOR SMALL SHIPMENTS
$50,000 approved credit
Will pay by Visa. 60-90 days credit', 0, 1, 15)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2828, 'Eastern Design Windows & Doors', '613-962-3800', '613-962-1278', 'Apr 16 2009 12:00AM', 'Aug  2 2017 12:00AM', 0, '45 Lahr Drive, Unit 1', null, 'Belleville', 'ON', 'Canada', 'K8N 5S2', '15% discount
$15,000 approved credit
# 10 and #12 screws only
TRYING NEW SHIPPER - Day & Ross

Hospital Gala 30% discount

Call Manitoulin # 1-800-265-1485 
Account #127653. (put on shop copy)
Pays by Chq.

', 0, 1, 15)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2847, 'Best Price Railing - Winnipeg', '204-837-7245', '204-943-6421', 'May 20 2009 12:00AM', 'May 31 2017 12:00AM', 0, '1149 St. Matthews Ave.', null, 'Winnipeg', 'MB', 'Canada', 'R3G 0J8', 'ship with Vitran  also Chad 204-837-7245
$30,000 approved credit app on file
A/P Todd cell @306-591-1789
Card on file - call for approval prior to chg
SMALL SHIPMENTS ON BUS no need to phone to check 1st', 0, 1, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2394, 'Renpro Renovations Professionals', '306-867-1818', '306-867-1821', 'May  2 2003 12:00AM', 'Mar 17 2017 12:00AM', 0, 'P.O. Box 971, 700 McKenzie Street S.', null, 'Outlook', 'SK', 'Canada', 'S0L 2N0', 'INACTIVE - should buy from Hanneson approved credit $10,000
Stuart Spahic
PHONE JAYS FOR P/U 866-793-3303
DO NOT SHIP W/O QUOTE
Purolator Acct #1-8416206
LAST ORDER APR/11 
1 QUOTE IN 2012 & 1 IN 2013', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3159, 'Salmon Arm Window & Doors', '250-832-8884', '250-832-3221', 'Sep 12 2013 12:00AM', 'Nov 25 2016 12:00AM', 0, '1015 Lakeshore Dr. S. W. ', null, 'Salmon Arm', 'BC', 'Canada', 'V1E 1E4', 'INACTIVE LAST ORDER AUG/15 QUOTE - NOV/15
Changed hands Sept 12/13
Overland Collect
Credit App on file $10,000.00
A/P is Wendy, wendysawindow@telus.net
PST EXEMPT #1003-8605
Mark Wilson, Mark Hanson
', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3072, 'VinylPro Decks', '250-818-2708', '250-479-7897', 'Sep 27 2011 12:00AM', 'Jun  6 2016 12:00AM', 0, '4626 Deventer Drive', null, 'Victoria', 'BC', 'Canada', 'V8Y 3E3', 'INACTIVE LAST ORDER APR/2014
New customer, used to purchase from Protech/Continuous.
No discount
DIAMOND DELIVERY
Credit approved $15,000 Credit card on file PAY AT TIME OF SHIPPING, CUSTOMER PREF.', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2312, 'Peace Windows Ltd.', '780-538-1551', '780-539-9878', 'Sep 10 2002 12:00AM', 'Jan 21 2016 12:00AM', 0, '11308- 100 Street', null, 'Grande  Prairie', 'AB', 'Canada', 'T8V 2n5', 'INACTIVE LAST ORDER AUG 2014
KINDERSLEY
Tim, John & Justin for confirmations
do not ship VanKam, damage
do not Cdn Freightways
CREDIT CARD PRIOR TO SHIPPING
$10,000 approved credit Brandy in A/P
', 0, 1, 10)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2959, 'H.D. Enterprises', '250-342-7260', '250-342-8358', 'Jun 18 2010 12:00AM', 'Jul 12 2017 12:00AM', 0, '1820 Wilmai Place', null, 'Windermere', 'BC', 'Canada', 'V0B 2L2', '20% discount
DekSmart Customer
ACE Courier - ACCT #1934440
$25,000.00 approved credit, 
A/P - card on file
PAYS IN FULL AT END OF MONTH
CALL CELL
2nd address 4946 Briarwood Cres., Wasa BC V0B 2K0', 0, 0, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2964, 'Rupert Wood n Steel Construction Ltd.', '250-627-8788', '250-627-8183', 'Jul 27 2010 12:00AM', 'Jul 25 2017 12:00AM', 0, 'PO Box 2006', null, 'Prince Rupert', 'BC', 'Canada', 'V8J 3W8', 'CRATE ALL LENGTHS FOR SHIPPING
credit app on file $15,000.00 approved
A/P Bonnie Rudderham
ship with Overland/Bandstra 
ship small items with DHL, account # AU6878
Rowe’s Cell # 250-600-5661', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2855, 'SCR Home Services', '604-885-9694', '604-885-9657', 'Jun  5 2009 12:00AM', 'Dec 18 2013 12:00AM', 0, 'po box 2337', null, 'Sechelt', 'BC', 'Canada', 'V0N 3A0', 'INACTIVE- LAST ORDER MAY/10

Overland Prepaid
Cash account only, no credit-As per Brian
Email invoices to him!
10% discount
Fax Invoices 604-883-9895 attn Bill Shea, regarding charging visa', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3079, 'Prestige Eco Homes', '780-238-6666', null, 'Nov 21 2011 12:00AM', 'Dec 18 2013 12:00AM', 0, '7340 Yellowhead Trail NW', null, 'Edmonton', 'AB', 'Canada', 'T5B 4K2', 'INACTIVE - NO ORDERS
New customer, gave quote for large product, did not accept.  Just sold glass and custom parts thus far, stuart taking responsibility for account.  no credit application', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2874, 'Maglio Building Centre Ltd.', '250-352-6661', '250-352-3566', 'Jul 30 2009 12:00AM', 'Jul 19 2017 12:00AM', 0, 'P.O Box 70', null, 'Nelson ', 'BC', 'Canada', 'V1L 5P7', 'Confirmations to Brent
Overland - changed to Van Kam Jan/14 Changed to Clark - Sept 18/14 
No Monday P/U
Approved credit $20,000 Christine in A/P
PST EXEMPT #1001-6026
Clark  acct #MAGL002', 0, 1, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1404, 'Kootenay Vinyl Deck
', '250-489-1295', '250-489-1283', 'Jun 18 1998 12:00AM', 'Nov 29 2016 12:00AM', 0, '1912 Mt. Nelson Crescent', null, 'Cranbrook', 'BC', 'Canada', 'v1c 5t7 ', 'ACE COURIER - DON’T SHIP OVERLAND 
15% discount
#10 #12 #14 Plated & Caps
20% on New dawn orders
credit app on file, $25,000
special pricing on show home 50% and $7/ft for topless glass', 0, 0, 15)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3172, 'Eneray Sustainable Structures Inc.', '306-972-7000', '306-972-7001', 'Apr 21 2014 12:00AM', 'Feb  1 2016 12:00AM', 0, 'Box 727', null, 'Moose Jaw', 'SK', 'Canada', 'S6H 4P4', 'New Customer - Stu
Sending welcome kit
Sample, chips, brochures,letter,credit app
need shipping co
ups ground for small orders
no particular carrier, will confirm on order
ben@eneray.ca', 0, 1, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2673, 'Decks Etc. - 2005', '403-394-7623', '403-345-5480', 'Nov  3 2005 12:00AM', 'Oct 29 2013 12:00AM', 0, '#3-1907-18th Avenue', null, 'Coaldale', 'AB', 'Canada', 'T1M 1K7', 'INACTIVE
ONE QUOTE IN 2010
Overland  -   No Discount
Terry #  308-5243
          #  381-2844
MUST PAY BY VISA BEFORE SHIPPING, no credit on account
finally paid account after 6 months', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2708, 'Kandeck', '204-728-4262', '204-727-6563', 'Oct 25 2006 12:00AM', 'Oct  7 2016 12:00AM', 0, 'Site 200, Box 30, R.R.#1,', null, 'Brandon', 'MB', 'Canada', 'r7a 5t1', 'STUARTS CUSTOMER
After 30 days charge invoices owing on his visa, on file (No need to contact)
Phone PRIOR TO SHIPPING with sizes & weight, he’ll get quote from  Kindersley
PHONE CELL', 0, 1, 10)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2800, 'Hanneson Construction Inc.', '306-665-1277', '306-665-6775', 'Oct  3 2008 12:00AM', 'Jul 21 2017 12:00AM', 0, '3711 Kinnear Ave.', null, 'Saskatoon', 'SK', 'Canada', 'S7P 0A6', '20% discount on everything
Canadian Freightways
Welded panels 30% if 800’ is ordered
Daphne in office
PAYS IN FULL  AT END OF MONTH
Large orders panels @ 
DO NOT SEND CONFIRMATIONS

', 0, 1, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2441, 'The Energy Doctor', '306-764-5455', '306-763-4266', 'Sep  5 2003 12:00AM', 'Jun  1 2017 12:00AM', 0, '#17, 17th St. W', null, 'Prince Albert', 'SK', 'Canada', 'S6V 3X2', 'reg jobs - dsic 10%, incr’d to 15% May/17 
Over 1000’ will have 20% discount
Approved credit $30,000
Lynn in A/P
ship with Kindersley
Samples sent prepaid Apr/17 - building business', 0, 1, 15)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3173, 'Copper Cove Contracting', '250-833-8323', '250-675-5511', 'Apr 21 2014 12:00AM', 'Oct 28 2016 12:00AM', 0, 'Box 217', null, 'Sorrento', 'BC', 'Canada', 'V0E 2W0', 'Sent samples - May/14
$3,000 Approved credit
Long shipments go to Salmon Arm (20’) - 
Shorter shipments go to:
#3 1541 Blind Bay Rd. Sorrento
persn’l email mikelindblad@hotmail.com
', 0, 0, 15)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3083, 'Pro-Tech Exterior Products Ltd.', '250-382-5885', '250-382-5748', 'Jan  5 2012 12:00AM', 'Aug  2 2017 12:00AM', 0, '875 Viewfield Road', null, 'Victoria', 'BC', 'Canada', 'V9A 4V2', 'contact is Lorne or Tony in the office
credit limit $6000, credit app on file
PST EXEMPT #1002-0220
Lorraine in A/P works 9 - 1
copy Tony on confirmation/quote
tonyd@protechvi.com', 0, 1, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2947, 'Welldon Construction', '250-955-2321', '250-955-0278', 'May 10 2010 12:00AM', 'Dec 18 2013 12:00AM', 0, '7245 Estate Place PO Box 165', null, 'Anglemont', 'BC', 'Canada', 'V0E 1A0', 'INACTIVE- LAST ORDER JUL/10

previously customer of perma-glass/Ingar
ship by ACE
ACE only ships as far as Milos, hold for pick up there
credit card on file, charge as shipped', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1073, 'Island Home Improvements', '250-702-1377', null, 'Aug  5 1997 12:00AM', 'Dec 18 2013 12:00AM', 0, '2274 Anderton Road', null, 'Comox', 'BC', 'Canada', 'V9M 4B2', 'INACTIVE
contacted me for new samples etc... 5/23/2012 sent out kit.  will have to get carrier info and signed credit application when places order - 

no orders 2012 or 2013', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2458, 'Arrow Finishing', '250-304-8961', '250-365-7715', 'Dec 16 2003 12:00AM', 'Mar  7 2017 12:00AM', 0, '224 - 102nd St.', null, 'Castlegar', 'BC', 'Canada', 'V1n 3E6', 'Use Ace Courier
0% Discount
pay with chq from Custom Contracting 
Send Invoices & Fax confirmations
$2,000. limit before holding shipments
Mailing address changed Apr 20/15', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2467, 'Alberta Quality Waterproofing', '780-438-3997', '780-438-4020', 'Mar 11 2004 12:00AM', 'Mar 16 2017 12:00AM', 0, '9951 69 Ave. N.W.', null, 'Edmonton', 'AB', 'Canada', 'T6E 0T1', 'INACTIVE 
20% discount
credit app on file $50,000
OVERLAND
packaging 2% on large order - 1000 feet of panels for example
Kemal’s cell 780-906-7306
Suljo cell 780-975-6473 
', 0, 1, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2872, 'CB Installations', '250-365-3515', null, 'Jul 21 2009 12:00AM', 'Sep 15 2016 12:00AM', 0, '2912 Columbia Avenue', null, 'Castlegar', 'BC', 'Canada', 'v1n 2x9', 'Sm order July/14
 1 lg order Oct/15
Overland Collect
Discount 20% - removed due to inactivity
credit app $10,000 - Watch account
PAYS 1ST - issues w/pymt 2015
Call CELL 1st', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1004, 'King’s  Door & Exteriors Ltd.', '250-364-2023', '250-368-9220', 'Jun 27 1997 12:00AM', 'Mar 16 2017 12:00AM', 0, '228 Currie Street', null, 'Trail', 'BC', 'Canada', 'v1r 2l5', 'INACTIVE - out of railing business
one quote in 2010
3 Quotes in Apr/13- -  4 Order s in 2013
5 in 2015 - called in Sept/16
Call Cell
Ship Ace Courier 
Morna in office A/P', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1024, 'Perma Glass Vinyl Decking', '250-835-4536', '250-835-4536', 'Jul  2 1997 12:00AM', 'Apr  4 2014 12:00AM', 0, '669 Tappen Cemetary Rd.', null, 'Tappen', 'BC', 'Canada', 'v0e 2x3', 'LAST ORDER JUL 23/12
15% discount
#10 #12 #14 Painted
APPS delivery
$20,000 approved credit, Calla in A/P
JAMIE MCNAB new contact for Calla
Apr/14 - phone # not in service', 0, 0, 15)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3146, 'Admiral Home Improvements', '403-928-1122', null, 'Mar 12 2013 12:00AM', 'Jan  9 2015 12:00AM', 0, 'PO BOX 23104 Medicine Hat Mall PO', null, 'Medicine Hat', 'AB', 'Canada', 'T1B 4C7', 'INACTIVE - 2 QUOTES IN 2013
NEW CUSTOMER - NEED CREDIT APPLICATION
Contact person Tarra McGillis
Mar/13 - 10% discount, 1000 ft of panels decreased from $16.60 to $14.53
', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2702, 'Sunguard Alberta Ltd. Edmonton', '780-430-0138', '780-485-0108', 'Aug 23 2006 12:00AM', 'Dec 18 2013 12:00AM', 0, '2423 Ellwood Drive S.W.', null, 'Edmonton', 'AB', 'Canada', 'T6X 0J6', 'INACTIVE LAST ORDER FEB/11

call gino in calgary for credit card number
1-403-818-2559
Ace Prepaid
Group ‘D’  
Skids need Power tail gate or pallet jack
Stuart Spahic', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3204, 'Renovation 911', '250-320-8652', null, 'Jul  7 2015 12:00AM', 'Dec  7 2016 12:00AM', 0, '1323 Hook Dr.', null, 'Kamloops', 'BC', 'Canada', 'V2B 7T1', 'New Customer $5000.00 Approved credit & discount KS - discount/credit rescinded
Kelsey in AP - late payments, didn’t respond to email/msg cleared acct Jul/16
PAYS 1ST', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1385, 'South Okanagan Deck & Railing', '250-498-6207', '250-498-6209', 'Jun 11 1998 12:00AM', 'Apr 11 2017 12:00AM', 0, '511 Horse Tail Rd.', null, 'Oliver', 'BC', 'Canada', 'v0h 1T5', 'Customer pick-up, no packaging charge
PAYS 1ST
10% Discount - removed due to inactivity
credit app on file, $10,000 old Aline for A/P fax inv/stmnt to  250-498-4368
', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2705, 'All Seasons Waterproofing
', '604-576-1284', '604-576-1285', 'Sep  7 2006 12:00AM', 'Mar 16 2017 12:00AM', 0, '17514 - 55B Avenue', null, 'Surrey', 'BC', 'Canada', 'V3S 7G6', 'INACTIVE
Last order Jun/12 - sm order Apr/14

Discount 20%  or   30% for Universal/Smart Choice
ACE courier
harry@allseasonwaterproofing.com
Sumita in accounting



', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1013, 'CenAlta Solariums', '403-887-3691', '403-887-4135', 'Jul  2 1997 12:00AM', 'Jun  6 2016 12:00AM', 0, 'P.O. Box 8993', null, 'Sylvan Lake', 'AB', 'Canada', 't4s 1s6', '7% railings 
Overland / B&R Eckels
approved credit $5000 BUT keep an eye on this account
returned product and did not want to pay $339.29 restocking fee/difference', 0, 1, 7)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1068, 'Selkirk Vinyl Decking & Railing', '250-837-2862', '250-837-2862', 'Jul 28 1997 12:00AM', 'Jul 20 2016 12:00AM', 0, 'P.O. Box 2741', null, 'Revelstoke', 'BC', 'Canada', 'v0e 2s0', 'credit app on file $15,000 problems with payment 2013 winter over $6000.00
Mail invoices ap/Tami
WATCH ACCOUNT
$5000. Approved credit - AP/KS
Credit Card on File ', 0, 0, 10)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1028, 'ProDeck Ltd.

', '250-592-1622', '250-592-1622', 'Jul  2 1997 12:00AM', 'Apr  8 2015 12:00AM', 0, '1910 Argyle Avenue', null, 'Victoria', 'BC', 'Canada', 'v8p 1e6', 'INACTIVE - 1 Sm order in 2013 - 2011 credit app with Brian, $7,000
Overland/Comox Pacific Freight
Account #4116592
never ship greyhound 
1 small order in 2013
', 0, 0, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1046, 'Nufloors
', '250-428-2426', '250-428-9844', 'Jul  9 1997 12:00AM', 'Jul 24 2017 12:00AM', 0, '1518 Northwest Blvd.', null, 'Creston', 'BC', 'Canada', 'v0b 1g6', 'SHIP ACE NOT Overland 
PST EXEMPT 1000-5572
Tracy in the office
DON’T SHIP ON FRIDAY
Discount increased July 11/16
2017 Spring stock orders panels @ 13.62/ft 
', 0, 1, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1451, 'Precision Decking ', '780-962-5199', '780-962-5648', 'Jul 24 1998 12:00AM', 'Aug 29 2016 12:00AM', 0, '22 Heron Point', null, 'Spruce Grove', 'AB', 'Canada', 'T7X 0E8', 'INACTIVE - last order Dec/2011
fax invoices
15% discount, pays with visa
Overland
2 Cr. Cards - Jon & Abe
Jon’s son owns Superior Deck in Ed
1 ORDER AUG/16
', 0, 1, 15)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1713, 'Deckcetera', '250-216-7425', null, 'Apr 30 1999 12:00AM', 'Mar  2 2017 12:00AM', 0, '975 Portage Rd.', null, 'Victoria', 'BC', 'Canada', 'v8z 1k9', 'Approved credit - $5,000.00
10% Discount  
was Overland, trying Ace - Apr/14
visa on file - 

PAYMENT PRIOR TO SHIPPING
ALL BOULDERWOOD jobs/2016 prices

', 0, 0, 10)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2977, 'Skyline Roofing', '403-450-7779', null, 'Nov 29 2010 12:00AM', 'Dec 18 2013 12:00AM', 0, '261185 Wagon Wheel Way', null, 'Rocky View', 'AB', 'Canada', 'T4A 0E2', 'INACTIVE - LAST ORDER JUL/11

APPS Cargo 
CONFIRMATIONS TO Lance’s email is lancec@skylinegroup.com 
email KIMBERLY FOR INVOICES
AP phone no. 403-277-9708', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3005, 'Ideal Sundecks', '780-416-3325', '780-485-1512', 'Apr  7 2011 12:00AM', 'Dec 18 2013 12:00AM', 0, '6704-76 Ave', null, 'Edmonton', 'AB', 'Canada', 'T6B 0A8', 'INACTIVE - LAST ORDER DEC/11
STUART SPAHIC’S CUSTOMER
WILL PAY AS WE SHIP, does not want to sign a credit application
10% DISCOUNT
AM DELIVERY, APPS CARGO', 0, 1, 10)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3162, 'Deek Consulting Ltd.', '780-876-2867', '780-882-6641', 'Oct  1 2013 12:00AM', 'Jun 14 2016 12:00AM', 0, 'P.O. Box 22078', null, 'Grande Prairie', 'AB', 'Canada', 'T8V 6X1', 'Approved Credit $5,000.00
Prefers to pay on VISA before shipping
Lori Kerr AP
Shipping 1st order prepaid - chg back
getting account set up with Grimshaw

', 0, 1, 10)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2974, 'Outstanding Gutters', '250-277-1585', '250-277-1826', 'Nov  1 2010 12:00AM', 'Dec 18 2013 12:00AM', 0, '9605 Forest Hill Pl', null, 'Prince George', 'BC', 'Canada', 'v2n 6l7', 'INACTIVE - LAST ORDER JUL/12
Discount 10%
shipping by VANKAM
credit app on file, $5000.00 limit
Owing $1943.04 over 120 days 
Sent to collections Sept/13', 0, 0, 10)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2980, 'Creative Deckworx Inc. Red Deer', '587-999-3344', null, 'Dec 10 2010 12:00AM', 'Dec 18 2013 12:00AM', 0, 'Unit 115, 11929 40th St S.E.', null, 'Calgary', 'AB', 'Canada', 'T2H 2K8', 'INACTIVE - LAST ORDER NOV/11
20% discount
all bills to Jack in Calgary,
visa on file
Ship Overland
Red Deer mailing address: 
Greg Verhaeghe 403-848-3268', 0, 0, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3230, 'Element Exteriors', null, null, 'Mar  8 2016 12:00AM', 'Apr 15 2016 12:00AM', 0, null, null, 'Kamloops', 'BC', 'Canada', null, 'CLOSED Formerly with Continuous Gutters - see Windsor Plywood Kamloops
Steve Farady - partner
ALL ORDERS ARE PREPAID PRIOR TO PRODUCTION - NO exceptions
', 0, 0, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2057, 'Brad-Mar Homes', '403-274-7291', '403-274-7291', 'Jun 22 2000 12:00AM', 'Aug 26 2016 12:00AM', 0, '181 Tuscarora Heights N.W.', null, 'Calgary', 'AB', 'Canada', 'T3L 2H3', 'INACTIVE - LAST ORDER JUN/14
will pay by credit card as it is shipped out
Overland
Small shipments use Greyhound
Teresa in A/P - teresa@bradmarhomes.com', 0, 1, 15)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2683, 'Northern Exposure Decking Inc.
', '780-987-3605', '780-987-3647', 'Apr  6 2006 12:00AM', 'Dec 18 2013 12:00AM', 0, '125 Athabasca Dr.', null, 'Devon', 'AB', 'Canada', 'T9G 1N5', 'INACTIVE LAST ORDER APR/12

Overland
20% discount
Credit card on file, process as orders are shipped, do not call for permission first, just go ahead.
', 0, 1, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3209, 'Diamond Park Enterprises Inc. ', '250-898-3370', '250-871-5086', 'Sep 15 2015 12:00AM', 'Jun 30 2017 12:00AM', 0, '6 2401 Cliffe Ave. Box 373', null, 'Courtenay', 'BC', 'Canada', 'V9L 2L5', 'Ted’s find in Yellowknife for large project
20% discount ap/Ken
Jill in Yellowknife office 250-465-9930
sparkysister@live.com
James Cell - 403-389-9420', 0, 1, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1040, 'Shuswap Deck & Rail', '250-675-4150', '250-675-3173', 'Jul  8 1997 12:00AM', 'Jun 12 2017 12:00AM', 0, 'Box 409', null, 'Sorrento', 'BC', 'Canada', 'v0e 2w0', 'PLEASE SNAIL MAIL INVOICES
Overland - had bad exp. w/Ace
10% Discount
#10 #12 #14 Painted
No holes in BR Supports
Ship everything to Sorrento
Cell 1st', 0, 0, 10)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1290, 'ED&R Ltd.', '250-352-1779', null, 'Apr  6 1998 12:00AM', 'Nov  4 2016 12:00AM', 0, '110 Delbruck St.', null, 'Nelson', 'BC', 'Canada', 'V1L 5K8', 'CLOSED - Passed
sent samples, color chips etc... to restart account 4/20/2012 
10% discount as per Brian, 
will pay by visa before we ship
Call Cell', 0, 0, 10)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2050, 'Enderby Glass 1999', '250-838-6949', '250-838-7982', 'Jun  5 2000 12:00AM', 'Sep  1 2016 12:00AM', 0, 'Box 819', null, 'Enderby', 'BC', 'Canada', 'V0E 1V0', 'Proper business name 460863 BC LTD.
Renee in office for AP
no discount anymore
approved credit $12,500
PST EXEMPT 1001-5050
Discount ap/ks Sept 1/16', 0, 1, 10)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2834, 'Eternal Vinyl', '604-302-8670', null, 'Apr 28 2009 12:00AM', 'Dec  8 2014 12:00AM', 0, '#5 - 32311 McRay Avenue', null, 'Mission', 'BC', 'Canada', 'V2V 4X7', 'INACTIVE - LAST ORDER AUG/09

AcePrepaid to Abbotsford
$1.35/sq.ft. - 2 colours - Antique Beige and Dove Grey 
$1.55/sq.ft. for balance of colours', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1618, 'Coastal Deck & Railing', '250-744-8925', '250-595-7950', 'Jan 26 1999 12:00AM', 'Sep 28 2016 12:00AM', 0, '2883 Belmont Avenue', null, 'Victoria', 'BC', 'Canada', 'V8R 4B2', 'New oders in 2015 LAST OCT 26/15
$5000 approved credit


NOTHING SINCE 2010 suggest that they purchase from ProTech Exterior Products in Victoria', 0, 0, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2265, 'Wayne Vallet', '604-796-8755', '604-796-8755', 'May  3 2002 12:00AM', 'Oct  6 2014 12:00AM', 0, '7308 Elm Road', null, 'Agassiz', 'BC', 'Canada', 'V0M 1A2', 'ship collect - Ace
Discount 15%
Credit Card
another contact no. 604-556-1971
approved credit
Chg card on file @ net 30 days
(No need to confirm)', 0, 0, 15)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2975, 'Summerland Glass and Mirror Ltd.', '250-494-9404', '250-494-7588', 'Nov  9 2010 12:00AM', 'Oct 26 2016 12:00AM', 0, 'PO Box 288', null, 'Summerland', 'BC', 'Canada', 'V0H 1Z0', '10% discount
hold for pick up
approved credit $10,000
PST EXEMPT #1014-7306
Erin in accounting - pays by chq
AR ?’s email Brandon info 2 pass on', 0, 1, 10)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3057, 'Onyx Construction', '780-993-5808', '780-435-3362', 'Jul 14 2011 12:00AM', 'Dec 18 2013 12:00AM', 0, 'PO Box 83011', null, 'Edmonton', 'AB', 'Canada', 'T5T 6S1', 'INACTIVE - NO ORDERS - 1 quote
Stuart’s customer
no shipping address or any other information, no credit app - we’ve only done a quote for them', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3208, 'Nu-Vue Exteriors Ltd.', '250-376-1632', '250-376-2649', 'Aug 20 2015 12:00AM', 'Nov  4 2016 12:00AM', 0, '#7 - 1121 12 St.', null, 'Kamloops', 'BC', 'Canada', 'V2B 8A7', 'Potential new customer
Diamond Acct # 12094
small orders on Ace Acct #1357145
Jeannie in office
Discount ap/ks Aug 30/16
$5,000 Approved Credit', 0, 0, 15)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3122, 'Copper Island Fine Homes', '250-675-3701', '250-273-7506', 'Jul  4 2012 12:00AM', 'Nov  2 2015 12:00AM', 0, '3658 McBride Heights', null, 'Blind Bay', 'BC', 'Canada', 'V0E 1H1', 'INACTIVE - 2 ORDERS LAST SEP/12
one time customer - Wade at Shuswap wouldn’t do the job 
MUST BE PAID BEFORE SHIPPING
PUROLATOR ACCT # 2570495', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3170, 'Sunsational Decks', '403-668-0368', null, 'Feb 13 2014 12:00AM', 'May 26 2016 12:00AM', 0, null, null, 'Kelowna', 'BC', 'Canada', null, 'New Customer - selling to in AB
Kelowna Office 2430 Grenfell Rd.
Kelowna, BC V1Y 3C8 250-448-6998
Shipping address/carrier per order.
PAYS 1ST', 0, 0, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3090, 'Diamond Railings', '780-233-2692', null, 'Apr  9 2012 12:00AM', 'Oct 29 2013 12:00AM', 0, 'PO Box 11717', null, 'Edmonton', 'AB', 'Canada', 'T5K 3K8', '1 QUOTE IN 2012
Quote for potential new customer
must pay before shipping
need full name of customer
need their preferred method of shipping ', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2973, 'Central State Fabrication, LLC', '509-469-9646', '509-456-7587', 'Oct 28 2010 12:00AM', 'Dec 18 2013 12:00AM', 0, '3107 W. Washinton Ave', null, 'Yakmina', 'WA', 'United States', '98903', 'INACTIVE - NO ORDERS
discount 15%
credit limit will be set by Brian
still to confirm shipping address and freight information
AP Renee Perez', 1, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1296, 'Five Star Exterior Systems', '403-815-8110', '403-254-8110', 'Apr  8 1998 12:00AM', 'Aug  2 2017 12:00AM', 0, '1706, 11010 Bonaventure Dr SE', null, 'Calgary', 'AB', 'Canada', 't2j 3a8', 'APPS Cargo
Estevan project in SK, ship Kindersley 
2017 - 20% discount 100’ or less (residential jobs)
30% over 100’ - CHECK WITH AJ 1ST


', 0, 1, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1448, 'Salmon Arm Window & Door', '250-832-8884', '250-832-3221', 'Jul 20 1998 12:00AM', 'Oct 11 2013 12:00AM', 0, '1015 Lakeshore Drive S.W.', null, 'Salmon Arm', 'BC', 'Canada', 'v1e 1E4', 'INACTIVE - DO NOT USE ANYMORE

$10,000 approved credit
A/P is Wendy, wendysawindow@telus.net
PST EXEMPT #1000-6471
Changed hands Sept 12/13', 0, 1, 10)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2695, 'Barrie Flooring', '705-792-9445', '705-792-9050', 'Jul 12 2006 12:00AM', 'Jun  5 2017 12:00AM', 0, '526 Welham Rd Unit 1', null, 'Barrie ', 'ON', 'Canada', 'l4n 8z7', '20% discount
FedEx Acct #245494360
keep bundles around 6’
GET QUOTE, ITS CHEAPER!
Credit Card needed for all new orders effective Feb 10/15', 0, 1, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2812, 'Traine Construction Ltd.', '780-998-7363', '780-998-7473', 'Dec  3 2008 12:00AM', 'May 28 2014 12:00AM', 0, 'Unit #1, 11113 - 83rd Ave.', null, 'Fort Saskatchewan', 'AB', 'Canada', 't8l 3t9', 'INACTIVE LAST ORDER OCT/11

Canadian Feightways
Discount 20%
LInda in A/P

Ship, Hillside villas orders to
801-96th Ave
Dawson Creek, B.C.', 0, 1, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3004, 'B-Wise Contractors Ltd', '780-489-0181', '780-489-0182', 'Apr  7 2011 12:00AM', 'Oct 11 2013 12:00AM', 0, '16845-129 Ave', null, 'Edmonton', 'AB', 'Canada', 'T5V 1L2', 'INACTIVE -  only quotes in 2011/12

new customer-as per Stuart Spahic
10% discount for quote on apartment, 451’ welded panel as per Warren', 0, 1, 10)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3171, 'Davis Deck & Rail', '250-417-5040', null, 'Apr 17 2014 12:00AM', 'May  2 2016 12:00AM', 0, '10 14th Ave South', null, 'Cranbrook', 'BC', 'Canada', 'v1c 2W8', 'kwd1966@hotmail.com
got 1st job from Tony @ Kootenay
15% discount - checked with Brian
only job? - NO
$10,000 approved  
LAST ORDER JAN/15', 0, 0, 15)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1074, 'Smart Deck Enterprises', '867-667-4300', '867-456-4677', 'Aug  5 1997 12:00AM', 'Jun  7 2017 12:00AM', 0, '61 Teslin Road', null, 'Whitehorse', 'YT', 'Canada', 'y1A 3M5', 'Discount 15%
Ship with Canadian Freightways
Visa on file, pays on the 15th of the month following
Call Cell
ALWAYS WANTS GLASS WITH ORDER', 0, 1, 15)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3174, 'EC Siding', '250-847-4224', '250-847-9852', 'Apr 24 2014 12:00AM', 'Aug  2 2017 12:00AM', 0, 'Box 2785 ', null, 'Smithers', 'BC', 'Canada', 'V0J 2N0', 'Chg card on file prior to shipping - sent credit app May 10/17


New customer 1st quote/order May 23/14
increased discount 11/18/16 ap/ks', 0, 0, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2838, 'The Renovation Warehouse
', '250-442-2270', '250-442-8867', 'May  6 2009 12:00AM', 'Jan 21 2016 12:00AM', 0, 'P. O. Box 9, 377 Central Ave.', null, 'Grand Forks', 'BC', 'Canada', 'VoH 1H0', 'INACTIVE - LAST ORDER  MAY/13
20% discount SHIP ACE
DO NOT SHIP OVERLAND!
for accounting, fax invoices to 
250-442-0404

PST #1014-2009', 0, 1, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2953, 'ArkType Inc.', '403-286-8799', '403-286-4420', 'Jun  3 2010 12:00AM', 'Dec 18 2013 12:00AM', 0, '3360 Varna Crescent NW', null, 'Calgary', 'AB', 'Canada', 'T3A 0E6', 'INACTIVE - LAST ORDER MAY/11

7% discount
had his shipment ready for over a month and a half and never paid for it or had it shipped.', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3154, 'Floor FX and Design Ltd.', '780-571-2255', '780-571-2257', 'Jul 31 2013 12:00AM', 'Feb  2 2016 12:00AM', 0, '114, 636 King St.', null, 'Spruce Grove', 'AB', 'Canada', 'T7X 4K5', 'New Customer - July 2013 - sent samples
sent new catalogue & new customer letter with credit app. - not returned
Only 1 quote in 2013', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2781, 'J.M.G. Renovations', '780-920-9711', '780-450-9520', 'Jun 23 2008 12:00AM', 'Dec 18 2013 12:00AM', 0, '2149 - 78th Street', null, 'Edmonton', 'AB', 'Canada', 'T6K 2E4', 'INACTIVE LAST ORDER SEP/11
Overland now, used to be ACE
15% Discount
PAYS BY VISA AS SHIPPED
no credit app on file
buys very rarely', 0, 1, 15)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2821, 'Complete Flooring Solutions Inc.', '403-340-0604', '403-309-0099', 'Mar 24 2009 12:00AM', 'Oct 11 2013 12:00AM', 0, '#120, 4770 Riverside Drive', null, 'Red Deer', 'AB', 'Canada', 'T4n 2n7', 'INACTIVE
NOT A CUSTOMER - referred him to purchase from ALL SEASONS TERRITORY NOW
Day & Ross
10% discount
send a credit application', 0, 1, 10)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3186, 'Lindsay Glass & Window Ltd.', '705-324-3305', '705-324-2083', 'Sep 26 2014 12:00AM', 'Sep 26 2014 12:00AM', 0, '39 Cambridge St. South', null, 'Lindsay', 'ON', 'Canada', 'K9V 3B9', 'New customer - trouble getting credit references back
$5,000 approved credit - 20% discount
A/P - Diana - co-owner - Jean Scroggins', 0, 1, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3232, 'Calgary Deck & Rail ', '403-999-3981', null, 'Mar 17 2016 12:00AM', 'Jun  8 2017 12:00AM', 0, 'PO Box 63', null, 'Calgary', 'AB', 'Canada', 'T1S 1A4', 'Possibly new customer $5,000. approved credit
20% Discount As Per Ken March 28th/16
A/R - Leanne 
Greyhound - HOLD FOR P/U -OKOTOKS', 0, 1, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2738, 'Elite Railings Inc.', '403-236-9332', '403-236-9332', 'Jul  5 2007 12:00AM', 'Dec 18 2013 12:00AM', 0, '#2, 4460 - 75th Ave. S.E.', null, 'Calgary', 'AB', 'Canada', 'T2C 1H8', 'INACTIVE LAST ORDER SEP/10

no discount
only purchased 3 orders in 2 years
must pay by visa before shipping, no credit on account', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2994, 'Pelican Decks', '780-239-5594', null, 'Mar 21 2011 12:00AM', 'Jun 10 2016 12:00AM', 0, 'Site 3, Box 17, RR#1', null, 'Edmonton', 'AB', 'Canada', 'T6H 4N6', 'INACTIVE - LAST ORDER OCT/11

new customer - Stuart Spahic
will not sign credit app
First order from us
Called for new catalogue ', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3244, 'Horizon North Camp & Catering Partnership', '780-395-7300', '780-440-1760', 'Aug 25 2016 12:00AM', 'Jul 14 2017 12:00AM', 0, '5637 67 Ave.', null, 'Edmonton', 'AB', 'Canada', 'T6B 2R8', 'Division of Horizon North Mfg. (*3194)
Any PO’s starting with 4221 
check shipping address
$10,000 approved credit - 10% discount', 0, 1, 10)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1061, 'W8 Enterprises', '250-401-1411', null, 'Jul 18 1997 12:00AM', 'Mar 17 2017 12:00AM', 0, 'Box 390', null, 'Chetwynd', 'BC', 'Canada', 'v0c 1j0', 'INACTIVE - REMOVE 
Placed order July19/13 - 2 orders in 2013
Phone for CC payment before shipping
Dana’s cell listed 
Eleanor - ', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3231, 'Avalon Homes', '403-226-3345', null, 'Mar 14 2016 12:00AM', 'Mar  7 2017 12:00AM', 0, '#221 4615 - 112 Ave SE', null, 'Calgary', 'AB', 'Canada', 'T2C 5J3', 'Potential new customer
$20,000.00 approved credit limit KS
CC Grant
Ship Prepaid - included in cost - no disc.
Kathlene - in A/P', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2515, 'Gimme A Break Glass', '250-961-7775', '250-563-2195', 'Jun 14 2004 12:00AM', 'Oct  9 2015 12:00AM', 0, '1655 South Nicholson st', null, 'Prince George', 'BC', 'Canada', 'v2n 1v7', 'Asked for Catalogue June 2/14 - emailed
3 jobs in 2014
20% discount a/p Warren
Wants to pay before shipping
Credit card on file', 0, 0, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2574, 'D.J.D Renovations Ltd.', '403-875-6278', '403-293-2102', 'Nov  2 2004 12:00AM', 'Dec 18 2013 12:00AM', 0, '1903 65th St. N.E.', null, 'Calgary', 'AB', 'Canada', 'T1Y 1N5', 'INACTIVE ONLY QUOTES IN 2011

PUT IN 5 ORDERS, VALUE $6,000.  A FEW DAYS LATER, CANCELLED ALL 5 ORDERS

APPS Cargo
Discount 15%', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3166, 'Calgary CNC Shop', '403-990-0165', null, 'Dec  3 2013 12:00AM', 'Mar 16 2017 12:00AM', 0, 'Box 48 Site 16, RR 1', null, 'Calgary', 'AB', 'Canada', 'T0L 0X0', 'REMOVE - Doesn’t fit our profile
new customer, sent credit app Dec 3/13
Call wife - Violet @403-995-3980 for card # for payment', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3196, 'Wrap-it Systems', '250-702-0069', null, 'May  8 2015 12:00AM', 'Sep 28 2016 12:00AM', 0, '1785 Arden Rd.', null, 'Courtenay', 'BC', 'Canada', 'V9N 9J5', 'INACTIVE - ONLY 1 QUOTE 2015
No Credit approved - 
PAYS BEFORE SHIPPING
NEED INFO - shipper
want CC on file???
Meagan in office', 0, 0, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2123, 'Royal Vinyl



', '250-231-7905', null, 'Nov 20 2000 12:00AM', 'Nov 16 2015 12:00AM', 0, 'P.O. Box 55', null, 'Genelle', 'BC', 'Canada', 'v0g 1g0', 'KEEP EYE ON PAYMENTS
15% discount
Clark Freightways (Used to be Overland)
Ship Tues - Fri - shipping co doesn’t p/u on Monday
', 0, 0, 15)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2331, 'Superior Deck and Railing Ltd.', '780-862-3121', null, 'Oct  8 2002 12:00AM', 'Dec  5 2016 12:00AM', 0, '#30 Heron Point', null, 'Spruce Grove', 'AB', 'Canada', 'T7X 0E8', '20% Discount
Overland
we ship to them on Tues and Thurs
Credit Card - on file
credit app on file $20,000
John @ 1-780-906-7539', 0, 1, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3215, 'HR2 Construction', '780-812-2162', '780-812-2165', 'Oct 14 2015 12:00AM', 'May 17 2017 12:00AM', 0, 'P.O. Box 4767', null, 'Bonnyville ', 'AB', 'Canada', 'T9N 0H2', 'Potential new customer
Janna in AP
$15,000. Approved credit AP/KS
1st shipment Jan 22/16
Don’t ship ACE Prepaid - ship by bus', 0, 1, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1157, 'Bar T Construction', '306-789-9777', '306-347-3399', 'Oct 17 1997 12:00AM', 'May  9 2017 12:00AM', 0, '1150 Park Street', null, 'Regina', 'SK', 'Canada', 'S4N 4Y9', 'LAST ORDER NOV/12
Reimer Express
Discount 20% reduced to 10% May 9/17
Called Jun 5/15 for current catalogue
quote in May/17
', 0, 1, 10)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2318, 'Dura Grid  /  Sport Grid', '306-955-6606', '306-373-8485', 'Sep 16 2002 12:00AM', 'Nov  1 2016 12:00AM', 0, '324 Packham Avenue', null, 'Saskatoon', 'SK', 'Canada', 'S7N 2T1', 'INACTIVE - 
Ron’s Brother Ken Ferdurko called 11/01/16 to get some for his own deck in Kelowna. 250-826-1111 - direct line

', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2148, 'Invermere Glass Ltd.', '250-342-3659', '250-342-3620', 'Apr  9 2001 12:00AM', 'May 30 2017 12:00AM', 0, '#3 109 Industrial Rd. #2', null, 'Invermere', 'BC', 'Canada', 'V0A 1K5', '15% Discount -effective Aug 27/13
Ace
credit app on file, Lynn for a/r, $20,000
PST EXEMPT - 1001-4493
Alex @ 250-608-2372', 0, 1, 15)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3102, 'VinCo Construction', '403-829-0828', null, 'May  9 2012 12:00AM', 'May 27 2015 12:00AM', 0, '352 Powell St.', null, 'Cochrane', 'AB', 'Canada', 'T4C 1Z1', 'CALL WHEN READY - PAY 1ST BEFORE SHIPPING
New address (mail/shipping) April 9/15
SHIPPING ADDRESS MAY CHANGE WITH EACH JOB', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2014, 'Candek Hearth & Leisure', '403-678-3094', '403-678-6276', 'Apr 19 2000 12:00AM', 'Dec 18 2013 12:00AM', 0, '1416 Railway Ave.', null, 'Canmore', 'AB', 'Canada', 'T1W 1P6', 'INACTIVE LAST ORDER NOV/11
CALL CUSTOMER TO ARRANGE P/U
Discount 20%
Purchase orders required!
credit app on file $10,000', 0, 1, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2253, 'Royal Railing Ltd.
', '403-253-6989', '403-253-6989', 'Mar 26 2002 12:00AM', 'Apr 11 2017 12:00AM', 0, '548 Arlington Dr. S.E.', null, 'Calgary', 'AB', 'Canada', 'T2H 1S6', 'Call Cell # 20% Discount
Overland, don’t ship greyhound, hates it
$40,000 approved credit AP
Pays by chq for month prior', 0, 1, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3039, 'Heartland Vinyl Fence Deck & Rail', '204-726-3323', '204-726-4268', 'Jun  9 2011 12:00AM', 'Dec 18 2013 12:00AM', 0, '1003 13th Street', null, 'Brandon', 'MB', 'Canada', 'R7A 4S3', 'INACTIVE- 3 order in 2011
new customer as per Stuart Spahic
freight by Reimer or Day & Ross
credit app on file $10,000', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3164, 'Pro-Exx Finishing Supplies', '780-818-4110', null, 'Oct 22 2013 12:00AM', 'May 29 2017 12:00AM', 0, '10-53016 Hwy 16', null, 'Acheson', 'AB', 'Canada', 'T5S 2R1', 'New Customer
$15,000. approved credit 
PO’s required for all orders
Setting up with Ace
Copy Ted on all correspondence', 0, 1, 15)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1647, 'S&S Aluminum Services Ltd. ', null, '403-580-8073', 'Mar 17 1999 12:00AM', 'Oct 25 2013 12:00AM', 0, '#50 - 4th Street SE', null, 'Medicine Hat', 'AB', 'Canada', 'T1A 0J8', 'INACTIVE
out of business
pay by chq on the 20th of each month
10% Discount
Ace
credit app on file $5,000 Chris in A/P', 0, 1, 10)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2844, 'The Renovation Guy Ltd.', '780-221-7489', '780-460-3948', 'May 13 2009 12:00AM', 'Sep 28 2016 12:00AM', 0, '93 Deer Ridge Dr.', null, 'St. Albert', 'AB', 'Canada', 'T8N 6A9', 'LAST ORDER JUN/15
ship everything OVERLAND, TRYING OUT APPS CARGO
Discount 20%

CHARGE CREDIT AT 30 DAYS AS PER RORY', 0, 1, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3007, 'Plaza 50 Management', '780-440-9000', null, 'Apr  8 2011 12:00AM', 'Dec 18 2013 12:00AM', 0, '8170 50Street', null, 'Edmonton', 'AB', 'Canada', 'T6B 1E6', 'INACTIVE - ONLY 1 QUOTE MAR/11
new customer - as per Stuart, sent credit application and contract for Leduc project', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2938, 'Trend Home Improvements', '780-538-4888', '780-532-0956', 'Apr 19 2010 12:00AM', 'Dec 18 2013 12:00AM', 0, '10029-97 Ave', null, 'Grand Prairie', 'AB', 'Canada', 'T8V 0N3', 'INACTIVE- LAST ORDER APR/11

Ship Cdn Freightways
no discount
visa on file, credit app on file $5,000 Tanya in A/P', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3191, 'Canmore Glass & Screen (1988) Ltd.', '403-678-4588', '403-678-5531', 'Mar  5 2015 12:00AM', 'Apr 17 2015 12:00AM', 0, '132 - 105 Bow Meadows Cres.', null, 'Canmore', 'AB', 'Canada', 'T1W 2W8', '$5,000 Credit Approved waiting for new credit app (signature on correct line)
A/P - Catherine to arrange shipping ', 0, 1, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3261, 'Deckadence Construction Inc.', '250-386-0400', '250-386-0405', 'May  2 2017 12:00AM', 'Aug  1 2017 12:00AM', 0, '4126 Delmar Ave. ', null, 'Victoria', 'BC', 'Canada', 'V8Z 5J6', 'New customer - formerly bought from Pro-Tech Exteriors
Discount ap/KS
$5,000. approved credit
Diamond Acct. #16777', 0, 0, 10)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2817, 'GK Enterprises', '250-439-3995', '250-365-5235', 'Feb 19 2009 12:00AM', 'Dec 18 2013 12:00AM', 0, '114 5th Ave', null, 'Castlegar', 'BC', 'Canada', 'V1N 1V3', 'INACTIVE LAST ORDER APR/11

10% DISCOUNT
OVERLAND original address Greg Ehman, 2423 Tutor Drive Comox, BC
V9M 0A8', 0, 0, 10)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2422, 'Superior Deck Ltd.', '250-212-3075', null, 'Jul  9 2003 12:00AM', 'Jul 31 2017 12:00AM', 0, '15124 Middlebench Rd.', null, 'Oyama', 'BC', 'Canada', 'V4V 2C4', 'DO NOT SHIP APPS
Credit card on file (2)
CR picks up orders
No pyramid caps on topless (Jan/15)
l.nell@shaw.ca 
', 0, 0, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3165, 'DURADEK SOUTH', '778-476-4176', '778-807-1317', 'Oct 25 2013 12:00AM', 'Aug  5 2017 12:00AM', 0, '#3, 215 Neave Rd.', null, 'Kelowna', 'BC', 'Canada', 'V1V 2L9', 'Ace drops of at Penticton address
$5.00 Kit Processing fee
Send copy of waybill with invoice

s7wood60@yahoo.ca', 0, 0, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2325, 'Great Canadian Sundeck & Railing Ltd.', '780-490-5539', '780-490-5421', 'Sep 30 2002 12:00AM', 'Oct 29 2013 12:00AM', 0, '6770 39th Ave', null, 'Edmonton', 'AB', 'Canada', 'T6K1T8', ' Last order Oct/12

Pays by visa as we ship out, no credit app on file.  
do not send to Stuart, history there', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2459, 'Century Aluminum', '778-516-6250', '778-516-6003', 'Dec 23 2003 12:00AM', 'Jun 26 2017 12:00AM', 0, '9685 Agur Street', null, 'Summerland', 'BC', 'Canada', 'V0H 1Z2', 'JOHN THIS IS NOT FOR YOU
Cost and sell price should always be the same - this customer only

INTERCOMPANY SALE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1703, 'Perma Deck and Rail', '403-271-7990', '403-278-5099', 'Apr 22 1999 12:00AM', 'Jan 15 2015 12:00AM', 0, 'Bay 10 5935 - 35 St SE', null, 'Calgary', 'AB', 'Canada', 'T2C 2H1', 'INACTIVE - LAST ORDER SEPT/13$10,000 approved credit
Requested new catalogue Aug/13
APPS account #PERMA5935C', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2322, 'Quigley Home Renovations', '403-443-5010', '403-443-7023', 'Sep 25 2002 12:00AM', 'Nov  6 2015 12:00AM', 0, 'Box 1330', null, 'Three Hills ', 'AB', 'Canada', 'T0M 2A0', 'Last order Oct/12 - new order Sept/15

Customer P/U
Discount 15%
Cr. Card or Cheque
$10,000 approved credit
', 0, 1, 15)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2739, 'Le Deck Solutions Ltd.', null, null, 'Aug  7 2007 12:00AM', 'Feb 27 2015 12:00AM', 0, '27 Copperfield Rise SE', null, 'Calgary', 'AB', 'Canada', 'T2Z 4R6', 'INACTIVE LAST ORDER JAN/12
Overland
15% Discount
approved credit $5,000 
sent to collections
EMAILS RETURNED', 0, 1, 15)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3185, 'Good Work Contracting', '250-551-0120', null, 'Sep 16 2014 12:00AM', 'Jun  1 2017 12:00AM', 0, '4450 Turner Rd.', null, 'Nelson', 'BC', 'Canada', 'V1L 6X2', 'New customer, copy Stu
Sent Catalogue & credit app Sept 16/14
PREFERS TO PAY 1ST

increased discount AP/KS

', 0, 0, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1353, 'D.C.H. Industries ', '250-632-1334', null, 'May 28 1998 12:00AM', 'May 25 2017 12:00AM', 0, '3 Greyling Avenue', null, 'Kitimat', 'BC', 'Canada', 'v8c 2p9', '10% discount

Email visa permission form with info for account after 30 days - card on file
approved credit', 0, 0, 10)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3167, 'Aurora Exteriors', '780-838-2688', null, 'Jan 20 2014 12:00AM', 'Jul 14 2017 12:00AM', 0, '319 Woodward Lane', null, 'Fort. McMurray', 'AB', 'Canada', 'T9H 5K8', 'New Customer
50,000 approved credit
discount increased Mar 23/17
20% discount, deal/deal on large projects
', 0, 1, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3205, 'Above the Grade Distribution Inc.
', '306-665-1277', '306-665-6775', 'Jul  8 2015 12:00AM', 'Jun 12 2017 12:00AM', 0, '3711 Kinnear Ave', null, 'Saskatoon', 'SK', 'Canada', 'S7P 0A6', 'Hanneson’s Retail Co. started July 8/15
$25,000.00 approved Credit
Ship CDN Frtwy - July 15/16 - AP/Derrek
', 0, 1, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2569, 'Universal Doors & Exteriors', '250-342-6700', '250-342-6710', 'Oct 25 2004 12:00AM', 'Mar  6 2017 12:00AM', 0, 'P.O. Box 2114', null, 'Invermere', 'BC', 'Canada', 'v0a  1k0', '15% discount effective Aug 27/13
Approved Credit $10,000
Call Cell during daytime
Purolator acct # 5514177', 0, 0, 15)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2097, 'Mid Island Sundecks', '250-468-1715', '250-468-1765', 'Sep 19 2003 12:00AM', 'Dec 18 2013 12:00AM', 0, '1962 Fredheim Road', null, 'Nanoose Bay', 'BC', 'Canada', 'V9T 3X4', 'INACTIVE LAST ORDER NOV/10
cannot send prepaid, cost is too much
15% discount, collect shipping
Overland ', 0, 0, 15)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1698, 'Eagle Exteriors Ltd.', '403-219-2777', '403-275-6908', 'Apr 19 1999 12:00AM', 'Jan 12 2015 12:00AM', 0, '#5, 1319 - 45th Ave. N.E.', null, 'Calgary', 'AB', 'Canada', 't2e 2p3', 'INACTIVE - LAST ORDER Dec/2010
10% Discount
Overland
visa on file, make payments as product is shipped', 0, 1, 10)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2390, 'Heartland Glass', '403-742-2665', '403-742-2678', 'Apr 30 2003 12:00AM', 'Mar 21 2017 12:00AM', 0, 'PO Box 2002', null, 'Stettler', 'AB', 'Canada', 'T0c 2l0', 'LAST ORDER APR/12

7% discount
Overland
$10,000 approved credit, Carol in A/P
emailed 2014 catalogue', 0, 1, 7)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2786, 'Monarch Siding Centres Inc.', '403-287-9222', '403-287-9069', 'Jul 10 2008 12:00AM', 'Apr  6 2017 12:00AM', 0, '10340-50 ST SE', null, 'Calgary', 'AB', 'Canada', 'T2C 3E4', 'Overland
Discount 15%
Chelsey in accts email both for invoices
403-537-5997
Overland Acct #5105845 
', 0, 1, 15)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3026, 'Lee’s Construction Ltd.', '204-745-6665', '204-745-6699', 'May  9 2011 12:00AM', 'Dec 18 2013 12:00AM', 0, '34 Main Street N PO Box 339', null, 'Carman', 'MB', 'Canada', 'R0G 0J0', 'INACTIVE - NO ORDERS
new customer - Stuart Spahic
Darren Lee, Darren.lee@mts.net
Samples sent May/10', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3158, 'Trev’s Handyman', '780-914-9138', null, 'Aug 28 2013 12:00AM', 'Sep 28 2016 12:00AM', 0, '47 Willow Park Est.', null, 'Leduc', 'AB', 'Canada', null, 'INACTIVE ONLY 2 QUOTES 2013 
no shipping acct yet.
Sent credit app - wants to pay 1st
sent catalogue', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3190, 'Upper Edge Contracting', '250-579-5833', '250-579-5821', 'Feb 23 2015 12:00AM', 'Jul  8 2016 12:00AM', 0, '881 Puhallo Dr.', null, 'Kamloops', 'BC', 'Canada', 'V2A 6P8', 'Used to buy from Continuous Gutters
$5,000. Credit approved
Some payment issues end 2015 early 2016
', 0, 0, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2784, 'ProSource', '780-476-8723', '780-476-8721', 'Jun 27 2008 12:00AM', 'Dec 18 2013 12:00AM', 0, '11204 - 178th Street', null, 'Edmonton', 'AB', 'Canada', 't5s 1p2', 'INACTIVE LAST ORDER APR/11

$5,000 approved credit app on file
Overland
Brian declined for discount', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3219, 'Viewpoint Decking Ltd.', '403-700-7403', null, 'Nov  5 2015 12:00AM', 'Jul 25 2017 12:00AM', 0, '2703 Morley Trail', null, 'Calgary', 'AB', 'Canada', 'T2M 4G8', 'Potential New Customer
CC on File - PAYS BEFORE SHIPPING
Steve Frederick 403-990-9116 silent part
', 0, 1, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2988, 'Pacific Home Products Ltd.', '306-244-2800', '306-242-9363', 'Feb 18 2011 12:00AM', 'Oct 11 2013 12:00AM', 0, '#1-501 45th Street West', null, 'Saskatoon', 'SK', 'Canada', 'S7L 5Z9', 'INACTIVE - 1 quote Feb/11
new customer, needs to fill out approved credit application
no discount', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3071, 'DekKor Railings', '705-733-5374', '705-726-6066', 'Sep 22 2011 12:00AM', 'Dec 18 2013 12:00AM', 0, null, null, 'Newmarket', 'ON', 'Canada', null, 'INACTIVE NO ORDERS 3 quotes 2011
a new customer, Greg Elliott, quote so far, need all information', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2853, 'SB Windows & Doors Ltd.', '250-746-9570', '250-385-9569', 'Jun  2 2009 12:00AM', 'Dec 18 2013 12:00AM', 0, '5272 Boal Rd.', null, 'Duncan', 'BC', 'Canada', 'V9L 6W3', 'INACTIVE - LAST ORDER OCT/11
ONE quote July/12

Ace Courier Collect
Discount 20%
PST EXEMPT????
', 0, 1, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3257, 'Renewall Projects Inc.', '403-980-1160', '403-980-1161', 'Apr 12 2017 12:00AM', 'Jul  5 2017 12:00AM', 0, '214 2914 Kingsview Blvd SE', null, 'Airdrie', 'AB', 'Canada', 'T4A 0E1', 'Potential new customer
1st set of samples sent prepaid 
Discount ap/ks
$10,000. Approved Credit ', 0, 1, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2877, 'Hart Custom Installs', '780-482-6124', null, 'Aug 26 2009 12:00AM', 'Dec 18 2013 12:00AM', 0, '4607 - 163A   Ave', null, 'Edmonton', 'AB', 'Canada', 'T5Y 3H7', 'INACTIVE - LAST ORDER JUN/10

Overland
Discount 20%
next order he needs to fill out credit app', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3237, 'Gregg Seib', '250-486-7177', null, 'May 25 2016 12:00AM', 'Feb  2 2017 12:00AM', 0, '1147 Moosejaw St.', null, 'Penticton', 'BC', 'Canada', 'V2A 5T8', 'New customer - Formerly work
ed for GL Aluminum - independent now. Pay for orders as shipped.
', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2795, 'Viking Conversion Corp.', '306-934-2444', '306-955-7867', 'Aug 22 2008 12:00AM', 'Dec 18 2013 12:00AM', 0, '#3 320 5th Ave North', null, 'Saskatoon', 'SK', 'Canada', 'S7K 2P5', 'INACTIVE LAST ORDER AUG/11

20% dis
Kindersley
pay before shipping, hasn’t ordered in forever', 0, 1, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2805, 'West Coast Builders', '604-414-5182', null, 'Oct 23 2008 12:00AM', 'Oct 11 2013 12:00AM', 0, '3538 Lund Hwy.', null, 'Powell River', 'BC', 'Canada', 'V8A 4Z3', 'INACTIVE
SEVERAL QUOTES IN 2010
Ace Collect
Discount 20%
Credit Card
www.westcoastbuilders.ca', 0, 0, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3049, 'Wright On Construction inc.', '403-616-7419', '403-239-8410', 'Jul  4 2011 12:00AM', 'Dec 18 2013 12:00AM', 0, '#141 405 64th Ave NE', null, 'Calgary', 'AB', 'Canada', 'T2K 6J6', 'INACTIVE - 1 ORDER JUL/11
just finishing old job
pay by visa before shipping
ship by Overland', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3210, 'Acorn Wood Products', '403-874-7293', null, 'Sep 23 2015 12:00AM', 'May 29 2017 12:00AM', 0, '120 Coopers Heights', null, 'Airdrie', 'AB', 'Canada', null, 'Potential new customer
no credit app
Deliver to - Home Hardware - listed as cell 403-948-5535', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3156, 'Excel Sundecks', '250-870-7366', null, 'Aug 19 2013 12:00AM', 'May 15 2017 12:00AM', 0, '3244 McMahon Rd,', null, 'West Kelowna', 'BC', 'Canada', 'V4T 1G3', 'MUST PAY 1ST
VISA ON FILE
PST EXEMPT #1000-1163
ALL ORDERS MUST BE CLEARED BY KEN/WARREN 1ST', 0, 1, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2615, 'Dexpert Services Inc.', '780-429-4339', null, 'May  3 2005 12:00AM', 'Dec 18 2013 12:00AM', 0, 'Suite 1402, 5328 Calgary Trail', null, 'Edmonton', 'AB', 'Canada', 'T6H 4J8', ' INACTIVE - LAST ORDER SEP/10
Overland
15% Discount
fax 306-651-2869
$5,000 approved credit', 0, 1, 15)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2843, 'Mabel’s Deck Care', '250-551-4082', null, 'May 13 2009 12:00AM', 'Jun  7 2017 12:00AM', 0, '#3 2727 Lower Six Mile Rd.', null, 'Nelson', 'BC', 'Canada', 'V1L 6L5', 'Ace
Discount 20%
credit app on file $5000
Shirley Ruim - A/R
requested cat be sent by mail
', 0, 0, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2927, 'Countersale 

', null, null, 'Mar 23 2010 12:00AM', 'Jul 26 2017 12:00AM', 0, null, null, 'Summerland', 'BC', 'Canada', null, 'Paid with Cash at Front Counter
Friends/Family - 20% discount
OTC SALES  - ADD 20% to price', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2954, 'Countryside Manufactured Homes ', '250-832-6699', '250-832-2418', 'Jun  7 2010 12:00AM', 'Feb 28 2017 12:00AM', 0, 'Box 1661 ', null, 'Salmon Arm', 'BC', 'Canada', 'V1E 4P7', 'Discount 7% increased Feb/17 AP/KS
$20,000 approved credit
April in accounting
ship by ACE', 0, 0, 15)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3197, 'Nelson Aluminum', '250-354-7175', null, 'May  8 2015 12:00AM', 'Jun  3 2016 12:00AM', 0, null, null, 'Nelson', 'BC', 'Canada', null, 'Potential customer - quotes
Approved - KS
MOVED TO ISLAND - may be starting business there', 0, 0, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1994, 'Holt Decking', '250-756-2128', '250-756-2128', 'Jan 31 2000 12:00AM', 'Oct 11 2013 12:00AM', 0, '3443 Meadowlane Road', null, 'Nanaimo', 'BC', 'Canada', 'V9T 5T5', 'INACTIVE
DO NOT USE THIS ADDRESS, NO LONGER HOLT DECKING!  USE NANAIMO SUNDECK SOLUTIONS!', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2967, 'Unique Windows & Solariums', '250-427-2718', '250-427-2719', 'Aug 19 2010 12:00AM', 'May 31 2017 12:00AM', 0, '341 -  315 Ave', null, 'Marysville', 'BC', 'Canada', 'V1A 3G6', 'credit app, $5,000
DEKSMART CUSTOMER
Overland
Doris in office
DON’T SEND SMALL JOBS ALONE', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3152, 'Capital City Window & Door', '306-536-4330', null, 'Jul  5 2013 12:00AM', 'Oct 25 2013 12:00AM', 0, '1620 - 9th Ave. East', null, 'Regina ', 'SK', 'Canada', 'S4N 6J9', 'New customer - only 3 quotes in 2013
20% discount 1st order only
Panels $14.52/ft (R6502)', 0, 0, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3181, 'Fenced In & Decked Out', '780-870-5075', null, 'Aug 21 2014 12:00AM', 'Feb  5 2016 12:00AM', 0, '3206 - 55A Ave', null, 'Lloydminster', 'AB', 'Canada', 'T9V 1S6', 'sent colour samples in mail Sept 15/14
Credit app rec’d - no responses - denied
PAYS 1ST ', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3184, 'Jay’s Custom Fabricating', '780-235-0812', null, 'Sep  9 2014 12:00AM', 'Sep 23 2015 12:00AM', 0, '9528 69 Ave', null, 'Edmonton', 'AB', 'Canada', 'T6E 0S3', '1043981 AB Ltd 
SHIP TO 8402 45 St.
$10,000 approved credit
card on file - NOT COMPLETE
', 0, 1, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1188, 'Harry’s Boundry Sunshine Decks
', '250-449-1716', null, 'Oct 31 1997 12:00AM', 'Mar 16 2017 12:00AM', 0, '520A C14 RR #2 ', null, 'Rock Creek', 'BC', 'Canada', 'v0h 1Y0', 'last order Sept/12- Again Jun/14
some orders in 2016
PAYS 1ST
No Discount
250-449-1716
', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1413, 'Stampede Glass', '250-392-5681', '250-392-5683', 'Jun 24 1998 12:00AM', 'Apr 19 2016 12:00AM', 0, '48 Yorston Street', null, 'Williams Lake', 'BC', 'Canada', 'V2G  1G7', 'One job 2012 just hinges
1 quote in Sept/13, small job in Mar/14
PST EXEMPT #1002-7303
', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2992, 'J & D Ventures ', '403-808-7325', null, 'Mar 17 2011 12:00AM', 'Jul  7 2015 12:00AM', 0, '17 West Boothby Cr', null, 'Cochrane', 'AB', 'Canada', 'T4C 1L9', '
PAYS BY VISA AS HE SHIPS
20% discount
APPS - effective July 3/14
NEVER SHIP GREYHOUND', 0, 1, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3017, 'G.L Aluminum ', '250-767-0043', '250-767-0102', 'May  2 2011 12:00AM', 'May 25 2016 12:00AM', 0, '6446 Mack Road', null, 'Peachland', 'BC', 'Canada', 'V0H 1X0', 'Last order Aug/12
DEKSMART CUSTOMER
MUST COMPLETE CREDIT APP BEFORE WE SHIP ANY ORDERS', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3168, 'Heritage Deck & Rail', '403-999-2944', null, 'Jan 22 2014 12:00AM', 'Feb 19 2014 12:00AM', 0, '102 C Oak Ave.', null, 'Okotoks', 'AB', 'Canada', 'T1S 1H9', 'New Customer, waiting for credit app to be returned.
MUST PAY1st
25% on large projects', 0, 1, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3255, 'Tenmar Contracting', '604-819-9896', null, 'Mar 17 2017 12:00AM', 'Mar 17 2017 12:00AM', 0, null, null, null, 'BC', 'Canada', null, 'Potential new customer
Discount AP/KS
2017 cat/no pricing & credit app sent with quote', 0, 0, 30)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2878, 'Titan Pacific', '250-404-0196', '250-404-0265', 'Aug 31 2009 12:00AM', 'Oct 29 2013 12:00AM', 0, 'P.O. Box 960, 9206 Shale Ave.', null, 'Summerland', 'BC', 'Canada', 'v0h 1z0', 'Last order Aug/12

10% discount
approved credit app on file
COLLEENR@TITANPACIFIC.NET', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2671, 'Northcoast Door & Window Ltd.', '250-334-3350', '250-334-3278', 'Oct 25 2005 12:00AM', 'Oct 29 2013 12:00AM', 0, '5352 - B Island Highway ', null, 'Courtenay', 'BC', 'Canada', 'v9j 1s9', ' Last order Oct/12

10% Discount
Clark Freightways or Overland
PST EXEMPT #1012-6912', 0, 0, 10)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3199, 'Wabcor Painting & Renovation', '780-699-8700', '780-474-1068', 'May 29 2015 12:00AM', 'Feb  1 2016 12:00AM', 0, '12558 72 Street', null, 'Edmonton', 'AB', 'Canada', 'T5B 1Y6', 'Potential new customer sending samples
o/a Wabcor Contracting
$5000. approved credit', 0, 1, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3265, 'Blackwood-Fyfe ', '250-287-6161', null, 'Jun  1 2017 12:00AM', 'Jun 14 2017 12:00AM', 0, '4256 Macaulay Rd.
', null, 'Black Creek', 'BC', 'Canada', 'V9J 1E1', 'Formerly Carrington Bay - changed hands
PAYS 1ST - MC
1 of each sample sent Jun/17
', 0, 0, 7)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1006, 'The Sundeck Shoppe  Inc.', '403-710-2882', '403-247-4883', 'Jul  2 1997 12:00AM', 'Aug 31 2016 12:00AM', 0, '25122  Rocky Range View', null, 'Calgary', 'AB', 'Canada', 'T3Z 1k8', 'first order since vinyl in 2009 (Jun/12)
sent credit application
Must Pay 1st - 

', 0, 1, 10)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2835, 'Advanced Dec-k-ing', '604-230-3029', null, 'Apr 29 2009 12:00AM', 'Oct 11 2013 12:00AM', 0, '1793 Jensen Ave', null, 'Port Coquitlam', 'BC', 'Canada', 'v3B 2E2', 'INACTIVE

$1.40 any 2 vinyls
$1.50 bareback
%1.60 all others
Prepaid Freight - Ace', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2937, 'Ted McWilliams', '250-718-4100', '250-860-6492', 'Apr 15 2010 12:00AM', 'Dec 18 2013 12:00AM', 0, '3596 Lakeshore Dr.', null, 'Kelowna', 'BC', 'Canada', 'V1W 3L5', 'INACTIVE- LAST ORDER SEP/11

customer will pick up
no discount
credit app on file
', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3201, 'Ronin Construction', null, null, 'Jun  5 2015 12:00AM', 'Jun 15 2017 12:00AM', 0, null, null, 'Kamloops', 'BC', 'Canada', null, 'Needs to buy from dealer - Removed
Potential New Customer
$20,000. approved credit', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3235, 'Glacier View Glass', '778-463-4500', null, 'Apr 27 2016 12:00AM', 'Aug  4 2017 12:00AM', 0, '610 Lakeside Dr.', null, 'Nelson', 'BC', 'Canada', 'V1L 5S7', 'Potential new customer
Discount AP/KS $5,000 Approved credit
PST EXEMPT #1054-1739', 0, 1, 10)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3027, 'Argon Gate & Railing Manufacturing', '204-392-2278', null, 'May  9 2011 12:00AM', 'Dec 18 2013 12:00AM', 0, '28 Beaverbrook Drive', null, 'Steinbach', 'MB', 'Canada', 'R5G 1L3', 'INACTIVE - NO ORDERS  - 3 quotes
new customer - Stuart Spahic
Samples sent May/12', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3082, 'Noah’s Ark', '250-493-3010', null, 'Jan  5 2012 12:00AM', 'Dec  6 2016 12:00AM', 0, '#104-1219 Commercial Way', null, 'Penticton', 'BC', 'Canada', 'V2A 3H4', 'Counter Sale - 2 ORDERS IN 2012
LAST ORDER May/14 & May/15

PST EXEMPT #1002-5481', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2991, 'Landau Installation Group', '604-897-8986', '604-852-3977', 'Mar 15 2011 12:00AM', 'Apr 21 2016 12:00AM', 0, '34168 Glenwill St.', null, 'Abbotsford', 'BC', 'Canada', 'V2S 1X6', 'ACE for shipping
25% opening discount
$25,000 Approved credit increase Feb/16


', 0, 0, 25)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3046, 'Brent Dunn', '403-831-4636', '403-547-8383', 'Jun 22 2011 12:00AM', 'Dec 18 2013 12:00AM', 0, '63 MacEwan Glen Way N.W.', null, 'Calgary', 'AB', 'Canada', 'T3K 2G6', 'INACTIVE LAST ORDER NOV/11
Old customer from years ago
must pay before shipping
', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3130, 'MacLaren’s Renovations (Regina)', '306-775-1400', '306-545-8300', 'Aug  2 2012 12:00AM', 'Oct 17 2016 12:00AM', 0, '7803 Venture Rd', null, 'Regina', 'SK', 'Canada', 'S4Y 1C2', 'LAST ORDER AUG/14 B4 - 2012
new customer
APPROVED $5,000 CREDIT
3 Orders in 2014', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3226, 'Exterior Solutions LLC.', '509-866-8547', '509-855-1577', 'Feb  4 2016 12:00AM', 'Jun 15 2017 12:00AM', 0, 'PO Box 275', null, 'Malaga ', 'WA', 'United States', '98828', 'New customer Samples sent - 
$15,000 US Approved credit - KS
Meliisa in office

', 0, 1, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2731, '1265918 Alberta Corp ', '403-815-5668', '403-276-3952', 'May 28 2007 12:00AM', 'Oct 29 2013 12:00AM', 0, '#11 Perwick Hill N.W.', null, 'Calgary', 'AB', 'Canada', 'T3K 1C4', 'Last order Sept/12

DBA: Oasis Contracting
10%
ship APPS
(used to use Overland)', 0, 1, 10)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2854, 'Royer Homes', '780-429-6111', '780-929-9041', 'Jun  4 2009 12:00AM', 'Dec 18 2013 12:00AM', 0, '4916 - 50th Ave.', null, 'Beaumont', 'AB', 'Canada', 'T4X 1J9', 'INACTIVE- LAST ORDER MAR/11

Overland
Discount 15%
Pays by visa before shipping', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2661, 'WeatherGuard Contracting', '403-519-7076', '403-230-5137', 'Sep 14 2005 12:00AM', 'Dec 18 2013 12:00AM', 0, '235A - 18th Ave. N.E.', null, 'Calgary', 'AB', 'Canada', 't2e 1n3', 'INACTIVE LAST ORDER OCT/10

20% discount
trying out ACE
usually ship Overland', 0, 1, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2952, 'ALC Installations', '250-301-7677', null, 'Jun  1 2010 12:00AM', 'Dec 18 2013 12:00AM', 0, '345 Alward Street', null, 'Prince George', 'BC', 'Canada', 'V2M 2E2', 'INACTIVE - LAST ORDER FEB/11

ACE courier
pay by Mastercard as it is shipped
', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3050, 'Fancy Stairs & Railing', '780-909-9464', null, 'Jul  4 2011 12:00AM', 'Dec 18 2013 12:00AM', 0, '3123 92nd Street', null, 'Edmonton', 'AB', 'Canada', 't6n 1b9', 'INACTIVE 3 ORDERS IN 2011
NEW CUSTOMER - STUART SPAHIC
$5,000 approved credit', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2733, 'Kayola Building Systems', '250-447-6224', '250-447-6331', 'Jun  4 2007 12:00AM', 'Oct 11 2013 12:00AM', 0, 'Box 503 , 99 Chase Road', null, 'Christina Lake', 'BC', 'Canada', 'V0H 1E0', 'INACTIVE
PST # R449504
10% discount on Rail
Group C on Vinyl
net 30 days o/a', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3006, 'Alfa Floors and Decking', '780-444-1500', '780-444-1660', 'Apr  7 2011 12:00AM', 'Dec 18 2013 12:00AM', 0, '#100, 17878-106 ave', null, 'Edmonton', 'AB', 'Canada', 'T5S 1V4', 'INACTIVE - NO ORDERS
new customer - as per Stuart Spahic
Samples sent Apr/11', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3013, 'Dino’s Landscape and Design', '403-320-7005', null, 'Apr 19 2011 12:00AM', 'Dec 18 2013 12:00AM', 0, '2 4416 1 Avenue South', null, 'Lethbridge', 'AB', 'Canada', 'T1J 4B3', 'INACTIVE - Samples sent Apr/11 
No orders

new customer as per Stuart Spahic', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3045, 'Precision Glass', '250-493-6066', '250-492-3995', 'Jun 22 2011 12:00AM', 'Sep 28 2016 12:00AM', 0, '145 Okanagan Ave E', null, 'Penticton', 'BC', 'Canada', 'V2A 3J6', 'LAST ORDER AUG/14 1 quote 2015 counter sale
PST EXEMPT #1002-0141
Kim A/P
', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3200, 'Marksman Home Improvements', '250-376-8008', null, 'Jun  2 2015 12:00AM', 'Jun 15 2017 12:00AM', 0, '2385 Tranquille Rd. ', null, 'Kamloops', 'BC', 'Canada', null, 'REMOVE - doesn’t fit our profile 
Potential new customer - called office
', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1102, 'Fred Schlossberger', '250-489-1600', null, 'Aug 22 1997 12:00AM', 'Jan 12 2015 12:00AM', 0, '3322 - 37th Street South', null, 'Cranbrook', 'BC', 'Canada', 'v1c 6z9', 'INACTIVE - LAST ORDER Dec 2010
7 % discount
Painted Screws only
Overland', 0, 0, 7)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2833, 'Lonestar Construction Ltd.', '250-265-4649', '250-265-4555', 'Apr 24 2009 12:00AM', 'Dec 18 2013 12:00AM', 0, 'P. O. Box 840', null, 'Nakusp', 'BC', 'Canada', 'V0G 1R0', 'INACTIVE LAST AUG/10

Ship Overland, no discount
$10,000 approved credit', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3195, 'Van Hagen Enterprises Inc.', '403-710-6062', '403-981-8738', 'May  8 2015 12:00AM', 'May 25 2017 12:00AM', 0, '59 West Terrace Rd.', null, 'Cochrane', 'AB', 'Canada', 'T4C 1S6', '
$5,000 Approved credit KS-C/C on file
Van-Kam Acct# 0421394
Ace Acct # ', 0, 1, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2058, 'Collins Construction', '306-634-7064', null, 'Jun 23 2000 12:00AM', 'May 17 2017 12:00AM', 0, '302 Poplar Bay', null, 'Estevan', 'SK', 'Canada', 'S4A 2C4', 'sm order in Aug/14
PAYS FIRST - CC on file - no need to phone
CALL CELL', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2212, 'Endicott Construction Ltd.', '250-428-4402', '250-428-9702', 'Aug 21 2001 12:00AM', 'Apr  8 2015 12:00AM', 0, '2552 Sinclair Rd. Box 123', null, 'Creston', 'BC', 'Canada', 'V0B 1g2', 'INACTIVE - LAST ORDER APR/13
No discount
credit app on file
CALL CELL #', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2139, 'Ideal Sundecks (1979) Ltd.', '780-903-9035', '780-485-1512', 'Feb 13 2001 12:00AM', 'Oct 11 2013 12:00AM', 0, '7219  77th Ave', null, 'Edmonton', 'AB', 'Canada', 'T6B 0B5', 'INACTIVE
DO NOT USE THIS ONE!!
Group A vinyl
Overland
Discount 20%
M/C', 0, 1, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3025, 'J & C DECK AND FENCE', '204-294-3646', null, 'May  9 2011 12:00AM', 'Dec 18 2013 12:00AM', 0, '1080 Dorchester Ave', null, 'Winnipeg', 'MB', 'Canada', 'R3M 0S3', 'INACTIVE - NO ORDERS
new customer - Stuart Spahic
Samples sent May/11', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3260, 'Keystone Glass', '204-728-4355', null, 'Apr 21 2017 12:00AM', 'Jun 15 2017 12:00AM', 0, '745 - 17th Street', null, 'Brandon', 'MB', 'Canada', 'R7A 5A1', 'Potential new customer
1st set of samples sent Prepaid
Discount AP/KS', 0, 1, 10)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2771, 'Reliable Renovations', '250-833-9921', '250-675-2201', 'May  7 2008 12:00AM', 'Oct 11 2013 12:00AM', 0, 'P. O. Box 39', null, 'Blind Bay', 'BC', 'Canada', 'V0E 1H0', 'INACTIVE
Railing 10% until August 7/08
Discount 10%
Customer Pick Up', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2811, 'Special T Roofing & Exteriors', '403-235-5457', '403-272-3857', 'Nov 28 2008 12:00AM', 'Apr  4 2017 12:00AM', 0, '275 Harvest Creek Close NE', null, 'Calgary', 'AB', 'Canada', 't3k 4p8', 'Overland Collect
Discount 7%
pays w Credit Card, on file
Call Cell #', 0, 1, 7)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1661, 'Cariboo Weatherdek', '250-398-6053', null, 'Mar 31 1999 12:00AM', 'Jun 16 2016 12:00AM', 0, '335 Clearview Crescent', null, 'Williams Lake', 'BC', 'Canada', 'V2G 2G0', 'INACTIVE - NEW QUOTE JUN/16
Always contact Derrick on his Cell
Ace ', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3229, 'Nova Renovations', '250-216-9361', null, 'Feb 10 2016 12:00AM', 'Jun 15 2017 12:00AM', 0, '2037 Melville Drive', null, 'Sidney', 'BC', 'Canada', 'V8L 2N2', 'Potential new customer
$5,000. Approved Credit - KS
Phone is Cell #', 0, 0, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2335, 'Hay City Projects Ltd.', '403-556-3065', '403-556-7365', 'Oct 21 2002 12:00AM', 'Dec 18 2013 12:00AM', 0, 'Box 3903,  5418 - 46 St.', null, 'Olds', 'AB', 'Canada', 'T4H 1P7', 'INACTIVE LAST ORDER MAY/11

10% Discount
NEEDS CREDIT APP
Bob Hays', 0, 1, 10)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2791, 'S & A Exteriors Ltd.', '403-945-3358', '403-420-1338', 'Jul 24 2008 12:00AM', 'Oct 11 2013 12:00AM', 0, '136 Sagewood Grove SW', null, 'Airdrie', 'AB', 'Canada', 'T4B 3B2', 'INACTIVEDiscount 10%
Overland
needs to fill out credit application', 0, 1, 10)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3248, 'Gaultier Enterprises Ltd.', '604-793-3427', null, 'Dec  2 2016 12:00AM', 'Jan 17 2017 12:00AM', 0, '42719 Janzen Rd', null, 'Chilliwack', 'BC', 'Canada', 'V2R 4K4', 'Potential new customer - discount ap/ks
Approved Credit - $20,000.', 0, 0, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2283, 'Elite Vinyl Products', '403-888-2246', '403-948-2599', 'Jun 13 2002 12:00AM', 'Dec 18 2013 12:00AM', 0, 'Box 5367', null, 'Airdrie', 'AB', 'Canada', 'T4B 2T9', 'INACTIVE - NO ORDERS

NO CREDIT, must pay by visa before shipping', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3022, 'Carpet Master', '403-362-3819', null, 'May  3 2011 12:00AM', 'Dec 18 2013 12:00AM', 0, '819 1st Street W', null, 'Brooks', 'AB', 'Canada', 'T1R 0N4', 'INACTIVE NO ORDERS
new customer-stuart spahic
Samples sent May/11', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3024, 'Deckscape', '204-489-4605', null, 'May  9 2011 12:00AM', 'Dec 18 2013 12:00AM', 0, '1574 Wellington Cres', null, 'Winnipeg', 'MB', 'Canada', 'R3N 0B3', 'INACTIVE NO ORDERS
new customer-stuart spahic
Samples sent May/11', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3140, 'Freedom Property Solutions', '877-627-2770', null, 'Sep 20 2012 12:00AM', 'Jan 20 2016 12:00AM', 0, '203 Cowichan Court West', null, 'Lethbridge', 'AB', 'Canada', 'T1K 7M9', 'new customer
must pay by visa before shipping
Samples sent Sep/12', 0, 1, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3183, 'K-Country Homes', '250-417-6681', '250-426-6199', 'Sep  2 2014 12:00AM', 'Jun 22 2017 12:00AM', 0, '2517-4th St. S.', null, 'Cranbrook', 'BC', 'Canada', 'V1C 5C5', 'New customer - 1st order on card
Sent credit app & Cat Sept 25/14', 0, 0, 10)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3224, 'Backyard By Design, LLC', '509-736-3300', '509-426-7702', 'Jan 12 2016 12:00AM', 'Mar 24 2017 12:00AM', 0, '102 E. Columbia Dr. ', null, 'Kennewick', 'WA', 'United States', '99336', 'Approved Credit - $10,000. US
Fax #866-426-7702
IRS # 26-4129499
', 1, 1, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3228, 'Tri-City Glass & Door', '920-468-7820', '920-468-5337', 'Feb  5 2016 12:00AM', 'May 29 2017 12:00AM', 0, '1811 E Mason St', null, 'Green Bay', 'WI', 'United States', '54302', 'US CUSTOMER
Potential new customer
waive min. on 1st order ($300)', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2982, 'home hardware

', '403-230-6747', '403-398-9910', 'Jan  4 2011 12:00AM', 'Dec 18 2013 12:00AM', 0, '261185 Wagon Wheel Way', null, 'Rocky View', 'AB', 'Canada', 'T4Z oE2', 'INACTIVE- NO ORDERS
note the two customers for the same address!', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3021, 'Timko Home Improvement', '403-527-1211', '403-504-9334', 'May  3 2011 12:00AM', 'Dec 18 2013 12:00AM', 0, '964c 23rd Street SW', null, 'Medicine Hat', 'AB', 'Canada', 'T1A 8G3', 'INACTIVE 1 QUOTE JUN/11
AS PER STUART SPAHIC
Samples sent May/11', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2950, 'TWS Installations Co.', '250-866-5246', '250-866-5246', 'May 28 2010 12:00AM', 'Dec 18 2013 12:00AM', 0, '5138 Elsie Holmes Road S14, C9, RR1', null, 'Wynndel', 'BC', 'Canada', 'V0B 2N0', 'INACTIVE 1 QUOTE IN 2010 
New customer, Warren meeting with him', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3037, 'Amos & Seamus Holding Ltd.', '204-880-6280', null, 'Jun  3 2011 12:00AM', 'Dec 18 2013 12:00AM', 0, '203-30 Valhalla Drive', null, 'Winnipeg', 'MB', 'Canada', 'R2G 0X8', 'INACTIVE - NO ORDERS
new customer as per Stuart 
1 quote Jun/11', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2036, 'Diamond Glass Ltd.', '867-873-9178', '867-873-3739', 'May 19 2000 12:00AM', 'Jul  4 2017 12:00AM', 0, 'P.O. Box 1645, 329 Old Airport Rd', null, 'Yellowknife', 'NWT', 'Canada', 'X1A 2P2', '10 % DISCOUNT
Canadian Freightways
pays by chq - A/P - Debbie', 0, 1, 10)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2565, 'Nu-Tech Construction', '250-365-2622', '250-365-2944', 'Oct  5 2004 12:00AM', 'Dec 18 2013 12:00AM', 0, 'Box 3152', null, 'Castlegar', 'BC', 'Canada', 'V1N 3H5', 'INACTIVE LAST ORDER MAR/11

Discount 15%
Canadian Freightways', 0, 0, 15)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3020, 'Advanced Glass and Aluminum', '403-327-1581', '403-328-5250', 'May  3 2011 12:00AM', 'Dec 18 2013 12:00AM', 0, '221-31st Street N', null, 'Lethbridge', 'AB', 'Canada', 'T1J 3z6', 'INACTIVE - NO ORDERS
AS PER STUART SPAHIC
Samples sent May/11', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3218, 'R & D Construction', '250-319-4224', null, 'Nov  4 2015 12:00AM', 'Jun 15 2017 12:00AM', 0, '712 East Athabasca ', null, 'Kamloops', 'BC', 'Canada', 'V2H 1C9', 'Potential new customer
CR to arrange shipping
Kelly in office', 0, 0, 10)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3227, 'Dicks’s Evergreen Fence & Deck Co. Ltd.', '503-640-7770', '503-640-0466', 'Feb  5 2016 12:00AM', 'Jun 15 2017 12:00AM', 0, '4815 SE T.V. Hwy', null, 'Hillsboro', 'OR', 'United States', '97123', 'New customer 
$5,000 approved credit
Sending samples Feb 4/16', 0, 1, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3234, 'Home Improvement Products Inc.', '509-248-4610', '509-248-0978', 'Apr 15 2016 12:00AM', 'Apr 15 2016 12:00AM', 0, '100 Coombs Rd.', null, 'Moxee', 'WA', 'United States', '98936-9329', 'New customer -sent samples Apr/16
$5,000 US approved credit
', 1, 1, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3211, 'Moores Waterproofing', '250-793-9581', null, 'Oct  7 2015 12:00AM', 'Jun 15 2017 12:00AM', 0, 'P.O. Box 939', null, 'Fort. Saint John', 'BC', 'Canada', null, 'Potential new customer - phoned office
NEED SHIPPING INFO!!', 0, 0, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2850, 'Parkland Fibreglass', '403-978-3325', '403-567-0367', 'May 27 2009 12:00AM', 'Dec 18 2013 12:00AM', 0, 'Box 17, Site 7', null, 'Balzac', 'AB', 'Canada', 'T0M 0E0', 'INACTIVE- LAST ORDER NOV/09
Overland
Discount 20%
Cr. Card', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2961, 'Bulldog Installations', '403-542-8411', '403-208-6122', 'Jun 23 2010 12:00AM', 'Dec 18 2013 12:00AM', 0, '141 SharpHill Drive', null, 'Balzac', 'AB', 'Canada', 'Tom 0E0', 'INACTIVE - LAST ORDER JUN/10

charge when shipped
Overland', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3259, 'Southwest Design & Construction Ltd.', '780-830-2400', null, 'Apr 20 2017 12:00AM', 'Jul 24 2017 12:00AM', 0, '11453 - 98 Ave.', null, 'Grande Prairie ', 'AB', 'Canada', 'T8V 5S5', 'Potential new customer
Discount ap/KS
NEEDS DIMS FOR QUOTE', 0, 1, 10)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2823, 'Echelon Homes Inc.', '250-270-9447', '250-341-6081', 'Apr  6 2009 12:00AM', 'Oct 11 2013 12:00AM', 0, 'P.O. Box 2586', null, 'Invermere', 'BC', 'Canada', 'V0A 1K0', 'INACTIVE

Byers Transport
Group ‘C’ pricing until July/09', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2924, 'Danny Wohlford', '250-809-2640', null, 'Mar 19 2010 12:00AM', 'Oct 11 2013 12:00AM', 0, '1761 2ND AVE SE', null, 'Salmon Arm', 'BC', 'Canada', 'V1E 1T8', 'INACTIVE

PURCHASED IN 2010
20% discount
Customer pick-up', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2598, 'Delta Construction & Siding Ltd.', '403-241-9838', '403-208-0217', 'Mar 18 2005 12:00AM', 'Jun  2 2016 12:00AM', 0, '39 Skyline Cresc. N.E.', null, 'Calgary ', 'AB', 'Canada', 'T2K 5X2', 'Last order Jan/12

20%
Overland
Resent credit app May/16', 0, 1, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2849, 'Brad’s Renos', '250-803-1247', null, 'May 26 2009 12:00AM', 'Dec 18 2013 12:00AM', 0, '201 Twin Lakes Road', null, 'Enderby', 'BC', 'Canada', 'V0E 1V3', 'INACTIVE - LAST ORDER SEP/10

Discount 20%
Customer P/U', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3222, 'Chephren Building', '780-399-4998', null, 'Nov 20 2015 12:00AM', 'Aug  2 2017 12:00AM', 0, '#328 466 Macewan Rd SW', null, 'Edmonton', 'AB', 'Canada', 'T6W 1W2', 'Credit App sent Nov 20/15
10% discount for now ap/mike', 0, 1, 10)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2579, 'Savary Construction', '250-835-4884', '250-833-4089', 'Nov 22 2004 12:00AM', 'Sep 23 2015 12:00AM', 0, '2190 - 28th Street N.E.', null, 'Salmon Arm', 'BC', 'Canada', 'v1e 3e1', 'INACTIVE - 2009 - START 2015

Ace Collect
No Discount', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3126, 'Excell Railing Systems Inc.', '866-999-7245', '866-501-0155', 'Jul 19 2012 12:00AM', 'Nov 19 2014 12:00AM', 0, '#306-12886 Anvil Way', null, 'Surrey', 'BC', 'Canada', 'V3W 8E7', '$10,000. credit on file
Laurie 
PST EXEMPT #1000-1163', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3023, 'Simple Design Decks', '780-808-1229', null, 'May  4 2011 12:00AM', 'Dec 18 2013 12:00AM', 0, '3204 66th Ave', null, 'Lloydminister', 'AB', 'Canada', 'T9V 3R6', 'INACTIVE - 1 order May/11
new customer-stuart spahic', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3155, 'Washago Lumber Limited', '705-689-2626', '705-689-2251', 'Aug  8 2013 12:00AM', 'Jan 21 2016 12:00AM', 0, 'P.O. Box 11', null, 'Washago', 'ON', 'Canada', 'L0K 2B0', 'INACTIVE - LAST ORDER OCT/13
$10,000. approved limit', 0, 0, 15)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3160, 'Tree-to-me', '250-499-9271', null, 'Sep 13 2013 12:00AM', 'May  2 2016 12:00AM', 0, '1217 Hwy 3A', null, 'Keremeos', 'BC', 'Canada', 'V0X 1N4', 'chad.treetome@gmail.com
INACTIVE - LAST ORDER AUG/14', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2764, 'Bruce Industries Ltd.', '403-816-4357', '403-932-2455', 'Apr  3 2008 12:00AM', 'Oct 29 2013 12:00AM', 0, 'P.O.  Box 1183,', null, 'Cochrane', 'AB', 'Canada', 'T4C 1B2', 'LAST ORDER MAY/12
Overland
no discount
VISA ON FILE', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3214, 'Evercurb Landscaping', '403-585-3569', null, 'Oct 14 2015 12:00AM', 'Oct 21 2015 12:00AM', 0, '2131a Emmet Hall Road', null, 'Regina ', 'SK', 'Canada', 'S4N 2Y3', 'Potential new customer - sample rail sent Oct 15/15', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2229, 'Embleton Construction Ltd.', '250-785-7525', '250-785-9802', 'Oct  3 2001 12:00AM', 'Oct 29 2013 12:00AM', 0, '9711 - 112 Ave', null, 'Fort St. John', 'BC', 'Canada', 'V1J 2W1', 'Last order June/12
10 %
credit app on file $15,000', 0, 0, 10)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2806, 'Rail Professionals', '403-540-9975', null, 'Oct 31 2008 12:00AM', 'Oct 11 2013 12:00AM', 0, '63 Westpoint Place S.W.', null, 'Calgary', 'AB', 'Canada', 't3h 5w5', 'INACTIVE

Group ‘D’ Introductory Pricing Feb. 1/09', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2861, 'Josh Tait', '403-851-0338', null, 'Jun 26 2009 12:00AM', 'Oct 11 2013 12:00AM', 0, '19 Seminary Ridge', null, 'Cochrane', 'AB', 'Canada', 'T4C 2E8', 'INACTIVE
Customer Pick Up
Discount 20%
Credit Card', 0, 1, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3157, 'A & V Continuous Eavestroughing', '250-567-3196', null, 'Aug 23 2013 12:00AM', 'Jul 10 2017 12:00AM', 0, '16099 Blackwater Rd.', null, 'Vanderhoof', 'BC', 'Canada', 'V0J 3A1', 'Needs quote B4 shipping
BANDSTRA  # 1-800-571-2057', 0, 0, 15)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2119, 'Aquatic Vinyl Deck', '403-212-2343', '403-212-2343', 'Nov  2 2000 12:00AM', 'Dec 18 2013 12:00AM', 0, '69 Holden Rd. S.W.', null, 'Calgary', 'AB', 'Canada', 'T2V 3E7', 'INACTIVE LAST ORDER SEP/10
7% Discount
Overland', 0, 1, 7)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (2842, 'Doug Scott', '250-784-7194', null, 'May 12 2009 12:00AM', 'Oct 11 2013 12:00AM', 0, '#2, 1032 - 121st Street', null, 'Dawson Creek', 'BC', 'Canada', 'v1g 3k4', 'INACTIVE
Canadian Freightways
Discount 20%
Visa', 0, 0, 0)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (3177, 'Cedar Spring Construction Ltd.', '780-257-6363', null, 'Jul  7 2014 12:00AM', 'Jun 15 2017 12:00AM', 0, '20403 - 46 Ave', null, 'Edmonton', 'AB', 'Canada', 'T6M 0E3', '
Sent credit app - Sept 9/14
Chelsea in office', 0, 1, 20)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1279, 'Simon’s Applicating Service Ltd.', '250-962-5552', '250-962-6467', 'Mar 30 1998 12:00AM', 'Mar 21 2016 12:00AM', 0, '6076 Birchwood Cres', null, 'Prince George', 'BC', 'Canada', 'v2K 1W4', '10% discount
Overland
$4000. Credit approved
', 0, 0, 10)
insert into Customer ([CustomerID], [Company], [PhoneNo], [Fax], [Created], [Modified], [EmployeeID], [Address1], [Address2], [City], [Province], [Country], [PostalCode], [Comments], [GSTExempt], [PSTExempt], [DekSmartDiscount]) values (1935, 'Sunguard Alberta Ltd. Calgary', '403-255-6001', '403-520-4601', 'Sep 21 1999 12:00AM', 'Dec 19 2013 12:00AM', 0, 'Bay #116 3907 3A Street NE', null, 'Calgary', 'AB', 'Canada', 'T2E 6S7', 'INACTIVE
$10,000 credit approved
20% DISCOUNT', 0, 1, 20)

SET IDENTITY_INSERT Customer OFF
 
-- *** CUSTOMERCONTACTS ***

insert into CustomerContact (CustomerID, First, Last) select 2389, 'Rocky', 'Morley'
insert into CustomerContact (CustomerID, First, Last) select 2748, 'Steven', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 3193, 'John', 'Wipf'
insert into CustomerContact (CustomerID, First, Last) select 3221, 'Lane', 'Carter'
insert into CustomerContact (CustomerID, First, Last) select 2607, 'Glenn', 'OHara'
insert into CustomerContact (CustomerID, First, Last) select 3198, 'Amir', 'Kozic'
insert into CustomerContact (CustomerID, First, Last) select 3258, 'Marc', 'Chauvin'
insert into CustomerContact (CustomerID, First, Last) select 2939, 'Unknown', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 3206, 'Larry', 'Williams'
insert into CustomerContact (CustomerID, First, Last) select 3245, 'Dave', 'Gosnell'
insert into CustomerContact (CustomerID, First, Last) select 3207, 'Andre', 'St. Arnault'
insert into CustomerContact (CustomerID, First, Last) select 2983, 'Moe', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 3163, 'Wayne', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 2963, 'Ralf', 'Neumann'
insert into CustomerContact (CustomerID, First, Last) select 3223, 'Unknown', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 2879, 'Joel', 'Hodge'
insert into CustomerContact (CustomerID, First, Last) select 3149, 'Kim', 'McGowen'
insert into CustomerContact (CustomerID, First, Last) select 3262, 'Mike', 'Streit'
insert into CustomerContact (CustomerID, First, Last) select 3115, 'Jim', 'Caruk'
insert into CustomerContact (CustomerID, First, Last) select 2810, 'Brian', 'Berg'
insert into CustomerContact (CustomerID, First, Last) select 3067, 'Bud', 'Smart'
insert into CustomerContact (CustomerID, First, Last) select 3251, 'Stuart', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 3002, 'Doug', 'McPherson'
insert into CustomerContact (CustomerID, First, Last) select 2769, 'Trevor', 'McNamara'
insert into CustomerContact (CustomerID, First, Last) select 3161, 'John', 'MacMillan'
insert into CustomerContact (CustomerID, First, Last) select 1366, 'Rock', 'Berube'
insert into CustomerContact (CustomerID, First, Last) select 3074, 'Greg', 'Elliott'
insert into CustomerContact (CustomerID, First, Last) select 3151, 'Doug', 'Flemmer'
insert into CustomerContact (CustomerID, First, Last) select 3203, 'Les', 'Ozero'
insert into CustomerContact (CustomerID, First, Last) select 3212, 'Matthew', 'Scott'
insert into CustomerContact (CustomerID, First, Last) select 2785, 'Connor', 'Blakesley'
insert into CustomerContact (CustomerID, First, Last) select 3176, 'Terry', 'Fehr'
insert into CustomerContact (CustomerID, First, Last) select 3213, 'Craig', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 2558, 'Wade', 'Sheppard'
insert into CustomerContact (CustomerID, First, Last) select 2794, 'Chad', 'Humphrey'
insert into CustomerContact (CustomerID, First, Last) select 2826, 'Darren', 'Chorley'
insert into CustomerContact (CustomerID, First, Last) select 2865, 'Gene', 'McDowell'
insert into CustomerContact (CustomerID, First, Last) select 3238, 'Unknown', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 2063, 'Unknown', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 2762, 'Alex', 'Kaminski'
insert into CustomerContact (CustomerID, First, Last) select 2869, 'Vic', 'Lemieux'
insert into CustomerContact (CustomerID, First, Last) select 2989, 'Stuart', 'Spahic'
insert into CustomerContact (CustomerID, First, Last) select 3263, 'Justin', 'Richardson'
insert into CustomerContact (CustomerID, First, Last) select 1093, 'Ryan', 'Gayowski'
insert into CustomerContact (CustomerID, First, Last) select 3138, 'Unknown', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 3202, 'Thomas', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 3243, 'Brett', 'Redpath'
insert into CustomerContact (CustomerID, First, Last) select 1094, 'Bill', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 2851, 'Frank', 'Lehnert'
insert into CustomerContact (CustomerID, First, Last) select 2871, 'Mike', 'Hall'
insert into CustomerContact (CustomerID, First, Last) select 3143, 'Greg', 'Everett'
insert into CustomerContact (CustomerID, First, Last) select 2840, 'Matt', 'Mann'
insert into CustomerContact (CustomerID, First, Last) select 1411, 'Len', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 2692, 'Brian', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 2763, 'Gerry', 'Devries'
insert into CustomerContact (CustomerID, First, Last) select 3216, 'Unknown', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 3217, 'Rory', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 3220, 'Unknown', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 3225, 'Unknown', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 3239, 'Mike', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 3246, 'Unknown', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 3247, 'Joe', 'Hull'
insert into CustomerContact (CustomerID, First, Last) select 3249, 'Unknown', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 3252, 'Jason', 'Thiessen'
insert into CustomerContact (CustomerID, First, Last) select 3253, 'Unknown', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 3256, 'Marc', 'Leonard'
insert into CustomerContact (CustomerID, First, Last) select 2780, 'Bill', 'McGarry'
insert into CustomerContact (CustomerID, First, Last) select 2870, 'Mike', 'Balla'
insert into CustomerContact (CustomerID, First, Last) select 2816, 'Joby', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 3188, 'Grant', 'Lawton'
insert into CustomerContact (CustomerID, First, Last) select 1019, 'Steve', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 2880, 'Darren', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 2864, 'Glen', 'Slontek'
insert into CustomerContact (CustomerID, First, Last) select 2868, 'Mirsad', 'Kulovac'
insert into CustomerContact (CustomerID, First, Last) select 1640, 'Brian', 'Beliveau'
insert into CustomerContact (CustomerID, First, Last) select 1067, 'Wayne', 'Berkner'
insert into CustomerContact (CustomerID, First, Last) select 1176, 'Ernie', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 1185, 'Aaron', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 1008, 'Al', '200'
insert into CustomerContact (CustomerID, First, Last) select 1012, 'Steve', 'Hideg'
insert into CustomerContact (CustomerID, First, Last) select 1021, 'Bob', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 1029, 'Randy/Blake', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 1033, 'Ron', 'Browne'
insert into CustomerContact (CustomerID, First, Last) select 1038, 'Roy', 'Viccars'
insert into CustomerContact (CustomerID, First, Last) select 1042, 'Paul', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 1044, 'Paul', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 1062, 'Norm', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 1065, 'Don', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 1071, 'Bruce', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 1090, 'Larry', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 1092, 'Eugene', 'Devauld'
insert into CustomerContact (CustomerID, First, Last) select 1123, 'Unknown', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 1152, 'Unknown', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 1156, 'Jay', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 1168, 'Unknown', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 1182, 'Ray', 'Davis'
insert into CustomerContact (CustomerID, First, Last) select 1223, 'Percy', 'Schuurman'
insert into CustomerContact (CustomerID, First, Last) select 1269, 'Unknown', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 1309, 'Unknown', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 1315, 'Unknown', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 1336, 'Unknown', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 1350, 'Fern', 'Harker'
insert into CustomerContact (CustomerID, First, Last) select 1408, 'Percy', 'Schuman'
insert into CustomerContact (CustomerID, First, Last) select 1432, 'Randal', 'Hosick'
insert into CustomerContact (CustomerID, First, Last) select 1526, 'Unknown', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 1559, 'George', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 1604, 'Bob', 'White'
insert into CustomerContact (CustomerID, First, Last) select 1612, 'Unknown', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 1635, 'Unknown', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 1652, 'Unknown', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 1654, 'Brent', 'Gerber'
insert into CustomerContact (CustomerID, First, Last) select 1728, 'Dave', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 1731, 'Rick', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 1772, 'Unknown', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 1777, 'Wayne', 'Grey'
insert into CustomerContact (CustomerID, First, Last) select 1806, 'Gill', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 1809, 'Sam', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 1932, 'Karl', 'Szucs'
insert into CustomerContact (CustomerID, First, Last) select 1951, 'Bruce', 'Corra'
insert into CustomerContact (CustomerID, First, Last) select 1999, 'Brian', 'Middleton'
insert into CustomerContact (CustomerID, First, Last) select 2001, 'Garth', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 2013, 'Rod', 'Warkentin'
insert into CustomerContact (CustomerID, First, Last) select 2026, 'Daryl', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 2034, 'Dan', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 2038, 'Peter', 'Miller'
insert into CustomerContact (CustomerID, First, Last) select 2075, 'Richard', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 2084, 'Chuck', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 2087, 'Bernie', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 2102, 'Terry', 'Johnson'
insert into CustomerContact (CustomerID, First, Last) select 2110, 'Hank', 'Sawchuk'
insert into CustomerContact (CustomerID, First, Last) select 2117, 'Brian', 'Ceminchuk'
insert into CustomerContact (CustomerID, First, Last) select 2118, 'Les', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 2134, 'Harry', 'Winter'
insert into CustomerContact (CustomerID, First, Last) select 2166, 'Don', 'Thomas'
insert into CustomerContact (CustomerID, First, Last) select 2168, 'Stuart', 'Henderson'
insert into CustomerContact (CustomerID, First, Last) select 2179, 'Garrett', 'Rempal'
insert into CustomerContact (CustomerID, First, Last) select 2216, 'Mike', 'Semenoff'
insert into CustomerContact (CustomerID, First, Last) select 2227, 'Dave', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 2247, 'Ken', 'Yadlowksy'
insert into CustomerContact (CustomerID, First, Last) select 2249, 'Unknown', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 2254, 'John', 'Soucy'
insert into CustomerContact (CustomerID, First, Last) select 2256, 'Al', 'Yablonski'
insert into CustomerContact (CustomerID, First, Last) select 2268, 'Roger', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 2269, 'Robert', 'Moore'
insert into CustomerContact (CustomerID, First, Last) select 2275, 'Jan', 'Langevin'
insert into CustomerContact (CustomerID, First, Last) select 2278, 'Bryan', 'Holder'
insert into CustomerContact (CustomerID, First, Last) select 2281, 'Ed', 'Pointer'
insert into CustomerContact (CustomerID, First, Last) select 2291, 'Thomas', 'Hook'
insert into CustomerContact (CustomerID, First, Last) select 2299, 'Mark', 'Rickman'
insert into CustomerContact (CustomerID, First, Last) select 2306, 'Unknown', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 2308, 'Dave', 'Carpenter'
insert into CustomerContact (CustomerID, First, Last) select 2310, 'Dan', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 2323, 'Unknown', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 2328, 'Vic', 'Pross'
insert into CustomerContact (CustomerID, First, Last) select 2381, 'Ray', 'Hentges'
insert into CustomerContact (CustomerID, First, Last) select 2387, 'Frank', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 2391, 'Brian', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 2395, 'Brad', 'Scott'
insert into CustomerContact (CustomerID, First, Last) select 2397, 'Darin', 'Monz'
insert into CustomerContact (CustomerID, First, Last) select 2413, 'Adam', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 2414, 'Scott', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 2434, 'Wayne', 'Ostash'
insert into CustomerContact (CustomerID, First, Last) select 2435, 'Dean', 'Phelps'
insert into CustomerContact (CustomerID, First, Last) select 2437, 'Ray', 'DuJold'
insert into CustomerContact (CustomerID, First, Last) select 2439, 'Garth', 'Forrest'
insert into CustomerContact (CustomerID, First, Last) select 2440, 'Tony', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 2489, 'Lillian', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 2492, 'Mike', 'Mardesic'
insert into CustomerContact (CustomerID, First, Last) select 2499, 'Brian', 'Wierks'
insert into CustomerContact (CustomerID, First, Last) select 2503, 'Paul', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 2511, 'Alex', 'Sutton'
insert into CustomerContact (CustomerID, First, Last) select 2533, 'Tim', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 2537, 'Steve', 'McNally'
insert into CustomerContact (CustomerID, First, Last) select 2557, 'Brock', 'Hanson'
insert into CustomerContact (CustomerID, First, Last) select 2562, 'Morgan', 'Dittrick'
insert into CustomerContact (CustomerID, First, Last) select 2567, 'Mike', 'Boast'
insert into CustomerContact (CustomerID, First, Last) select 2580, 'Gordon', 'Nichol'
insert into CustomerContact (CustomerID, First, Last) select 2589, 'Peter', 'Neumann'
insert into CustomerContact (CustomerID, First, Last) select 2602, 'Dennis', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 2609, 'Mark', 'Morisset'
insert into CustomerContact (CustomerID, First, Last) select 2655, 'Dave', 'McElhaney'
insert into CustomerContact (CustomerID, First, Last) select 2670, 'John', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 2679, 'Shane', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 2681, 'Barry', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 2684, 'Ryan', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 2689, 'Kent', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 2693, 'John', 'Green'
insert into CustomerContact (CustomerID, First, Last) select 2700, 'Merlin', 'Cumming'
insert into CustomerContact (CustomerID, First, Last) select 2701, 'Unknown', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 2707, 'Marc', 'Robinson'
insert into CustomerContact (CustomerID, First, Last) select 2711, 'Greg', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 2714, 'Brad/ Tammy', 'Sagar'
insert into CustomerContact (CustomerID, First, Last) select 2715, 'Al', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 2718, 'Jeanne', 'Logan'
insert into CustomerContact (CustomerID, First, Last) select 2723, 'Ron', 'Anderson'
insert into CustomerContact (CustomerID, First, Last) select 2725, 'Unknown', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 2727, 'Unknown', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 2728, 'Steve', 'Cunningham'
insert into CustomerContact (CustomerID, First, Last) select 2734, 'Anthony', 'Winterhalt'
insert into CustomerContact (CustomerID, First, Last) select 2735, 'Bill', 'Phelps'
insert into CustomerContact (CustomerID, First, Last) select 2736, 'Lynn', 'Hedberg'
insert into CustomerContact (CustomerID, First, Last) select 2742, 'Saudin', 'Kasmo'
insert into CustomerContact (CustomerID, First, Last) select 2743, 'Islam', 'Ibisevic'
insert into CustomerContact (CustomerID, First, Last) select 2744, 'Jason', 'Heniger'
insert into CustomerContact (CustomerID, First, Last) select 2747, 'Dean', 'Susa'
insert into CustomerContact (CustomerID, First, Last) select 2749, 'Derek', 'Whiting'
insert into CustomerContact (CustomerID, First, Last) select 2753, 'Steve', 'Pelletier'
insert into CustomerContact (CustomerID, First, Last) select 2755, 'Kevin', 'Goldsbury'
insert into CustomerContact (CustomerID, First, Last) select 2757, 'Mark', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 2758, 'James', 'McNaughton'
insert into CustomerContact (CustomerID, First, Last) select 2760, 'Dan', 'Covelli'
insert into CustomerContact (CustomerID, First, Last) select 2761, 'Alex', 'Kaminski'
insert into CustomerContact (CustomerID, First, Last) select 2766, 'Darren', 'Smaille'
insert into CustomerContact (CustomerID, First, Last) select 2767, 'Jeff', 'Engle'
insert into CustomerContact (CustomerID, First, Last) select 2770, 'Rene', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 2772, 'Ryan', 'Hyndmarsh'
insert into CustomerContact (CustomerID, First, Last) select 2773, 'Brent', 'Graham'
insert into CustomerContact (CustomerID, First, Last) select 2775, 'Rick', 'Sherritt'
insert into CustomerContact (CustomerID, First, Last) select 2776, 'Glen', 'Garrett'
insert into CustomerContact (CustomerID, First, Last) select 2777, 'Gill', 'Young'
insert into CustomerContact (CustomerID, First, Last) select 2778, 'Sandy', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 2782, 'Brad', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 2787, 'Hoang', 'Pho Pham'
insert into CustomerContact (CustomerID, First, Last) select 2798, 'Michael', 'Heim'
insert into CustomerContact (CustomerID, First, Last) select 2799, 'Greg', 'Friesen'
insert into CustomerContact (CustomerID, First, Last) select 2801, 'Unknown', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 2804, 'Jim', 'Barker'
insert into CustomerContact (CustomerID, First, Last) select 2813, 'Paul', 'Vandenbrink'
insert into CustomerContact (CustomerID, First, Last) select 2815, 'Nestor', 'Mryglod'
insert into CustomerContact (CustomerID, First, Last) select 2819, 'John', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 2825, 'Derek', 'Tolsma'
insert into CustomerContact (CustomerID, First, Last) select 2837, 'Curt', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 2839, 'Roger', 'Bourbeau'
insert into CustomerContact (CustomerID, First, Last) select 2841, 'George', 'Jacobs'
insert into CustomerContact (CustomerID, First, Last) select 2845, 'Adam', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 2848, 'Roger', 'Thomas'
insert into CustomerContact (CustomerID, First, Last) select 2852, 'Sheldon', 'Kok'
insert into CustomerContact (CustomerID, First, Last) select 2858, 'Unknown', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 2860, 'David', 'Zaluski'
insert into CustomerContact (CustomerID, First, Last) select 2881, 'Dan', 'Beggs'
insert into CustomerContact (CustomerID, First, Last) select 3060, 'Unknown', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 3236, 'Chris', 'Chang'
insert into CustomerContact (CustomerID, First, Last) select 1616, 'Unknown', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 2814, 'Warren', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 2876, 'Jason', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 2979, 'Jim', 'Hack'
insert into CustomerContact (CustomerID, First, Last) select 2985, 'Unknown', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 2987, 'Unknown', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 3145, 'Bruno', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 2898, 'Unknown', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 2899, 'Unknown', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 2900, 'Unknown', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 2903, 'Unknown', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 2904, 'Mike', 'Miller'
insert into CustomerContact (CustomerID, First, Last) select 2754, 'Todd', 'Reichel'
insert into CustomerContact (CustomerID, First, Last) select 2818, 'Gaetan', 'Belanger'
insert into CustomerContact (CustomerID, First, Last) select 1041, 'Brian', 'Radke'
insert into CustomerContact (CustomerID, First, Last) select 1252, 'Chad', 'Humphrey'
insert into CustomerContact (CustomerID, First, Last) select 2162, 'Hank', 'Schiller'
insert into CustomerContact (CustomerID, First, Last) select 2856, 'Mike', 'Park'
insert into CustomerContact (CustomerID, First, Last) select 3059, 'Stan', 'Kotlarz'
insert into CustomerContact (CustomerID, First, Last) select 2729, 'Sherrie', 'Whiting'
insert into CustomerContact (CustomerID, First, Last) select 2832, 'Doug', 'Harms'
insert into CustomerContact (CustomerID, First, Last) select 2789, 'Stan', 'Kotlarz'
insert into CustomerContact (CustomerID, First, Last) select 3153, 'Thad', 'Schoesler'
insert into CustomerContact (CustomerID, First, Last) select 3233, 'Jack', 'Humphrey'
insert into CustomerContact (CustomerID, First, Last) select 1674, 'Jerry', 'Ennis'
insert into CustomerContact (CustomerID, First, Last) select 3098, 'Chad', 'Humphrey'
insert into CustomerContact (CustomerID, First, Last) select 3069, 'Len', 'Hudzinski'
insert into CustomerContact (CustomerID, First, Last) select 3189, 'Brian', 'Busch'
insert into CustomerContact (CustomerID, First, Last) select 3194, 'Geoff', 'Crowe'
insert into CustomerContact (CustomerID, First, Last) select 2808, 'Cody', 'Lemieux'
insert into CustomerContact (CustomerID, First, Last) select 2774, 'Philip', 'Teichroeb'
insert into CustomerContact (CustomerID, First, Last) select 1011, 'Britt', 'Ongley'
insert into CustomerContact (CustomerID, First, Last) select 2783, 'Nick', 'Petkau'
insert into CustomerContact (CustomerID, First, Last) select 1380, 'Marty', 'Hovind'
insert into CustomerContact (CustomerID, First, Last) select 2984, 'Carl', 'Ahrberg'
insert into CustomerContact (CustomerID, First, Last) select 2512, 'Curtis', 'Cayer'
insert into CustomerContact (CustomerID, First, Last) select 2827, 'Jack', 'Tinney'
insert into CustomerContact (CustomerID, First, Last) select 3139, 'Paul', 'Brown'
insert into CustomerContact (CustomerID, First, Last) select 2936, 'Stewart', 'Fuson'
insert into CustomerContact (CustomerID, First, Last) select 3250, 'Andrei', 'Fedorov'
insert into CustomerContact (CustomerID, First, Last) select 3080, 'Andy', 'Hrytsak'
insert into CustomerContact (CustomerID, First, Last) select 3104, 'Denis', 'Gagnon'
insert into CustomerContact (CustomerID, First, Last) select 2588, 'Greg', 'Coleman'
insert into CustomerContact (CustomerID, First, Last) select 3264, 'Mike', 'Sawastky'
insert into CustomerContact (CustomerID, First, Last) select 2978, 'Keith', 'Andrews'
insert into CustomerContact (CustomerID, First, Last) select 2822, 'Darcy', 'Fulton'
insert into CustomerContact (CustomerID, First, Last) select 2828, 'Brian', 'Garrard'
insert into CustomerContact (CustomerID, First, Last) select 2847, 'Matt', 'Tombs'
insert into CustomerContact (CustomerID, First, Last) select 2394, 'Randy', 'Kangas'
insert into CustomerContact (CustomerID, First, Last) select 3159, 'Luke', 'Engel'
insert into CustomerContact (CustomerID, First, Last) select 3072, 'Wayne', 'Robinson'
insert into CustomerContact (CustomerID, First, Last) select 2312, 'Tim', 'Peters'
insert into CustomerContact (CustomerID, First, Last) select 2959, 'Harold', 'Hazelaar'
insert into CustomerContact (CustomerID, First, Last) select 2964, 'Mark', 'Rudderham'
insert into CustomerContact (CustomerID, First, Last) select 2855, 'Joe', 'Sherman'
insert into CustomerContact (CustomerID, First, Last) select 3079, 'Andy', 'Osmond'
insert into CustomerContact (CustomerID, First, Last) select 2874, 'Brent', 'Pihowich'
insert into CustomerContact (CustomerID, First, Last) select 1404, 'Tony', 'Evans'
insert into CustomerContact (CustomerID, First, Last) select 3172, 'Michael', 'Dombowsky'
insert into CustomerContact (CustomerID, First, Last) select 2673, 'Allan', 'Wright'
insert into CustomerContact (CustomerID, First, Last) select 2708, 'Robb', 'Reimer'
insert into CustomerContact (CustomerID, First, Last) select 2800, 'Derek', 'Hanneson'
insert into CustomerContact (CustomerID, First, Last) select 2441, 'Bruce', 'Morley'
insert into CustomerContact (CustomerID, First, Last) select 3173, 'Mike', 'Lindblad'
insert into CustomerContact (CustomerID, First, Last) select 3083, 'Lorne', 'Moench'
insert into CustomerContact (CustomerID, First, Last) select 2947, 'Cheryl/Don', 'Wells'
insert into CustomerContact (CustomerID, First, Last) select 1073, 'Sandy', 'Clausen'
insert into CustomerContact (CustomerID, First, Last) select 2458, 'Bob', 'Larsh'
insert into CustomerContact (CustomerID, First, Last) select 2467, 'Suljo', 'Spahic'
insert into CustomerContact (CustomerID, First, Last) select 2872, 'Crystal', 'Kaminski'
insert into CustomerContact (CustomerID, First, Last) select 1004, 'Bill', 'King'
insert into CustomerContact (CustomerID, First, Last) select 1024, 'Calla', 'Petterson'
insert into CustomerContact (CustomerID, First, Last) select 3146, 'Louis', 'Chenard'
insert into CustomerContact (CustomerID, First, Last) select 2702, 'Frank', 'Fusco'
insert into CustomerContact (CustomerID, First, Last) select 3204, 'Clayton', 'McKenzie'
insert into CustomerContact (CustomerID, First, Last) select 1385, 'Clint', 'Peterman'
insert into CustomerContact (CustomerID, First, Last) select 2705, 'Sukh', 'Dosanjh'
insert into CustomerContact (CustomerID, First, Last) select 1013, 'Reg', 'Humphrey'
insert into CustomerContact (CustomerID, First, Last) select 1068, 'Tony', 'Murray'
insert into CustomerContact (CustomerID, First, Last) select 1028, 'Bart', 'Blainey'
insert into CustomerContact (CustomerID, First, Last) select 1046, 'Randy', 'Samuelson'
insert into CustomerContact (CustomerID, First, Last) select 1451, 'Jon', 'Fehr'
insert into CustomerContact (CustomerID, First, Last) select 1713, 'Ric', 'Hammond'
insert into CustomerContact (CustomerID, First, Last) select 2977, 'Lance', 'Chenier'
insert into CustomerContact (CustomerID, First, Last) select 3005, 'Paul', 'Doerksen'
insert into CustomerContact (CustomerID, First, Last) select 3162, 'Don', 'Kerr'
insert into CustomerContact (CustomerID, First, Last) select 2974, 'Wayne', 'Sewell'
insert into CustomerContact (CustomerID, First, Last) select 2980, 'Jack', 'Tinney'
insert into CustomerContact (CustomerID, First, Last) select 3230, 'Jack', 'Humphries'
insert into CustomerContact (CustomerID, First, Last) select 2057, 'Rick', 'Bonneau'
insert into CustomerContact (CustomerID, First, Last) select 2683, 'Patrick', 'Whitehead'
insert into CustomerContact (CustomerID, First, Last) select 3209, 'Bob', 'Stuve'
insert into CustomerContact (CustomerID, First, Last) select 1040, 'Wade', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 1290, 'Drew', 'Evans'
insert into CustomerContact (CustomerID, First, Last) select 2050, 'Derrek', 'Hahn'
insert into CustomerContact (CustomerID, First, Last) select 2834, 'Josh', 'Cliburn'
insert into CustomerContact (CustomerID, First, Last) select 1618, 'John', 'Vo'
insert into CustomerContact (CustomerID, First, Last) select 2265, 'Wayne', 'Vallet'
insert into CustomerContact (CustomerID, First, Last) select 2975, 'Brandon', 'Bach'
insert into CustomerContact (CustomerID, First, Last) select 3057, 'Gerry', 'Roberge'
insert into CustomerContact (CustomerID, First, Last) select 3208, 'Patrick', 'Foidart'
insert into CustomerContact (CustomerID, First, Last) select 3122, 'Greg', 'Vistisen'
insert into CustomerContact (CustomerID, First, Last) select 3170, 'Joe', 'Wack'
insert into CustomerContact (CustomerID, First, Last) select 3090, 'Al', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 2973, 'William', 'Hitsman'
insert into CustomerContact (CustomerID, First, Last) select 1296, 'Barry', 'Homenko1'
insert into CustomerContact (CustomerID, First, Last) select 1448, 'Ron', 'Lindblad'
insert into CustomerContact (CustomerID, First, Last) select 2695, 'Tino', 'Zarcone'
insert into CustomerContact (CustomerID, First, Last) select 2812, 'Mark', 'Butler'
insert into CustomerContact (CustomerID, First, Last) select 3004, 'Peter', 'Urkow'
insert into CustomerContact (CustomerID, First, Last) select 3171, 'Kevin', 'Davis'
insert into CustomerContact (CustomerID, First, Last) select 1074, 'Jacques', 'Boily'
insert into CustomerContact (CustomerID, First, Last) select 3174, 'Gerry', 'Devries'
insert into CustomerContact (CustomerID, First, Last) select 2838, 'Mark', 'Baun'
insert into CustomerContact (CustomerID, First, Last) select 2953, 'Larry', 'Ries'
insert into CustomerContact (CustomerID, First, Last) select 3154, 'Sandi', 'Sala'
insert into CustomerContact (CustomerID, First, Last) select 2781, 'Rene', 'Labbe'
insert into CustomerContact (CustomerID, First, Last) select 2821, 'Dennis', 'Fedun'
insert into CustomerContact (CustomerID, First, Last) select 3186, 'Jim', 'Scroggins'
insert into CustomerContact (CustomerID, First, Last) select 3232, 'Bob', 'Shandera'
insert into CustomerContact (CustomerID, First, Last) select 2738, 'Les', 'Rhode'
insert into CustomerContact (CustomerID, First, Last) select 2994, 'Bob', 'Schedler'
insert into CustomerContact (CustomerID, First, Last) select 3244, 'Marty', 'Mosley'
insert into CustomerContact (CustomerID, First, Last) select 1061, 'Dana', 'Wilfur'
insert into CustomerContact (CustomerID, First, Last) select 3231, 'Ryan', 'Scott'
insert into CustomerContact (CustomerID, First, Last) select 2515, 'Daryl', 'Fitzsimmon'
insert into CustomerContact (CustomerID, First, Last) select 2574, 'David', 'Dorin'
insert into CustomerContact (CustomerID, First, Last) select 3166, 'Tony', 'Fudge'
insert into CustomerContact (CustomerID, First, Last) select 3196, 'Jason', 'Turner'
insert into CustomerContact (CustomerID, First, Last) select 2123, 'Ken', 'McGrogan'
insert into CustomerContact (CustomerID, First, Last) select 2331, 'Les', 'Fehr'
insert into CustomerContact (CustomerID, First, Last) select 3215, 'Rick', 'McCarthy'
insert into CustomerContact (CustomerID, First, Last) select 1157, 'Terry', 'Pastuch'
insert into CustomerContact (CustomerID, First, Last) select 2318, 'Ron', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 2148, 'Jeff', 'Watson'
insert into CustomerContact (CustomerID, First, Last) select 3102, 'Vincent', 'Constantineau'
insert into CustomerContact (CustomerID, First, Last) select 2014, 'Guy', 'Richard'
insert into CustomerContact (CustomerID, First, Last) select 2253, 'Mark', 'Herrington'
insert into CustomerContact (CustomerID, First, Last) select 3039, 'Bryan', 'Tannahill'
insert into CustomerContact (CustomerID, First, Last) select 3164, 'Cory', 'Ahls'
insert into CustomerContact (CustomerID, First, Last) select 1647, 'Al', 'Beck'
insert into CustomerContact (CustomerID, First, Last) select 2844, 'Rory', 'Pierce'
insert into CustomerContact (CustomerID, First, Last) select 3007, 'Ram', 'Singh'
insert into CustomerContact (CustomerID, First, Last) select 2938, 'Stephanie', 'Dale'
insert into CustomerContact (CustomerID, First, Last) select 3191, 'Kris', 'Charchun'
insert into CustomerContact (CustomerID, First, Last) select 3261, 'Aaron', 'Johnson'
insert into CustomerContact (CustomerID, First, Last) select 2817, 'Jim', 'Keller'
insert into CustomerContact (CustomerID, First, Last) select 2422, 'Marcel', 'La Breque'
insert into CustomerContact (CustomerID, First, Last) select 3165, 'Brian', 'Radke4'
insert into CustomerContact (CustomerID, First, Last) select 2325, 'Mike', 'Buwalda'
insert into CustomerContact (CustomerID, First, Last) select 2459, 'Brian', 'Beliveau'
insert into CustomerContact (CustomerID, First, Last) select 1703, 'Warren', 'Moore'
insert into CustomerContact (CustomerID, First, Last) select 2322, 'Owen', 'Quigley'
insert into CustomerContact (CustomerID, First, Last) select 2739, 'Dan', 'LeClair'
insert into CustomerContact (CustomerID, First, Last) select 3185, 'Andrew', 'McKay'
insert into CustomerContact (CustomerID, First, Last) select 1353, 'Darren', 'Hedberg'
insert into CustomerContact (CustomerID, First, Last) select 3167, 'Bruce', 'Bergman'
insert into CustomerContact (CustomerID, First, Last) select 3205, 'Derek', 'Hanneson'
insert into CustomerContact (CustomerID, First, Last) select 2569, 'Arnold', 'Scheffer'
insert into CustomerContact (CustomerID, First, Last) select 2097, 'Steve', 'Yahn'
insert into CustomerContact (CustomerID, First, Last) select 1698, 'Woody', 'Wallwork'
insert into CustomerContact (CustomerID, First, Last) select 2390, 'Laurence', 'Muhibach'
insert into CustomerContact (CustomerID, First, Last) select 2786, 'Dave', 'Taylor'
insert into CustomerContact (CustomerID, First, Last) select 3026, 'Harry', 'Lee'
insert into CustomerContact (CustomerID, First, Last) select 3158, 'Trevor', 'Strocher'
insert into CustomerContact (CustomerID, First, Last) select 3190, 'Jennifer', 'Lopes'
insert into CustomerContact (CustomerID, First, Last) select 2784, 'Ivano  or Marlene', 'Ongaro'
insert into CustomerContact (CustomerID, First, Last) select 3219, 'Stephen', 'Frederick'
insert into CustomerContact (CustomerID, First, Last) select 2988, 'Doug', 'Goertzen'
insert into CustomerContact (CustomerID, First, Last) select 3071, 'Paul', 'Donaghey'
insert into CustomerContact (CustomerID, First, Last) select 2853, 'Scott', 'Belton'
insert into CustomerContact (CustomerID, First, Last) select 3257, 'Roger', 'Wadstein'
insert into CustomerContact (CustomerID, First, Last) select 2877, 'Matt', 'Hart'
insert into CustomerContact (CustomerID, First, Last) select 3237, 'Gregg', 'Seib'
insert into CustomerContact (CustomerID, First, Last) select 2795, 'Lloyd', 'Hedemann'
insert into CustomerContact (CustomerID, First, Last) select 2805, 'Don', 'Lindenthaler'
insert into CustomerContact (CustomerID, First, Last) select 3049, 'Darren', 'Wright'
insert into CustomerContact (CustomerID, First, Last) select 3210, 'Robb', 'Fraser'
insert into CustomerContact (CustomerID, First, Last) select 3156, 'Debra', 'McCluskie'
insert into CustomerContact (CustomerID, First, Last) select 2615, 'Gareth', 'Hatto'
insert into CustomerContact (CustomerID, First, Last) select 2843, 'Peter', 'Miller'
insert into CustomerContact (CustomerID, First, Last) select 2927, 'Unknown', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 2954, 'Frank', 'Ambler'
insert into CustomerContact (CustomerID, First, Last) select 3197, 'Fred', 'Perron'
insert into CustomerContact (CustomerID, First, Last) select 1994, 'Aaron', 'Holt'
insert into CustomerContact (CustomerID, First, Last) select 2967, 'Kerry', 'Murray'
insert into CustomerContact (CustomerID, First, Last) select 3152, 'Dale', 'Kadler'
insert into CustomerContact (CustomerID, First, Last) select 3181, 'Josh', 'Boyce'
insert into CustomerContact (CustomerID, First, Last) select 3184, 'Jay', 'Spezowka'
insert into CustomerContact (CustomerID, First, Last) select 1188, 'Harry', 'Miks'
insert into CustomerContact (CustomerID, First, Last) select 1413, 'Dan', 'Kerr'
insert into CustomerContact (CustomerID, First, Last) select 2992, 'Jordan', 'Wiebe'
insert into CustomerContact (CustomerID, First, Last) select 3017, 'Gregg', 'Seib'
insert into CustomerContact (CustomerID, First, Last) select 3168, 'Thomas', 'Hanson'
insert into CustomerContact (CustomerID, First, Last) select 3255, 'Marten', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 2878, 'Glen', 'Vause'
insert into CustomerContact (CustomerID, First, Last) select 2671, 'Grant', 'Ferguson'
insert into CustomerContact (CustomerID, First, Last) select 3199, 'William', 'Scranton'
insert into CustomerContact (CustomerID, First, Last) select 3265, 'Tom', 'Green'
insert into CustomerContact (CustomerID, First, Last) select 1006, 'Andy', 'Hefferman'
insert into CustomerContact (CustomerID, First, Last) select 2835, 'Guy', 'Legeault'
insert into CustomerContact (CustomerID, First, Last) select 2937, 'Ted', 'McWilliams'
insert into CustomerContact (CustomerID, First, Last) select 3201, 'Craig', 'Petersen'
insert into CustomerContact (CustomerID, First, Last) select 3235, 'Jamie', 'Tedesco'
insert into CustomerContact (CustomerID, First, Last) select 3027, 'John', 'Riley'
insert into CustomerContact (CustomerID, First, Last) select 3082, 'Luis', 'Rodriguez'
insert into CustomerContact (CustomerID, First, Last) select 2991, 'Jeff', 'Hildebrand'
insert into CustomerContact (CustomerID, First, Last) select 3046, 'Brent', 'Dunn'
insert into CustomerContact (CustomerID, First, Last) select 3130, 'James', 'Lenius'
insert into CustomerContact (CustomerID, First, Last) select 3226, 'Jeff', 'Petersen'
insert into CustomerContact (CustomerID, First, Last) select 2731, 'Osama', 'Kalbash'
insert into CustomerContact (CustomerID, First, Last) select 2854, 'Denis', 'Royer'
insert into CustomerContact (CustomerID, First, Last) select 2661, 'Yousef', 'Azzebi'
insert into CustomerContact (CustomerID, First, Last) select 2952, 'Shawn', 'Graham'
insert into CustomerContact (CustomerID, First, Last) select 3050, 'Craig', 'Stephen'
insert into CustomerContact (CustomerID, First, Last) select 2733, 'Adrianna', 'Henry'
insert into CustomerContact (CustomerID, First, Last) select 3006, 'Al', 'Mueller'
insert into CustomerContact (CustomerID, First, Last) select 3013, 'Unknown', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 3045, 'Raleigh', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 3200, 'Mark', 'Denison'
insert into CustomerContact (CustomerID, First, Last) select 1102, 'Fred', 'Schlossberger'
insert into CustomerContact (CustomerID, First, Last) select 2833, 'Benny', 'Bruneau'
insert into CustomerContact (CustomerID, First, Last) select 3195, 'Martin', 'Van Hagen'
insert into CustomerContact (CustomerID, First, Last) select 2058, 'Mike', 'Collins'
insert into CustomerContact (CustomerID, First, Last) select 2212, 'Brian', 'Endicott'
insert into CustomerContact (CustomerID, First, Last) select 2139, 'Paul', 'Doerksen'
insert into CustomerContact (CustomerID, First, Last) select 3025, 'Jim', 'Klassen'
insert into CustomerContact (CustomerID, First, Last) select 3260, 'Dale', 'Beswitherick'
insert into CustomerContact (CustomerID, First, Last) select 2771, 'Dean', 'Beitel'
insert into CustomerContact (CustomerID, First, Last) select 2811, 'Ed', 'Hordos'
insert into CustomerContact (CustomerID, First, Last) select 1661, 'Derrick', 'Beaulieu'
insert into CustomerContact (CustomerID, First, Last) select 3229, 'Michael', 'Feetham'
insert into CustomerContact (CustomerID, First, Last) select 2335, 'Dale', 'Macman'
insert into CustomerContact (CustomerID, First, Last) select 2791, 'Aaron', 'Diduck'
insert into CustomerContact (CustomerID, First, Last) select 3248, 'Marc', 'Gaultier'
insert into CustomerContact (CustomerID, First, Last) select 2283, 'Greg', 'Tebb'
insert into CustomerContact (CustomerID, First, Last) select 3022, 'Ron', 'Preston'
insert into CustomerContact (CustomerID, First, Last) select 3024, 'Gary', 'Patterson'
insert into CustomerContact (CustomerID, First, Last) select 3140, 'Randy', 'Franson'
insert into CustomerContact (CustomerID, First, Last) select 3183, 'Bruce', 'Murdoch'
insert into CustomerContact (CustomerID, First, Last) select 3224, 'Jake', 'Higley'
insert into CustomerContact (CustomerID, First, Last) select 3228, 'Andy', 'Benson'
insert into CustomerContact (CustomerID, First, Last) select 2982, 'Cameron', 'Bowie'
insert into CustomerContact (CustomerID, First, Last) select 3021, 'Lloyd', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 2950, 'Jonathan', 'Bartsch'
insert into CustomerContact (CustomerID, First, Last) select 3037, 'Glenn', 'Schellenburg'
insert into CustomerContact (CustomerID, First, Last) select 2036, 'Bryan', 'Rendell'
insert into CustomerContact (CustomerID, First, Last) select 2565, 'Paul', 'Semenoff'
insert into CustomerContact (CustomerID, First, Last) select 3020, 'Brian', 'Kenwood'
insert into CustomerContact (CustomerID, First, Last) select 3218, 'Devin', 'Beckett'
insert into CustomerContact (CustomerID, First, Last) select 3227, 'Richard', 'Boyle'
insert into CustomerContact (CustomerID, First, Last) select 3234, 'Steve', 'Robinson'
insert into CustomerContact (CustomerID, First, Last) select 3211, 'Brady', 'Moore'
insert into CustomerContact (CustomerID, First, Last) select 2850, 'Mike', 'Kolankowski'
insert into CustomerContact (CustomerID, First, Last) select 2961, 'Spencer', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 3259, 'David', 'Halcrow'
insert into CustomerContact (CustomerID, First, Last) select 2823, 'Jon', 'Martin'
insert into CustomerContact (CustomerID, First, Last) select 2924, 'Danny', 'Wohlford'
insert into CustomerContact (CustomerID, First, Last) select 2598, 'Vic', 'Zuczuk'
insert into CustomerContact (CustomerID, First, Last) select 2849, 'Brad', 'Clifford'
insert into CustomerContact (CustomerID, First, Last) select 3222, 'Dean', 'Spahic'
insert into CustomerContact (CustomerID, First, Last) select 2579, 'Herb', 'Fieber'
insert into CustomerContact (CustomerID, First, Last) select 3126, 'Al', 'Rae'
insert into CustomerContact (CustomerID, First, Last) select 3023, 'Kirk', 'Kimberly'
insert into CustomerContact (CustomerID, First, Last) select 3155, 'Chris', 'Denne'
insert into CustomerContact (CustomerID, First, Last) select 3160, 'Sean', 'Wurz'
insert into CustomerContact (CustomerID, First, Last) select 2764, 'Bruce', 'Roberts'
insert into CustomerContact (CustomerID, First, Last) select 3214, 'Sheldon', 'Dean'
insert into CustomerContact (CustomerID, First, Last) select 2229, 'Curt', 'Embleton'
insert into CustomerContact (CustomerID, First, Last) select 2806, 'Glen / Oliver', 'Unknown'
insert into CustomerContact (CustomerID, First, Last) select 2861, 'Josh', 'Tait'
insert into CustomerContact (CustomerID, First, Last) select 3157, 'Marlin', 'Isaac'
insert into CustomerContact (CustomerID, First, Last) select 2119, 'Jon', 'Kirk'
insert into CustomerContact (CustomerID, First, Last) select 2842, 'Doug', 'Scott'
insert into CustomerContact (CustomerID, First, Last) select 3177, 'Jason', 'Davies'
insert into CustomerContact (CustomerID, First, Last) select 1279, 'Simon', 'Mandel'
insert into CustomerContact (CustomerID, First, Last) select 1935, 'Gino', 'Fusco'

-- *** SALESPERSONS ***

insert into CustomerContact (CustomerID, First, Last, JobTitle) select 3193, 'Grant', 'Lawton', 'Salesperson'
insert into CustomerContact (CustomerID, First, Last, JobTitle) select 3198, 'Ken', 'Scott', 'Salesperson'
insert into CustomerContact (CustomerID, First, Last, JobTitle) select 3258, 'Alan', 'Jakobsen', 'Salesperson'
insert into CustomerContact (CustomerID, First, Last, JobTitle) select 3206, 'Grant', 'Lawton', 'Salesperson'
insert into CustomerContact (CustomerID, First, Last, JobTitle) select 3207, 'Grant', 'Lawton', 'Salesperson'
insert into CustomerContact (CustomerID, First, Last, JobTitle) select 3223, 'Grant', 'Lawton', 'Salesperson'
insert into CustomerContact (CustomerID, First, Last, JobTitle) select 3262, 'Grant', 'Lawton', 'Salesperson'
insert into CustomerContact (CustomerID, First, Last, JobTitle) select 3074, 'Greg', 'Elliott', 'Salesperson'
insert into CustomerContact (CustomerID, First, Last, JobTitle) select 3238, 'Grant', 'Lawton', 'Salesperson'
insert into CustomerContact (CustomerID, First, Last, JobTitle) select 2989, 'Stuart', 'Spahic', 'Salesperson'
insert into CustomerContact (CustomerID, First, Last, JobTitle) select 3263, 'Alan', 'Jakobsen', 'Salesperson'
insert into CustomerContact (CustomerID, First, Last, JobTitle) select 3243, 'Grant', 'Lawton', 'Salesperson'
insert into CustomerContact (CustomerID, First, Last, JobTitle) select 3216, 'Grant', 'Lawton', 'Salesperson'
insert into CustomerContact (CustomerID, First, Last, JobTitle) select 3220, 'Grant', 'Lawton', 'Salesperson'
insert into CustomerContact (CustomerID, First, Last, JobTitle) select 3225, 'Grant', 'Lawton', 'Salesperson'
insert into CustomerContact (CustomerID, First, Last, JobTitle) select 3246, 'Grant', 'Lawton', 'Salesperson'
insert into CustomerContact (CustomerID, First, Last, JobTitle) select 3247, 'Grant', 'Lawton', 'Salesperson'
insert into CustomerContact (CustomerID, First, Last, JobTitle) select 3249, 'Alan', 'Jakobsen', 'Salesperson'
insert into CustomerContact (CustomerID, First, Last, JobTitle) select 3252, 'Alan', 'Jakobsen', 'Salesperson'
insert into CustomerContact (CustomerID, First, Last, JobTitle) select 3256, 'Alan', 'Jakobsen', 'Salesperson'
insert into CustomerContact (CustomerID, First, Last, JobTitle) select 2856, 'Alan', 'Jakobsen', 'Salesperson'
insert into CustomerContact (CustomerID, First, Last, JobTitle) select 2832, 'Grant', 'Lawton', 'Salesperson'
insert into CustomerContact (CustomerID, First, Last, JobTitle) select 1674, 'Alan', 'Jakobsen', 'Salesperson'
insert into CustomerContact (CustomerID, First, Last, JobTitle) select 3069, 'Stuart', 'Spahic', 'Salesperson'
insert into CustomerContact (CustomerID, First, Last, JobTitle) select 3194, 'Ken', 'Scott', 'Salesperson'
insert into CustomerContact (CustomerID, First, Last, JobTitle) select 3250, 'Alan', 'Jakobsen', 'Salesperson'
insert into CustomerContact (CustomerID, First, Last, JobTitle) select 3264, 'Alan', 'Jakobsen', 'Salesperson'
insert into CustomerContact (CustomerID, First, Last, JobTitle) select 2394, 'Stuart', 'Spahic', 'Salesperson'
insert into CustomerContact (CustomerID, First, Last, JobTitle) select 3079, 'Stuart', 'Spahic', 'Salesperson'
insert into CustomerContact (CustomerID, First, Last, JobTitle) select 3172, 'Grant', 'Lawton', 'Salesperson'
insert into CustomerContact (CustomerID, First, Last, JobTitle) select 2441, 'Alan', 'Jakobsen', 'Salesperson'
insert into CustomerContact (CustomerID, First, Last, JobTitle) select 3204, 'Ken', 'Scott', 'Salesperson'
insert into CustomerContact (CustomerID, First, Last, JobTitle) select 3005, 'Stuart', 'Spahic', 'Salesperson'
insert into CustomerContact (CustomerID, First, Last, JobTitle) select 2974, 'Warren', 'Orsted', 'Salesperson'
insert into CustomerContact (CustomerID, First, Last, JobTitle) select 3090, 'Stuart', 'Spahic', 'Salesperson'
insert into CustomerContact (CustomerID, First, Last, JobTitle) select 3004, 'Stuart', 'Spahic', 'Salesperson'
insert into CustomerContact (CustomerID, First, Last, JobTitle) select 3232, 'Grant', 'Lawton', 'Salesperson'
insert into CustomerContact (CustomerID, First, Last, JobTitle) select 2994, 'Stuart', 'Spahic', 'Salesperson'
insert into CustomerContact (CustomerID, First, Last, JobTitle) select 3231, 'Grant', 'Lawton', 'Salesperson'
insert into CustomerContact (CustomerID, First, Last, JobTitle) select 3215, 'Grant', 'Lawton', 'Salesperson'
insert into CustomerContact (CustomerID, First, Last, JobTitle) select 3039, 'Stuart', 'Spahic', 'Salesperson'
insert into CustomerContact (CustomerID, First, Last, JobTitle) select 3191, 'Grant', 'Lawton', 'Salesperson'
insert into CustomerContact (CustomerID, First, Last, JobTitle) select 3261, 'Alan', 'Jakobsen', 'Salesperson'
insert into CustomerContact (CustomerID, First, Last, JobTitle) select 3185, 'Alan', 'Jakobsen', 'Salesperson'
insert into CustomerContact (CustomerID, First, Last, JobTitle) select 3026, 'Stuart', 'Spahic', 'Salesperson'
insert into CustomerContact (CustomerID, First, Last, JobTitle) select 3219, 'Grant', 'Lawton', 'Salesperson'
insert into CustomerContact (CustomerID, First, Last, JobTitle) select 3071, 'Greg', 'Elliott', 'Salesperson'
insert into CustomerContact (CustomerID, First, Last, JobTitle) select 3257, 'Alan', 'Jakobsen', 'Salesperson'
insert into CustomerContact (CustomerID, First, Last, JobTitle) select 2954, 'Alan', 'Jakobsen', 'Salesperson'
insert into CustomerContact (CustomerID, First, Last, JobTitle) select 3197, 'Ken', 'Scott', 'Salesperson'
insert into CustomerContact (CustomerID, First, Last, JobTitle) select 2992, 'Stuart', 'Spahic', 'Salesperson'
insert into CustomerContact (CustomerID, First, Last, JobTitle) select 3255, 'Alan', 'Jakobsen', 'Salesperson'
insert into CustomerContact (CustomerID, First, Last, JobTitle) select 3199, 'Grant', 'Lawton', 'Salesperson'
insert into CustomerContact (CustomerID, First, Last, JobTitle) select 3265, 'Alan', 'Jakobsen', 'Salesperson'
insert into CustomerContact (CustomerID, First, Last, JobTitle) select 3235, 'Ken', 'Scott', 'Salesperson'
insert into CustomerContact (CustomerID, First, Last, JobTitle) select 3027, 'Stuart', 'Spahic', 'Salesperson'
insert into CustomerContact (CustomerID, First, Last, JobTitle) select 3050, 'Stuart', 'Spahic', 'Salesperson'
insert into CustomerContact (CustomerID, First, Last, JobTitle) select 3006, 'Stuart', 'Spahic', 'Salesperson'
insert into CustomerContact (CustomerID, First, Last, JobTitle) select 3013, 'Stuart', 'Spahic', 'Salesperson'
insert into CustomerContact (CustomerID, First, Last, JobTitle) select 3195, 'Grant', 'Lawton', 'Salesperson'
insert into CustomerContact (CustomerID, First, Last, JobTitle) select 3025, 'Stuart', 'Spahic', 'Salesperson'
insert into CustomerContact (CustomerID, First, Last, JobTitle) select 3260, 'Alan', 'Jakobsen', 'Salesperson'
insert into CustomerContact (CustomerID, First, Last, JobTitle) select 3248, 'Alan', 'Jakobsen', 'Salesperson'
insert into CustomerContact (CustomerID, First, Last, JobTitle) select 3022, 'Stuart', 'Spahic', 'Salesperson'
insert into CustomerContact (CustomerID, First, Last, JobTitle) select 3024, 'Stuart', 'Spahic', 'Salesperson'
insert into CustomerContact (CustomerID, First, Last, JobTitle) select 3183, 'Alan', 'Jakobsen', 'Salesperson'
insert into CustomerContact (CustomerID, First, Last, JobTitle) select 3224, 'Alan', 'Jakobsen', 'Salesperson'
insert into CustomerContact (CustomerID, First, Last, JobTitle) select 3021, 'Stuart', 'Spahic', 'Salesperson'
insert into CustomerContact (CustomerID, First, Last, JobTitle) select 3037, 'Stuart', 'Spahic', 'Salesperson'
insert into CustomerContact (CustomerID, First, Last, JobTitle) select 3020, 'Stuart', 'Spahic', 'Salesperson'
insert into CustomerContact (CustomerID, First, Last, JobTitle) select 3259, 'Alan', 'Jakobsen', 'Salesperson'
insert into CustomerContact (CustomerID, First, Last, JobTitle) select 3023, 'Stuart', 'Spahic', 'Salesperson'
insert into CustomerContact (CustomerID, First, Last, JobTitle) select 3214, 'Grant', 'Lawton', 'Salesperson'

-- *** CONTACT INFO TYPE ***

insert into ContactInfoType (ContactInfoTypeId, Name) select 1, 'Phone';
insert into ContactInfoType (ContactInfoTypeId, Name) select 2, 'Email';

declare @type1 int, @type2 int;
set @type1 = (select ContactInfoTypeId from ContactInfoType where Name = 'Phone');
set @type2 = (select ContactInfoTypeId from ContactInfoType where Name = 'Email');

-- ** CELL PHONE ***

declare @CustomerContactID int;

select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2607;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-295-1282', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3198;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '204-880-7144', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3258;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '519-871-6721', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2939;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '705-734-4800', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3206;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '587 588-7730', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2963;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-490-6315', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2879;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '780-781-1789', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2810;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '403-669-2295', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3002;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '403-652-6870', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2769;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '403-795-2495', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3161;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-488-7327', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3176;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '204-324-4447', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2826;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '780-442-3325', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3238;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '587-999-5930', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2762;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '604-720-1253', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2851;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-509-0169', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2840;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '306-251-1552', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3249;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '604-727-9776', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2816;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-661-6988', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3188;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '587-999-5930', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 1019;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-402-9076', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 1012;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-426-9849', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 1038;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '403-816-0138', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 1044;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '403-548-5212', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 1269;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-693-2402', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 1309;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-494-8130', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 1432;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-505-2466', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 1604;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-304-8122', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 1932;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-619-0032', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 1999;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-613-8411', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2013;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '204-612-0152', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2038;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '403-678-0145', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2087;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '604-793-3612', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2118;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '403-650-8344', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2134;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '780-908-1204', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2179;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '403-863-3360', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2216;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-365-9887', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2227;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '519-813-8071', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2256;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-287-0577', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2268;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-882-5032', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2299;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-727-8338', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2308;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-920-5222', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2328;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-883-5333', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2387;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '604 -556-6409', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2391;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '780-915-5673', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2413;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '403-333-7192', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2435;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-883-9777', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2437;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-883-2147', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2439;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '604-649-5605', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2492;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '403-899-4900', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2511;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-498-9821', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2557;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '403-688-0030', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2562;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '403-391-2728', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2567;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '604-761-3252', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2580;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '778-552-3010', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2589;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-462-1351', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2609;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '403-607-9138', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2655;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-756-2128', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2670;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '403-540-4729', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2684;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '403-369-6284', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2700;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-832-5958', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2707;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-342-8840', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2723;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '604-833-5559', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2725;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-882-1055', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2735;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-883-9701', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2747;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '780-695-2916', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2749;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '406-439-4980', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2755;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-740-5201', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2757;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '403-952-0444', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2758;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '778-866-3325', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2760;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '780-994-6068', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2772;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-706-9024', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2776;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '780-718-4779', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2813;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '604-722-7781', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2841;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-261-3560', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2845;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-421-1289', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2848;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-804-9137', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2852;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '780-914-5389', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2860;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '403-200-8484', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2979;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '780-699-1228', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2754;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '306-591-1789', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2818;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '403-588-7587', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 1252;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-828-0060', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3059;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '509-494-2990', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2832;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '306-270-2862', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2789;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '509-494-2990', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3153;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '509-844-8060', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3233;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-851-1322', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3069;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '780-621-7381', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3189;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250 751-5862', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2808;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '306-981-4003', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2783;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-421-9065', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2984;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '403-650-4260', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2512;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '403-836-5588', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2936;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-833-9446', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3080;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-751-5862', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2588;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-870-3252', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2978;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-886-1864', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2822;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '780-742-5541', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2847;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '204-510-1789', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3159;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-804-5818', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2312;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '780-876-0535', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2959;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-342-7656', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2964;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '778-884-2430', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 1404;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-421-1612', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2708;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '204-724-2655', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2800;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '306-229-2244', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3173;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-833-8323', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 1073;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-702-1377', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2458;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-304-8961', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2467;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '780-906-7306', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2872;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-304-8912', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 1004;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-368-7380', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 1024;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-833-9900', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3146;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '403-952-6700', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2702;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '780-945-7666', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 1385;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-498-7296', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2705;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '604-290-2566', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 1013;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '403-877-7477', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 1068;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-837-1458', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 1028;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-883-2259', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 1046;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-428-6612', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 1451;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '780-906-7539', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2977;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '403-818-0642', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3005;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '780-903-9035', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2974;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-565-4974', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2057;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '403-371-5001', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2683;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '780-993-6052', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 1040;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-515-1316', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 1290;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-505-2466', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2050;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-549-0560', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 1618;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-744-8925', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2265;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '604-556-1353', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2975;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-486-6244', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3122;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-833-8718', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3170;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-864-0111', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2973;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '509-494-3287', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 1448;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-833-8323', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2695;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '705-770-4322', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 1074;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '867-334-8030', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2953;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '403-804-8444', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3232;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '403-999-3981', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 1061;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250 401-1411', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2574;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '403-875-6278', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2123;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-231-7905', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3215;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '780-813-4721', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2318;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-826-1111', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2014;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '403-688-3095', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2253;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '403-850-0343', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 1647;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '403-502-0952', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3261;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-883-2942', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2817;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-304-5257', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2422;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-212-3075', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3165;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '778-862-1088', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2325;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '780-818-2009', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 1703;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '403-616-6317', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2739;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '403-829-1616', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3205;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '306-229-2244', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2569;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-341-5352', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2097;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-714-2235', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 1698;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '403-861-3004', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2786;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '403-660-1024', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2853;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-510-3376', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3257;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '403-826-2020', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2877;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '780-709-4278', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2795;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '306-221-8212', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3210;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '403-948-5535', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2954;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-833-7512', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2967;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-417-7081', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3181;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '780-871-2981', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2878;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-809-7136', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3199;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '780-479-6400', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 1006;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '710-2882 ', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2835;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '604-230-3029', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3201;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-490-5388', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3235;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250 505-3404', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3082;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-274-0033', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3046;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '403-234-0130', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3130;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '306-537-7579', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2854;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '780-720-7619', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2661;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '403-519-7076', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2733;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-443-4225', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 1102;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-417-1456', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2833;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-265-1130', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2058;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '306-421-2033', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2212;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-428-1710', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2771;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-833-9921', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2811;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '403-830-8386', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 1661;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-305-8370', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2335;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '403-994-0980', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2791;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '403-809-5505', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3140;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '877-342-5866', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2950;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-254-0107', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2036;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '867-445-7468', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2565;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-365-9886', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3218;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-214-0237', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3227;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '503-201-3751', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2598;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '403-835-5124', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2579;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-833-8858', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3160;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-499-9456', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2229;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-262-8235', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2861;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '403-826-1059', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2119;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '403-605-5272', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3177;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '780-982-3328', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 1279;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '250-612-7569', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 1935;insert into ContactInfo select @type1, @CustomerContactID, 'Cell', '403-818-2559', 'false';

-- *** EMAIL ***

select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3193;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'SEND QUOTES/CONFIRMATIONS TO grant@prodexs.com,  invoicing to dsoroka@overandabove.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3221;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'curbimpressions@live.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2607;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'NOT AVAILABLE', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3198;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'kozic.amir@gmail.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3258;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'marc@blueskyfence.ca CC AJ', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3206;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'sales@theporchappealcompany.com CC GRANT', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3245;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'kscott@cendekrailings.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3207;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'grant@prodexs.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2983;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'lantanas1@gmail.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2963;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'ta77@shaw.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3223;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'grant@prodexs.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3149;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'kmcgowan@jacobbros.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3262;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'streitco@telus.net, grant@prodexs.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3115;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'twhitehouse@telus.net, jennie@carukmediagroup.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2810;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'bdberg@telusplanet.net', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3251;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'twhitehouse@cendekrailings.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3002;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'comltd@completecarpentryltd.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3161;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'johnmacm@telus.net', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3074;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'gregcenturyontario@gmail.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3151;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'checs@shaw.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3203;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'allsloperoofing@gmail.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3212;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'matt@scottconstruction.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3176;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'tfehr@bridgeroad.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3213;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'stevensrenovations@shaw.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2794;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'info@protechvi.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3238;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'grant@prodexs.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2989;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'stuartspahic@gmail.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3263;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'justin@powertechposts.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 1093;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'rgayowski@wisewindowsanddoors.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3202;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'bids@trueconstruction.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3243;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'brett.redpath@gmail.com, invoices to jbr.landscaping.inc@shaw.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3143;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'Greg.Everett@airportrailings.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2692;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'anne@kmburgess.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3216;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'grant@prodexs.com; sales@epicroofing.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3217;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'niglass@telus.net, cc Stu rory@niglass@telus.net', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3220;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'grant@prodexs.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3225;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'grant@prodexs.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3239;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'service@marathonltd.com, CC KEN', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3246;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'grant@prodexs.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3247;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'grant@prodexs.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3249;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'ajakobsen@cendekrailings.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3252;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'buildmemories@deckcity.ca, confirmations to sgiesbrecht@dekcity.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3253;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'ajakobsen@cendekrailings.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3256;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'marc@railpro.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2870;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'mballa@telus.net', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3188;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'grant@prodexs.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2880;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'capcity@ssimicro.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 1640;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'ocwiley@beaverhomeimprovements.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 1008;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'junkatoms@wingnut.screwy', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 1168;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'info@allkindsofglass.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2670;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'calgaryweatherdek@shaw.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2684;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'HRAIL@TELUS.NET', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2689;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'taylormadevinyl@gmail.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2718;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'info@prestigewindowssunrooms.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2735;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'bill1mail@yahoo.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2749;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'derekcarmen_whiting_2@msn.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2757;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'vtech@telus.net', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2770;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'dalron2@telus.net', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2773;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'jbflortec@hotmail.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2775;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'ricksherritt@hotmail.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2825;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'dmtolsma@telus.net', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2852;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'sheldon@carpetstudio.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2860;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'stonepine@efirehose.net', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3060;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'shipmentcare@canadianfreightways.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2876;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'irene@falconpowder.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2979;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'hackster50@hotmail.com; selectdecking@hotmail.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2985;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'worsted@telus.net', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2754;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'info@bestpricerailing.com sask ord to ryan@bestpricerailing.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2818;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'accounting@allseasondecking.net-invoices Nancy,conf-admin@allseasondecking.net-Kara,Daniel-sales@allseasondecking.net,Jason-jason@allseasondecking.net', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 1041;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'kelownaduradek@duradek.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 1252;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'chris@continuousgutters.ca ', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2162;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'hschiller@shaw.ca  SNAIL MAIL INVOICE', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2856;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'm.park@sasktel.net', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3059;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'stanleykotlarz@yahoo.com; amber@bortonfruit.com;melinda@bortonfruit.com;kim@bortonfruit.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2729;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'whitingwaterproofing@hotmail.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2832;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'rkeep@dexperts.ca, dharms@dexperts.ca, CC Grant invoices to dschafer@beachcombersk.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2789;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'stanleykotlarz@yahoo.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3153;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'thad@alpineonline.net, jesse@alpineonline.net, ennisdeede@gmail.com CC with invoices ', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3233;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'jhumphrey@windsorplywood.com; kghering@windsorplywood.com; mtarry@windsorplywood.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 1674;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'thad@alpineonline.net, jesse@alpineonline.net,  jesse33m@hotmail.com, ennisdeede@gmail.com  ', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3098;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'chris@continuousgutters.ca ', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3069;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'len@lakeviewcustomhomes.ca for confirmations, steph@lakeviewcustomhomes.ca for invoicing', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3189;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'abh15@shaw.ca, john@budgetglass.com, joan@budgetglass.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3194;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'mshantz@horizonnorth.ca Invoice only to   AP@horizonnorth.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2808;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'cody@econolumber.com, phyllis@econolumber.com ', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2774;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'fax invoices and statements', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 1011;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'bongley@shaw.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2783;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'eagle07@telus.net', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 1380;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'martin@glacierglass.com for confirm, invoices to jeff@glacierglass.com ', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2984;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'rochellek@skylinegroup.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2512;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'curtis@4boysmfg.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2827;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'jack.tinney@creativedeckworx.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3139;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'mike@bmgglass.com; lesley@bmgglass.com; elaine@bmgglass.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2936;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'sofuson@shaw.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3250;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'gfrancis@freeportindustries.ca, invoices to alove@freeportindustries.ca, speterson@freeportindustries.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3080;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'abh15@shaw.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3104;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'jgglass1@telus.net', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2588;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'qualitysundecks@outlook.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3264;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'ram.mgt@sasktel.net', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2978;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'martine@nuviewhomes.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2822;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'iamcanadiann@yahoo.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2828;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'brian@easterndesign.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2847;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'matt@bestpricerailing.com, for confirmations, AND invoicing to  accounting@bprwpg.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2394;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'randy.renpro@sasktel.net', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3159;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'sawindow@telus.net, invoices wendysawindow@telus.net', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3072;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'waynerobinson@shaw.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2312;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'brandy@peacewindows.com invoicing, for confirmations tim@peacewindows.com,john@peacewindows.com , dean@peacewindows.com ', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2959;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'sales@hdrailings.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2964;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'rupwoodsteel@gmail.com invoices to rupwoodsteelap@gmail.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2855;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'joesher1@telus.net', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3079;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'alyseng@gmail.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2874;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'brent@maglio.ca, kyle@maglio.ca for confirm for invoices ap@maglio.ca ', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 1404;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'kootenayvinyldeck@shaw.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3172;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'michael@eneray.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2708;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'robb2655@gmail.com chssearch@gmail.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2800;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'dhanneson@sasktel.net;jdhanneson@sasktel.net ', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2441;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'ram.mgt@sasktel.net', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3173;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'coppercoveglass@hotmail.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3083;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'info@protechvi.com; tonyd@protechvi.com  invoices & statements lorraine@protechvi.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2947;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'welldon@mybcdc.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 1073;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'sandy.clausen@yahoo.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2458;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'Not available', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2467;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'info@albertaqw.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2872;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'cbfarms9@gmail.com new crystal.kaminski@airliquide.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 1004;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'kings.door@shaw.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 1024;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'pls fax confirmations & snail mail invoices', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3146;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'lchenard@shaw.ca; trex77@shaw.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2702;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'sunguard@telus.net', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3204;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'renovation911.cm@gmail.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 1385;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'clint.sodrg@gmail.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2705;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'info@allseasonwaterproofing.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 1013;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'cenalta67@gmail.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 1068;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'selvinyl@telus.net MAIL INVOICES', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 1028;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'info@prodeck.org', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 1046;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'nufloorscreston@shawbiz.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 1451;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'wade@preglass.com pls fax invoices and statements', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 1713;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'deck.cetera111@gmail.com ', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2977;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'kimberlyw@skylinegroup.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3005;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'idealsun@telus.net', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3162;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'deekconsult@gmail.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2974;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'wayne_sewell@msn.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2980;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'jack.tinney@creativedeckworx.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3230;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'elementexteriors2016@outlook.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2057;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'rick@bradmarhomes.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2683;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'ned@telus.net', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3209;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'j.herndier@gmail.com, bobstuve@diamondpark.ca,  confirmations & quotes to INV hntyates@gmail.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 1040;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'wade.e@telus.net  ', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 1290;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'dj1evans@shaw.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2050;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'can4x4@shaw.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 1618;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'joshcivic@hotmail.com, njvo@telus.net AND invoices to nicole@horizoncontracting.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2265;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'waynejanice@hotmail.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2975;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'summerlandglass@telus.net', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3057;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'onyxcm@gmail.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3208;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'patrick@nvexteriors.ca, INVOICES TO jeannie@nvexteriors.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3122;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'dbinteriordesign@hotmail.com, OLD gvistisen@telus.net', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3170;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'joewack@sunsationaldecks.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3090;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'stuartspahic@gmail.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 1296;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'b.homenko@yahoo.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 1448;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'sawindow@telus.net', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2695;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'tzarcone@rogers.com, kimzarcone@rogers.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2812;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'linda@traineconstruction.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3004;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'bwisesunroomsandrenovations@hotmail.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3171;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'ddecks_@hotmail.com, NEW kdavis64@hotmail.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 1074;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'boily@northwestel.net', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3174;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'ecsiding2k@gmail.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2838;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'sales@gfreno.com fax invoices', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2953;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'lkr@arktype.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3154;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'sandi.floorfx@shaw.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2781;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'J-M.G.Renovations@shaw.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2821;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'fedund@telus.net', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3186;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'lindsayglasslgw@gmail.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3232;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'info@thinkbeast.com CC Grant', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2738;insert into ContactInfo select @type2, @CustomerContactID, 'Email', '4elite@telus.net', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2994;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'bob@pelicandecks.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3244;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'HNCC-AP@horizonnorth.ca for invoices, quote/confirmations to Ma', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 1061;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'ewilfur@hotmail.com, dana.wilfur@pembina.com - EMAIL BOTH PLEASE', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3231;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'theuver@avalonmasterbuilder.com, invoices@AvalonMasterBuilder.com,grant@prodexs.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2515;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'hobbyent@live.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2574;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'davedorin@hotmail.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3166;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'tfudge1958@gmail.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3196;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'wrap-itsystems@hotmail.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2123;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'royalvinyldecking@shaw.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2331;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'fehrles@hotmail.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3215;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'rick@hr2construction.ca invoices to accounting@hr2construction.ca CC grant@prodexs.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 1157;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'crystal@bar-t.cai for confirmations, nvoices to allyson@bar-t.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2148;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'info@invermereglass.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3102;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'exporto@yahoo.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2014;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'candek1@shaw.ca/ admin@candek.com ', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2253;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'royalrailing@shaw.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3039;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'sunsetcreek@mts.net', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3164;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'coryahls@hotmail.com AND proexx.finishing@gmail.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 1647;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'snsaluminum@telus.net ', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2844;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'renoguy@shaw.ca ', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3007;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'singhrplaza50@shaw.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2938;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'steph@trendhomeimprove.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3191;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'info@canmoreglass.com; copy Grant', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3261;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'info@deckadenceinc.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2817;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'gkm@telus.net', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2422;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'superiordeckltd@hotmail.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3165;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'kelownaduradek@duradek.com, AND s7wood60@yahoo.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2325;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'gcdecking@shaw.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 1703;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'info@permadeck.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2322;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'towen1@telus.net', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2739;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'dan@ledecksolutions.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3185;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'goodworkcontracting@yahoo.ca ', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 1353;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'darren@dchindustries.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3167;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'b.bergman@auroraexteriors.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3205;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'dhanneson@sasktel.net;jdhanneson@sasktel.net  ', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2569;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'unidoorext@live.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2097;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'yahnsteve@hotmail.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 1698;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'woody@eagleexteriors.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2390;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'heartltd@telus.net', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2786;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'ap@monarchcentres.com for invoicing AND for confirmations dave.taylor@monarchcentres.com,ken@monarchcentres.com,brandy@monarchcentres.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3026;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'Harry.lee@mts.net', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3158;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'catchert@icloud.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3190;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'kamloopsgutters@gmail.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2784;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'prosourcefloors.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3219;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'josh@viewpointdecking.ca CC Grant ', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2988;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'info@pacifichomeproducts.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3071;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'rgelliott@sympatico.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2853;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'sbwindowsanddoors@telus.net', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3257;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'sturner@renewallprojects.ca CC AJ', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2877;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'bcboarder159@hotmail.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3237;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'gregghar66@gmail.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2795;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'davel@associatedappraisals.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2805;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'dlindenthaler@explornet.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3210;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'cooper120@shaw.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3156;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'excelsundecks@gmail.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2615;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'info@dexpert.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2843;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'smruim@hotmail.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2927;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'mverschuren@deksmartrailings.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2954;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'rebekka@csmh.ca; frank@csmh.ca for confirmations, for invoices barb@csmh.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3197;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'fred@nelsonaluminumproducts.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2967;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'kerrymurray@telus.net AND uniquewindows@telus.net confirmation AND for invoice dorisparsons@telus.net', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3152;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'capcity@sasktel.net', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3181;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'josh@fencedin.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3184;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'jay@jayscustomfab.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 1188;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'drblues@telus.net', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 1413;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'stglass@telus.net', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2992;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'wiebo@shaw.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3168;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'heritagedeckandrail@gmail.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3255;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'marten@tenmar.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2878;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'glenv@titanpacific.net', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2671;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'northwindor@shaw.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3199;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'grant@prodexs.com for conf/quote, invoices to wabcor2@telus.net', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3265;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'blackwoodfyfe@gmail.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 1006;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'andy@andyheffernan.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2937;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'edsiding@shaw.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3201;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'craigpetersen27@gmail.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3235;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'info@glacierviewglass.ca, ', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3027;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'argonweld1@yahoo.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3082;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'noahsark2010@hotmail.com AND rhluis@hotmail.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2991;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'jeff@landauinstallations.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3046;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'blackridge@shaw.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3130;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'llenius@sasktel.net', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3226;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'melissa.exteriorsolutions@yahoo.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2731;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'highgharian@yahoo.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2854;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'dan@royerhomes.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2661;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'weatherguard_vinyl@yahoo.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2952;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'alcinstallations@yahoo.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3050;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'craig@fancystairsandrailings.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3006;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'a.mueller@alfa1.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3013;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'dinos@telus.net', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3045;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'info@preglass.com pls fax invoices and statements', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3200;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'markshome@telus.net', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 1102;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'fred-cheryl@hotmail.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2833;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'lscon@telus.net', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3195;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'vanhagenm@gmail.com, CC GRANT', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2058;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'mcollins@sasktel.net', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2212;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'not available', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2139;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'stuartspahic@gmail.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3025;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'jcdecks@mymts.net', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3260;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'info@keystoneglass.ca, cc AJ', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2771;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'dcbeitel@gmail.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2811;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'edstimator@gmail.com, edhordos@telusplanet.net', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 1661;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'cariboowea@msn.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3229;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'novarenos@gmail.com, cc KS', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2335;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'haycity.projects@shawbiz.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2791;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'saexteriors@shaw.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3248;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'marc@gaultier.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3022;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'mdf129@gmail.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3024;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'deckscape@mymts.net', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3140;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'freedompropertysolutions@hotmail.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3183;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'bgmurdoch@gmail.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3224;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'backyardbydesign@gmail.com, kscott@cendekrailings.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3228;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'andyb@tricityglass-door.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2982;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'cameronb@skylinegroup.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3021;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'sales@timkohome.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2950;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'tws@wynndel.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3037;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'gischellenberg@yahoo.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2036;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'diamondglass@theedge.ca,  AND invoices debbie@theedge.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2565;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'nutech@netidea.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3020;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'briauk.advance@msn.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3218;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'construction_rd@yahoo.ca ', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3227;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'r.boyle@comcast.net', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3234;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'steve@hipyakima.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3211;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'brady.moores@gmail.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2850;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'mk@parklandfibreglass.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3259;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'davidh@swmw.net, ajakobsen@cendekrailings.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2924;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'dan_theman@telus.net', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2598;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'orderdesk@deltasiding.ca, vic@deltasiding.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2849;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'bradclifford13@hotmail.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3222;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'chephrenbuilding@gmail.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2579;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'herbfieber@hotmail.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3126;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'alr@excellrailing.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3023;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'kirk@simpledesigndecks.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3155;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'Chris.Denne@timbrmart.on.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3160;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'jwurz@iem.ca', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2764;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'bruceind.ca@gmail.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3214;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'grant@prodexs.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2229;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'emblex2@telus.net', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 2861;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'joshuahtait@gmail.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3157;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'eaves.av@gmail.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 3177;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'cedar_spring@hotmail.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 1279;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'simon_mandel30@hotmail.com', 'false';
select @CustomerContactID = min(CustomerContactID) from CustomerContact where CustomerID = 1935;insert into ContactInfo select @type2, @CustomerContactID, 'Email', 'stuartspahic@gmail.com', 'false';

update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2389
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2748
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3193
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3221
update Customer set Packaging = 4, ShipCharges = 'None' where CustomerID = 2607
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3198
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3258
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2939
update Customer set Packaging = 4, ShipCharges = 'None' where CustomerID = 3206
update Customer set Packaging = 0, ShipCharges = 'Collect' where CustomerID = 3245
update Customer set Packaging = 4, ShipCharges = 'None' where CustomerID = 3207
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2983
update Customer set Packaging = 0, ShipCharges = 'Collect' where CustomerID = 3163
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3213
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2865
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3238
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2963
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3223
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2879
update Customer set Packaging = 4, ShipCharges = 'None' where CustomerID = 3149
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3262
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 3115
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2810
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3067
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3251
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3002
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2769
update Customer set Packaging = 4, ShipCharges = 'None' where CustomerID = 3161
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 1366
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 3074
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2063
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 1176
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 1185
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3151
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3203
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3212
update Customer set Packaging = 4, ShipCharges = 'None' where CustomerID = 2785
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 3176
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2558
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2794
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2826
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2762
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2869
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2989
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3263
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 1093
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 3138
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3202
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 1008
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 1021
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 1029
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3243
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 1094
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2851
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2871
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 3143
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2840
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 1411
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2692
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2763
update Customer set Packaging = 0, ShipCharges = 'Collect' where CustomerID = 3216
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3217
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3220
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3225
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3239
update Customer set Packaging = 4, ShipCharges = 'None' where CustomerID = 3246
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3253
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2816
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2868
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 1067
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3247
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3249
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3252
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3256
update Customer set Packaging = 4, ShipCharges = 'None' where CustomerID = 2780
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2870
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3188
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 1019
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2880
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2864
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 1640
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 1012
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 1033
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 1038
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 1042
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 1044
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 1062
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 1065
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 1071
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 1090
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 1092
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 1123
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 1152
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 1156
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 1168
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 1182
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 1223
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 1269
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 1309
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 1315
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 1336
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 1350
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 1408
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 1432
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 1526
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 1559
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 1604
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 1612
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 1635
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 1652
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 1654
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 1728
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 1731
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 1772
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 1777
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 1806
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 1809
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 1932
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 1951
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 1999
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2001
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2013
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2026
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2034
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2038
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2075
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2084
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2087
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2102
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2110
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2117
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2118
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2134
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2166
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2168
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2179
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2216
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2227
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2247
update Customer set Packaging = 4, ShipCharges = 'None' where CustomerID = 2249
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2254
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2256
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2268
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2269
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2275
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2278
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2281
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2291
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2299
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2306
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2310
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2323
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2328
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2381
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2308
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2387
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2391
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2395
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2397
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2413
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2414
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2434
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2435
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2437
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2439
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2440
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2489
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2492
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2499
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2503
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2511
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2533
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2537
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2767
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2845
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2557
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2562
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2567
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2580
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2589
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2602
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2609
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2655
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2670
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2679
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2681
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2684
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2689
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2693
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2700
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2701
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2707
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2711
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2714
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2715
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2718
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2723
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2725
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2727
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2728
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2734
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2735
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2736
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2742
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2743
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2744
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2747
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2749
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2753
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2755
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2757
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2758
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2760
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2761
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2766
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2770
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2772
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2773
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2775
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2776
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2777
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2778
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2782
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2787
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2798
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2799
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2801
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2804
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2813
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2815
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2819
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2825
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2837
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2839
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2841
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2848
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2852
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2858
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2860
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2881
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 3060
update Customer set Packaging = 0, ShipCharges = 'Prepaid' where CustomerID = 3236
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 1616
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2814
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2876
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2979
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2985
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2987
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 3145
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2898
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2899
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2900
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2903
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2904
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2905
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2906
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2907
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2908
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2921
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2923
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2956
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2754
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2818
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 1041
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 1252
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2162
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2856
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3059
update Customer set Packaging = 6, ShipCharges = 'Collect' where CustomerID = 2729
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2832
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2789
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3153
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3233
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 1674
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3098
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3069
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3189
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3194
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2808
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2774
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 1011
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2783
update Customer set Packaging = 6, ShipCharges = 'Collect' where CustomerID = 1380
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2984
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2512
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2827
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3139
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2936
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3250
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3080
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3104
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2588
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3264
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2978
update Customer set Packaging = 4, ShipCharges = 'Prepaid' where CustomerID = 2822
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2828
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2847
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2394
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3159
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3072
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2312
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2959
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2964
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2855
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3079
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2874
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 1404
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3172
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2673
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2708
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2800
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2441
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3173
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3083
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2947
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 1073
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2458
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2467
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2872
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 1004
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 1024
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3146
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2702
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3204
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 1385
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2705
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 1013
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 1068
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 1028
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 1046
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 1451
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 1713
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2977
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3005
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3162
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2974
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2980
update Customer set Packaging = 4, ShipCharges = 'None' where CustomerID = 3230
update Customer set Packaging = 4, ShipCharges = 'None' where CustomerID = 2057
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2683
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3209
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 1040
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 1290
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2050
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2834
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 1618
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2265
update Customer set Packaging = 4, ShipCharges = 'None' where CustomerID = 2975
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 3057
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3208
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3122
update Customer set Packaging = 4, ShipCharges = 'None' where CustomerID = 3170
update Customer set Packaging = 4, ShipCharges = 'Prepaid' where CustomerID = 3090
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2973
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 1296
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 1448
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2695
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2812
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3004
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3171
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 1074
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3174
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2838
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2953
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3154
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2781
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2821
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3186
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3232
update Customer set Packaging = 4, ShipCharges = 'None' where CustomerID = 2738
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2994
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3244
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 1061
update Customer set Packaging = 4, ShipCharges = 'Prepaid' where CustomerID = 3231
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2515
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2574
update Customer set Packaging = 4, ShipCharges = 'None' where CustomerID = 3166
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3196
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2123
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2331
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3215
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 1157
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2318
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2148
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3102
update Customer set Packaging = 4, ShipCharges = 'None' where CustomerID = 2014
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2253
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 3039
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3164
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 1647
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2844
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 3007
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2938
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3191
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3261
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2817
update Customer set Packaging = 4, ShipCharges = 'None' where CustomerID = 2422
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3165
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2325
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2459
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 1703
update Customer set Packaging = 4, ShipCharges = 'None' where CustomerID = 2322
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2739
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3185
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 1353
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3167
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3205
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2569
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2097
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 1698
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2390
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2786
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 3026
update Customer set Packaging = 4, ShipCharges = 'None' where CustomerID = 3158
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3190
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2784
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3219
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2988
update Customer set Packaging = 0, ShipCharges = 'Collect' where CustomerID = 3071
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2853
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3257
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2877
update Customer set Packaging = 4, ShipCharges = 'None' where CustomerID = 3237
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2795
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2805
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 3049
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3210
update Customer set Packaging = 4, ShipCharges = 'None' where CustomerID = 3156
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2615
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2843
update Customer set Packaging = 4, ShipCharges = 'None' where CustomerID = 2927
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2954
update Customer set Packaging = 4, ShipCharges = 'None' where CustomerID = 3197
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 1994
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2967
update Customer set Packaging = 4, ShipCharges = 'None' where CustomerID = 3152
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3181
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3184
update Customer set Packaging = 4, ShipCharges = 'None' where CustomerID = 1188
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 1413
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2992
update Customer set Packaging = 4, ShipCharges = 'None' where CustomerID = 3017
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3168
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3255
update Customer set Packaging = 4, ShipCharges = 'None' where CustomerID = 2878
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2671
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3199
update Customer set Packaging = 4, ShipCharges = 'Prepaid' where CustomerID = 3265
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 1006
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2835
update Customer set Packaging = 4, ShipCharges = 'None' where CustomerID = 2937
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3201
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3235
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 3027
update Customer set Packaging = 4, ShipCharges = 'None' where CustomerID = 3082
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2991
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3046
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3130
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3226
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2731
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2854
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2661
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2952
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3050
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2733
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3006
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 3013
update Customer set Packaging = 4, ShipCharges = 'None' where CustomerID = 3045
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3200
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 1102
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2833
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3195
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2058
update Customer set Packaging = 4, ShipCharges = 'None' where CustomerID = 2212
update Customer set Packaging = 4, ShipCharges = 'None' where CustomerID = 2139
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 3025
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3260
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2771
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2811
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 1661
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3229
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2335
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2791
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3248
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2283
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 3022
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 3024
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3140
update Customer set Packaging = 4, ShipCharges = 'None' where CustomerID = 3183
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3224
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3228
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2982
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 3021
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2950
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 3037
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2036
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2565
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 3020
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3218
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3227
update Customer set Packaging = 4, ShipCharges = 'None' where CustomerID = 3234
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3211
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2850
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2961
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3259
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2823
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2924
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2598
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2849
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3222
update Customer set Packaging = 4, ShipCharges = 'None' where CustomerID = 2579
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3126
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 3023
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3155
update Customer set Packaging = 4, ShipCharges = 'None' where CustomerID = 3160
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2764
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3214
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2229
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2806
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2861
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3157
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 2119
update Customer set Packaging = 0, ShipCharges = 'None' where CustomerID = 2842
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 3177
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 1279
update Customer set Packaging = 4, ShipCharges = 'Collect' where CustomerID = 1935

insert into CustomerCarrier (CustomerID, CarrierID) select 3193, (select CarrierID from Carrier where CarrierName = 'APPS Cargo')
insert into CustomerCarrier (CustomerID, CarrierID) select 2607, (select CarrierID from Carrier where CarrierName = 'Customer Pick up')
insert into CustomerCarrier (CustomerID, CarrierID) select 3163, (select CarrierID from Carrier where CarrierName = 'Ace Courier')
insert into CustomerCarrier (CustomerID, CarrierID) select 3067, (select CarrierID from Carrier where CarrierName = 'Ace')
insert into CustomerCarrier (CustomerID, CarrierID) select 3251, (select CarrierID from Carrier where CarrierName = 'Greyhound')
insert into CustomerCarrier (CustomerID, CarrierID) select 3002, (select CarrierID from Carrier where CarrierName = 'Overland/Roseneau')
insert into CustomerCarrier (CustomerID, CarrierID) select 3161, (select CarrierID from Carrier where CarrierName = 'Customer Pick up')
insert into CustomerCarrier (CustomerID, CarrierID) select 3151, (select CarrierID from Carrier where CarrierName = 'APPS Cargo')
insert into CustomerCarrier (CustomerID, CarrierID) select 2785, (select CarrierID from Carrier where CarrierName = 'Ace')
insert into CustomerCarrier (CustomerID, CarrierID) select 2794, (select CarrierID from Carrier where CarrierName = 'Diamond Delivery')
insert into CustomerCarrier (CustomerID, CarrierID) select 3138, (select CarrierID from Carrier where CarrierName = 'Van Kam')
insert into CustomerCarrier (CustomerID, CarrierID) select 3243, (select CarrierID from Carrier where CarrierName = 'Greyhound')
insert into CustomerCarrier (CustomerID, CarrierID) select 3252, (select CarrierID from Carrier where CarrierName = 'Manitoulin Transport')
insert into CustomerCarrier (CustomerID, CarrierID) select 3256, (select CarrierID from Carrier where CarrierName = 'Ace Courier')
insert into CustomerCarrier (CustomerID, CarrierID) select 1640, (select CarrierID from Carrier where CarrierName = 'Customer Pick up')
insert into CustomerCarrier (CustomerID, CarrierID) select 1012, (select CarrierID from Carrier where CarrierName = 'Overland')
insert into CustomerCarrier (CustomerID, CarrierID) select 2693, (select CarrierID from Carrier where CarrierName = 'Kindersley')
insert into CustomerCarrier (CustomerID, CarrierID) select 3236, (select CarrierID from Carrier where CarrierName = 'Ace Courier')
insert into CustomerCarrier (CustomerID, CarrierID) select 2979, (select CarrierID from Carrier where CarrierName = 'APPS Cargo')
insert into CustomerCarrier (CustomerID, CarrierID) select 2754, (select CarrierID from Carrier where CarrierName = 'Day & Ross')
insert into CustomerCarrier (CustomerID, CarrierID) select 2818, (select CarrierID from Carrier where CarrierName = 'Ace Courier')
insert into CustomerCarrier (CustomerID, CarrierID) select 1041, (select CarrierID from Carrier where CarrierName = 'Ace')
insert into CustomerCarrier (CustomerID, CarrierID) select 1252, (select CarrierID from Carrier where CarrierName = 'Diamond Delivery')
insert into CustomerCarrier (CustomerID, CarrierID) select 2856, (select CarrierID from Carrier where CarrierName = 'Kindersley')
insert into CustomerCarrier (CustomerID, CarrierID) select 3059, (select CarrierID from Carrier where CarrierName = 'Rogmay')
insert into CustomerCarrier (CustomerID, CarrierID) select 2729, (select CarrierID from Carrier where CarrierName = 'Rogmay Services')
insert into CustomerCarrier (CustomerID, CarrierID) select 2832, (select CarrierID from Carrier where CarrierName = 'Manitoulin Transport')
insert into CustomerCarrier (CustomerID, CarrierID) select 2789, (select CarrierID from Carrier where CarrierName = 'Berry & Smith')
insert into CustomerCarrier (CustomerID, CarrierID) select 3153, (select CarrierID from Carrier where CarrierName = 'Rogmay Services')
insert into CustomerCarrier (CustomerID, CarrierID) select 3233, (select CarrierID from Carrier where CarrierName = 'Diamond Delivery')
insert into CustomerCarrier (CustomerID, CarrierID) select 1674, (select CarrierID from Carrier where CarrierName = 'Rogmay Services')
insert into CustomerCarrier (CustomerID, CarrierID) select 3098, (select CarrierID from Carrier where CarrierName = 'Day & Ross')
insert into CustomerCarrier (CustomerID, CarrierID) select 3069, (select CarrierID from Carrier where CarrierName = 'Get Quote for Customer')
insert into CustomerCarrier (CustomerID, CarrierID) select 3189, (select CarrierID from Carrier where CarrierName = 'Diamond Delivery')
insert into CustomerCarrier (CustomerID, CarrierID) select 3194, (select CarrierID from Carrier where CarrierName = 'Van Kam')
insert into CustomerCarrier (CustomerID, CarrierID) select 2808, (select CarrierID from Carrier where CarrierName = 'DHL')
insert into CustomerCarrier (CustomerID, CarrierID) select 2774, (select CarrierID from Carrier where CarrierName = 'Van Kam')
insert into CustomerCarrier (CustomerID, CarrierID) select 1011, (select CarrierID from Carrier where CarrierName = 'Overland')
insert into CustomerCarrier (CustomerID, CarrierID) select 2783, (select CarrierID from Carrier where CarrierName = 'Overland')
insert into CustomerCarrier (CustomerID, CarrierID) select 1380, (select CarrierID from Carrier where CarrierName = 'Tiger')
insert into CustomerCarrier (CustomerID, CarrierID) select 2512, (select CarrierID from Carrier where CarrierName = 'Overland')
insert into CustomerCarrier (CustomerID, CarrierID) select 2827, (select CarrierID from Carrier where CarrierName = 'APPS Cargo')
insert into CustomerCarrier (CustomerID, CarrierID) select 2936, (select CarrierID from Carrier where CarrierName = 'Ace')
insert into CustomerCarrier (CustomerID, CarrierID) select 3250, (select CarrierID from Carrier where CarrierName = 'Ace Courier')
insert into CustomerCarrier (CustomerID, CarrierID) select 3080, (select CarrierID from Carrier where CarrierName = 'Canadian Freightways')
insert into CustomerCarrier (CustomerID, CarrierID) select 3104, (select CarrierID from Carrier where CarrierName = 'Overland/GRIMSHAW')
insert into CustomerCarrier (CustomerID, CarrierID) select 2588, (select CarrierID from Carrier where CarrierName = 'Customer Pick up')
insert into CustomerCarrier (CustomerID, CarrierID) select 3264, (select CarrierID from Carrier where CarrierName = 'Kindersley')
insert into CustomerCarrier (CustomerID, CarrierID) select 2978, (select CarrierID from Carrier where CarrierName = 'Ace')
insert into CustomerCarrier (CustomerID, CarrierID) select 2822, (select CarrierID from Carrier where CarrierName = 'Canadian Freightways')
insert into CustomerCarrier (CustomerID, CarrierID) select 2828, (select CarrierID from Carrier where CarrierName = 'Will Advise')
insert into CustomerCarrier (CustomerID, CarrierID) select 2847, (select CarrierID from Carrier where CarrierName = 'Vitran')
insert into CustomerCarrier (CustomerID, CarrierID) select 2394, (select CarrierID from Carrier where CarrierName = 'Jays')
insert into CustomerCarrier (CustomerID, CarrierID) select 3159, (select CarrierID from Carrier where CarrierName = 'Overland')
insert into CustomerCarrier (CustomerID, CarrierID) select 3072, (select CarrierID from Carrier where CarrierName = 'Diamond Delivery')
insert into CustomerCarrier (CustomerID, CarrierID) select 2312, (select CarrierID from Carrier where CarrierName = 'Kindersley')
insert into CustomerCarrier (CustomerID, CarrierID) select 2959, (select CarrierID from Carrier where CarrierName = 'Ace')
insert into CustomerCarrier (CustomerID, CarrierID) select 2964, (select CarrierID from Carrier where CarrierName = 'Overland/Bandstra')
insert into CustomerCarrier (CustomerID, CarrierID) select 2874, (select CarrierID from Carrier where CarrierName = 'Clark Freightways')
insert into CustomerCarrier (CustomerID, CarrierID) select 1404, (select CarrierID from Carrier where CarrierName = 'Ace')
insert into CustomerCarrier (CustomerID, CarrierID) select 3172, (select CarrierID from Carrier where CarrierName = 'Reimer Express')
insert into CustomerCarrier (CustomerID, CarrierID) select 2708, (select CarrierID from Carrier where CarrierName = 'Kindersley')
insert into CustomerCarrier (CustomerID, CarrierID) select 2800, (select CarrierID from Carrier where CarrierName = 'Canadian Freightways')
insert into CustomerCarrier (CustomerID, CarrierID) select 2441, (select CarrierID from Carrier where CarrierName = 'Kindersley')
insert into CustomerCarrier (CustomerID, CarrierID) select 3173, (select CarrierID from Carrier where CarrierName = 'Ace Courier')
insert into CustomerCarrier (CustomerID, CarrierID) select 3083, (select CarrierID from Carrier where CarrierName = 'Diamond Delivery')
insert into CustomerCarrier (CustomerID, CarrierID) select 2947, (select CarrierID from Carrier where CarrierName = 'Ace')
insert into CustomerCarrier (CustomerID, CarrierID) select 2458, (select CarrierID from Carrier where CarrierName = 'Ace')
insert into CustomerCarrier (CustomerID, CarrierID) select 2467, (select CarrierID from Carrier where CarrierName = 'Overland')
insert into CustomerCarrier (CustomerID, CarrierID) select 2872, (select CarrierID from Carrier where CarrierName = 'Ace Courier')
insert into CustomerCarrier (CustomerID, CarrierID) select 1004, (select CarrierID from Carrier where CarrierName = 'Ace')
insert into CustomerCarrier (CustomerID, CarrierID) select 1024, (select CarrierID from Carrier where CarrierName = 'APPS Cargo')
insert into CustomerCarrier (CustomerID, CarrierID) select 3204, (select CarrierID from Carrier where CarrierName = 'Ace Courier')
insert into CustomerCarrier (CustomerID, CarrierID) select 1385, (select CarrierID from Carrier where CarrierName = 'Customer P/U')
insert into CustomerCarrier (CustomerID, CarrierID) select 2705, (select CarrierID from Carrier where CarrierName = 'Ace')
insert into CustomerCarrier (CustomerID, CarrierID) select 1013, (select CarrierID from Carrier where CarrierName = 'Overland/B & R Eckels')
insert into CustomerCarrier (CustomerID, CarrierID) select 1068, (select CarrierID from Carrier where CarrierName = 'Ace')
insert into CustomerCarrier (CustomerID, CarrierID) select 1028, (select CarrierID from Carrier where CarrierName = 'Overland/Comox Pacific')
insert into CustomerCarrier (CustomerID, CarrierID) select 1046, (select CarrierID from Carrier where CarrierName = 'Ace')
insert into CustomerCarrier (CustomerID, CarrierID) select 1451, (select CarrierID from Carrier where CarrierName = 'Overland')
insert into CustomerCarrier (CustomerID, CarrierID) select 1713, (select CarrierID from Carrier where CarrierName = 'Ace Courier')
insert into CustomerCarrier (CustomerID, CarrierID) select 3005, (select CarrierID from Carrier where CarrierName = 'APPS Cargo')
insert into CustomerCarrier (CustomerID, CarrierID) select 3162, (select CarrierID from Carrier where CarrierName = 'Overland/Grimshaw')
insert into CustomerCarrier (CustomerID, CarrierID) select 2974, (select CarrierID from Carrier where CarrierName = 'Van Kam')
insert into CustomerCarrier (CustomerID, CarrierID) select 2980, (select CarrierID from Carrier where CarrierName = 'Overland')
insert into CustomerCarrier (CustomerID, CarrierID) select 2057, (select CarrierID from Carrier where CarrierName = 'Overland')
insert into CustomerCarrier (CustomerID, CarrierID) select 2683, (select CarrierID from Carrier where CarrierName = 'Overland')
insert into CustomerCarrier (CustomerID, CarrierID) select 3209, (select CarrierID from Carrier where CarrierName = 'Canadian Freightways')
insert into CustomerCarrier (CustomerID, CarrierID) select 1040, (select CarrierID from Carrier where CarrierName = 'Overland')
insert into CustomerCarrier (CustomerID, CarrierID) select 1290, (select CarrierID from Carrier where CarrierName = 'Overland')
insert into CustomerCarrier (CustomerID, CarrierID) select 2050, (select CarrierID from Carrier where CarrierName = 'Ace Courier')
insert into CustomerCarrier (CustomerID, CarrierID) select 1618, (select CarrierID from Carrier where CarrierName = 'Ace')
insert into CustomerCarrier (CustomerID, CarrierID) select 2265, (select CarrierID from Carrier where CarrierName = 'Ace')
insert into CustomerCarrier (CustomerID, CarrierID) select 2975, (select CarrierID from Carrier where CarrierName = 'Customer Pick up')
insert into CustomerCarrier (CustomerID, CarrierID) select 3208, (select CarrierID from Carrier where CarrierName = 'Diamond Delivery')
insert into CustomerCarrier (CustomerID, CarrierID) select 1296, (select CarrierID from Carrier where CarrierName = 'APPS Cargo')
insert into CustomerCarrier (CustomerID, CarrierID) select 1448, (select CarrierID from Carrier where CarrierName = 'Overland')
insert into CustomerCarrier (CustomerID, CarrierID) select 2695, (select CarrierID from Carrier where CarrierName = 'Day & Ross')
insert into CustomerCarrier (CustomerID, CarrierID) select 2812, (select CarrierID from Carrier where CarrierName = 'Canadian Freightways')
insert into CustomerCarrier (CustomerID, CarrierID) select 3171, (select CarrierID from Carrier where CarrierName = 'Ace Courier')
insert into CustomerCarrier (CustomerID, CarrierID) select 1074, (select CarrierID from Carrier where CarrierName = 'Canadian Freightways')
insert into CustomerCarrier (CustomerID, CarrierID) select 3174, (select CarrierID from Carrier where CarrierName = 'Overland')
insert into CustomerCarrier (CustomerID, CarrierID) select 2838, (select CarrierID from Carrier where CarrierName = 'Ace')
insert into CustomerCarrier (CustomerID, CarrierID) select 2781, (select CarrierID from Carrier where CarrierName = 'Overland')
insert into CustomerCarrier (CustomerID, CarrierID) select 2821, (select CarrierID from Carrier where CarrierName = 'Day & Ross')
insert into CustomerCarrier (CustomerID, CarrierID) select 3232, (select CarrierID from Carrier where CarrierName = 'Greyhound')
insert into CustomerCarrier (CustomerID, CarrierID) select 2994, (select CarrierID from Carrier where CarrierName = 'Canadian Freightways')
insert into CustomerCarrier (CustomerID, CarrierID) select 3244, (select CarrierID from Carrier where CarrierName = 'Overland')
insert into CustomerCarrier (CustomerID, CarrierID) select 1061, (select CarrierID from Carrier where CarrierName = 'Rosenau')
insert into CustomerCarrier (CustomerID, CarrierID) select 2123, (select CarrierID from Carrier where CarrierName = 'Clark Freightways')
insert into CustomerCarrier (CustomerID, CarrierID) select 2331, (select CarrierID from Carrier where CarrierName = 'Overland')
insert into CustomerCarrier (CustomerID, CarrierID) select 3215, (select CarrierID from Carrier where CarrierName = 'APPS Cargo')
insert into CustomerCarrier (CustomerID, CarrierID) select 1157, (select CarrierID from Carrier where CarrierName = 'Reimer Express')
insert into CustomerCarrier (CustomerID, CarrierID) select 2148, (select CarrierID from Carrier where CarrierName = 'Ace')
insert into CustomerCarrier (CustomerID, CarrierID) select 3102, (select CarrierID from Carrier where CarrierName = 'Ace')
insert into CustomerCarrier (CustomerID, CarrierID) select 2014, (select CarrierID from Carrier where CarrierName = 'Customer Pick up')
insert into CustomerCarrier (CustomerID, CarrierID) select 2253, (select CarrierID from Carrier where CarrierName = 'Overland')
insert into CustomerCarrier (CustomerID, CarrierID) select 3164, (select CarrierID from Carrier where CarrierName = 'Ace Courier')
insert into CustomerCarrier (CustomerID, CarrierID) select 1647, (select CarrierID from Carrier where CarrierName = 'Ace')
insert into CustomerCarrier (CustomerID, CarrierID) select 2844, (select CarrierID from Carrier where CarrierName = 'APPS Cargo')
insert into CustomerCarrier (CustomerID, CarrierID) select 3191, (select CarrierID from Carrier where CarrierName = 'Will Advise')
insert into CustomerCarrier (CustomerID, CarrierID) select 3261, (select CarrierID from Carrier where CarrierName = 'Diamond Delivery')
insert into CustomerCarrier (CustomerID, CarrierID) select 2817, (select CarrierID from Carrier where CarrierName = 'Overland')
insert into CustomerCarrier (CustomerID, CarrierID) select 2422, (select CarrierID from Carrier where CarrierName = 'Customer P/U')
insert into CustomerCarrier (CustomerID, CarrierID) select 3165, (select CarrierID from Carrier where CarrierName = 'Ace Courier')
insert into CustomerCarrier (CustomerID, CarrierID) select 2325, (select CarrierID from Carrier where CarrierName = 'Overland')
insert into CustomerCarrier (CustomerID, CarrierID) select 2459, (select CarrierID from Carrier where CarrierName = 'Customer Pick up')
insert into CustomerCarrier (CustomerID, CarrierID) select 1703, (select CarrierID from Carrier where CarrierName = 'APPS Cargo')
insert into CustomerCarrier (CustomerID, CarrierID) select 2322, (select CarrierID from Carrier where CarrierName = 'Customer Pick up')
insert into CustomerCarrier (CustomerID, CarrierID) select 2739, (select CarrierID from Carrier where CarrierName = 'Overland')
insert into CustomerCarrier (CustomerID, CarrierID) select 3185, (select CarrierID from Carrier where CarrierName = 'Ace Courier')
insert into CustomerCarrier (CustomerID, CarrierID) select 1353, (select CarrierID from Carrier where CarrierName = 'Overland')
insert into CustomerCarrier (CustomerID, CarrierID) select 3167, (select CarrierID from Carrier where CarrierName = 'Canadian Freightways')
insert into CustomerCarrier (CustomerID, CarrierID) select 3205, (select CarrierID from Carrier where CarrierName = 'Canadian Freightways')
insert into CustomerCarrier (CustomerID, CarrierID) select 2569, (select CarrierID from Carrier where CarrierName = 'Ace Courier')
insert into CustomerCarrier (CustomerID, CarrierID) select 2097, (select CarrierID from Carrier where CarrierName = 'Overland')
insert into CustomerCarrier (CustomerID, CarrierID) select 1698, (select CarrierID from Carrier where CarrierName = 'Overland')
insert into CustomerCarrier (CustomerID, CarrierID) select 2390, (select CarrierID from Carrier where CarrierName = 'Overland')
insert into CustomerCarrier (CustomerID, CarrierID) select 2786, (select CarrierID from Carrier where CarrierName = 'Overland')
insert into CustomerCarrier (CustomerID, CarrierID) select 3190, (select CarrierID from Carrier where CarrierName = 'Ace Courier')
insert into CustomerCarrier (CustomerID, CarrierID) select 2784, (select CarrierID from Carrier where CarrierName = 'Overland')
insert into CustomerCarrier (CustomerID, CarrierID) select 3219, (select CarrierID from Carrier where CarrierName = 'APPS Cargo')
insert into CustomerCarrier (CustomerID, CarrierID) select 2853, (select CarrierID from Carrier where CarrierName = 'Ace')
insert into CustomerCarrier (CustomerID, CarrierID) select 3257, (select CarrierID from Carrier where CarrierName = 'VanKam/Mustang')
insert into CustomerCarrier (CustomerID, CarrierID) select 2795, (select CarrierID from Carrier where CarrierName = 'Kindersley')
insert into CustomerCarrier (CustomerID, CarrierID) select 2805, (select CarrierID from Carrier where CarrierName = 'Ace')
insert into CustomerCarrier (CustomerID, CarrierID) select 3156, (select CarrierID from Carrier where CarrierName = 'Customer Pick up')
insert into CustomerCarrier (CustomerID, CarrierID) select 2615, (select CarrierID from Carrier where CarrierName = 'Overland')
insert into CustomerCarrier (CustomerID, CarrierID) select 2843, (select CarrierID from Carrier where CarrierName = 'Ace')
insert into CustomerCarrier (CustomerID, CarrierID) select 2954, (select CarrierID from Carrier where CarrierName = 'Ace')
insert into CustomerCarrier (CustomerID, CarrierID) select 2967, (select CarrierID from Carrier where CarrierName = 'Overland')
insert into CustomerCarrier (CustomerID, CarrierID) select 3181, (select CarrierID from Carrier where CarrierName = 'Overland/Roseneau')
insert into CustomerCarrier (CustomerID, CarrierID) select 3184, (select CarrierID from Carrier where CarrierName = 'Kindersley')
insert into CustomerCarrier (CustomerID, CarrierID) select 1188, (select CarrierID from Carrier where CarrierName = 'Customer Pick up')
insert into CustomerCarrier (CustomerID, CarrierID) select 1413, (select CarrierID from Carrier where CarrierName = 'Ace Courier')
insert into CustomerCarrier (CustomerID, CarrierID) select 2992, (select CarrierID from Carrier where CarrierName = 'APPS Cargo')
insert into CustomerCarrier (CustomerID, CarrierID) select 3017, (select CarrierID from Carrier where CarrierName = 'Customer Pick up')
insert into CustomerCarrier (CustomerID, CarrierID) select 3168, (select CarrierID from Carrier where CarrierName = 'APPS Cargo')
insert into CustomerCarrier (CustomerID, CarrierID) select 2878, (select CarrierID from Carrier where CarrierName = 'Customer Pick up')
insert into CustomerCarrier (CustomerID, CarrierID) select 3265, (select CarrierID from Carrier where CarrierName = 'Clark Freightways')
insert into CustomerCarrier (CustomerID, CarrierID) select 1006, (select CarrierID from Carrier where CarrierName = 'Ace')
insert into CustomerCarrier (CustomerID, CarrierID) select 2937, (select CarrierID from Carrier where CarrierName = 'Customer Pick up')
insert into CustomerCarrier (CustomerID, CarrierID) select 3235, (select CarrierID from Carrier where CarrierName = 'Overland')
insert into CustomerCarrier (CustomerID, CarrierID) select 2991, (select CarrierID from Carrier where CarrierName = 'Ace')
insert into CustomerCarrier (CustomerID, CarrierID) select 3046, (select CarrierID from Carrier where CarrierName = 'APPS Cargo')
insert into CustomerCarrier (CustomerID, CarrierID) select 3130, (select CarrierID from Carrier where CarrierName = 'Canadian Freightways')
insert into CustomerCarrier (CustomerID, CarrierID) select 2731, (select CarrierID from Carrier where CarrierName = 'APPS Cargo')
insert into CustomerCarrier (CustomerID, CarrierID) select 2661, (select CarrierID from Carrier where CarrierName = 'Ace')
insert into CustomerCarrier (CustomerID, CarrierID) select 3050, (select CarrierID from Carrier where CarrierName = 'APPS Cargo')
insert into CustomerCarrier (CustomerID, CarrierID) select 3045, (select CarrierID from Carrier where CarrierName = 'Customer P/U')
insert into CustomerCarrier (CustomerID, CarrierID) select 1102, (select CarrierID from Carrier where CarrierName = 'Overland')
insert into CustomerCarrier (CustomerID, CarrierID) select 2833, (select CarrierID from Carrier where CarrierName = 'Overland')
insert into CustomerCarrier (CustomerID, CarrierID) select 3195, (select CarrierID from Carrier where CarrierName = 'Van Kam')
insert into CustomerCarrier (CustomerID, CarrierID) select 2058, (select CarrierID from Carrier where CarrierName = 'Tiger')
insert into CustomerCarrier (CustomerID, CarrierID) select 2212, (select CarrierID from Carrier where CarrierName = 'Overland')
insert into CustomerCarrier (CustomerID, CarrierID) select 2811, (select CarrierID from Carrier where CarrierName = 'Overland')
insert into CustomerCarrier (CustomerID, CarrierID) select 1661, (select CarrierID from Carrier where CarrierName = 'Ace Courier')
insert into CustomerCarrier (CustomerID, CarrierID) select 3229, (select CarrierID from Carrier where CarrierName = 'Diamond Delivery')
insert into CustomerCarrier (CustomerID, CarrierID) select 2791, (select CarrierID from Carrier where CarrierName = 'Overland')
insert into CustomerCarrier (CustomerID, CarrierID) select 3183, (select CarrierID from Carrier where CarrierName = 'Overland')
insert into CustomerCarrier (CustomerID, CarrierID) select 2036, (select CarrierID from Carrier where CarrierName = 'Overland/GRIMSHAW')
insert into CustomerCarrier (CustomerID, CarrierID) select 2565, (select CarrierID from Carrier where CarrierName = 'Canadian Freightways')
insert into CustomerCarrier (CustomerID, CarrierID) select 3218, (select CarrierID from Carrier where CarrierName = 'Canadian Freightways')
insert into CustomerCarrier (CustomerID, CarrierID) select 3259, (select CarrierID from Carrier where CarrierName = 'Will Advise')
insert into CustomerCarrier (CustomerID, CarrierID) select 2598, (select CarrierID from Carrier where CarrierName = 'Overland')
insert into CustomerCarrier (CustomerID, CarrierID) select 3222, (select CarrierID from Carrier where CarrierName = 'Overland')
insert into CustomerCarrier (CustomerID, CarrierID) select 3126, (select CarrierID from Carrier where CarrierName = 'Ace')
insert into CustomerCarrier (CustomerID, CarrierID) select 3155, (select CarrierID from Carrier where CarrierName = 'Purolator')
insert into CustomerCarrier (CustomerID, CarrierID) select 3160, (select CarrierID from Carrier where CarrierName = 'Customer P/U')
insert into CustomerCarrier (CustomerID, CarrierID) select 2764, (select CarrierID from Carrier where CarrierName = 'Overland')
insert into CustomerCarrier (CustomerID, CarrierID) select 2229, (select CarrierID from Carrier where CarrierName = 'Canadian Freightways')
insert into CustomerCarrier (CustomerID, CarrierID) select 3157, (select CarrierID from Carrier where CarrierName = 'Bandstra')
insert into CustomerCarrier (CustomerID, CarrierID) select 2119, (select CarrierID from Carrier where CarrierName = 'Overland')
insert into CustomerCarrier (CustomerID, CarrierID) select 3177, (select CarrierID from Carrier where CarrierName = 'Canadian Freightways')
insert into CustomerCarrier (CustomerID, CarrierID) select 1279, (select CarrierID from Carrier where CarrierName = 'Overland')