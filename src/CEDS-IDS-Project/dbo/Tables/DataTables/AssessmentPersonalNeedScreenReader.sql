CREATE TABLE [dbo].[AssessmentPersonalNeedScreenReader] (
    [AssessmentPersonalNeedScreenReaderId]    INT             IDENTITY (1, 1) NOT NULL,
    [AssessmentPersonalNeedsProfileDisplayId] INT             NOT NULL,
    [RefAssessmentNeedUsageTypeId]            INT             NULL,
    [SpeechRate]                              INT             NULL,
    [Pitch]                                   DECIMAL (10, 4) NULL,
    [Volume]                                  DECIMAL (10, 4) NULL,
    [RefAssessmentNeedLinkIndicationTypeId]   INT             NULL,
    [RecordStartDateTime]                     DATETIME        NULL,
    [RecordEndDateTime]                       DATETIME        NULL,
    [RecordStatusId]                          INT             NULL,
    [DataCollectionId]                        INT             NULL,
    CONSTRAINT [PK_AssessmentPersonalNeedScreenReader] PRIMARY KEY CLUSTERED ([AssessmentPersonalNeedScreenReaderId] ASC),
    CONSTRAINT [FK_APNScreenReader_AssessmentPersonalNeedsProfileDisplay] FOREIGN KEY ([AssessmentPersonalNeedsProfileDisplayId]) REFERENCES [dbo].[AssessmentPersonalNeedsProfileDisplay] ([AssessmentPersonalNeedsProfileDisplayId]),
    CONSTRAINT [FK_AssessmentPersonalNeedScreenReader_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_AssessmentPersonalNeedScreenReader_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_AssessmentPersonalNeedScreenReader_RefAssessmentNeedLinkIndicationType] FOREIGN KEY ([RefAssessmentNeedLinkIndicationTypeId]) REFERENCES [dbo].[RefAssessmentNeedLinkIndicationType] ([RefAssessmentNeedLinkIndicationTypeId]),
    CONSTRAINT [FK_AssessmentPersonalNeedScreenReader_RefAssessmentNeedUsage] FOREIGN KEY ([RefAssessmentNeedUsageTypeId]) REFERENCES [dbo].[RefAssessmentNeedUsageType] ([RefAssessmentNeedUsageTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information that indicates a person''s need that calls for use of a screen reader accomodation during assessment.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedScreenReader';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedScreenReader';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedScreenReader', @level2type = N'COLUMN', @level2name = N'AssessmentPersonalNeedScreenReaderId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - AssessmentPersonnalNeedsProfileDisplay', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedScreenReader', @level2type = N'COLUMN', @level2name = N'AssessmentPersonalNeedsProfileDisplayId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Defines as part of an Assessment Personal Needs Profile the rating for the collection of Access for All (AfA) needs and preferences.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedScreenReader', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedUsageTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Need Usage Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedScreenReader', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedUsageTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001026', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedScreenReader', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedUsageTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20028', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedScreenReader', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedUsageTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedScreenReader', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedUsageTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Defines as part of an Assessment Personal Needs Profile the rate of speech of a speech synthesizer.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedScreenReader', @level2type = N'COLUMN', @level2name = N'SpeechRate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Need Speech Rate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedScreenReader', @level2type = N'COLUMN', @level2name = N'SpeechRate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001028', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedScreenReader', @level2type = N'COLUMN', @level2name = N'SpeechRate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20030', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedScreenReader', @level2type = N'COLUMN', @level2name = N'SpeechRate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedScreenReader', @level2type = N'COLUMN', @level2name = N'SpeechRate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Defines as part of an Assessment Personal Needs Profile the pitch of a speech synthesizer.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedScreenReader', @level2type = N'COLUMN', @level2name = N'Pitch';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Need Pitch', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedScreenReader', @level2type = N'COLUMN', @level2name = N'Pitch';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001087', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedScreenReader', @level2type = N'COLUMN', @level2name = N'Pitch';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20031', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedScreenReader', @level2type = N'COLUMN', @level2name = N'Pitch';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedScreenReader', @level2type = N'COLUMN', @level2name = N'Pitch';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Defines as part of an Assessment Personal Needs Profile the volume of a speech synthesizer.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedScreenReader', @level2type = N'COLUMN', @level2name = N'Volume';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Need Volume', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedScreenReader', @level2type = N'COLUMN', @level2name = N'Volume';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001029', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedScreenReader', @level2type = N'COLUMN', @level2name = N'Volume';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20032', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedScreenReader', @level2type = N'COLUMN', @level2name = N'Volume';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedScreenReader', @level2type = N'COLUMN', @level2name = N'Volume';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Defines as part of an Assessment Personal Needs Profile the characteristics of presentation for a hyperlink when using a screen reader.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedScreenReader', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedLinkIndicationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Need Link Indication Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedScreenReader', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedLinkIndicationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001027', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedScreenReader', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedLinkIndicationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20029', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedScreenReader', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedLinkIndicationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedScreenReader', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedScreenReader', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedScreenReader', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedScreenReader', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedScreenReader', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedScreenReader', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedScreenReader', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedScreenReader', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedScreenReader', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedScreenReader', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

