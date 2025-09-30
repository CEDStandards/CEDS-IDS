CREATE TABLE [dbo].[ELChildOutcomeSummary] (
    [ELChildOutcomeSummaryId] INT      IDENTITY (1, 1) NOT NULL,
    [PersonId]                INT      NOT NULL,
    [COSProgressAIndicator]   BIT      NULL,
    [COSProgressBIndicator]   BIT      NULL,
    [COSProgressCIndicator]   BIT      NULL,
    [COSRatingAId]            INT      NULL,
    [COSRatingBId]            INT      NULL,
    [COSRatingCId]            INT      NULL,
    [RecordStartDateTime]     DATETIME NULL,
    [RecordEndDateTime]       DATETIME NULL,
    [RecordStatusId]          INT      NULL,
    [DataCollectionId]        INT      NULL,
    CONSTRAINT [PK_ELChildOutcomeSummary] PRIMARY KEY CLUSTERED ([ELChildOutcomeSummaryId] ASC),
    CONSTRAINT [FK_ELChildOutcomeSummary_COSRatingA] FOREIGN KEY ([COSRatingAId]) REFERENCES [dbo].[RefChildOutcomesSummaryRating] ([RefChildOutcomesSummaryRatingId]),
    CONSTRAINT [FK_ELChildOutcomeSummary_COSRatingB] FOREIGN KEY ([COSRatingBId]) REFERENCES [dbo].[RefChildOutcomesSummaryRating] ([RefChildOutcomesSummaryRatingId]),
    CONSTRAINT [FK_ELChildOutcomeSummary_COSRatingC] FOREIGN KEY ([COSRatingCId]) REFERENCES [dbo].[RefChildOutcomesSummaryRating] ([RefChildOutcomesSummaryRatingId]),
    CONSTRAINT [FK_ELChildOutcomeSummary_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_ELChildOutcomeSummary_Person] FOREIGN KEY ([PersonId]) REFERENCES [dbo].[Person] ([PersonId]),
    CONSTRAINT [FK_ELChildOutcomeSummary_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The Child Outcomes Summary (COS) process is a way for states to measure the progress of preschool and pre-K students receiving IEP services.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildOutcomeSummary';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildOutcomeSummary';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate key from Person.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildOutcomeSummary', @level2type = N'COLUMN', @level2name = N'PersonId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Indicates that the child demonstrates progress in positive social-emotional skills, including social relationships.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildOutcomeSummary', @level2type = N'COLUMN', @level2name = N'COSProgressAIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Child Outcomes Summary Progress A Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildOutcomeSummary', @level2type = N'COLUMN', @level2name = N'COSProgressAIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001504', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildOutcomeSummary', @level2type = N'COLUMN', @level2name = N'COSProgressAIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20476', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildOutcomeSummary', @level2type = N'COLUMN', @level2name = N'COSProgressAIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildOutcomeSummary', @level2type = N'COLUMN', @level2name = N'COSProgressAIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Indicates that the child demonstrates progress in acquisition and use of knowledge and skills, including early language/communication.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildOutcomeSummary', @level2type = N'COLUMN', @level2name = N'COSProgressBIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Child Outcomes Summary Progress B Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildOutcomeSummary', @level2type = N'COLUMN', @level2name = N'COSProgressBIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001505', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildOutcomeSummary', @level2type = N'COLUMN', @level2name = N'COSProgressBIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20477', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildOutcomeSummary', @level2type = N'COLUMN', @level2name = N'COSProgressBIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildOutcomeSummary', @level2type = N'COLUMN', @level2name = N'COSProgressBIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Indicates that the child demonstrates progress in use of appropriate behaviors to meet their needs.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildOutcomeSummary', @level2type = N'COLUMN', @level2name = N'COSProgressCIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Child Outcomes Summary Progress C Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildOutcomeSummary', @level2type = N'COLUMN', @level2name = N'COSProgressCIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001506', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildOutcomeSummary', @level2type = N'COLUMN', @level2name = N'COSProgressCIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20478', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildOutcomeSummary', @level2type = N'COLUMN', @level2name = N'COSProgressCIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildOutcomeSummary', @level2type = N'COLUMN', @level2name = N'COSProgressCIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Child''s level of functioning in positive social-emotional skills (including social relationships).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildOutcomeSummary', @level2type = N'COLUMN', @level2name = N'COSRatingAId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Child Outcomes Summary Rating A', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildOutcomeSummary', @level2type = N'COLUMN', @level2name = N'COSRatingAId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001507', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildOutcomeSummary', @level2type = N'COLUMN', @level2name = N'COSRatingAId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20479', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildOutcomeSummary', @level2type = N'COLUMN', @level2name = N'COSRatingAId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildOutcomeSummary', @level2type = N'COLUMN', @level2name = N'COSRatingAId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Child''s level of functioning in the acquisition and use of knowledge and skills (including early language/communication.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildOutcomeSummary', @level2type = N'COLUMN', @level2name = N'COSRatingBId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Child Outcomes Summary Rating B', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildOutcomeSummary', @level2type = N'COLUMN', @level2name = N'COSRatingBId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001508', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildOutcomeSummary', @level2type = N'COLUMN', @level2name = N'COSRatingBId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20480', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildOutcomeSummary', @level2type = N'COLUMN', @level2name = N'COSRatingBId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildOutcomeSummary', @level2type = N'COLUMN', @level2name = N'COSRatingBId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Child''s level of functioning in the use of appropriate behaviors to meet their needs.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildOutcomeSummary', @level2type = N'COLUMN', @level2name = N'COSRatingCId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Child Outcomes Summary Rating C', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildOutcomeSummary', @level2type = N'COLUMN', @level2name = N'COSRatingCId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001509', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildOutcomeSummary', @level2type = N'COLUMN', @level2name = N'COSRatingCId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20481', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildOutcomeSummary', @level2type = N'COLUMN', @level2name = N'COSRatingCId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildOutcomeSummary', @level2type = N'COLUMN', @level2name = N'COSRatingCId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildOutcomeSummary', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildOutcomeSummary', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildOutcomeSummary', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildOutcomeSummary', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildOutcomeSummary', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildOutcomeSummary', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildOutcomeSummary', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildOutcomeSummary', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildOutcomeSummary', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

