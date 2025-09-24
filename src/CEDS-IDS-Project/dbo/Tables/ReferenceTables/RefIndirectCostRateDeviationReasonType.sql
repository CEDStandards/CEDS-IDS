CREATE TABLE [dbo].[RefIndirectCostRateDeviationReasonType](
	[RefIndirectCostRateDeviationReasonTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](150) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
	[RecordStartDateTime] [datetime] NULL,
	[RecordEndDateTime] [datetime] NULL,
 CONSTRAINT [PK_RefIndirectCostRateDeviationReasonType] PRIMARY KEY CLUSTERED 
(
	[RefIndirectCostRateDeviationReasonTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefIndirectCostRateDeviationReasonType] WITH CHECK 
ADD CONSTRAINT [FK_RefIndirectCostRateDeviationReasonType_Organization] FOREIGN KEY([RefJurisdictionId])
REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefIndirectCostRateDeviationReasonType] CHECK CONSTRAINT [FK_RefIndirectCostRateDeviationReasonType_Organization]
GO