CREATE TABLE [dbo].[CourseSectionAssessmentReporting] (
    [CourseSectionAssessmentReportingId]          INT      IDENTITY (1, 1) NOT NULL,
    [CourseSectionId]                             INT      NULL,
    [RefCourseSectionAssessmentReportingMethodId] INT      NULL,
    [RecordStartDateTime]                         DATETIME NULL,
    [RecordEndDateTime]                           DATETIME NULL,
    [RecordStatusId]                              INT      NULL,
    [DataCollectionId]                            INT      NULL,
    CONSTRAINT [PK_CourseSectionAssessmentReporting] PRIMARY KEY CLUSTERED ([CourseSectionAssessmentReportingId] ASC),
    CONSTRAINT [FK_CourseSectionAssessmentReporting_CourseSection] FOREIGN KEY ([CourseSectionId]) REFERENCES [dbo].[CourseSection] ([CourseSectionId]),
    CONSTRAINT [FK_CourseSectionAssessmentReporting_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_CourseSectionAssessmentReporting_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_CourseSectionAssessmentReporting_RefCSAssessmentReportMethod] FOREIGN KEY ([RefCourseSectionAssessmentReportingMethodId]) REFERENCES [dbo].[RefCourseSectionAssessmentReportingMethod] ([RefCourseSectionAssessmentReportingMethodId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The method(s) that the instructor of the course uses to report the performance and achievement of all students. It may be a qualitative method such as individualized teacher comments or a quantitative method such as a letter or a numerical grade. ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSectionAssessmentReporting';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSectionAssessmentReporting';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSectionAssessmentReporting', @level2type = N'COLUMN', @level2name = N'CourseSectionAssessmentReportingId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The method that the instructor of the course uses to report the performance and achievement of all students. It may be a qualitative method such as individualized teacher comments or a quantitative method such as a letter or a numerical grade. In some cases, more than one type of reporting method may be used.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSectionAssessmentReporting', @level2type = N'COLUMN', @level2name = N'RefCourseSectionAssessmentReportingMethodId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Course Section Assessment Reporting Method', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSectionAssessmentReporting', @level2type = N'COLUMN', @level2name = N'RefCourseSectionAssessmentReportingMethodId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000027', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSectionAssessmentReporting', @level2type = N'COLUMN', @level2name = N'RefCourseSectionAssessmentReportingMethodId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19027', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSectionAssessmentReporting', @level2type = N'COLUMN', @level2name = N'RefCourseSectionAssessmentReportingMethodId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSectionAssessmentReporting', @level2type = N'COLUMN', @level2name = N'RefCourseSectionAssessmentReportingMethodId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSectionAssessmentReporting', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSectionAssessmentReporting', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSectionAssessmentReporting', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSectionAssessmentReporting', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSectionAssessmentReporting', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSectionAssessmentReporting', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSectionAssessmentReporting', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSectionAssessmentReporting', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSectionAssessmentReporting', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSectionAssessmentReporting', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

