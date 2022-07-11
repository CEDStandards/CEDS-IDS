/****** Object:  Table [dbo].[OrganizationPersonRoleRelationship]    Script Date: 5/26/2022 8:56:58 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[OrganizationPersonRoleRelationship](
	[OrganizationPersonRoleRelationshipId] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationPersonRoleId] [int] NOT NULL,
	[OrganizationPersonRoleId_Parent] [int] NOT NULL,
	[RecordStartDateTime] [datetime] NULL,
	[RecordEndDateTime] [datetime] NULL,
	[DataCollectionId] [int] NULL,
 CONSTRAINT [PK_OrganizationPersonRoleRelationship] PRIMARY KEY CLUSTERED 
(
	[OrganizationPersonRoleRelationshipId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[OrganizationPersonRoleRelationship]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationPersonRoleRelationship_DataCollection] FOREIGN KEY([DataCollectionId])
REFERENCES [dbo].[DataCollection] ([DataCollectionId])
GO

ALTER TABLE [dbo].[OrganizationPersonRoleRelationship] CHECK CONSTRAINT [FK_OrganizationPersonRoleRelationship_DataCollection]
GO

ALTER TABLE [dbo].[OrganizationPersonRoleRelationship]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationPersonRoleRelationship_OrganizationPersonRole] FOREIGN KEY([OrganizationPersonRoleId])
REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId])
GO

ALTER TABLE [dbo].[OrganizationPersonRoleRelationship] CHECK CONSTRAINT [FK_OrganizationPersonRoleRelationship_OrganizationPersonRole]
GO

ALTER TABLE [dbo].[OrganizationPersonRoleRelationship]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationPersonRoleRelationship_OrganizationPersonRole_Parent] FOREIGN KEY([OrganizationPersonRoleId_Parent])
REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId])
GO

ALTER TABLE [dbo].[OrganizationPersonRoleRelationship] CHECK CONSTRAINT [FK_OrganizationPersonRoleRelationship_OrganizationPersonRole_Parent]
GO


