CREATE TABLE [dbo].[AssessmentPersonalNeedLanguageLearner] (
    [AssessmentPersonalNeedLanguageLearnerId]               INT      IDENTITY (1, 1) NOT NULL,
    [AssessmentNeedsProfileContentId]                       INT      NOT NULL,
    [AssignedSupport]                                       BIT      NULL,
    [ActivateByDefault]                                     BIT      NULL,
    [RefAssessmentNeedsProfileContentLanguageLearnerTypeId] INT      NOT NULL,
    [RecordStartDateTime]                                   DATETIME NULL,
    [RecordEndDateTime]                                     DATETIME NULL,
    [RecordStatusId]                                        INT      NULL,
    [DataCollectionId]                                      INT      NULL,
    CONSTRAINT [PK_AssessmentNeedsProfileContentLanguageLearner] PRIMARY KEY CLUSTERED ([AssessmentPersonalNeedLanguageLearnerId] ASC),
    CONSTRAINT [FK_ANPContentLanguageLearner_AssessmentNeedsProfileContent] FOREIGN KEY ([AssessmentNeedsProfileContentId]) REFERENCES [dbo].[AssessmentPersonalNeedsProfileContent] ([AssessmentPersonalNeedsProfileContentId]),
    CONSTRAINT [FK_ANPContentLanguageLearner_RefAssessNeedsProfileContentLang] FOREIGN KEY ([RefAssessmentNeedsProfileContentLanguageLearnerTypeId]) REFERENCES [dbo].[RefAssessmentNeedLanguageLearnerType] ([RefAssessmentNeedLanguageLearnerTypeId]),
    CONSTRAINT [FK_AssessmentPersonalNeedLanguageLearner_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_AssessmentPersonalNeedLanguageLearner_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information that indicates a person''s need related as a language learner that may be used to deternine the need for an assessment accomodation.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedLanguageLearner';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedLanguageLearner';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedLanguageLearner', @level2type = N'COLUMN', @level2name = N'AssessmentPersonalNeedLanguageLearnerId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - AssessmentNeedsProfileContent', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedLanguageLearner', @level2type = N'COLUMN', @level2name = N'AssessmentNeedsProfileContentId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Defines whether or not the individual needs the kind of support defined by the entity.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedLanguageLearner', @level2type = N'COLUMN', @level2name = N'AssignedSupport';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Personal Needs Profile Assigned Support', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedLanguageLearner', @level2type = N'COLUMN', @level2name = N'AssignedSupport';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001004', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedLanguageLearner', @level2type = N'COLUMN', @level2name = N'AssignedSupport';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20007', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedLanguageLearner', @level2type = N'COLUMN', @level2name = N'AssignedSupport';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedLanguageLearner', @level2type = N'COLUMN', @level2name = N'AssignedSupport';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Determines if the alternative accessible content is rendered as the default content for the learner.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedLanguageLearner', @level2type = N'COLUMN', @level2name = N'ActivateByDefault';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Personal Needs Profile Activate By Default', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedLanguageLearner', @level2type = N'COLUMN', @level2name = N'ActivateByDefault';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001005', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedLanguageLearner', @level2type = N'COLUMN', @level2name = N'ActivateByDefault';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20008', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedLanguageLearner', @level2type = N'COLUMN', @level2name = N'ActivateByDefault';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedLanguageLearner', @level2type = N'COLUMN', @level2name = N'ActivateByDefault';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Defines as part of an Assessment Personal Needs Profile a preference for the language of the user interface.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedLanguageLearner', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedsProfileContentLanguageLearnerTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Need Language Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedLanguageLearner', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedsProfileContentLanguageLearnerTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001023', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedLanguageLearner', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedsProfileContentLanguageLearnerTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20025', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedLanguageLearner', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedsProfileContentLanguageLearnerTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedLanguageLearner', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedsProfileContentLanguageLearnerTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedLanguageLearner', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedLanguageLearner', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedLanguageLearner', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedLanguageLearner', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedLanguageLearner', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedLanguageLearner', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedLanguageLearner', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedLanguageLearner', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedLanguageLearner', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedLanguageLearner', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

