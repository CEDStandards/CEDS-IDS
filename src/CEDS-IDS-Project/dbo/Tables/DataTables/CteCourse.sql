CREATE TABLE [dbo].[CteCourse] (
    [CteCourseId]                  INT            IDENTITY (1, 1) NOT NULL,
    [CourseId]                     INT            NOT NULL,
    [AvailableCarnegieUnitCredit]  DECIMAL (9, 2) NULL,
    [HighSchoolCourseRequirement]  BIT            NULL,
    [CoreAcademicCourse]           BIT            NULL,
    [CourseAlignedWithStandards]   BIT            NULL,
    [SCEDCourseCode]               NCHAR (5)      NULL,
    [CourseDepartmentName]         NVARCHAR (60)  NULL,
    [RefAdditionalCreditTypeId]    INT            NULL,
    [RefCreditTypeEarnedId]        INT            NULL,
    [RefCourseGPAApplicabilityId]  INT            NULL,
    [RefCurriculumFrameworkTypeId] INT            NULL,
    [RefSCEDCourseLevelId]         INT            NULL,
    [RefSCEDCourseSubjectAreaId]   INT            NULL,
    [RefCareerClusterId]           INT            NULL,
    [RecordStartDateTime]          DATETIME       NULL,
    [RecordEndDateTime]            DATETIME       NULL,
    [RecordStatusId]               INT            NULL,
    [DataCollectionId]             INT            NULL,
    [RefSCEDCourseCodeId]          INT            NULL,
    CONSTRAINT [PK_CteCourse] PRIMARY KEY CLUSTERED ([CteCourseId] ASC),
    CONSTRAINT [FK_CteCourse_Course] FOREIGN KEY ([CourseId]) REFERENCES [dbo].[Course] ([CourseId]),
    CONSTRAINT [FK_CteCourse_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_CteCourse_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_CteCourse_RefAdditionalCreditType] FOREIGN KEY ([RefAdditionalCreditTypeId]) REFERENCES [dbo].[RefAdditionalCreditType] ([RefAdditionalCreditTypeId]),
    CONSTRAINT [FK_CteCourse_RefCareerCluster] FOREIGN KEY ([RefCareerClusterId]) REFERENCES [dbo].[RefCareerCluster] ([RefCareerClusterId]),
    CONSTRAINT [FK_CteCourse_RefCourseGpaApplicability] FOREIGN KEY ([RefCourseGPAApplicabilityId]) REFERENCES [dbo].[RefCourseGpaApplicability] ([RefCourseGPAApplicabilityId]),
    CONSTRAINT [FK_CteCourse_RefCreditTypeEarned] FOREIGN KEY ([RefCreditTypeEarnedId]) REFERENCES [dbo].[RefCreditTypeEarned] ([RefCreditTypeEarnedId]),
    CONSTRAINT [FK_CteCourse_RefCurriculumFrameworkType] FOREIGN KEY ([RefCurriculumFrameworkTypeId]) REFERENCES [dbo].[RefCurriculumFrameworkType] ([RefCurriculumFrameworkTypeId]),
    CONSTRAINT [FK_CteCourse_RefSCEDCourseCode] FOREIGN KEY ([RefSCEDCourseCodeId]) REFERENCES [dbo].[RefSCEDCourseCode] ([RefSCEDCourseCodeId]),
    CONSTRAINT [FK_CteCourse_RefSCEDCourseLevel] FOREIGN KEY ([RefSCEDCourseLevelId]) REFERENCES [dbo].[RefSCEDCourseLevel] ([RefSCEDCourseLevelId]),
    CONSTRAINT [FK_CteCourse_RefSCEDCourseSubjectArea] FOREIGN KEY ([RefSCEDCourseSubjectAreaId]) REFERENCES [dbo].[RefSCEDCourseSubjectArea] ([RefSCEDCourseSubjectAreaId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The organization of subject matter and related learning experiences provided for the instruction of students on a regular or systematic basis, usually for a predetermined period of time (e.g., a semester or two-week workshop) to an individual or group of students (e.g., a class). ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Measured in Carnegie units, the amount of credit available to a student who successfully meets the objectives of the course. A course meeting every day for one period of the school day over the span of a school year offers one Carnegie unit. A Carnegie unit is thus a measure of "seat time" rather than a measure of attainment of the course objectives.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'AvailableCarnegieUnitCredit';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Available Carnegie Unit Credit', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'AvailableCarnegieUnitCredit';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000030', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'AvailableCarnegieUnitCredit';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19030', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'AvailableCarnegieUnitCredit';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'AvailableCarnegieUnitCredit';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication that this course credit is required for a high school diploma.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'HighSchoolCourseRequirement';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'High School Course Requirement', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'HighSchoolCourseRequirement';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000137', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'HighSchoolCourseRequirement';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19137', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'HighSchoolCourseRequirement';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'HighSchoolCourseRequirement';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The course meets the state definition of a core academic course.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'CoreAcademicCourse';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Core Academic Course', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'CoreAcademicCourse';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000518', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'CoreAcademicCourse';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19509', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'CoreAcademicCourse';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'CoreAcademicCourse';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication whether a course is aligned with the established standards of a curriculum framework.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'CourseAlignedWithStandards';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Course Aligned with Standards', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'CourseAlignedWithStandards';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000013', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'CourseAlignedWithStandards';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19013', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'CourseAlignedWithStandards';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'CourseAlignedWithStandards';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The five-digit SCED code. The first two-digits of the code represent the Course Subject Area and the next three digits identify the course number. These identifiers are fairly general but provide enough specificity to identify the course''s topic and to distinguish it from other courses in that subject area.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'SCEDCourseCode';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'School Courses for the Exchange of Data Course Code', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'SCEDCourseCode';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001517', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'SCEDCourseCode';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20490', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'SCEDCourseCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'SCEDCourseCode';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Department with jurisdiction over this course.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'CourseDepartmentName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Course Department Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'CourseDepartmentName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001549', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'CourseDepartmentName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20525', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'CourseDepartmentName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'CourseDepartmentName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of credits or units of value available for the completion of a course in addition to Carnegie Units.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'RefAdditionalCreditTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Additional Credit Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'RefAdditionalCreditTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000596', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'RefAdditionalCreditTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19589', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'RefAdditionalCreditTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'RefAdditionalCreditTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of credits or units of value awarded for the completion of a course.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'RefCreditTypeEarnedId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Credit Unit Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'RefCreditTypeEarnedId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000072', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'RefCreditTypeEarnedId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19072', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'RefCreditTypeEarnedId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'RefCreditTypeEarnedId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indicator of whether or not this course being described is included in the computation of the student’s Grade Point Average (GPA).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'RefCourseGPAApplicabilityId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Course Grade Point Average Applicability', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'RefCourseGPAApplicabilityId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000060', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'RefCourseGPAApplicabilityId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19060', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'RefCourseGPAApplicabilityId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'RefCourseGPAApplicabilityId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of the standard curriculum used for this course.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'RefCurriculumFrameworkTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Curriculum Framework Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'RefCurriculumFrameworkTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000712', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'RefCurriculumFrameworkTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19688', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'RefCurriculumFrameworkTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'RefCurriculumFrameworkTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N' The course''s level of rigor.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'RefSCEDCourseLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'School Courses for the Exchange of Data Course Level', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'RefSCEDCourseLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001516', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'RefSCEDCourseLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20488', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'RefSCEDCourseLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'RefSCEDCourseLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The intended major subject area of the education course.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'RefSCEDCourseSubjectAreaId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'School Courses for the Exchange of Data Course Subject Area', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'RefSCEDCourseSubjectAreaId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001518', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'RefSCEDCourseSubjectAreaId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20491', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'RefSCEDCourseSubjectAreaId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'RefSCEDCourseSubjectAreaId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The career cluster that defines the industry or occupational focus which may be associated with a career pathways program, plan of study, or course.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'RefCareerClusterId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Career Cluster', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'RefCareerClusterId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001288', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'RefCareerClusterId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20254', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'RefCareerClusterId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'RefCareerClusterId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The five-digit SCED code. The first two-digits of the code represent the Course Subject Area and the next three digits identify the course number. These identifiers are fairly general but provide enough specificity to identify the course''s topic and to distinguish it from other courses in that subject area.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'RefSCEDCourseCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'School Courses for the Exchange of Data Course Code', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'RefSCEDCourseCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001517', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'RefSCEDCourseCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=22490', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'RefSCEDCourseCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteCourse', @level2type = N'COLUMN', @level2name = N'RefSCEDCourseCodeId';

