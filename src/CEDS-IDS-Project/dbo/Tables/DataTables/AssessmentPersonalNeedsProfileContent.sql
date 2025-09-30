CREATE TABLE [dbo].[AssessmentPersonalNeedsProfileContent] (
    [AssessmentPersonalNeedsProfileContentId]       INT      IDENTITY (1, 1) NOT NULL,
    [AssessmentPersonalNeedsProfileId]              INT      NOT NULL,
    [RefAssessmentNeedHazardTypeId]                 INT      NULL,
    [RefAssessmentNeedSupportToolId]                INT      NULL,
    [CognitiveGuidanceActivateByDefaultIndicator]   BIT      NULL,
    [CognitiveGuidanceAssignedSupportIndicator]     BIT      NULL,
    [ScaffoldingAssignedSupportIndicator]           BIT      NULL,
    [ScaffoldingActivateByDefaultIndicator]         BIT      NULL,
    [ChunkingAssignedSupportIndicator]              BIT      NULL,
    [ChunkingActivateByDefaultIndicator]            BIT      NULL,
    [KeywordEmphasisAssignedSupportIndicator]       BIT      NULL,
    [KeywordEmphasisActivateByDefaultIndicator]     BIT      NULL,
    [ReducedAnswersAssignedSupportIndicator]        BIT      NULL,
    [ReducedAnswersActivateByDefaultIndicator]      BIT      NULL,
    [NegativesRemovedAssignedSupportIndicator]      BIT      NULL,
    [NegativesRemovedActivateByDefaultIndicator]    BIT      NULL,
    [RefKeywordTranslationsLanguageId]              INT      NULL,
    [KeywordTranslationsAssignedSupportIndicator]   BIT      NULL,
    [KeywordTranslationsActivateByDefaultIndicator] BIT      NULL,
    [RecordStartDateTime]                           DATETIME NULL,
    [RecordEndDateTime]                             DATETIME NULL,
    [RecordStatusId]                                INT      NULL,
    [DataCollectionId]                              INT      NULL,
    CONSTRAINT [PK_AssessmentNeedsProfileContent] PRIMARY KEY CLUSTERED ([AssessmentPersonalNeedsProfileContentId] ASC),
    CONSTRAINT [FK_ApnProfileContent_RefAssessmentNeedSupportTool] FOREIGN KEY ([RefAssessmentNeedSupportToolId]) REFERENCES [dbo].[RefAssessmentNeedSupportTool] ([RefAssessmentNeedSupportToolId]),
    CONSTRAINT [FK_AssessmentNeedsProfileContent_AssessmentNeedsProfile] FOREIGN KEY ([AssessmentPersonalNeedsProfileId]) REFERENCES [dbo].[AssessmentPersonalNeedsProfile] ([AssessmentPersonalNeedsProfileId]),
    CONSTRAINT [FK_AssessmentPersonalNeedsProfileContent_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_AssessmentPersonalNeedsProfileContent_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_AssessmentPersonalNeedsProfileContent_RefAssessmentNeedHazrd] FOREIGN KEY ([RefAssessmentNeedHazardTypeId]) REFERENCES [dbo].[RefAssessmentNeedHazardType] ([RefAssessmentNeedHazardTypeId]),
    CONSTRAINT [FK_AssessmentPersonalNeedsProfileContent_RefLanguage] FOREIGN KEY ([RefKeywordTranslationsLanguageId]) REFERENCES [dbo].[RefLanguage] ([RefLanguageId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An entity that includes information about the personal needs and preferences related to content presented within an assessment delivery.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedsProfileContent';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedsProfileContent';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedsProfileContent', @level2type = N'COLUMN', @level2name = N'AssessmentPersonalNeedsProfileContentId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - AssessmentPersonalNeedsProfile', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedsProfileContent', @level2type = N'COLUMN', @level2name = N'AssessmentPersonalNeedsProfileId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Defines as part of an Assessment Personal Needs Profile a characteristic of a digital resource that may be specified as being dangerous to a user.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedsProfileContent', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedHazardTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Need Hazard Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedsProfileContent', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedHazardTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001024', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedsProfileContent', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedHazardTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20026', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedsProfileContent', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedHazardTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedsProfileContent', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedHazardTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Defines as part of an Assessment Personal Needs Profile the electronic tool associated with a resource.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedsProfileContent', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedSupportToolId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Need Support Tool Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedsProfileContent', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedSupportToolId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001025', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedsProfileContent', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedSupportToolId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20027', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedsProfileContent', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedSupportToolId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedsProfileContent', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedSupportToolId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Defines as part of an Assessment Personal Needs Profile the default language for the keyword translation.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedsProfileContent', @level2type = N'COLUMN', @level2name = N'RefKeywordTranslationsLanguageId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Need Keyword Translation Language Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedsProfileContent', @level2type = N'COLUMN', @level2name = N'RefKeywordTranslationsLanguageId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001039', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedsProfileContent', @level2type = N'COLUMN', @level2name = N'RefKeywordTranslationsLanguageId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20043', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedsProfileContent', @level2type = N'COLUMN', @level2name = N'RefKeywordTranslationsLanguageId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedsProfileContent', @level2type = N'COLUMN', @level2name = N'RefKeywordTranslationsLanguageId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedsProfileContent', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedsProfileContent', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedsProfileContent', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedsProfileContent', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedsProfileContent', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedsProfileContent', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedsProfileContent', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedsProfileContent', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedsProfileContent', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedsProfileContent', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

