CREATE TABLE [dbo].[AssessmentItemApipDescription] (
    [AssessmentItemApipDescriptionId]               INT      IDENTITY (1, 1) NOT NULL,
    [AssessmentItemApipId]                          INT      NOT NULL,
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
    [KeywordTranslationsAssignedSupportIndicator]   BIT      NULL,
    [KeywordTranslationsActivateByDefaultIndicator] BIT      NULL,
    [BrailleIndicator]                              BIT      NULL,
    [TextOnlyIndicator]                             BIT      NULL,
    [TextOnlyOnDemandIndicator]                     BIT      NULL,
    [TextGraphicsIndicator]                         BIT      NULL,
    [GraphicsOnlyIndicator]                         BIT      NULL,
    [NonVisualIndicator]                            BIT      NULL,
    [AslIndicator]                                  BIT      NULL,
    [AslOnDemandIndicator]                          BIT      NULL,
    [SignedEnglishIndicator]                        BIT      NULL,
    [SignedEnglishOnDemandIndicator]                BIT      NULL,
    [RefHazardTypeId]                               INT      NULL,
    [RefSupportToolTypeId]                          INT      NULL,
    [RefKeywordTranslationLanguageId]               INT      NULL,
    [RecordStartDateTime]                           DATETIME NULL,
    [RecordEndDateTime]                             DATETIME NULL,
    [RecordStatusId]                                INT      NULL,
    [DataCollectionId]                              INT      NULL,
    CONSTRAINT [PK_AssessmentItemApipDescription] PRIMARY KEY CLUSTERED ([AssessmentItemApipDescriptionId] ASC),
    CONSTRAINT [FK_AssessmentItemApipDescription_AssessmentItemApip] FOREIGN KEY ([AssessmentItemApipId]) REFERENCES [dbo].[AssessmentItemApip] ([AssessmentItemApipId]),
    CONSTRAINT [FK_AssessmentItemApipDescription_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_AssessmentItemApipDescription_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_AssessmentItemApipDescription_RefLanguage] FOREIGN KEY ([RefKeywordTranslationLanguageId]) REFERENCES [dbo].[RefLanguage] ([RefLanguageId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Accessible Portable Item Protocol description for an assessment item that may use the IMS Global APIP(R) standards.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemApipDescription';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemApipDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemApipDescription', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemApipDescription', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemApipDescription', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemApipDescription', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemApipDescription', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemApipDescription', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemApipDescription', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemApipDescription', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemApipDescription', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

