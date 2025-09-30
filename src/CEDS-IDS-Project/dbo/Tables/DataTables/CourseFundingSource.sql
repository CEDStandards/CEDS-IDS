CREATE TABLE [dbo].[CourseFundingSource] (
    [CourseFundingSourceId]            INT      IDENTITY (1, 1) NOT NULL,
    [CourseId]                         INT      NOT NULL,
    [FinancialAccountId]               INT      NOT NULL,
    [RefCourseFundingProgramAllowedId] INT      NULL,
    [RecordStartDateTime]              DATETIME NULL,
    [RecordEndDateTime]                DATETIME NULL,
    [RecordStatusId]                   INT      NULL,
    [DataCollectionId]                 INT      NULL,
    CONSTRAINT [PK_CourseFundingSource] PRIMARY KEY CLUSTERED ([CourseFundingSourceId] ASC),
    CONSTRAINT [FK_CourseFundingSource_Course] FOREIGN KEY ([CourseId]) REFERENCES [dbo].[Course] ([CourseId]),
    CONSTRAINT [FK_CourseFundingSource_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_CourseFundingSource_FinancialAccount] FOREIGN KEY ([FinancialAccountId]) REFERENCES [dbo].[FinancialAccount] ([FinancialAccountId]),
    CONSTRAINT [FK_CourseFundingSource_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_CourseFundingSource_RefCourseFundingProgramAllowed] FOREIGN KEY ([RefCourseFundingProgramAllowedId]) REFERENCES [dbo].[RefCourseFundingProgramAllowed] ([RefCourseFundingProgramAllowedId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The relationship between course and the financial account that would be used to fund the course.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseFundingSource';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseFundingSource';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of permission for allocation of a course funding program''s funds for the support of a course.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseFundingSource', @level2type = N'COLUMN', @level2name = N'RefCourseFundingProgramAllowedId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Course Funding Program Allowed', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseFundingSource', @level2type = N'COLUMN', @level2name = N'RefCourseFundingProgramAllowedId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002065', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseFundingSource', @level2type = N'COLUMN', @level2name = N'RefCourseFundingProgramAllowedId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25010', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseFundingSource', @level2type = N'COLUMN', @level2name = N'RefCourseFundingProgramAllowedId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseFundingSource', @level2type = N'COLUMN', @level2name = N'RefCourseFundingProgramAllowedId';

