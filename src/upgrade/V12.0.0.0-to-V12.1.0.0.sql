IF NOT EXISTS(SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[dbo].[RefAssessmentIdentificationSystem]') and OBJECTPROPERTY(id, N'IsUserTable') = 0)
BEGIN

CREATE TABLE [dbo].RefAssessmentIdentificationSystem(
	[RefAssessmentIdentificationSystemId] [INT] IDENTITY(1,1) NOT NULL,
	[Description] [NVARCHAR](150) NOT NULL,
	[Code] [NVARCHAR](50) NULL,
	[Definition] [NVARCHAR](4000) NULL,
	[RefJurisdictionId] [INT] NULL,
	[SortOrder] [DECIMAL](5, 2) NULL,
	[RecordStartDateTime] [DATETIME] NULL,
	[RecordEndDateTime] [DATETIME] NULL,
 CONSTRAINT [PK__RefAssessmentIdentificationSystem] PRIMARY KEY CLUSTERED 
(
	[RefAssessmentIdentificationSystemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


ALTER TABLE [dbo].RefAssessmentIdentificationSystem  WITH CHECK ADD  CONSTRAINT [FK_RefAssessmentIdentificationSystem_Organization] FOREIGN KEY([RefJurisdictionId])
REFERENCES [dbo].[Organization] ([OrganizationId])


ALTER TABLE [dbo].RefAssessmentIdentificationSystem CHECK CONSTRAINT [FK_RefAssessmentIdentificationSystem_Organization]


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefAssessmentIdentificationSystem', @level2type=N'COLUMN',@level2name=N'RefAssessmentIdentificationSystemId'


EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'A description for the options in this option set.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefAssessmentIdentificationSystem', @level2type=N'COLUMN',@level2name=N'Description'


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_Def_Desc extended property.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefAssessmentIdentificationSystem', @level2type=N'COLUMN',@level2name=N'Description'


EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'A code or abbreviation for the options in this option set.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefAssessmentIdentificationSystem', @level2type=N'COLUMN',@level2name=N'Code'


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_Def_Desc extended property.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefAssessmentIdentificationSystem', @level2type=N'COLUMN',@level2name=N'Code'


EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'The defintion for the options in this option set.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefAssessmentIdentificationSystem', @level2type=N'COLUMN',@level2name=N'Definition'


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefAssessmentIdentificationSystem', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'


EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'The sequence the options in this option set should be ordered.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefAssessmentIdentificationSystem', @level2type=N'COLUMN',@level2name=N'SortOrder'


EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'The specific type of assessment item.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefAssessmentIdentificationSystem'


EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Assessment Item Type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefAssessmentIdentificationSystem'


EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000390' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefAssessmentIdentificationSystem'


EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.v/CEDSElementDetails.aspx?TermId=21382' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefAssessmentIdentificationSystem'


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefAssessmentIdentificationSystem'


END
GO 

DECLARE @updateExisting BIT = 1

PRINT N'Populate RefAssessmentIdentificationSystem table'

IF EXISTS(SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[RefAssessmentIdentificationSystem]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
IF NOT EXISTS (SELECT 1 FROM dbo.RefAssessmentIdentificationSystem WHERE [Code] = 'School') BEGIN INSERT INTO dbo.RefAssessmentIdentificationSystem([Code], [Description], [Definition], [SortOrder])
VALUES ('School', 'School-assigned number', 'The related Assessment Identifier uses a school-assigned number.', 1.00) END
ELSE IF @updateExisting = 1 BEGIN UPDATE dbo.RefAssessmentIdentificationSystem 
SET [Description] = 'School-assigned number', [Definition] = 'The related Assessment Identifier uses a school-assigned number.', [SortOrder] = 1.00 WHERE [Code] = 'School'  END

IF NOT EXISTS (SELECT 1 FROM dbo.RefAssessmentIdentificationSystem WHERE [Code] = 'District') BEGIN INSERT INTO dbo.RefAssessmentIdentificationSystem([Code], [Description], [Definition], [SortOrder])
VALUES ('District', 'District-assigned number', 'The related Assessment Identifier uses a district-assigned number.', 2.00) END
ELSE IF @updateExisting = 1 BEGIN UPDATE dbo.RefAssessmentIdentificationSystem 
SET [Description] = 'District-assigned number', [Definition] = 'The related Assessment Identifier uses a district-assigned number.', [SortOrder] = 2.00 WHERE [Code] = 'District'  END

IF NOT EXISTS (SELECT 1 FROM dbo.RefAssessmentIdentificationSystem WHERE [Code] = 'State') BEGIN INSERT INTO dbo.RefAssessmentIdentificationSystem([Code], [Description], [Definition], [SortOrder])
VALUES ('State', 'State-assigned number', 'The related Assessment Identifier uses a State-assigned number.', 3.00) END
ELSE IF @updateExisting = 1 BEGIN UPDATE dbo.RefAssessmentIdentificationSystem 
SET [Description] = 'State-assigned number', [Definition] = 'The related Assessment Identifier uses a State-assigned number.', [SortOrder] = 3.00 WHERE [Code] = 'State'  END

IF NOT EXISTS (SELECT 1 FROM dbo.RefAssessmentIdentificationSystem WHERE [Code] = 'Federal') BEGIN INSERT INTO dbo.RefAssessmentIdentificationSystem([Code], [Description], [Definition], [SortOrder])
VALUES ('Federal', 'Federal Identification number', 'The related Assessment Identifier uses a federal identification number.', 4.00) END
ELSE IF @updateExisting = 1 BEGIN UPDATE dbo.RefAssessmentIdentificationSystem 
SET [Description] = 'Federal Identification number', [Definition] = 'The related Assessment Identifier uses a federal identification number.', [SortOrder] = 4.00 WHERE [Code] = 'Federal'  END

IF NOT EXISTS (SELECT 1 FROM dbo.RefAssessmentIdentificationSystem WHERE [Code] = 'OtherFederal') BEGIN INSERT INTO dbo.RefAssessmentIdentificationSystem([Code], [Description], [Definition], [SortOrder])
VALUES ('OtherFederal', 'Other federalally assigned number', 'The related Assessment Identifier uses another federally assigned number.', 5.00) END
ELSE IF @updateExisting = 1 BEGIN UPDATE dbo.RefAssessmentIdentificationSystem 
SET [Description] = 'School-assigned number', [Definition] = 'The related Assessment Identifier uses another federally assigned number.', [SortOrder] = 5.00 WHERE [Code] = 'OtherFederal'  END

IF NOT EXISTS (SELECT 1 FROM dbo.RefAssessmentIdentificationSystem WHERE [Code] = 'TestContractor') BEGIN INSERT INTO dbo.RefAssessmentIdentificationSystem([Code], [Description], [Definition], [SortOrder])
VALUES ('TestContractor', 'Test contractor assigned assessment number', 'The related Assessment Identifier uses a test contractor assigned assessment number.', 6.00) END
ELSE IF @updateExisting = 1 BEGIN UPDATE dbo.RefAssessmentIdentificationSystem 
SET [Description] = 'Test contractor assigned assessment number', [Definition] = 'The related Assessment Identifier uses a test contractor assigned assessment number.', [SortOrder] = 6.00 WHERE [Code] = 'TestContractor'  END

IF NOT EXISTS (SELECT 1 FROM dbo.RefAssessmentIdentificationSystem WHERE [Code] = 'Other') BEGIN INSERT INTO dbo.RefAssessmentIdentificationSystem([Code], [Description], [Definition], [SortOrder])
VALUES ('Other', 'Other', 'The related Assessment Identifier uses an assessment identification system not yet defined in CEDS.', 7.00) END
ELSE IF @updateExisting = 1 BEGIN UPDATE dbo.RefAssessmentIdentificationSystem 
SET [Description] = 'Other', [Definition] = 'The related Assessment Identifier uses an assessment identification system not yet defined in CEDS.', [SortOrder] = 7.00 WHERE [Code] = 'Other'  END

END
GO

IF EXISTS(SELECT 1 
			FROM sys.columns
			INNER JOIN sys.tables ON tables.object_id = columns.object_id
			WHERE tables.name = 'Assessment'
			AND columns.name = 'IdentificationSystem')
BEGIN 
	EXEC sp_rename 'Assessment.IdentificationSystem' , 'RefAssessmentIdentificationSystemId', 'COLUMN'
	ALTER TABLE [dbo].[Assessment]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_RefIdentificationSystem] FOREIGN KEY(RefAssessmentIdentificationSystemId)
		REFERENCES [dbo].RefAssessmentIdentificationSystem (RefAssessmentIdentificationSystemId)

END 
GO 