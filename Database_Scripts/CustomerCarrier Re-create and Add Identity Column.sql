SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

drop table [CustomerCarrier]
GO

CREATE TABLE [dbo].[CustomerCarrier](
	[CarrierID] [int] NOT NULL,
	[CustomerID] [int] NOT NULL,
	[Account] [nvarchar](500) NULL,
	[Comments] [varchar](max) NULL,
	[CustomerCarrierID] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerCarrierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[CustomerCarrier]  WITH CHECK ADD  CONSTRAINT [FK_CustomerCarrier_Carrier] FOREIGN KEY([CarrierID])
REFERENCES [dbo].[Carrier] ([CarrierID])
GO

ALTER TABLE [dbo].[CustomerCarrier] CHECK CONSTRAINT [FK_CustomerCarrier_Carrier]
GO

ALTER TABLE [dbo].[CustomerCarrier]  WITH CHECK ADD  CONSTRAINT [FK_CustomerCarrier_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO

ALTER TABLE [dbo].[CustomerCarrier] CHECK CONSTRAINT [FK_CustomerCarrier_Customer]
GO

