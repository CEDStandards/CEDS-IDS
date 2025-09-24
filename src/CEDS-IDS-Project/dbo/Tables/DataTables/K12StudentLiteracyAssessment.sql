CREATE TABLE [dbo].[K12StudentLiteracyAssessment] (
    [K12StudentLiteracyAssessmentId] INT      IDENTITY (1, 1) NOT NULL,
    [OrganizationPersonRoleId]       INT      NOT NULL,
    [LiteracyPreTestStatus]          BIT      NULL,
    [LiteracyPostTestStatus]         BIT      NULL,
    [LiteracyGoalMetStatus]          BIT      NULL,
    [RefLiteracyAssessmentId]        INT      NULL,
    [RecordStartDateTime]            DATETIME NULL,
    [RecordEndDateTime]              DATETIME NULL,
    [RecordStatusId]                 INT      NULL,
    [DataCollectionId]               INT      NULL,
    CONSTRAINT [PK_K12StudentLiteracyAssessment] PRIMARY KEY CLUSTERED ([K12StudentLiteracyAssessmentId] ASC),
    CONSTRAINT [FK_K12StudentLiteracyAssessment_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_K12StudentLiteracyAssessment_OrganizationPersonRole] FOREIGN KEY ([OrganizationPersonRoleId]) REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]),
    CONSTRAINT [FK_K12StudentLiteracyAssessment_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_K12StudentLiteracyAssessment_RefLiteracyAssessment] FOREIGN KEY ([RefLiteracyAssessmentId]) REFERENCES [dbo].[RefLiteracyAssessment] ([RefLiteracyAssessmentId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information about literacy assessment given to a K12 student.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentLiteracyAssessment';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentLiteracyAssessment';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Inherited surrogate key from OrganizationPersonRole.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentLiteracyAssessment', @level2type = N'COLUMN', @level2name = N'OrganizationPersonRoleId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentLiteracyAssessment', @level2type = N'COLUMN', @level2name = N'OrganizationPersonRoleId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The participant completed a literacy pre-test.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentLiteracyAssessment', @level2type = N'COLUMN', @level2name = N'LiteracyPreTestStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Literacy Pre Test Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentLiteracyAssessment', @level2type = N'COLUMN', @level2name = N'LiteracyPreTestStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000469', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentLiteracyAssessment', @level2type = N'COLUMN', @level2name = N'LiteracyPreTestStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19459', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentLiteracyAssessment', @level2type = N'COLUMN', @level2name = N'LiteracyPreTestStatus';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentLiteracyAssessment', @level2type = N'COLUMN', @level2name = N'LiteracyPreTestStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The participant completed a literacy post-test.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentLiteracyAssessment', @level2type = N'COLUMN', @level2name = N'LiteracyPostTestStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Literacy Post Test Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentLiteracyAssessment', @level2type = N'COLUMN', @level2name = N'LiteracyPostTestStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000468', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentLiteracyAssessment', @level2type = N'COLUMN', @level2name = N'LiteracyPostTestStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19458', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentLiteracyAssessment', @level2type = N'COLUMN', @level2name = N'LiteracyPostTestStatus';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentLiteracyAssessment', @level2type = N'COLUMN', @level2name = N'LiteracyPostTestStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The participant showed "significant learning gains" on measures of reading, the definition of which is determined at the State level.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentLiteracyAssessment', @level2type = N'COLUMN', @level2name = N'LiteracyGoalMetStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Literacy Goal Met Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentLiteracyAssessment', @level2type = N'COLUMN', @level2name = N'LiteracyGoalMetStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000467', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentLiteracyAssessment', @level2type = N'COLUMN', @level2name = N'LiteracyGoalMetStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19457', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentLiteracyAssessment', @level2type = N'COLUMN', @level2name = N'LiteracyGoalMetStatus';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentLiteracyAssessment', @level2type = N'COLUMN', @level2name = N'LiteracyGoalMetStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of literacy test administered.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentLiteracyAssessment', @level2type = N'COLUMN', @level2name = N'RefLiteracyAssessmentId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Literacy Assessment Administered Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentLiteracyAssessment', @level2type = N'COLUMN', @level2name = N'RefLiteracyAssessmentId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000466', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentLiteracyAssessment', @level2type = N'COLUMN', @level2name = N'RefLiteracyAssessmentId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19456', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentLiteracyAssessment', @level2type = N'COLUMN', @level2name = N'RefLiteracyAssessmentId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentLiteracyAssessment', @level2type = N'COLUMN', @level2name = N'RefLiteracyAssessmentId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentLiteracyAssessment', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentLiteracyAssessment', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentLiteracyAssessment', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentLiteracyAssessment', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentLiteracyAssessment', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentLiteracyAssessment', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentLiteracyAssessment', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentLiteracyAssessment', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentLiteracyAssessment', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

