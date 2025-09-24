CREATE TABLE [dbo].[IndividualizedProgramAccessibilityFeatureSubject] (
    [IndividualizedProgramAccessibilityFeatureSubjectId] INT      IDENTITY (1, 1) NOT NULL,
    [IndividualizedProgramAccessibilityFeatureId]        INT      NOT NULL,
    [RefSCEDCourseSubjectAreaId]                          INT      NOT NULL,
    [RecordStartDateTime]                                 DATETIME NULL,
    [RecordEndDateTime]                                   DATETIME NULL,
    [RecordStatusId]                                      INT NULL,
    [DataCollectionId]                                    INT NULL,
    CONSTRAINT [PK_IndividualizedProgramAccessibilityFeatureSubject] PRIMARY KEY CLUSTERED ([IndividualizedProgramAccessibilityFeatureSubjectId] ASC),
    CONSTRAINT [FK_IndividualizedProgramAccessibilityFeatureSubject_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_IndividualizedProgramAccessibilityFeatureSubject_IndividualizedProgramAccessibilityFeature] FOREIGN KEY ([IndividualizedProgramAccessibilityFeatureId]) REFERENCES [dbo].[IndividualizedProgramAccessibilityFeature] ([IndividualizedProgramAccessibilityFeatureId]),
    CONSTRAINT [FK_IndividualizedProgramAccessibilityFeatureSubject_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_IndividualizedProgramAccessibilityFeatureSubject_RefSCEDCourseSubjectArea] FOREIGN KEY ([RefSCEDCourseSubjectAreaId]) REFERENCES [dbo].[RefSCEDCourseSubjectArea] ([RefSCEDCourseSubjectAreaId]),
    CONSTRAINT [IX_IndividualizedProgramAccessibilityFeatureSubject_RefSCEDCourseSubjectArea] UNIQUE NONCLUSTERED ([IndividualizedProgramAccessibilityFeatureSubjectId] ASC, [RefSCEDCourseSubjectAreaId] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Specifies an academic subject for which an individualized program accomodation applies.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAccessibilityFeatureSubject';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAccessibilityFeatureSubject';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The intended major subject area of the education course.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAccessibilityFeatureSubject', @level2type = N'COLUMN', @level2name = N'RefSCEDCourseSubjectAreaId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'School Courses for the Exchange of Data Course Subject Area', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAccessibilityFeatureSubject', @level2type = N'COLUMN', @level2name = N'RefSCEDCourseSubjectAreaId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001518', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAccessibilityFeatureSubject', @level2type = N'COLUMN', @level2name = N'RefSCEDCourseSubjectAreaId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20491', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAccessibilityFeatureSubject', @level2type = N'COLUMN', @level2name = N'RefSCEDCourseSubjectAreaId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAccessibilityFeatureSubject', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAccessibilityFeatureSubject', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAccessibilityFeatureSubject', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAccessibilityFeatureSubject', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAccessibilityFeatureSubject', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAccessibilityFeatureSubject', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAccessibilityFeatureSubject', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAccessibilityFeatureSubject', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAccessibilityFeatureSubject', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAccessibilityFeatureSubject', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

