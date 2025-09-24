CREATE TABLE [dbo].[PsCourse] (
    [PsCourseId]                    INT           IDENTITY (1, 1) NOT NULL,
    [CourseId]                      INT           NOT NULL,
    [CourseNumber]                  NVARCHAR (30) NULL,
    [OriginalCourseIdentifier]      NVARCHAR (40) NULL,
    [OverrideSchoolCourseNumber]    NVARCHAR (30) NULL,
    [NCAAEligibilityInd]            INT           NULL,
    [RefCourseCreditBasisTypeId]    INT           NULL,
    [RefCourseCreditLevelTypeId]    INT           NULL,
    [RefNCESCollegeCourseMapCodeId] INT           NULL,
    [RefCipCodeId]                  INT           NULL,
    [RecordStartDateTime]           DATETIME      NULL,
    [RecordEndDateTime]             DATETIME      NULL,
    [RecordStatusId]                INT           NULL,
    [DataCollectionId]              INT           NULL,
    CONSTRAINT [PK_PsCourse] PRIMARY KEY CLUSTERED ([PsCourseId] ASC),
    CONSTRAINT [FK_PsCourse_Course] FOREIGN KEY ([CourseId]) REFERENCES [dbo].[Course] ([CourseId]),
    CONSTRAINT [FK_PsCourse_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_PsCourse_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_PsCourse_RefCipCode] FOREIGN KEY ([RefCipCodeId]) REFERENCES [dbo].[RefCipCode] ([RefCipCodeId]),
    CONSTRAINT [FK_PsCourse_RefCourseCreditBasisType] FOREIGN KEY ([RefCourseCreditBasisTypeId]) REFERENCES [dbo].[RefCourseCreditBasisType] ([RefCourseCreditBasisTypeId]),
    CONSTRAINT [FK_PsCourse_RefCourseCreditLevelType] FOREIGN KEY ([RefCourseCreditLevelTypeId]) REFERENCES [dbo].[RefCourseCreditLevelType] ([RefCourseCreditLevelTypeId]),
    CONSTRAINT [FK_PsCourse_RefNCESCollegeCourseMapCode] FOREIGN KEY ([RefNCESCollegeCourseMapCodeId]) REFERENCES [dbo].[RefNCESCollegeCourseMapCode] ([RefNCESCollegeCourseMapCodeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The organization of subject matter and related learning experiences provided for the instruction of students on a regular or systematic basis, usually for a predetermined period of time (e.g., a semester or two-week workshop) to an individual or group of students (e.g., a class). ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsCourse';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsCourse';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The official reference number portion of a course identifier.  This number normally designates the level of the course as well as the level of the individual expected to enroll in the course.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsCourse', @level2type = N'COLUMN', @level2name = N'CourseNumber';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Course Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsCourse', @level2type = N'COLUMN', @level2name = N'CourseNumber';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001314', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsCourse', @level2type = N'COLUMN', @level2name = N'CourseNumber';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20280', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsCourse', @level2type = N'COLUMN', @level2name = N'CourseNumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsCourse', @level2type = N'COLUMN', @level2name = N'CourseNumber';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The course identifier as it was listed when the credit was earned (e.g. before a system conversion) to show consistency between present transcripts and older ones.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsCourse', @level2type = N'COLUMN', @level2name = N'OriginalCourseIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Original Course Identifier', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsCourse', @level2type = N'COLUMN', @level2name = N'OriginalCourseIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001420', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsCourse', @level2type = N'COLUMN', @level2name = N'OriginalCourseIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20389', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsCourse', @level2type = N'COLUMN', @level2name = N'OriginalCourseIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsCourse', @level2type = N'COLUMN', @level2name = N'OriginalCourseIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of the way an academic course was identified at an educational institution.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsCourse', @level2type = N'COLUMN', @level2name = N'OverrideSchoolCourseNumber';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Override School Course Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsCourse', @level2type = N'COLUMN', @level2name = N'OverrideSchoolCourseNumber';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001422', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsCourse', @level2type = N'COLUMN', @level2name = N'OverrideSchoolCourseNumber';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20391', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsCourse', @level2type = N'COLUMN', @level2name = N'OverrideSchoolCourseNumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsCourse', @level2type = N'COLUMN', @level2name = N'OverrideSchoolCourseNumber';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication that the course is approved for determining NCAA eligibility.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsCourse', @level2type = N'COLUMN', @level2name = N'NCAAEligibilityInd';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'National Collegiate Athletic Association Eligibility', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsCourse', @level2type = N'COLUMN', @level2name = N'NCAAEligibilityInd';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001413', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsCourse', @level2type = N'COLUMN', @level2name = N'NCAAEligibilityInd';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20382', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsCourse', @level2type = N'COLUMN', @level2name = N'NCAAEligibilityInd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsCourse', @level2type = N'COLUMN', @level2name = N'NCAAEligibilityInd';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of enrollment associated with the credit hours for the course.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsCourse', @level2type = N'COLUMN', @level2name = N'RefCourseCreditBasisTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Course Credit Basis Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsCourse', @level2type = N'COLUMN', @level2name = N'RefCourseCreditBasisTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001303', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsCourse', @level2type = N'COLUMN', @level2name = N'RefCourseCreditBasisTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20269', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsCourse', @level2type = N'COLUMN', @level2name = N'RefCourseCreditBasisTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsCourse', @level2type = N'COLUMN', @level2name = N'RefCourseCreditBasisTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The level of credit associated with the credit hours earned for the course.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsCourse', @level2type = N'COLUMN', @level2name = N'RefCourseCreditLevelTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Course Credit Level Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsCourse', @level2type = N'COLUMN', @level2name = N'RefCourseCreditLevelTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001304', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsCourse', @level2type = N'COLUMN', @level2name = N'RefCourseCreditLevelTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20270', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsCourse', @level2type = N'COLUMN', @level2name = N'RefCourseCreditLevelTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsCourse', @level2type = N'COLUMN', @level2name = N'RefCourseCreditLevelTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A taxonomy system for coding postsecondary courses in NCES research studies.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsCourse', @level2type = N'COLUMN', @level2name = N'RefNCESCollegeCourseMapCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'NCES College Course Map Code', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsCourse', @level2type = N'COLUMN', @level2name = N'RefNCESCollegeCourseMapCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001414', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsCourse', @level2type = N'COLUMN', @level2name = N'RefNCESCollegeCourseMapCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20383', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsCourse', @level2type = N'COLUMN', @level2name = N'RefNCESCollegeCourseMapCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsCourse', @level2type = N'COLUMN', @level2name = N'RefNCESCollegeCourseMapCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A six-digit code in the form xx.xxxx that identifies instructional program specialties within educational institutions.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsCourse', @level2type = N'COLUMN', @level2name = N'RefCipCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Classification of Instructional Program Code', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsCourse', @level2type = N'COLUMN', @level2name = N'RefCipCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000043', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsCourse', @level2type = N'COLUMN', @level2name = N'RefCipCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19043', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsCourse', @level2type = N'COLUMN', @level2name = N'RefCipCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsCourse', @level2type = N'COLUMN', @level2name = N'RefCipCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsCourse', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsCourse', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsCourse', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsCourse', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsCourse', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsCourse', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsCourse', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsCourse', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsCourse', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

