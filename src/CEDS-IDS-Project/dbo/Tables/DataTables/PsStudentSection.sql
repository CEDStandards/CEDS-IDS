CREATE TABLE [dbo].[PsStudentSection] (
    [PsStudentSectionId]                 INT            IDENTITY (1, 1) NOT NULL,
    [OrganizationPersonRoleId]           INT            NOT NULL,
    [CourseOverrideSchool]               NVARCHAR (80)  NULL,
    [DegreeApplicability]                BIT            NULL,
    [AcademicGrade]                      NVARCHAR (15)  NULL,
    [NumberOfCreditsEarned]              DECIMAL (9, 2) NULL,
    [QualityPointsEarned]                DECIMAL (9, 2) NULL,
    [RefCourseRepeatCodeId]              INT            NULL,
    [RefCourseAcademicGradeStatusCodeId] INT            NULL,
    [RecordStartDateTime]                DATETIME       NULL,
    [RecordEndDateTime]                  DATETIME       NULL,
    [NumberOfCreditsAttempted]           DECIMAL (9, 2) NULL,
    [RecordStatusId]                     INT            NULL,
    [DataCollectionId]                   INT            NULL,
    CONSTRAINT [PK_PsStudentSection] PRIMARY KEY CLUSTERED ([PsStudentSectionId] ASC),
    CONSTRAINT [FK_PsStudentSection_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_PsStudentSection_OrganizationPersonRole] FOREIGN KEY ([OrganizationPersonRoleId]) REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]),
    CONSTRAINT [FK_PsStudentSection_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_PsStudentSection_RefCourseAcademicGradeStatusCode] FOREIGN KEY ([RefCourseAcademicGradeStatusCodeId]) REFERENCES [dbo].[RefCourseAcademicGradeStatusCode] ([RefCourseAcademicGradeStatusCodeId]),
    CONSTRAINT [FK_PsStudentSection_RefCourseRepeatCode] FOREIGN KEY ([RefCourseRepeatCodeId]) REFERENCES [dbo].[RefCourseRepeatCode] ([RefCourseRepeatCodeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A postsecondary student''s performance in a class/section.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentSection';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentSection';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The association of an organization (e.g. school, section, employer) to a person with the role (e.g. student, ).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentSection', @level2type = N'COLUMN', @level2name = N'OrganizationPersonRoleId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentSection', @level2type = N'COLUMN', @level2name = N'OrganizationPersonRoleId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The school where the credit was earned if different from the institution reporting. ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentSection', @level2type = N'COLUMN', @level2name = N'CourseOverrideSchool';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Course Override School', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentSection', @level2type = N'COLUMN', @level2name = N'CourseOverrideSchool';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000063', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentSection', @level2type = N'COLUMN', @level2name = N'CourseOverrideSchool';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19063', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentSection', @level2type = N'COLUMN', @level2name = N'CourseOverrideSchool';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentSection', @level2type = N'COLUMN', @level2name = N'CourseOverrideSchool';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication that the course is a part of a degree program. ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentSection', @level2type = N'COLUMN', @level2name = N'DegreeApplicability';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Degree Applicability', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentSection', @level2type = N'COLUMN', @level2name = N'DegreeApplicability';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000077', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentSection', @level2type = N'COLUMN', @level2name = N'DegreeApplicability';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19077', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentSection', @level2type = N'COLUMN', @level2name = N'DegreeApplicability';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentSection', @level2type = N'COLUMN', @level2name = N'DegreeApplicability';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The final grade awarded for participation in the course. ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentSection', @level2type = N'COLUMN', @level2name = N'AcademicGrade';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Course Academic Grade', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentSection', @level2type = N'COLUMN', @level2name = N'AcademicGrade';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000053', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentSection', @level2type = N'COLUMN', @level2name = N'AcademicGrade';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19053', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentSection', @level2type = N'COLUMN', @level2name = N'AcademicGrade';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentSection', @level2type = N'COLUMN', @level2name = N'AcademicGrade';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The number of credits an individual earns by the successful completion of a course.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentSection', @level2type = N'COLUMN', @level2name = N'NumberOfCreditsEarned';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Number of Credits Earned', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentSection', @level2type = N'COLUMN', @level2name = N'NumberOfCreditsEarned';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000200', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentSection', @level2type = N'COLUMN', @level2name = N'NumberOfCreditsEarned';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19200', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentSection', @level2type = N'COLUMN', @level2name = N'NumberOfCreditsEarned';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentSection', @level2type = N'COLUMN', @level2name = N'NumberOfCreditsEarned';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The numerical value assigned to a letter grade to provide a basis of quantitative determination of an average. ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentSection', @level2type = N'COLUMN', @level2name = N'QualityPointsEarned';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Course Quality Points Earned', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentSection', @level2type = N'COLUMN', @level2name = N'QualityPointsEarned';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000064', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentSection', @level2type = N'COLUMN', @level2name = N'QualityPointsEarned';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19064', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentSection', @level2type = N'COLUMN', @level2name = N'QualityPointsEarned';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentSection', @level2type = N'COLUMN', @level2name = N'QualityPointsEarned';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Indicates that an academic course has been repeated by a student and how that repeat is to be computed in the student''s academic grade average.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentSection', @level2type = N'COLUMN', @level2name = N'RefCourseRepeatCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Course Repeat Code', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentSection', @level2type = N'COLUMN', @level2name = N'RefCourseRepeatCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000065', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentSection', @level2type = N'COLUMN', @level2name = N'RefCourseRepeatCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19065', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentSection', @level2type = N'COLUMN', @level2name = N'RefCourseRepeatCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentSection', @level2type = N'COLUMN', @level2name = N'RefCourseRepeatCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Additional information regarding the context of the given grade.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentSection', @level2type = N'COLUMN', @level2name = N'RefCourseAcademicGradeStatusCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Course Academic Grade Status Code', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentSection', @level2type = N'COLUMN', @level2name = N'RefCourseAcademicGradeStatusCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001299', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentSection', @level2type = N'COLUMN', @level2name = N'RefCourseAcademicGradeStatusCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20265', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentSection', @level2type = N'COLUMN', @level2name = N'RefCourseAcademicGradeStatusCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentSection', @level2type = N'COLUMN', @level2name = N'RefCourseAcademicGradeStatusCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentSection', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentSection', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentSection', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentSection', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentSection', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentSection', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentSection', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentSection', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentSection', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The number of credits that a student can earn for enrolling in and completing a given course.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentSection', @level2type = N'COLUMN', @level2name = N'NumberOfCreditsAttempted';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Number of Credits Attempted', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentSection', @level2type = N'COLUMN', @level2name = N'NumberOfCreditsAttempted';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000199', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentSection', @level2type = N'COLUMN', @level2name = N'NumberOfCreditsAttempted';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19199', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentSection', @level2type = N'COLUMN', @level2name = N'NumberOfCreditsAttempted';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentSection', @level2type = N'COLUMN', @level2name = N'NumberOfCreditsAttempted';

