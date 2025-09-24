CREATE TABLE [dbo].[K12StudentCourseSectionMark] (
    [K12StudentCourseSectionMarkId]      INT            IDENTITY (1, 1) NOT NULL,
    [K12StudentCourseSectionId]          INT            NOT NULL,
    [MarkingPeriodName]                  NVARCHAR (30)  NULL,
    [FinalIndicator]                     BIT            NULL,
    [GradeEarned]                        NVARCHAR (15)  NULL,
    [MidTermMark]                        NVARCHAR (15)  NULL,
    [GradeValueQualifier]                NVARCHAR (1000) NULL,
    [StudentCourseSectionGradeNarrative] NVARCHAR (300) NULL,
    [RecordStartDateTime]                DATETIME       NULL,
    [RecordEndDateTime]                  DATETIME       NULL,
    [RecordStatusId]                     INT            NULL,
    [DataCollectionId]                   INT            NULL,
    CONSTRAINT [PK_K12StudentCourseSectionMark] PRIMARY KEY CLUSTERED ([K12StudentCourseSectionMarkId] ASC),
    CONSTRAINT [FK_K12StudentCourseSectionMark_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_K12StudentCourseSectionMark_K12StudentCourseSection] FOREIGN KEY ([K12StudentCourseSectionId]) REFERENCES [dbo].[K12StudentCourseSection] ([K12StudentCourseSectionId]),
    CONSTRAINT [FK_K12StudentCourseSectionMark_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Defines information about a mark associated with a student for a course section, including flags to indicate if the mark is a final grade or a midterm grade.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSectionMark';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSectionMark';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSectionMark', @level2type = N'COLUMN', @level2name = N'K12StudentCourseSectionMarkId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The name or description of the marking period (e.g., fall, first marking period).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSectionMark', @level2type = N'COLUMN', @level2name = N'MarkingPeriodName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Marking Period Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSectionMark', @level2type = N'COLUMN', @level2name = N'MarkingPeriodName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000182', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSectionMark', @level2type = N'COLUMN', @level2name = N'MarkingPeriodName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19182', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSectionMark', @level2type = N'COLUMN', @level2name = N'MarkingPeriodName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSectionMark', @level2type = N'COLUMN', @level2name = N'MarkingPeriodName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Indicates that the mark is a final mark the learner has earned for the course section.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSectionMark', @level2type = N'COLUMN', @level2name = N'FinalIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Student Course Section Mark Final Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSectionMark', @level2type = N'COLUMN', @level2name = N'FinalIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001142', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSectionMark', @level2type = N'COLUMN', @level2name = N'FinalIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20191', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSectionMark', @level2type = N'COLUMN', @level2name = N'FinalIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSectionMark', @level2type = N'COLUMN', @level2name = N'FinalIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A final indicator of student performance in a course section as submitted by the instructor.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSectionMark', @level2type = N'COLUMN', @level2name = N'GradeEarned';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Student Course Section Grade Earned', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSectionMark', @level2type = N'COLUMN', @level2name = N'GradeEarned';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000124', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSectionMark', @level2type = N'COLUMN', @level2name = N'GradeEarned';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19124', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSectionMark', @level2type = N'COLUMN', @level2name = N'GradeEarned';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSectionMark', @level2type = N'COLUMN', @level2name = N'GradeEarned';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Indicator of student performance at the mid-point of the marking period.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSectionMark', @level2type = N'COLUMN', @level2name = N'MidTermMark';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Mid Term Mark', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSectionMark', @level2type = N'COLUMN', @level2name = N'MidTermMark';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000183', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSectionMark', @level2type = N'COLUMN', @level2name = N'MidTermMark';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19183', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSectionMark', @level2type = N'COLUMN', @level2name = N'MidTermMark';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSectionMark', @level2type = N'COLUMN', @level2name = N'MidTermMark';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The scale of equivalents, if applicable, for grades awarded as indicators of performance in schoolwork. For example, numerical equivalents for letter grades used in determining a student''s Grade Point Average (A=4, B=3, C=2, D=1 in a four-point system) or letter equivalents for percentage grades (90-100%=A, 80-90%=B, etc.)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSectionMark', @level2type = N'COLUMN', @level2name = N'GradeValueQualifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Grade Value Qualifier', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSectionMark', @level2type = N'COLUMN', @level2name = N'GradeValueQualifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000616', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSectionMark', @level2type = N'COLUMN', @level2name = N'GradeValueQualifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19609', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSectionMark', @level2type = N'COLUMN', @level2name = N'GradeValueQualifier';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSectionMark', @level2type = N'COLUMN', @level2name = N'GradeValueQualifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The narrative of the student performance in a course section as submitted by the instructor.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSectionMark', @level2type = N'COLUMN', @level2name = N'StudentCourseSectionGradeNarrative';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Student Course Section Grade Narrative', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSectionMark', @level2type = N'COLUMN', @level2name = N'StudentCourseSectionGradeNarrative';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001573', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSectionMark', @level2type = N'COLUMN', @level2name = N'StudentCourseSectionGradeNarrative';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20552', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSectionMark', @level2type = N'COLUMN', @level2name = N'StudentCourseSectionGradeNarrative';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSectionMark', @level2type = N'COLUMN', @level2name = N'StudentCourseSectionGradeNarrative';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSectionMark', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSectionMark', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSectionMark', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSectionMark', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSectionMark', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSectionMark', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSectionMark', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSectionMark', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSectionMark', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSectionMark', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

