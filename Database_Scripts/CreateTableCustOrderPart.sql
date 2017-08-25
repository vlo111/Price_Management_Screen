USE [CenDekRyan]
GO

/****** Object:  Table [dbo].[CustOrderPart]    Script Date: 25-Aug-17 11:13:39 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

if not exists (select * from information_schema.tables where table_name = 'CustOrderPart' )
begin

	CREATE TABLE [dbo].[CustOrderPart](
		[CustOrderID] [int] NOT NULL,
		[OrderPartID] [int] NOT NULL,
	 CONSTRAINT [PK_CustOrderPart_1] PRIMARY KEY CLUSTERED 
	(
		[CustOrderID] ASC,
		[OrderPartID] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]


	ALTER TABLE [dbo].[CustOrderPart]  WITH NOCHECK ADD  CONSTRAINT [FK_CustOrderPart_CustOrder] FOREIGN KEY([CustOrderID])
	REFERENCES [dbo].[CustOrder] ([CustOrderID])


	ALTER TABLE [dbo].[CustOrderPart] CHECK CONSTRAINT [FK_CustOrderPart_CustOrder]


	ALTER TABLE [dbo].[CustOrderPart]  WITH NOCHECK ADD  CONSTRAINT [FK_CustOrderPart_Part] FOREIGN KEY([OrderPartID])
	REFERENCES [dbo].[OrderPart] ([OrderPartID])


	ALTER TABLE [dbo].[CustOrderPart] CHECK CONSTRAINT [FK_CustOrderPart_Part]


end
