CREATE TABLE [dbo].[AssessmentForm] (
    [AssessmentFormId]                  INT            IDENTITY (1, 1) NOT NULL,
    [AssessmentId]                      INT            NOT NULL,
    [FormNumber]                        NVARCHAR (30)  NULL,
    [Name]                              NVARCHAR (40)  NULL,
    [Version]                           NVARCHAR (30)  NULL,
    [PublishedDate]                     DATE           NULL,
    [AssessmentFormAccessibilityFeatureList]                 NVARCHAR (MAX) NULL,
    [IntendedAdministrationStartDate]   DATE           NULL,
    [IntendedAdministrationEndDate]     DATE           NULL,
    [AssessmentItemBankIdentifier]      NVARCHAR (40)  NULL,
    [AssessmentItemBankName]            NVARCHAR (60)  NULL,
    [PlatformsSupported]                NVARCHAR (MAX) NULL,
    [RefAssessmentLanguageId]           INT            NULL,
    [AssessmentSecureIndicator]         BIT            NULL,
    [LearningResourceId]                INT            NULL,
    [AssessmentFormAdaptiveIndicator]   BIT            NULL,
    [AssessmentFormAlgorithmIdentifier] NVARCHAR (40)  NULL,
    [AssessmentFormAlgorithmVersion]    NVARCHAR (40)  NULL,
    [AssessmentFormGUID]                NVARCHAR (40)  NULL,
    [RecordStartDateTime]               DATETIME       NULL,
    [RecordEndDateTime]                 DATETIME       NULL,
    [RecordStatusId]                    INT            NULL,
    [DataCollectionId]                  INT            NULL,
    CONSTRAINT [PK_AssessmentForm] PRIMARY KEY CLUSTERED ([AssessmentFormId] ASC),
    CONSTRAINT [FK_AssessmentForm_Assessment] FOREIGN KEY ([AssessmentId]) REFERENCES [dbo].[Assessment] ([AssessmentId]),
    CONSTRAINT [FK_AssessmentForm_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_AssessmentForm_LearningResource] FOREIGN KEY ([LearningResourceId]) REFERENCES [dbo].[LearningResource] ([LearningResourceId]),
    CONSTRAINT [FK_AssessmentForm_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_AssessmentForm_RefLanguage] FOREIGN KEY ([RefAssessmentLanguageId]) REFERENCES [dbo].[RefLanguage] ([RefLanguageId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An instance of an a sessment that can equate scores with another instance of that same assessment.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'AssessmentFormId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - Assessment', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'AssessmentId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The number of a given assessment form.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'FormNumber';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Form Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'FormNumber';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000366', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'FormNumber';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19365', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'FormNumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'FormNumber';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The name of a given assessment form.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Form Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000024', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19024', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The version number of the Assessment Form.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'Version';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Form Version', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'Version';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001183', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'Version';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20134', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'Version';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'Version';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The published date of an educational resource, such as instructional media, an assessment form, or section of an assessment form.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'PublishedDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Learning Resource Published Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'PublishedDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001184', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'PublishedDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20135', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'PublishedDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'PublishedDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The human readable list of one or more of the specific accessibility features available. If no accessibility features are provided, then this list will not be present.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'AssessmentFormAccessibilityFeatureList';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Form Accessibility Feature List', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'AssessmentFormAccessibilityFeatureList';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001185', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'AssessmentFormAccessibilityFeatureList';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/element/001185', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'AssessmentFormAccessibilityFeatureList';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'AssessmentFormAccessibilityFeatureList';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The beginning date of the time period in which the form is intended to be administered.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'IntendedAdministrationStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Intended Administration Start Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'IntendedAdministrationStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001186', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'IntendedAdministrationStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20137', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'IntendedAdministrationStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'IntendedAdministrationStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The ending date of the time period in which the assessment form is intended to be administered.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'IntendedAdministrationEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Form Intended Administration End Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'IntendedAdministrationEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001187', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'IntendedAdministrationEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20138', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'IntendedAdministrationEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'IntendedAdministrationEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'If the assessment is provided with an item bank, then this identifies the item bank: a unique code or number used by the item banking system.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'AssessmentItemBankIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Item Bank Identifier', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'AssessmentItemBankIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001181', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'AssessmentItemBankIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20132', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'AssessmentItemBankIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'AssessmentItemBankIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'If the assessment is provided with an item bank, then this is the name of the item bank.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'AssessmentItemBankName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Item Bank Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'AssessmentItemBankName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001182', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'AssessmentItemBankName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20133', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'AssessmentItemBankName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'AssessmentItemBankName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A human readable list of delivery platforms the form will support.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'PlatformsSupported';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Form Platforms Supported', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'PlatformsSupported';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001188', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'PlatformsSupported';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20139', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'PlatformsSupported';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'PlatformsSupported';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The language in which the assessment form is designed to be delivered.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'RefAssessmentLanguageId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Language', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'RefAssessmentLanguageId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001089', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'RefAssessmentLanguageId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20073', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'RefAssessmentLanguageId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'RefAssessmentLanguageId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Indicates whether or not the assessment is a secure assessment.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'AssessmentSecureIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Secure Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'AssessmentSecureIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000384', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'AssessmentSecureIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19375', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'AssessmentSecureIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'AssessmentSecureIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - LearningResouce', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'LearningResourceId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Indicates that the assessment form was generated using an algorithm rather than a fixed form.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'AssessmentFormAdaptiveIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Form Adaptive Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'AssessmentFormAdaptiveIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001532', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'AssessmentFormAdaptiveIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20507', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'AssessmentFormAdaptiveIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'AssessmentFormAdaptiveIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An identifier for algorithm used to generate a custom form for an adaptive test.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'AssessmentFormAlgorithmIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Form Algorithm Identifier', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'AssessmentFormAlgorithmIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001533', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'AssessmentFormAlgorithmIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20508', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'AssessmentFormAlgorithmIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'AssessmentFormAlgorithmIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The version of the algorithm used to generate a custom form for an adaptive test.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'AssessmentFormAlgorithmVersion';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Form Algorithm Version', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'AssessmentFormAlgorithmVersion';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001534', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'AssessmentFormAlgorithmVersion';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20509', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'AssessmentFormAlgorithmVersion';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'AssessmentFormAlgorithmVersion';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The globally unique identifier of an Assessment Form.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'AssessmentFormGUID';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Form GUID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'AssessmentFormGUID';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001535', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'AssessmentFormGUID';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20510', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'AssessmentFormGUID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'AssessmentFormGUID';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

