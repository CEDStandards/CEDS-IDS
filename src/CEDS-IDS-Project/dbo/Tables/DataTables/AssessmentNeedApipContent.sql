CREATE TABLE [dbo].[AssessmentNeedApipContent] (
    [AssessmentNeedApipContentId]                      INT      IDENTITY (1, 1) NOT NULL,
    [AssessmentPersonalNeedsProfileContentId]          INT      NOT NULL,
    [ItemTranslationDisplayLanguageTypeId]             INT      NULL,
    [KeywordTranslationLanguageTypeId]                 INT      NULL,
    [RefAssessmentNeedSigningTypeId]                   INT      NULL,
    [RefAssessmentNeedAlternativeRepresentationTypeId] INT      NULL,
    [RefAssessmentNeedSpokenSourcePreferenceTypeId]    INT      NULL,
    [ReadAtStartPreferenceIndicator]                   BIT      NULL,
    [RefAssessmentNeedUserSpokenPreferenceTypeId]      INT      NULL,
    [AssessmentNeedDirectionsOnlyIndicator]            BIT      NULL,
    [RecordStartDateTime]                              DATETIME NULL,
    [RecordEndDateTime]                                DATETIME NULL,
    [RecordStatusId]                                   INT      NULL,
    [DataCollectionId]                                 INT      NULL,
    CONSTRAINT [PK_AssessmentNeedApipContent] PRIMARY KEY CLUSTERED ([AssessmentNeedApipContentId] ASC),
    CONSTRAINT [FK_AssessmentNeedApipContent_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_AssessmentNeedApipContent_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_AssessmentNeedApipContent_RefAssessmentNeedSigningType] FOREIGN KEY ([RefAssessmentNeedSigningTypeId]) REFERENCES [dbo].[RefAssessmentNeedSigningType] ([RefAssessmentNeedSigningTypeId]),
    CONSTRAINT [FK_AssessmentNeedApipContent_RefLanguage] FOREIGN KEY ([ItemTranslationDisplayLanguageTypeId]) REFERENCES [dbo].[RefLanguage] ([RefLanguageId]),
    CONSTRAINT [FK_AssessmentNeedApipContent_RefLanguage1] FOREIGN KEY ([KeywordTranslationLanguageTypeId]) REFERENCES [dbo].[RefLanguage] ([RefLanguageId]),
    CONSTRAINT [FK_AssessNeedApipContent_AssessmentPersonalNeedsProfileContent] FOREIGN KEY ([AssessmentPersonalNeedsProfileContentId]) REFERENCES [dbo].[AssessmentPersonalNeedsProfileContent] ([AssessmentPersonalNeedsProfileContentId]),
    CONSTRAINT [FK_AssessNeedApipContent_RefAssessmentNeedAlternativeRepresent] FOREIGN KEY ([RefAssessmentNeedAlternativeRepresentationTypeId]) REFERENCES [dbo].[RefAssessmentNeedAlternativeRepresentationType] ([RefAssessmentNeedAlternativeRepresentationTypeId]),
    CONSTRAINT [FK_AssessNeedApipContent_RefAssessmentNeedSpokenSourcePref] FOREIGN KEY ([RefAssessmentNeedSpokenSourcePreferenceTypeId]) REFERENCES [dbo].[RefAssessmentNeedSpokenSourcePreferenceType] ([RefAssessmentNeedSpokenSourcePreferenceTypeId]),
    CONSTRAINT [FK_AssessNeedApipContent_RefAssessmentNeedUserSpokenPreference] FOREIGN KEY ([RefAssessmentNeedUserSpokenPreferenceTypeId]) REFERENCES [dbo].[RefAssessmentNeedUserSpokenPreferenceType] ([RefAssessmentNeedUserSpokenPreferenceTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Used as part of an Assessment Personal Needs Profile to define the content preferences and representation.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipContent';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipContent';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipContent', @level2type = N'COLUMN', @level2name = N'AssessmentNeedApipContentId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - AssessmentPersonalNeedsProfileContent', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipContent', @level2type = N'COLUMN', @level2name = N'AssessmentPersonalNeedsProfileContentId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Defines as part of an Assessment Personal Needs Profile the default language for the displayed translation.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipContent', @level2type = N'COLUMN', @level2name = N'ItemTranslationDisplayLanguageTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Need Item Translation Display Language Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipContent', @level2type = N'COLUMN', @level2name = N'ItemTranslationDisplayLanguageTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001038', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipContent', @level2type = N'COLUMN', @level2name = N'ItemTranslationDisplayLanguageTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20042', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipContent', @level2type = N'COLUMN', @level2name = N'ItemTranslationDisplayLanguageTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipContent', @level2type = N'COLUMN', @level2name = N'ItemTranslationDisplayLanguageTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Defines as part of an Assessment Personal Needs Profile the default language for the keyword translation.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipContent', @level2type = N'COLUMN', @level2name = N'KeywordTranslationLanguageTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Need Keyword Translation Language Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipContent', @level2type = N'COLUMN', @level2name = N'KeywordTranslationLanguageTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001039', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipContent', @level2type = N'COLUMN', @level2name = N'KeywordTranslationLanguageTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20043', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipContent', @level2type = N'COLUMN', @level2name = N'KeywordTranslationLanguageTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipContent', @level2type = N'COLUMN', @level2name = N'KeywordTranslationLanguageTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Defines as part of an Assessment Personal Needs Profile the type of signing preferred by the user.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipContent', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedSigningTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Need Signing Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipContent', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedSigningTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001040', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipContent', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedSigningTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20044', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipContent', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedSigningTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipContent', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedSigningTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Defines as part of an Assessment Personal Needs Profile the default presentation mode of the associated Alternative Representations accessibility.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipContent', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedAlternativeRepresentationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Need Alternative Representation Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipContent', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedAlternativeRepresentationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001041', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipContent', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedAlternativeRepresentationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20045', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipContent', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedAlternativeRepresentationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipContent', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedAlternativeRepresentationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Defines as part of an Assessment Personal Needs Profile the preferred spoken audio form.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipContent', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedSpokenSourcePreferenceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Need Spoken Source Preference Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipContent', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedSpokenSourcePreferenceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001042', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipContent', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedSpokenSourcePreferenceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20046', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipContent', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedSpokenSourcePreferenceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipContent', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedSpokenSourcePreferenceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Used as part of an Assessment Personal Needs Profile to define if the spoken play-back should commence from the start of a recording or not.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipContent', @level2type = N'COLUMN', @level2name = N'ReadAtStartPreferenceIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Need Read At Start Preference', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipContent', @level2type = N'COLUMN', @level2name = N'ReadAtStartPreferenceIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001043', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipContent', @level2type = N'COLUMN', @level2name = N'ReadAtStartPreferenceIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20048', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipContent', @level2type = N'COLUMN', @level2name = N'ReadAtStartPreferenceIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipContent', @level2type = N'COLUMN', @level2name = N'ReadAtStartPreferenceIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Used as part of an Assessment Personal Needs Profile to define the type of material that should be rendered using the read aloud alternative content.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipContent', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedUserSpokenPreferenceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Need User Spoken Preference Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipContent', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedUserSpokenPreferenceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001044', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipContent', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedUserSpokenPreferenceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20049', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipContent', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedUserSpokenPreferenceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipContent', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedUserSpokenPreferenceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Defines as part of an Assessment Personal Needs Profile whether or not the verbal alternative content presentation should be applied to directive content only.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipContent', @level2type = N'COLUMN', @level2name = N'AssessmentNeedDirectionsOnlyIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Need Directions Only', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipContent', @level2type = N'COLUMN', @level2name = N'AssessmentNeedDirectionsOnlyIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001045', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipContent', @level2type = N'COLUMN', @level2name = N'AssessmentNeedDirectionsOnlyIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20050', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipContent', @level2type = N'COLUMN', @level2name = N'AssessmentNeedDirectionsOnlyIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipContent', @level2type = N'COLUMN', @level2name = N'AssessmentNeedDirectionsOnlyIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipContent', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipContent', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipContent', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipContent', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipContent', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipContent', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipContent', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipContent', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipContent', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipContent', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

