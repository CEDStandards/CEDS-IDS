CREATE TABLE [dbo].[PsStudentCourseSectionMark] (
    [PsStudentCourseSectionMarkId]       INT            IDENTITY (1, 1) NOT NULL,
    [PsStudentSectionId]                 INT            NOT NULL,
    [CourseNarrativeExplanationGrade]    NVARCHAR (300) NULL,
    [StudentCourseSectionGradeNarrative] NVARCHAR (300) NULL,
    [RefCourseAcademicGradeStatusCodeId] INT            NULL,
    [RecordStartDateTime]                DATETIME       NULL,
    [RecordEndDateTime]                  DATETIME       NULL,
    [RecordStatusId]                     INT            NULL,
    [DataCollectionId]                   INT            NULL,
    CONSTRAINT [PK_PsStudentCourseSectionMark] PRIMARY KEY CLUSTERED ([PsStudentCourseSectionMarkId] ASC),
    CONSTRAINT [FK_PsStudentCourseSectionMark_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_PsStudentCourseSectionMark_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_PsStudentCourseSectionMark_StudentSection] FOREIGN KEY ([PsStudentSectionId]) REFERENCES [dbo].[PsStudentSection] ([PsStudentSectionId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Marks in a gradebook for a student''s participation in a postescondary course.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentCourseSectionMark';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentCourseSectionMark';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The narrative of the grade awarded to an individual in an academic course in those cases where a course does not receive a letter or numeric grade included in the grading scale of the Course Academic Grade Qualifier.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentCourseSectionMark', @level2type = N'COLUMN', @level2name = N'CourseNarrativeExplanationGrade';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Course Narrative Explanation Grade', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentCourseSectionMark', @level2type = N'COLUMN', @level2name = N'CourseNarrativeExplanationGrade';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001313', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentCourseSectionMark', @level2type = N'COLUMN', @level2name = N'CourseNarrativeExplanationGrade';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20279', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentCourseSectionMark', @level2type = N'COLUMN', @level2name = N'CourseNarrativeExplanationGrade';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentCourseSectionMark', @level2type = N'COLUMN', @level2name = N'CourseNarrativeExplanationGrade';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The narrative of the student performance in a course section as submitted by the instructor.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentCourseSectionMark', @level2type = N'COLUMN', @level2name = N'StudentCourseSectionGradeNarrative';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Student Course Section Grade Narrative', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentCourseSectionMark', @level2type = N'COLUMN', @level2name = N'StudentCourseSectionGradeNarrative';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001573', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentCourseSectionMark', @level2type = N'COLUMN', @level2name = N'StudentCourseSectionGradeNarrative';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20552', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentCourseSectionMark', @level2type = N'COLUMN', @level2name = N'StudentCourseSectionGradeNarrative';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentCourseSectionMark', @level2type = N'COLUMN', @level2name = N'StudentCourseSectionGradeNarrative';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Additional information regarding the context of the given grade.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentCourseSectionMark', @level2type = N'COLUMN', @level2name = N'RefCourseAcademicGradeStatusCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Course Academic Grade Status Code', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentCourseSectionMark', @level2type = N'COLUMN', @level2name = N'RefCourseAcademicGradeStatusCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001299', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentCourseSectionMark', @level2type = N'COLUMN', @level2name = N'RefCourseAcademicGradeStatusCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20265', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentCourseSectionMark', @level2type = N'COLUMN', @level2name = N'RefCourseAcademicGradeStatusCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentCourseSectionMark', @level2type = N'COLUMN', @level2name = N'RefCourseAcademicGradeStatusCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentCourseSectionMark', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentCourseSectionMark', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentCourseSectionMark', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentCourseSectionMark', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentCourseSectionMark', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentCourseSectionMark', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentCourseSectionMark', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentCourseSectionMark', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentCourseSectionMark', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

