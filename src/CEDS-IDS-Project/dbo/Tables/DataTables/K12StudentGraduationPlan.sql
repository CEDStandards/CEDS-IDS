CREATE TABLE [dbo].[K12StudentGraduationPlan] (
    [K12StudentGraduationPlanId]     INT            IDENTITY (1, 1) NOT NULL,
    [OrganizationPersonRoleId]       INT            NOT NULL,
    [K12CourseId]                    INT            NOT NULL,
    [CreditsRequired]                DECIMAL (9, 2) NULL,
    [RefSCEDCourseSubjectAreaId]     INT            NULL,
    [RefGradeLevelWhenCourseTakenId] INT            NULL,
    [RecordStartDateTime]            DATETIME       NULL,
    [RecordEndDateTime]              DATETIME       NULL,
    [RecordStatusId]                 INT            NULL,
    [DataCollectionId]               INT            NULL,
    CONSTRAINT [PK_K12StudentGraduationPlan] PRIMARY KEY CLUSTERED ([K12StudentGraduationPlanId] ASC),
    CONSTRAINT [FK_K12StudentGraduationPlan_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_K12StudentGraduationPlan_K12Course] FOREIGN KEY ([K12CourseId]) REFERENCES [dbo].[K12Course] ([K12CourseId]),
    CONSTRAINT [FK_K12StudentGraduationPlan_OrganizationPerson] FOREIGN KEY ([OrganizationPersonRoleId]) REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]),
    CONSTRAINT [FK_K12StudentGraduationPlan_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_K12StudentGraduationPlan_RefGradeLevel] FOREIGN KEY ([RefGradeLevelWhenCourseTakenId]) REFERENCES [dbo].[RefGradeLevel] ([RefGradeLevelId]),
    CONSTRAINT [FK_K12StudentGraduationPlan_RefSCEDCourseSubjectArea] FOREIGN KEY ([RefSCEDCourseSubjectAreaId]) REFERENCES [dbo].[RefSCEDCourseSubjectArea] ([RefSCEDCourseSubjectAreaId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The plan of courses a K-12 student will take to graduate from high school. ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentGraduationPlan';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentGraduationPlan';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Inherited surrogate key from OrganizationPersonRole', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentGraduationPlan', @level2type = N'COLUMN', @level2name = N'OrganizationPersonRoleId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentGraduationPlan', @level2type = N'COLUMN', @level2name = N'OrganizationPersonRoleId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - K12Course.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentGraduationPlan', @level2type = N'COLUMN', @level2name = N'K12CourseId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The total number of credits required for a student to graduate from the school of enrollment or complete a program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentGraduationPlan', @level2type = N'COLUMN', @level2name = N'CreditsRequired';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Credits Required', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentGraduationPlan', @level2type = N'COLUMN', @level2name = N'CreditsRequired';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001574', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentGraduationPlan', @level2type = N'COLUMN', @level2name = N'CreditsRequired';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20553', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentGraduationPlan', @level2type = N'COLUMN', @level2name = N'CreditsRequired';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentGraduationPlan', @level2type = N'COLUMN', @level2name = N'CreditsRequired';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The intended major subject area of the education course.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentGraduationPlan', @level2type = N'COLUMN', @level2name = N'RefSCEDCourseSubjectAreaId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'School Courses for the Exchange of Data Course Subject Area', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentGraduationPlan', @level2type = N'COLUMN', @level2name = N'RefSCEDCourseSubjectAreaId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001518', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentGraduationPlan', @level2type = N'COLUMN', @level2name = N'RefSCEDCourseSubjectAreaId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20491', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentGraduationPlan', @level2type = N'COLUMN', @level2name = N'RefSCEDCourseSubjectAreaId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentGraduationPlan', @level2type = N'COLUMN', @level2name = N'RefSCEDCourseSubjectAreaId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Student''s grade level at time of course.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentGraduationPlan', @level2type = N'COLUMN', @level2name = N'RefGradeLevelWhenCourseTakenId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Grade Level When Course Taken', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentGraduationPlan', @level2type = N'COLUMN', @level2name = N'RefGradeLevelWhenCourseTakenId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000125', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentGraduationPlan', @level2type = N'COLUMN', @level2name = N'RefGradeLevelWhenCourseTakenId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19125', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentGraduationPlan', @level2type = N'COLUMN', @level2name = N'RefGradeLevelWhenCourseTakenId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentGraduationPlan', @level2type = N'COLUMN', @level2name = N'RefGradeLevelWhenCourseTakenId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentGraduationPlan', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentGraduationPlan', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentGraduationPlan', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentGraduationPlan', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentGraduationPlan', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentGraduationPlan', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentGraduationPlan', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentGraduationPlan', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentGraduationPlan', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

