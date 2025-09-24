CREATE TABLE [dbo].[IndividualizedProgramAssessmentAccessibilityFeature] (
    [IndividualizedProgramAssessmentAccessibilityFeatureId] INT      IDENTITY (1, 1) NOT NULL,
    [AccessibilityFeatureId]                                INT      NOT NULL,
    [IndividualizedProgramAssessmentId]                     INT      NOT NULL,
    [RecordStartDateTime]                                   DATETIME NULL,
    [RecordEndDateTime]                                     DATETIME NULL,
    [RecordStatusId]                                        INT      NULL,
    [DataCollectionId]                                      INT      NULL,
    CONSTRAINT [PK_IndividualizedProgramAssessmentAccessibilityFeature] PRIMARY KEY CLUSTERED ([IndividualizedProgramAssessmentAccessibilityFeatureId] ASC),
    CONSTRAINT [FK_IndividualizedProgramAssessmentAccessibilityFeature_AccessibilityFeature] FOREIGN KEY ([AccessibilityFeatureId]) REFERENCES [dbo].[AccessibilityFeature] ([AccessibilityFeatureId]),
    CONSTRAINT [FK_IndividualizedProgramAssessmentAccessibilityFeature_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_IndividualizedProgramAssessmentAccessibilityFeature_IndividualizedProgramAssessment] FOREIGN KEY ([IndividualizedProgramAssessmentId]) REFERENCES [dbo].[IndividualizedProgramAssessment] ([IndividualizedProgramAssessmentId]),
    CONSTRAINT [FK_IndividualizedProgramAssessmentAccessibilityFeature_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [IX_AssessmentAccessibilityFeature_IndividualizedProgramAssessment] UNIQUE NONCLUSTERED ([AccessibilityFeatureId] ASC, [IndividualizedProgramAssessmentId] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information about an accomotation specified as part of an individualized program that specifically addresses the context of an assessment taken by the student such as a screen reader or spoken instructions for a visually impaired student.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAssessmentAccessibilityFeature';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAssessmentAccessibilityFeature';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAssessmentAccessibilityFeature', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAssessmentAccessibilityFeature', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAssessmentAccessibilityFeature', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAssessmentAccessibilityFeature', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAssessmentAccessibilityFeature', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAssessmentAccessibilityFeature', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAssessmentAccessibilityFeature', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAssessmentAccessibilityFeature', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAssessmentAccessibilityFeature', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAssessmentAccessibilityFeature', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

