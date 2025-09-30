CREATE TABLE [dbo].[PsStudentEnrollment] (
    [PSStudentEnrollmentId]                     INT            IDENTITY (1, 1) NOT NULL,
    [OrganizationPersonRoleId]                  INT            NOT NULL,
    [DegreeOrCertificateSeekingStudent]         BIT            NULL,
    [FirstTimePostsecondaryStudent]             BIT            NULL,
    [InitialEnrollmentTerm]                     NVARCHAR (30)  NULL,
    [InstructionalActivityHoursAttempted]       DECIMAL (9, 2) NULL,
    [InstructionalActivityHoursCompleted]       DECIMAL (9, 2) NULL,
    [HousingOnCampus]                           BIT            NULL,
    [FraternityParticipationStatus]             BIT            NULL,
    [SororityParticipationStatus]               BIT            NULL,
    [EntryDateIntoPostsecondary]                DATE           NULL,
    [DistanceEducationProgramEnrollmentInd]     BIT            NULL,
    [DoctoralCandidacyAdmitInd]                 BIT            NULL,
    [DoctoralCandidacyDate]                     DATE           NULL,
    [DoctoralExamTakenDate]                     DATE           NULL,
    [OralDefenseCompletedIndicator]             BIT            NULL,
    [OralDefenseDate]                           DATE           NULL,
    [PostsecondaryEnteringStudentInd]           BIT            NULL,
    [ThesisOrDissertationTitle]                 NVARCHAR (300) NULL,
    [RefPsEnrollmentTypeId]                     INT            NULL,
    [RefPsEnrollmentStatusId]                   INT            NULL,
    [RefPsStudentLevelId]                       INT            NULL,
    [RefPsEnrollmentAwardTypeId]                INT            NULL,
    [RefTransferReadyId]                        INT            NULL,
    [RefInstructionalActivityHoursId]           INT            NULL,
    [RefDistanceEducationCourseEnrollmentId]    INT            NULL,
    [RefDoctoralExamsRequiredCodeId]            INT            NULL,
    [RefGraduateOrDoctoralExamResultsStatusId]  INT            NULL,
    [RefDevelopmentalEducationReferralStatusId] INT            NULL,
    [RefDevelopmentalEducationTypeId]           INT            NULL,
    [RecordStartDateTime]                       DATETIME       NULL,
    [RecordEndDateTime]                         DATETIME       NULL,
    [RefPSExitOrWithdrawalTypeId]               INT            NULL,
    [DisplacedStudentStatus]                    BIT            NULL,
    [RecordStatusId]                            INT            NULL,
    [DataCollectionId]                          INT            NULL,
    CONSTRAINT [PK_PsStudentEnrollment] PRIMARY KEY CLUSTERED ([PSStudentEnrollmentId] ASC),
    CONSTRAINT [FK_PsStudentEnrollment_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_PsStudentEnrollment_OrganizationPersonRole] FOREIGN KEY ([OrganizationPersonRoleId]) REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]),
    CONSTRAINT [FK_PsStudentEnrollment_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_PsStudentEnrollment_RefDevelopmentalEducationReferralStatus] FOREIGN KEY ([RefDevelopmentalEducationReferralStatusId]) REFERENCES [dbo].[RefDevelopmentalEducationReferralStatus] ([RefDevelopmentalEducationReferralStatusId]),
    CONSTRAINT [FK_PsStudentEnrollment_RefDevelopmentalEducationType] FOREIGN KEY ([RefDevelopmentalEducationTypeId]) REFERENCES [dbo].[RefDevelopmentalEducationType] ([RefDevelopmentalEducationTypeId]),
    CONSTRAINT [FK_PsStudentEnrollment_RefDistanceEducationCourseEnr] FOREIGN KEY ([RefDistanceEducationCourseEnrollmentId]) REFERENCES [dbo].[RefDistanceEducationCourseEnrollment] ([RefDistanceEducationCourseEnrollmentId]),
    CONSTRAINT [FK_PsStudentEnrollment_RefDoctoralExamsRequiredCode] FOREIGN KEY ([RefDoctoralExamsRequiredCodeId]) REFERENCES [dbo].[RefDoctoralExamsRequiredCode] ([RefDoctoralExamsRequiredCodeId]),
    CONSTRAINT [FK_PsStudentEnrollment_RefGraduateOrDoctoralExamResultsStatus] FOREIGN KEY ([RefGraduateOrDoctoralExamResultsStatusId]) REFERENCES [dbo].[RefGraduateOrDoctoralExamResultsStatus] ([RefGraduateOrDoctoralExamResultsStatusId]),
    CONSTRAINT [FK_PsStudentEnrollment_RefInstructionalActivityHours] FOREIGN KEY ([RefInstructionalActivityHoursId]) REFERENCES [dbo].[RefInstructionalActivityHours] ([RefInstructionalActivityHoursId]),
    CONSTRAINT [FK_PsStudentEnrollment_RefPsEnrollmentAwardType] FOREIGN KEY ([RefPsEnrollmentAwardTypeId]) REFERENCES [dbo].[RefPsEnrollmentAwardType] ([RefPsEnrollmentAwardTypeId]),
    CONSTRAINT [FK_PsStudentEnrollment_RefPsEnrollmentStatus] FOREIGN KEY ([RefPsEnrollmentStatusId]) REFERENCES [dbo].[RefPsEnrollmentStatus] ([RefPsEnrollmentStatusId]),
    CONSTRAINT [FK_PsStudentEnrollment_RefPsEnrollmentType] FOREIGN KEY ([RefPsEnrollmentTypeId]) REFERENCES [dbo].[RefPsEnrollmentType] ([RefPsEnrollmentTypeId]),
    CONSTRAINT [FK_PsStudentEnrollment_RefPSExitOrWithdrawalType] FOREIGN KEY ([RefPSExitOrWithdrawalTypeId]) REFERENCES [dbo].[RefPSExitOrWithdrawalType] ([RefPSExitOrWithdrawalTypeId]),
    CONSTRAINT [FK_PsStudentEnrollment_RefPsStudentLevel] FOREIGN KEY ([RefPsStudentLevelId]) REFERENCES [dbo].[RefPsStudentLevel] ([RefPsStudentLevelId]),
    CONSTRAINT [FK_PsStudentEnrollment_RefTransferReady] FOREIGN KEY ([RefTransferReadyId]) REFERENCES [dbo].[RefTransferReady] ([RefTransferReadyId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Attributes of a person enrolled at a postsecondary institution.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'PSStudentEnrollmentId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate key from OrganizationPersonRole', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'OrganizationPersonRoleId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Person is enrolled in courses for credit and recognized by the institution as seeking a degree, certificate, or other formal award. High school students also enrolled in postsecondary courses for credit are not considered degree/certificate-seeking.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'DegreeOrCertificateSeekingStudent';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Degree or Certificate Seeking Student', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'DegreeOrCertificateSeekingStudent';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000078', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'DegreeOrCertificateSeekingStudent';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19078', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'DegreeOrCertificateSeekingStudent';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'DegreeOrCertificateSeekingStudent';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A person who has no prior postsecondary experience  attending any institution for the first time at the undergraduate level since completing high school (or its equivalent). This includes persons enrolled in academic or occupational programs. It also includes persons enrolled in the fall term who attended college for the first time in the prior summer term, and persons who entered with advanced standing (college credits earned before graduation from high school).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'FirstTimePostsecondaryStudent';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'First Time Postsecondary Student', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'FirstTimePostsecondaryStudent';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000117', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'FirstTimePostsecondaryStudent';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19117', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'FirstTimePostsecondaryStudent';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'FirstTimePostsecondaryStudent';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The first registration term of a person enrolling in credit-granting courses at a postsecondary institution after completing high school (or its equivalent).  ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'InitialEnrollmentTerm';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Initial Enrollment Term', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'InitialEnrollmentTerm';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000165', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'InitialEnrollmentTerm';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19165', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'InitialEnrollmentTerm';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'InitialEnrollmentTerm';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The number of credit hours and/or contact hours attempted by a person during a term.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'InstructionalActivityHoursAttempted';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Instructional Activity Hours Attempted', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'InstructionalActivityHoursAttempted';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000168', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'InstructionalActivityHoursAttempted';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19168', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'InstructionalActivityHoursAttempted';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'InstructionalActivityHoursAttempted';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The number of credit hours and/or contact hours successfully completed by a person during a term.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'InstructionalActivityHoursCompleted';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Instructional Activity Hours Completed', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'InstructionalActivityHoursCompleted';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000362', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'InstructionalActivityHoursCompleted';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19361', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'InstructionalActivityHoursCompleted';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'InstructionalActivityHoursCompleted';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The student resides in a residence hall or housing facility owned or controlled by an institution within the same reasonably contiguous geographic area and used by the institution in direct support of or in a manner related to, the institution''s educational purposes.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'HousingOnCampus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Postsecondary Student Housing On-Campus', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'HousingOnCampus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000760', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'HousingOnCampus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19741', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'HousingOnCampus';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'HousingOnCampus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Student is in membership of a chiefly social organization of men students at a college or university, usually designated by Greek letters.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'FraternityParticipationStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Fraternity Participation Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'FraternityParticipationStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000761', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'FraternityParticipationStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19743', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'FraternityParticipationStatus';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'FraternityParticipationStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Student is in membership in a chiefly social organization of women students at a college or university, usually designated by Greek letters.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'SororityParticipationStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Sorority Participation Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'SororityParticipationStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000762', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'SororityParticipationStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19744', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'SororityParticipationStatus';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'SororityParticipationStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The year, month and day on which a person entered and began to receive instructional services at a postsecondary institution for the first time after completing high school (or its equivalent). ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'EntryDateIntoPostsecondary';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Entry Date into Postsecondary', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'EntryDateIntoPostsecondary';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000098', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'EntryDateIntoPostsecondary';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19098', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'EntryDateIntoPostsecondary';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'EntryDateIntoPostsecondary';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An individual''s enrollment in a program for which all the required coursework for program completion is able to be completed via distance education courses. Distance education is education that uses one or more technologies to deliver instruction to individuals who are separated from the instructor and to support regular and substantive interaction between the individuals and the instructor synchronously or asynchronously.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'DistanceEducationProgramEnrollmentInd';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Distance Education Program Enrollment Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'DistanceEducationProgramEnrollmentInd';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001323', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'DistanceEducationProgramEnrollmentInd';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20289', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'DistanceEducationProgramEnrollmentInd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'DistanceEducationProgramEnrollmentInd';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The individual''s status in being admitted as a doctoral candidate.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'DoctoralCandidacyAdmitInd';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Doctoral Candidacy Admit Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'DoctoralCandidacyAdmitInd';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001324', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'DoctoralCandidacyAdmitInd';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20290', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'DoctoralCandidacyAdmitInd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'DoctoralCandidacyAdmitInd';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The date on which the individual was admitted to doctoral candidate status.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'DoctoralCandidacyDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Doctoral Candidacy Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'DoctoralCandidacyDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001325', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'DoctoralCandidacyDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20291', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'DoctoralCandidacyDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'DoctoralCandidacyDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The date on which the individual took an exam for advancement in, continuation or completion of a doctoral program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'DoctoralExamTakenDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Doctoral Exam Taken Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'DoctoralExamTakenDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001326', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'DoctoralExamTakenDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20292', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'DoctoralExamTakenDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'DoctoralExamTakenDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of the individual''s completion of an oral defense. The requirement to conduct an oral defense by doctoral individuals may vary across institutions, programs, or fields of study.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'OralDefenseCompletedIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Oral Defense Completed Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'OralDefenseCompletedIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001416', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'OralDefenseCompletedIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20385', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'OralDefenseCompletedIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'OralDefenseCompletedIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The date on which the individual gave an oral defense.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'OralDefenseDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Oral Defense Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'OralDefenseDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001417', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'OralDefenseDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20386', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'OralDefenseDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'OralDefenseDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The initial enrollment of an individual in credit bearing courses or developmental/remedial courses at an institution after completing high school or a high school equivalency program (e.g. GED, Adult High School Diploma).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'PostsecondaryEnteringStudentInd';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Postsecondary Entering Student Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'PostsecondaryEnteringStudentInd';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001426', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'PostsecondaryEnteringStudentInd';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20395', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'PostsecondaryEnteringStudentInd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'PostsecondaryEnteringStudentInd';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The title of the thesis or dissertation.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'ThesisOrDissertationTitle';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Thesis or Dissertation Title', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'ThesisOrDissertationTitle';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001496', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'ThesisOrDissertationTitle';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20468', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'ThesisOrDissertationTitle';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'ThesisOrDissertationTitle';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indicator of the enrollment type associated with the enrollment award level of a person at the beginning of a term.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefPsEnrollmentTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Postsecondary Enrollment Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefPsEnrollmentTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000095', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefPsEnrollmentTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19095', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefPsEnrollmentTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefPsEnrollmentTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of the student''s enrollment status for a particular term as defined by the institution', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefPsEnrollmentStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Postsecondary Enrollment Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefPsEnrollmentStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000096', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefPsEnrollmentStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19096', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefPsEnrollmentStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefPsEnrollmentStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Classification of a person enrolling in credit-granting courses at a postsecondary institution since completing high school (or its equivalent) as either an undergraduate or graduate student.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefPsStudentLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Student Level', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefPsStudentLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000272', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefPsStudentLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19272', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefPsStudentLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefPsStudentLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indicator of the award level in which the person is currently enrolled.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefPsEnrollmentAwardTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Enrollment in Postsecondary Award Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefPsEnrollmentAwardTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000361', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefPsEnrollmentAwardTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19360', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefPsEnrollmentAwardTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefPsEnrollmentAwardTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A person who has successfully completed a transfer-preparatory program as defined by the state or by the institution if no official state definition exists.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefTransferReadyId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Transfer-ready', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefTransferReadyId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000296', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefTransferReadyId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19296', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefTransferReadyId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefTransferReadyId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The unit of measure of student instructional activity.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefInstructionalActivityHoursId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Instructional Activity Hours Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefInstructionalActivityHoursId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000169', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefInstructionalActivityHoursId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19169', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefInstructionalActivityHoursId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefInstructionalActivityHoursId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An individual''s enrollment in a course or courses in which the instructional content is delivered exclusively via distance education.  Distance education is education that uses one or more technologies to deliver instruction to students who are separated from the instructor and to support regular and substantive interaction between the students and the instructor synchronously or asynchronously.  Technologies used for instruction may include: Internet; one-way and two-way transmissions through open broadcasts, closed circuit, cable, microwave, broadband lines, fiber optics, satellite or wireless communication devices; audio conferencing; and video cassette, DVDs, and CD-ROMs, if the cassette, DVDs, and CD-ROMs are used in a course in conjunction with the technologies listed above.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefDistanceEducationCourseEnrollmentId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Distance Education Course Enrollment', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefDistanceEducationCourseEnrollmentId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000728', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefDistanceEducationCourseEnrollmentId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19704', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefDistanceEducationCourseEnrollmentId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefDistanceEducationCourseEnrollmentId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A qualifier identifying the types of exams required of doctoral level individuals.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefDoctoralExamsRequiredCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Doctoral Exams Required Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefDoctoralExamsRequiredCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001327', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefDoctoralExamsRequiredCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20293', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefDoctoralExamsRequiredCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefDoctoralExamsRequiredCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The individual''s status in completing exams required for graduate or doctoral degree programs.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefGraduateOrDoctoralExamResultsStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Graduate or Doctoral Exam Results Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefGraduateOrDoctoralExamResultsStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001357', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefGraduateOrDoctoralExamResultsStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20324', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefGraduateOrDoctoralExamResultsStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefGraduateOrDoctoralExamResultsStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The status of a student''s referral to or placement into  developmental education.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefDevelopmentalEducationReferralStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Developmental Education Referral Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefDevelopmentalEducationReferralStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001588', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefDevelopmentalEducationReferralStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20567', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefDevelopmentalEducationReferralStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefDevelopmentalEducationReferralStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indicator of the category of developmental education.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefDevelopmentalEducationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Developmental Education Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefDevelopmentalEducationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001589', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefDevelopmentalEducationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20568', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefDevelopmentalEducationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefDevelopmentalEducationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N' The circumstances under which the student exited from enrollment in a postsecondary institution.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefPSExitOrWithdrawalTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Postsecondary Exit or Withdrawal Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefPSExitOrWithdrawalTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001617', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefPSExitOrWithdrawalTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20596', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefPSExitOrWithdrawalTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefPSExitOrWithdrawalTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A student who was enrolled, or eligible for enrollment, but has enrolled in another place because of a crisis.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'DisplacedStudentStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Displaced Student Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'DisplacedStudentStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000610', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'DisplacedStudentStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19603', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'DisplacedStudentStatus';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentEnrollment', @level2type = N'COLUMN', @level2name = N'DisplacedStudentStatus';

