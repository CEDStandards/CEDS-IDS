CREATE TABLE [dbo].[RefAdaptiveCalculatorType](
	[RefAdaptiveCalculatorTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](150) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
	[RecordStartDateTime] [datetime] NULL,
	[RecordEndDateTime] [datetime] NULL,
 CONSTRAINT [PK_RefAdaptiveCalculatorType] PRIMARY KEY CLUSTERED 
(
	[RefAdaptiveCalculatorTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefAdaptiveCalculatorType] WITH CHECK 
ADD CONSTRAINT [FK_RefAdaptiveCalculatorType_Organization] FOREIGN KEY([RefJurisdictionId])
REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefAdaptiveCalculatorType] CHECK CONSTRAINT [FK_RefAdaptiveCalculatorType_Organization]
GO