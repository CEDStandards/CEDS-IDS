CREATE TABLE [dbo].[PsSection] (
    [PsSectionId]                           INT       IDENTITY (1, 1) NOT NULL,
    [CourseSectionId]                       INT       NOT NULL,
    [GradeValueQualifier]                   NCHAR (2) NULL,
    [RefCipCodeId]                          INT       NULL,
    [RefCourseGPAApplicabilityId]           INT       NULL,
    [RefCourseHonorsTypeId]                 INT       NULL,
    [RefCourseInstructionMethodId]          INT       NULL,
    [RefCourseLevelTypeId]                  INT       NULL,
    [RefDevelopmentalEducationTypeId]       INT       NULL,
    [RefWorkbasedLearningOpportunityTypeId] INT       NULL,
    [RecordStartDateTime]                   DATETIME  NULL,
    [RecordEndDateTime]                     DATETIME  NULL,
    [RecordStatusId]                        INT       NULL,
    [DataCollectionId]                      INT       NULL,
    CONSTRAINT [PK_PsSection] PRIMARY KEY CLUSTERED ([PsSectionId] ASC),
    CONSTRAINT [FK_PsSection _RefCourseGpaApplicability] FOREIGN KEY ([RefCourseGPAApplicabilityId]) REFERENCES [dbo].[RefCourseGpaApplicability] ([RefCourseGPAApplicabilityId]),
    CONSTRAINT [FK_PsSection _RefCourseHonorsType] FOREIGN KEY ([RefCourseHonorsTypeId]) REFERENCES [dbo].[RefCourseHonorsType] ([RefCourseHonorsTypeId]),
    CONSTRAINT [FK_PsSection _RefCourseInstructionMethod] FOREIGN KEY ([RefCourseInstructionMethodId]) REFERENCES [dbo].[RefCourseInstructionMethod] ([RefCourseInstructionMethodId]),
    CONSTRAINT [FK_PsSection _RefCourseLevelType] FOREIGN KEY ([RefCourseLevelTypeId]) REFERENCES [dbo].[RefCourseLevelType] ([RefCourseLevelTypeId]),
    CONSTRAINT [FK_PsSection_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_PsSection_Organization] FOREIGN KEY ([CourseSectionId]) REFERENCES [dbo].[CourseSection] ([CourseSectionId]),
    CONSTRAINT [FK_PsSection_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_PsSection_RefCipCode] FOREIGN KEY ([RefCipCodeId]) REFERENCES [dbo].[RefCipCode] ([RefCipCodeId]),
    CONSTRAINT [FK_PsSection_RefDevelopmentalEducationType] FOREIGN KEY ([RefDevelopmentalEducationTypeId]) REFERENCES [dbo].[RefDevelopmentalEducationType] ([RefDevelopmentalEducationTypeId]),
    CONSTRAINT [FK_PsSection_RefWorkbasedLearningOpportunityType] FOREIGN KEY ([RefWorkbasedLearningOpportunityTypeId]) REFERENCES [dbo].[RefWorkbasedLearningOpportunityType] ([RefWorkbasedLearningOpportunityTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information specific to a postsecondary course section as an extension of CourseSection.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsSection';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsSection';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The grading scale used by an academic educational institution for an academic course.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsSection', @level2type = N'COLUMN', @level2name = N'GradeValueQualifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Course Academic Grade Scale Code', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsSection', @level2type = N'COLUMN', @level2name = N'GradeValueQualifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001298', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsSection', @level2type = N'COLUMN', @level2name = N'GradeValueQualifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20264', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsSection', @level2type = N'COLUMN', @level2name = N'GradeValueQualifier';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsSection', @level2type = N'COLUMN', @level2name = N'GradeValueQualifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A six-digit code in the form xx.xxxx that identifies instructional program specialties within educational institutions.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsSection', @level2type = N'COLUMN', @level2name = N'RefCipCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Classification of Instructional Program Code', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsSection', @level2type = N'COLUMN', @level2name = N'RefCipCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000043', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsSection', @level2type = N'COLUMN', @level2name = N'RefCipCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19043', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsSection', @level2type = N'COLUMN', @level2name = N'RefCipCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsSection', @level2type = N'COLUMN', @level2name = N'RefCipCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indicator of whether or not this course being described is included in the computation of the student’s Grade Point Average (GPA).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsSection', @level2type = N'COLUMN', @level2name = N'RefCourseGPAApplicabilityId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Course Grade Point Average Applicability', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsSection', @level2type = N'COLUMN', @level2name = N'RefCourseGPAApplicabilityId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000060', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsSection', @level2type = N'COLUMN', @level2name = N'RefCourseGPAApplicabilityId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19060', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsSection', @level2type = N'COLUMN', @level2name = N'RefCourseGPAApplicabilityId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsSection', @level2type = N'COLUMN', @level2name = N'RefCourseGPAApplicabilityId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication that the course is or can be counted as an honors course.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsSection', @level2type = N'COLUMN', @level2name = N'RefCourseHonorsTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Course Honors Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsSection', @level2type = N'COLUMN', @level2name = N'RefCourseHonorsTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001307', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsSection', @level2type = N'COLUMN', @level2name = N'RefCourseHonorsTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20273', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsSection', @level2type = N'COLUMN', @level2name = N'RefCourseHonorsTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsSection', @level2type = N'COLUMN', @level2name = N'RefCourseHonorsTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The primary method of instruction used for the course.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsSection', @level2type = N'COLUMN', @level2name = N'RefCourseInstructionMethodId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Course Instruction Method', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsSection', @level2type = N'COLUMN', @level2name = N'RefCourseInstructionMethodId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001308', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsSection', @level2type = N'COLUMN', @level2name = N'RefCourseInstructionMethodId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20274', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsSection', @level2type = N'COLUMN', @level2name = N'RefCourseInstructionMethodId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsSection', @level2type = N'COLUMN', @level2name = N'RefCourseInstructionMethodId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The level of work which is reflected in the credits associated with the academic course being described or the level of the typical individual taking the academic course.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsSection', @level2type = N'COLUMN', @level2name = N'RefCourseLevelTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Course Level Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsSection', @level2type = N'COLUMN', @level2name = N'RefCourseLevelTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001312', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsSection', @level2type = N'COLUMN', @level2name = N'RefCourseLevelTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20278', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsSection', @level2type = N'COLUMN', @level2name = N'RefCourseLevelTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsSection', @level2type = N'COLUMN', @level2name = N'RefCourseLevelTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indicator of the category of developmental education.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsSection', @level2type = N'COLUMN', @level2name = N'RefDevelopmentalEducationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Developmental Education Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsSection', @level2type = N'COLUMN', @level2name = N'RefDevelopmentalEducationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001589', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsSection', @level2type = N'COLUMN', @level2name = N'RefDevelopmentalEducationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20568', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsSection', @level2type = N'COLUMN', @level2name = N'RefDevelopmentalEducationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsSection', @level2type = N'COLUMN', @level2name = N'RefDevelopmentalEducationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of work-based learning opportunity a student participated in.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsSection', @level2type = N'COLUMN', @level2name = N'RefWorkbasedLearningOpportunityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Work-based Learning Opportunity Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsSection', @level2type = N'COLUMN', @level2name = N'RefWorkbasedLearningOpportunityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001499', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsSection', @level2type = N'COLUMN', @level2name = N'RefWorkbasedLearningOpportunityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20471', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsSection', @level2type = N'COLUMN', @level2name = N'RefWorkbasedLearningOpportunityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsSection', @level2type = N'COLUMN', @level2name = N'RefWorkbasedLearningOpportunityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsSection', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsSection', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsSection', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsSection', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsSection', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsSection', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsSection', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsSection', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsSection', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

