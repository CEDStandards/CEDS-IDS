CREATE TABLE [dbo].[AssessmentLanguage] (
    [AssessmentLanguageId] INT      IDENTITY (1, 1) NOT NULL,
    [AssessmentId]         INT      NOT NULL,
    [RefLanguageId]        INT      NOT NULL,
    [RecordStartDateTime]  DATETIME NULL,
    [RecordEndDateTime]    DATETIME NULL,
    [RecordStatusId]       INT      NULL,
    [DataCollectionId]     INT      NULL,
    CONSTRAINT [PK_AssessmentLanguage_1] PRIMARY KEY CLUSTERED ([AssessmentLanguageId] ASC),
    CONSTRAINT [FK_AssessmentLanguage_Assessment] FOREIGN KEY ([AssessmentId]) REFERENCES [dbo].[Assessment] ([AssessmentId]),
    CONSTRAINT [FK_AssessmentLanguage_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_AssessmentLanguage_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_AssessmentLanguage_RefLanguage] FOREIGN KEY ([RefLanguageId]) REFERENCES [dbo].[RefLanguage] ([RefLanguageId]),
    CONSTRAINT [IX_AssessmentLanguage] UNIQUE NONCLUSTERED ([AssessmentId] ASC, [RefLanguageId] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The association of an Assessment to one or more languages.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentLanguage';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentLanguage';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentLanguage', @level2type = N'COLUMN', @level2name = N'AssessmentLanguageId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - Assessment', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentLanguage', @level2type = N'COLUMN', @level2name = N'AssessmentId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - RefLanguage', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentLanguage', @level2type = N'COLUMN', @level2name = N'RefLanguageId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentLanguage', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentLanguage', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentLanguage', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentLanguage', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentLanguage', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentLanguage', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentLanguage', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentLanguage', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentLanguage', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentLanguage', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

