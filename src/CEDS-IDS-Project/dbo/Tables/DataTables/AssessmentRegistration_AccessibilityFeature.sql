CREATE TABLE [dbo].[AssessmentRegistration_AccessibilityFeature] (
    [AssessmentRegistration_AccessibilityFeatureId] INT      IDENTITY (1, 1) NOT NULL,
    [AssessmentRegistrationId]               INT      NOT NULL,
    [AccessibilityFeatureId]                  INT      NOT NULL,
    [RecordStartDateTime]                    DATETIME NULL,
    [RecordEndDateTime]                      DATETIME NULL,
    [RecordStatusId]                         INT      NULL,
    [DataCollectionId]                       INT      NULL,
    CONSTRAINT [PK_AssessmentRegistration_AccessibilityFeature] PRIMARY KEY CLUSTERED ([AssessmentRegistration_AccessibilityFeatureId] ASC),
    CONSTRAINT [FK_AssessmentRegistration_AccessibilityFeature_AccessibilityFeature] FOREIGN KEY ([AccessibilityFeatureId]) REFERENCES [dbo].[AccessibilityFeature] ([AccessibilityFeatureId]),
    CONSTRAINT [FK_AssessmentRegistration_AccessibilityFeature_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_AssessmentRegistration_AccessibilityFeature_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_AssessmentRegistration_AccessibilityFeature_AssessmentRegistration] FOREIGN KEY ([AssessmentRegistrationId]) REFERENCES [dbo].[AssessmentRegistration] ([AssessmentRegistrationId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The accommodation(s) associated to an Assessment Registration.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration_AccessibilityFeature';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration_AccessibilityFeature';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration_AccessibilityFeature', @level2type = N'COLUMN', @level2name = N'AssessmentRegistration_AccessibilityFeatureId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - AssessmentRegistration', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration_AccessibilityFeature', @level2type = N'COLUMN', @level2name = N'AssessmentRegistrationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration_AccessibilityFeature', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration_AccessibilityFeature', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration_AccessibilityFeature', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration_AccessibilityFeature', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration_AccessibilityFeature', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration_AccessibilityFeature', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration_AccessibilityFeature', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration_AccessibilityFeature', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration_AccessibilityFeature', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration_AccessibilityFeature', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

