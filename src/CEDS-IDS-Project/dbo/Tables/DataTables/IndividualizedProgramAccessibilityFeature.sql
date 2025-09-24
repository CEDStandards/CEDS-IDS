CREATE TABLE [dbo].[IndividualizedProgramAccessibilityFeature] (
    [IndividualizedProgramAccessibilityFeatureId]       INT            IDENTITY (1, 1) NOT NULL,
    [IndividualizedProgramId]                           INT            NOT NULL,
    [IndividualizedProgramAccommodationDescription]     NVARCHAR (MAX) NULL,
    [IndividualizedProgramAccommodationApplicability]   NVARCHAR (MAX) NULL,
    [RefAccessibilityFeatureTypeId]                     INT            NULL,
    [RecordStartDateTime]                               DATETIME       NULL,
    [RecordEndDateTime]                                 DATETIME       NULL,
    [RecordStatusId]                                    INT            NULL,
    [DataCollectionId]                                  INT            NULL,
    CONSTRAINT [PK_IndividualizedProgramAccessibilityFeature] PRIMARY KEY CLUSTERED ([IndividualizedProgramAccessibilityFeatureId] ASC),
    CONSTRAINT [FK_IndividualizedProgramAccessibilityFeature_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_IndividualizedProgramAccessibilityFeature_IndividualizedProgram] FOREIGN KEY ([IndividualizedProgramId]) REFERENCES [dbo].[IndividualizedProgram] ([IndividualizedProgramId]),
    CONSTRAINT [FK_IndividualizedProgramAccessibilityFeature_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_IndividualizedProgramAccessibilityFeature_RefAccessibilityFeatureType] FOREIGN KEY ([RefAccessibilityFeatureTypeId]) REFERENCES [dbo].[RefAccessibilityFeatureType] ([RefAccessibilityFeatureTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information about an accomodation specified as part of an individualized program such as a screen reader or spoken instructions for a visually impaired student.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAccessibilityFeature';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAccessibilityFeature';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Description of a specific accommodation or change to standards or practices that will be made.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAccessibilityFeature', @level2type = N'COLUMN', @level2name = N'IndividualizedProgramAccommodationDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Individualized Program Accommodation Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAccessibilityFeature', @level2type = N'COLUMN', @level2name = N'IndividualizedProgramAccommodationDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001685', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAccessibilityFeature', @level2type = N'COLUMN', @level2name = N'IndividualizedProgramAccommodationDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20666', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAccessibilityFeature', @level2type = N'COLUMN', @level2name = N'IndividualizedProgramAccommodationDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Circumstances in which the accommodation or change to standards or practices will be applied.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAccessibilityFeature', @level2type = N'COLUMN', @level2name = N'IndividualizedProgramAccommodationApplicability';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Individualized Program Accommodation Applicability', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAccessibilityFeature', @level2type = N'COLUMN', @level2name = N'IndividualizedProgramAccommodationApplicability';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001686', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAccessibilityFeature', @level2type = N'COLUMN', @level2name = N'IndividualizedProgramAccommodationApplicability';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20667', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAccessibilityFeature', @level2type = N'COLUMN', @level2name = N'IndividualizedProgramAccommodationApplicability';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The specific accommodation necessary for assessment or instruction.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAccessibilityFeature', @level2type = N'COLUMN', @level2name = N'RefAccessibilityFeatureTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Accommodation Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAccessibilityFeature', @level2type = N'COLUMN', @level2name = N'RefAccessibilityFeatureTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000385', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAccessibilityFeature', @level2type = N'COLUMN', @level2name = N'RefAccessibilityFeatureTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19376', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAccessibilityFeature', @level2type = N'COLUMN', @level2name = N'RefAccessibilityFeatureTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAccessibilityFeature', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAccessibilityFeature', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAccessibilityFeature', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAccessibilityFeature', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAccessibilityFeature', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAccessibilityFeature', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAccessibilityFeature', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAccessibilityFeature', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAccessibilityFeature', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAccessibilityFeature', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

