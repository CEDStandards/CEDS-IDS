CREATE TABLE [dbo].[PersonDisability] (
    [PersonId]                                INT      NOT NULL,
    [PrimaryDisabilityTypeId]                 INT      NULL,
    [DisabilityStatus]                        BIT      NULL,
    [RefAccessibilityFeatureTypeId]           INT      NULL,
    [RefDisabilityConditionTypeId]            INT      NULL,
    [RefDisabilityDeterminationSourceTypeId]  INT      NULL,
    [RefDisabilityConditionStatusCodeId]      INT      NULL,
    [RefVisualImpairmentTypeId]               INT      NULL,
    [RefDegreeOfVisualImpairmentId]           INT      NULL,
    [RecordStartDateTime]                     DATETIME NULL,
    [RecordEndDateTime]                       DATETIME NULL,
    [PersonDisabilityId]                      INT      IDENTITY (1, 1) NOT NULL,
    [SignificantCognitiveDisabilityIndicator] BIT      NULL,
    [RefIDEADisabilityTypeId]                 INT      NULL,
    [RecordStatusId]                          INT      NULL,
    [DataCollectionId]                        INT      NULL,
    CONSTRAINT [PK_PersonDisabilityId] PRIMARY KEY CLUSTERED ([PersonDisabilityId] ASC),
    CONSTRAINT [FK_PersonDisability_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_PersonDisability_Person] FOREIGN KEY ([PersonId]) REFERENCES [dbo].[Person] ([PersonId]),
    CONSTRAINT [FK_PersonDisability_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_PersonDisability_RefAccessibilityFeatureType] FOREIGN KEY ([RefAccessibilityFeatureTypeId]) REFERENCES [dbo].[RefAccessibilityFeatureType] ([RefAccessibilityFeatureTypeId]),
    CONSTRAINT [FK_PersonDisability_RefDisabilityConditionStatusCode] FOREIGN KEY ([RefDisabilityConditionStatusCodeId]) REFERENCES [dbo].[RefDisabilityConditionStatusCode] ([RefDisabilityConditionStatusCodeId]),
    CONSTRAINT [FK_PersonDisability_RefDisabilityConditionType] FOREIGN KEY ([RefDisabilityConditionTypeId]) REFERENCES [dbo].[RefDisabilityConditionType] ([RefDisabilityConditionTypeId]),
    CONSTRAINT [FK_PersonDisability_RefDisabilityDeterminationSourceType] FOREIGN KEY ([RefDisabilityDeterminationSourceTypeId]) REFERENCES [dbo].[RefDisabilityDeterminationSourceType] ([RefDisabilityDeterminationSourceTypeId]),
    CONSTRAINT [FK_PersonDisability_RefDisabilityType] FOREIGN KEY ([PrimaryDisabilityTypeId]) REFERENCES [dbo].[RefDisabilityType] ([RefDisabilityTypeId]),
    CONSTRAINT [FK_PersonDisability_RefIDEADisabilityType] FOREIGN KEY ([RefIDEADisabilityTypeId]) REFERENCES [dbo].[RefIDEADisabilityType] ([RefIDEADisabilityTypeId]),
    CONSTRAINT [FK_PersonDisability_RefVisualImpairmentType] FOREIGN KEY ([RefVisualImpairmentTypeId]) REFERENCES [dbo].[RefVisualImpairmentType] ([RefVisualImpairmentTypeId]),
    CONSTRAINT [FK_PersonDisability_RefDegreeOfVisualImpairment] FOREIGN KEY ([RefDegreeOfVisualImpairmentId]) REFERENCES [dbo].[RefDegreeOfVisualImpairment] ([RefDegreeOfVisualImpairmentId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The disability status for an individual and their primary disability.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Inherited surrogate key from Person.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'PersonId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The major or overriding disability condition that best describes a person''s impairment.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'PrimaryDisabilityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Primary Disability Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'PrimaryDisabilityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000218', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'PrimaryDisabilityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19218', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'PrimaryDisabilityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether a person is classified as disabled under the American''s with Disability Act (ADA).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'DisabilityStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Disability Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'DisabilityStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000577', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'DisabilityStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19569', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'DisabilityStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Codes identifying the set of disability conditions.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'RefDisabilityConditionTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Disability Condition Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'RefDisabilityConditionTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001320', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'RefDisabilityConditionTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20286', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'RefDisabilityConditionTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Codes identifying the set of disability determination sources.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'RefDisabilityDeterminationSourceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Disability Determination Source Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'RefDisabilityDeterminationSourceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001321', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'RefDisabilityDeterminationSourceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20287', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'RefDisabilityDeterminationSourceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A code indicating the disability condition status.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'RefDisabilityConditionStatusCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Disability Condition Status Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'RefDisabilityConditionStatusCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001319', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'RefDisabilityConditionStatusCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20285', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'RefDisabilityConditionStatusCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Student has an existing IDEA disability with cognitive impairments which may prevent him/her from attaining grade-level achievement standards.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'SignificantCognitiveDisabilityIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Significant Cognitive Disability Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'SignificantCognitiveDisabilityIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001765', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'SignificantCognitiveDisabilityIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20746', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'SignificantCognitiveDisabilityIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A category of disability that describes a person’s impairment defined by the Individuals with Disabilities Education Act.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'RefIDEADisabilityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'IDEA Disability Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'RefIDEADisabilityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001733', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'RefIDEADisabilityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20714', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'RefIDEADisabilityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The disease or condition that caused the visual impairment.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'RefVisualImpairmentTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Visual Impairment Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'RefVisualImpairmentTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002132', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'RefVisualImpairmentTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/element/002132 ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'RefVisualImpairmentTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'RefVisualImpairmentTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The degree to which a person is visually impaired.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'RefDegreeOfVisualImpairmentId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Degree Of Visual Impairment', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'RefDegreeOfVisualImpairmentId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002131', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'RefDegreeOfVisualImpairmentId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/element/002131', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'RefDegreeOfVisualImpairmentId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'RefDegreeOfVisualImpairmentId';


GO

