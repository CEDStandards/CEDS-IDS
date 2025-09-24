CREATE TABLE [dbo].[K12StudentCourseSection] (
    [K12StudentCourseSectionId]              INT            IDENTITY (1, 1) NOT NULL,
    [OrganizationPersonRoleId]               INT            NOT NULL,
    [GradeEarned]                            NVARCHAR (15)  NULL,
    [GradeValueQualifier]                    NVARCHAR (1000) NULL,
    [NumberOfCreditsAttempted]               DECIMAL (9, 2) NULL,
    [NumberOfCreditsEarned]                  DECIMAL (9, 2) NULL,
    [TuitionFunded]                          BIT            NULL,
    [ExitWithdrawalDate]                     DATE           NULL,
    [RefCourseRepeatCodeId]                  INT            NULL,
    [RefCourseSectionEnrollmentStatusTypeId] INT            NULL,
    [RefCourseSectionEntryTypeId]            INT            NULL,
    [RefCourseSectionExitTypeId]             INT            NULL,
    [RefExitOrWithdrawalStatusId]            INT            NULL,
    [RefGradeLevelWhenCourseTakenId]         INT            NULL,
    [RefCreditTypeEarnedId]                  INT            NULL,
    [RefAdditionalCreditTypeId]              INT            NULL,
    [RefPreAndPostTestIndicatorId]           INT            NULL,
    [RefProgressLevelId]                     INT            NULL,
    [RefCourseGPAApplicabilityId]            INT            NULL,
    [RecordStartDateTime]                    DATETIME       NULL,
    [RecordEndDateTime]                      DATETIME       NULL,
    [RecordStatusId]                         INT            NULL,
    [DataCollectionId]                       INT            NULL,
    CONSTRAINT [PK_K12StudentCourseSection] PRIMARY KEY CLUSTERED ([K12StudentCourseSectionId] ASC),
    CONSTRAINT [FK_K12StudentCourseSection _RefCourseGpaApplicability] FOREIGN KEY ([RefCourseGPAApplicabilityId]) REFERENCES [dbo].[RefCourseGpaApplicability] ([RefCourseGPAApplicabilityId]),
    CONSTRAINT [FK_K12StudentCourseSection_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_K12StudentCourseSection_OrganizationPerson] FOREIGN KEY ([OrganizationPersonRoleId]) REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_K12StudentCourseSection_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_K12StudentCourseSection_RefAdditionalCreditType] FOREIGN KEY ([RefAdditionalCreditTypeId]) REFERENCES [dbo].[RefAdditionalCreditType] ([RefAdditionalCreditTypeId]),
    CONSTRAINT [FK_K12StudentCourseSection_RefCourseRepeatCode] FOREIGN KEY ([RefCourseRepeatCodeId]) REFERENCES [dbo].[RefCourseRepeatCode] ([RefCourseRepeatCodeId]),
    CONSTRAINT [FK_K12StudentCourseSection_RefCourseSectionEnrollmentStatusType] FOREIGN KEY ([RefCourseSectionEnrollmentStatusTypeId]) REFERENCES [dbo].[RefCourseSectionEnrollmentStatusType] ([RefCourseSectionEnrollmentStatusTypeId]),
    CONSTRAINT [FK_K12StudentCourseSection_RefCourseSectionEntryType] FOREIGN KEY ([RefCourseSectionEntryTypeId]) REFERENCES [dbo].[RefCourseSectionEntryType] ([RefCourseSectionEntryTypeId]),
    CONSTRAINT [FK_K12StudentCourseSection_RefCourseSectionExitType] FOREIGN KEY ([RefCourseSectionExitTypeId]) REFERENCES [dbo].[RefCourseSectionExitType] ([RefCourseSectionExitTypeId]),
    CONSTRAINT [FK_K12StudentCourseSection_RefCreditTypeEarned] FOREIGN KEY ([RefCreditTypeEarnedId]) REFERENCES [dbo].[RefCreditTypeEarned] ([RefCreditTypeEarnedId]),
    CONSTRAINT [FK_K12StudentCourseSection_RefExitOrWithdrawalStatus] FOREIGN KEY ([RefExitOrWithdrawalStatusId]) REFERENCES [dbo].[RefExitOrWithdrawalStatus] ([RefExitOrWithdrawalStatusId]),
    CONSTRAINT [FK_K12StudentCourseSection_RefGradeLevel] FOREIGN KEY ([RefGradeLevelWhenCourseTakenId]) REFERENCES [dbo].[RefGradeLevel] ([RefGradeLevelId]),
    CONSTRAINT [FK_K12StudentCourseSection_RefPreAndPostTestIndicator] FOREIGN KEY ([RefPreAndPostTestIndicatorId]) REFERENCES [dbo].[RefPreAndPostTestIndicator] ([RefPreAndPostTestIndicatorId]),
    CONSTRAINT [FK_K12StudentCourseSection_RefProgressLevel] FOREIGN KEY ([RefProgressLevelId]) REFERENCES [dbo].[RefProgressLevel] ([RefProgressLevelId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The attributes for a K12 student enrolled in a course section.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Inherited surrogate key from OrganizationPersonRole', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'OrganizationPersonRoleId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'OrganizationPersonRoleId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A final indicator of student performance in a course section as submitted by the instructor.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'GradeEarned';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Student Course Section Grade Earned', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'GradeEarned';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000124', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'GradeEarned';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19124', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'GradeEarned';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'GradeEarned';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The scale of equivalents, if applicable, for grades awarded as indicators of performance in schoolwork. For example, numerical equivalents for letter grades used in determining a student''s Grade Point Average (A=4, B=3, C=2, D=1 in a four-point system) or letter equivalents for percentage grades (90-100%=A, 80-90%=B, etc.)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'GradeValueQualifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Grade Value Qualifier', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'GradeValueQualifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000616', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'GradeValueQualifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19609', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'GradeValueQualifier';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'GradeValueQualifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The number of credits that a student can earn for enrolling in and completing a given course.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'NumberOfCreditsAttempted';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Number of Credits Attempted', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'NumberOfCreditsAttempted';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000199', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'NumberOfCreditsAttempted';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19199', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'NumberOfCreditsAttempted';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'NumberOfCreditsAttempted';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The number of credits an individual earns by the successful completion of a course.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'NumberOfCreditsEarned';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Number of Credits Earned', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'NumberOfCreditsEarned';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000200', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'NumberOfCreditsEarned';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19200', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'NumberOfCreditsEarned';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'NumberOfCreditsEarned';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Indicates that tuition for person''s participation in a program, service, or course is funded or partially funded by an external grant program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'TuitionFunded';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Tuition Funded', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'TuitionFunded';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001575', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'TuitionFunded';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20554', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'TuitionFunded';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'TuitionFunded';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The year, month and day of the first day after the date of a person''s last enrollment in a course section.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'ExitWithdrawalDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Course Section Exit Withdrawal Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'ExitWithdrawalDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000651', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'ExitWithdrawalDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19653', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'ExitWithdrawalDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'ExitWithdrawalDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Indicates that an academic course has been repeated by a student and how that repeat is to be computed in the student''s academic grade average.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'RefCourseRepeatCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Course Repeat Code', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'RefCourseRepeatCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000065', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'RefCourseRepeatCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19065', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'RefCourseRepeatCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'RefCourseRepeatCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The status related to a student enrollment in an instance of a course.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'RefCourseSectionEnrollmentStatusTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Course Section Enrollment Status Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'RefCourseSectionEnrollmentStatusTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000976', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'RefCourseSectionEnrollmentStatusTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19977', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'RefCourseSectionEnrollmentStatusTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'RefCourseSectionEnrollmentStatusTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The process by which a student enters a school (Course Section) during a given academic session.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'RefCourseSectionEntryTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Course Section Entry Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'RefCourseSectionEntryTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000650', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'RefCourseSectionEntryTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19652', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'RefCourseSectionEntryTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'RefCourseSectionEntryTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The circumstances under which the student exited from membership in a course section.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'RefCourseSectionExitTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Course Section Exit Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'RefCourseSectionExitTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000652', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'RefCourseSectionExitTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19654', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'RefCourseSectionExitTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'RefCourseSectionExitTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication as to whether an instance of student exit/withdrawal is considered to be of a permanent or temporary nature.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'RefExitOrWithdrawalStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Exit or Withdrawal Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'RefExitOrWithdrawalStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000108', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'RefExitOrWithdrawalStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19108', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'RefExitOrWithdrawalStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'RefExitOrWithdrawalStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Student''s grade level at time of course.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'RefGradeLevelWhenCourseTakenId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Grade Level When Course Taken', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'RefGradeLevelWhenCourseTakenId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000125', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'RefGradeLevelWhenCourseTakenId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19125', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'RefGradeLevelWhenCourseTakenId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'RefGradeLevelWhenCourseTakenId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of credits or units of value awarded for the completion of a course.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'RefCreditTypeEarnedId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Credit Unit Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'RefCreditTypeEarnedId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000072', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'RefCreditTypeEarnedId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19072', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'RefCreditTypeEarnedId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'RefCreditTypeEarnedId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of credits or units of value available for the completion of a course in addition to Carnegie Units.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'RefAdditionalCreditTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Additional Credit Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'RefAdditionalCreditTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000596', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'RefAdditionalCreditTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19589', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'RefAdditionalCreditTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'RefAdditionalCreditTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether students took both a pre-test and a post-test to measure academic improvement.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'RefPreAndPostTestIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Pre and Post Test Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'RefPreAndPostTestIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000571', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'RefPreAndPostTestIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19563', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'RefPreAndPostTestIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'RefPreAndPostTestIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The amount of progress shown in academic subjects.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'RefProgressLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Progress Level', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'RefProgressLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000561', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'RefProgressLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19553', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'RefProgressLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'RefProgressLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indicator of whether or not this course being described is included in the computation of the student’s Grade Point Average (GPA).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'RefCourseGPAApplicabilityId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Course Grade Point Average Applicability', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'RefCourseGPAApplicabilityId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000060', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'RefCourseGPAApplicabilityId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19060', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'RefCourseGPAApplicabilityId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'RefCourseGPAApplicabilityId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCourseSection', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

