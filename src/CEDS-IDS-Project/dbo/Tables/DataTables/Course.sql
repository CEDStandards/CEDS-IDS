CREATE TABLE [dbo].[Course] (
    [CourseId]                            INT            IDENTITY (1, 1) NOT NULL,
    [OrganizationId]                      INT            NOT NULL,
    [Description]                         NVARCHAR (60)  NULL,
    [SubjectAbbreviation]                 NVARCHAR (50)  NULL,
    [SCEDSequenceOfCourse]                NVARCHAR (50)  NULL,
    [InstructionalMinutes]                INT            NULL,
    [CreditValue]                         DECIMAL (9, 2) NULL,
    [CertificationDescription]            NVARCHAR (300) NULL,
    [RepeatabilityMaximumNumber]          INT            NULL,
    [RefCourseLevelCharacteristicsId]     INT            NULL,
    [RefCourseCreditUnitId]               INT            NULL,
    [RefInstructionLanguageId]            INT            NULL,
    [RefCourseApplicableEducationLevelId] INT            NULL,
    [RecordStartDateTime]                 DATETIME       NULL,
    [RecordEndDateTime]                   DATETIME       NULL,
    [RecordStatusId]                      INT            NULL,
    [DataCollectionId]                    INT            NULL,
    [CourseLevelApprovalIndicator]        BIT            NULL,
    [RefCourseLevelTypeId]                INT            NULL,
    [SequenceOfCourse]                    NVARCHAR (10)  NULL,
    [RefPerkinsNonTraditionalTypeId]       INT            NULL,
    CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED ([CourseId] ASC),
    CONSTRAINT [FK_Course_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_Course_Organization] FOREIGN KEY ([OrganizationId]) REFERENCES [dbo].[Organization] ([OrganizationId]),
    CONSTRAINT [FK_Course_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_Course_RefCourseApplicableEducationLevel] FOREIGN KEY ([RefCourseApplicableEducationLevelId]) REFERENCES [dbo].[RefCourseApplicableEducationLevel] ([RefCourseApplicableEducationLevelId]),
    CONSTRAINT [FK_Course_RefCourseCreditUnit] FOREIGN KEY ([RefCourseCreditUnitId]) REFERENCES [dbo].[RefCourseCreditUnit] ([RefCourseCreditUnitId]),
    CONSTRAINT [FK_Course_RefPerkinsNonTraditionalType] FOREIGN KEY ([RefPerkinsNonTraditionalTypeId]) REFERENCES [dbo].[RefPerkinsNonTraditionalType] ([RefPerkinsNonTraditionalTypeId]),
    CONSTRAINT [FK_Course_RefCourseLevelCharacteristic] FOREIGN KEY ([RefCourseLevelCharacteristicsId]) REFERENCES [dbo].[RefCourseLevelCharacteristic] ([RefCourseLevelCharacteristicId]),
    CONSTRAINT [FK_Course_RefCourseLevelType] FOREIGN KEY ([RefCourseLevelTypeId]) REFERENCES [dbo].[RefCourseLevelType] ([RefCourseLevelTypeId]),
    CONSTRAINT [FK_Course_RefLanguage] FOREIGN KEY ([RefInstructionLanguageId]) REFERENCES [dbo].[RefLanguage] ([RefLanguageId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The organization of subject matter and related learning experiences provided for the instruction of students on a regular or systematic basis, usually for a predetermined period of time.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate key from Organization.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'OrganizationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A description of the course content and/or goals. Reference may be made to state or national content standards.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Course Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000517', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19508', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The alphabetic abbreviation of the academic department or discipline offering the course. It is one part of the total course identifier number. ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'SubjectAbbreviation';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Course Subject Abbreviation', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'SubjectAbbreviation';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000066', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'SubjectAbbreviation';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19066', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'SubjectAbbreviation';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'SubjectAbbreviation';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Where a specific course lies when it is part of a consecutive sequence of courses. This element should be interpreted as "part ''n'' of ''m'' parts.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'SCEDSequenceOfCourse';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'School Courses for the Exchange of Data Sequence of Course', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'SCEDSequenceOfCourse';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000250', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'SCEDSequenceOfCourse';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19250', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'SCEDSequenceOfCourse';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'SCEDSequenceOfCourse';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The total number of instruction minutes in a given session, as determined by time in class, time on task (e.g., engaged in a class), or as estimated by a qualified course designer.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'InstructionalMinutes';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Instructional Minutes', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'InstructionalMinutes';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000499', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'InstructionalMinutes';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19490', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'InstructionalMinutes';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'InstructionalMinutes';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The amount of credit available to the student who successfully meets the objectives of the course or learning opportunity based on the units defined by Credit Unit Type.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'CreditValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Credit Value', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'CreditValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000058', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'CreditValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19058', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'CreditValue';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'CreditValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A description of the certification or recognition associated with this course (ex. Networking, CAD, etc.)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'CertificationDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Course Certification Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'CertificationDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001302', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'CertificationDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20268', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'CertificationDescription';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'CertificationDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The maximum number of times the course may be taken or completed for credit.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'RepeatabilityMaximumNumber';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Course Repeatability Maximum Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'RepeatabilityMaximumNumber';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001667', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'RepeatabilityMaximumNumber';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20648', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'RepeatabilityMaximumNumber';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of the general nature and difficulty of instruction provided throughout a course.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'RefCourseLevelCharacteristicsId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Course Level Characteristic', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'RefCourseLevelCharacteristicsId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000061', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'RefCourseLevelCharacteristicsId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19061', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'RefCourseLevelCharacteristicsId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'RefCourseLevelCharacteristicsId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of credit (unit, semester, or quarter) associated with the credit hours earned for the course. ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'RefCourseCreditUnitId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Course Credit Units', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'RefCourseCreditUnitId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000057', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'RefCourseCreditUnitId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19057', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'RefCourseCreditUnitId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'RefCourseCreditUnitId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The language of instruction, other than English, used in the program or course.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'RefInstructionLanguageId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Instruction Language', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'RefInstructionLanguageId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000448', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'RefInstructionLanguageId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19438', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'RefInstructionLanguageId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'RefInstructionLanguageId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The education level, grade level or primary instructional level at which a course is intended.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'RefCourseApplicableEducationLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Course Applicable Education Level', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'RefCourseApplicableEducationLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001301', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'RefCourseApplicableEducationLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20267', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'RefCourseApplicableEducationLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'RefCourseApplicableEducationLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication that there are school or program developed requirements for student participation in the course.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'CourseLevelApprovalIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Course Level Approval Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'CourseLevelApprovalIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001994', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'CourseLevelApprovalIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=22975', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'CourseLevelApprovalIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'CourseLevelApprovalIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The level of work which is reflected in the credits associated with the academic course being described or the level of the typical individual taking the academic course.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'RefCourseLevelTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Course Level Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'RefCourseLevelTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001312', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'RefCourseLevelTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=22278', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'RefCourseLevelTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'RefCourseLevelTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Where a specific course lies when it is part of a consecutive sequence of courses. ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'SequenceOfCourse';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Sequence of Course', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'SequenceOfCourse';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002023', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'SequenceOfCourse';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25085', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'SequenceOfCourse';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Course', @level2type = N'COLUMN', @level2name = N'SequenceOfCourse';

