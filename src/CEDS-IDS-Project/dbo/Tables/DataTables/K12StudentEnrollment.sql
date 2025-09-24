CREATE TABLE [dbo].[K12StudentEnrollment] (
    [K12StudentEnrollmentId]               INT      IDENTITY (1, 1) NOT NULL,
    [OrganizationPersonRoleId]             INT      NOT NULL,
    [DisplacedStudentStatus]               BIT      NULL,
    [FirstEntryDateIntoUSSchool]           DATE     NULL,
    [NSLPDirectCertificationIndicator]     BIT      NULL,
    [RefEntryGradeLevelId]                 INT      NULL,
    [RefPublicSchoolResidenceId]           INT      NULL,
    [RefEnrollmentStatusId]                INT      NULL,
    [RefEntryType]                         INT      NULL,
    [RefExitGradeLevelId]                  INT      NULL,
    [RefExitOrWithdrawalStatusId]          INT      NULL,
    [RefExitOrWithdrawalTypeId]            INT      NULL,
    [RefEndOfTermStatusId]                 INT      NULL,
    [RefPromotionReasonId]                 INT      NULL,
    [RefNonPromotionReasonId]              INT      NULL,
    [RefFoodServiceEligibilityId]          INT      NULL,
    [RefDirectoryInformationBlockStatusId] INT      NULL,
    [RefStudentEnrollmentAccessTypeId]     INT      NULL,
    [RecordStartDateTime]                  DATETIME NULL,
    [RecordEndDateTime]                    DATETIME NULL,
    [RecordStatusId]                       INT      NULL,
    [DataCollectionId]                     INT      NULL,
    [RefAdjustedExitOrWithdrawalTypeId]    INT      NULL,
    [RefRetentionExemptionReasonId]        INT      NULL,
    [EnrollmentStatusDate]                 DATETIME NULL,
    CONSTRAINT [PK_K12StudentEnrollment] PRIMARY KEY CLUSTERED ([K12StudentEnrollmentId] ASC),
    CONSTRAINT [FK_K12EnrollmentMember_OrganizationPerson] FOREIGN KEY ([OrganizationPersonRoleId]) REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_K12EnrollmentMember_RefGrade] FOREIGN KEY ([RefEntryGradeLevelId]) REFERENCES [dbo].[RefGradeLevel] ([RefGradeLevelId]),
    CONSTRAINT [FK_K12StudentEnrollment_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_K12StudentEnrollment_OrganizationPersonRole] FOREIGN KEY ([OrganizationPersonRoleId]) REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]),
    CONSTRAINT [FK_K12StudentEnrollment_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_K12StudentEnrollment_RefAdjustedExitOrWithdrawalType] FOREIGN KEY ([RefAdjustedExitOrWithdrawalTypeId]) REFERENCES [dbo].[RefAdjustedExitOrWithdrawalType] ([RefAdjustedExitOrWithdrawalTypeId]),
    CONSTRAINT [FK_K12StudentEnrollment_RefDirectoryInformationBlockStatus] FOREIGN KEY ([RefDirectoryInformationBlockStatusId]) REFERENCES [dbo].[RefDirectoryInformationBlockStatus] ([RefDirectoryInformationBlockStatusId]),
    CONSTRAINT [FK_K12StudentEnrollment_RefEndOfTermStatus] FOREIGN KEY ([RefEndOfTermStatusId]) REFERENCES [dbo].[RefEndOfTermStatus] ([RefEndOfTermStatusId]),
    CONSTRAINT [FK_K12StudentEnrollment_RefEnrollmentStatus] FOREIGN KEY ([RefEnrollmentStatusId]) REFERENCES [dbo].[RefEnrollmentStatus] ([RefEnrollmentStatusId]),
    CONSTRAINT [FK_K12StudentEnrollment_RefEntryType] FOREIGN KEY ([RefEntryType]) REFERENCES [dbo].[RefEntryType] ([RefEntryTypeId]),
    CONSTRAINT [FK_K12StudentEnrollment_RefExitOrWithdrawalStatus] FOREIGN KEY ([RefExitOrWithdrawalStatusId]) REFERENCES [dbo].[RefExitOrWithdrawalStatus] ([RefExitOrWithdrawalStatusId]),
    CONSTRAINT [FK_K12StudentEnrollment_RefExitOrWithdrawalType] FOREIGN KEY ([RefExitOrWithdrawalTypeId]) REFERENCES [dbo].[RefExitOrWithdrawalType] ([RefExitOrWithdrawalTypeId]),
    CONSTRAINT [FK_K12StudentEnrollment_RefFoodServiceEligibility] FOREIGN KEY ([RefFoodServiceEligibilityId]) REFERENCES [dbo].[RefFoodServiceEligibility] ([RefFoodServiceEligibilityId]),
    CONSTRAINT [FK_K12StudentEnrollment_RefGradeLevel] FOREIGN KEY ([RefExitGradeLevelId]) REFERENCES [dbo].[RefGradeLevel] ([RefGradeLevelId]),
    CONSTRAINT [FK_K12StudentEnrollment_RefNonPromotionReason] FOREIGN KEY ([RefNonPromotionReasonId]) REFERENCES [dbo].[RefNonPromotionReason] ([RefNonPromotionReasonId]),
    CONSTRAINT [FK_K12StudentEnrollment_RefPromotionReason] FOREIGN KEY ([RefPromotionReasonId]) REFERENCES [dbo].[RefPromotionReason] ([RefPromotionReasonId]),
    CONSTRAINT [FK_K12StudentEnrollment_RefPublicSchoolResidence] FOREIGN KEY ([RefPublicSchoolResidenceId]) REFERENCES [dbo].[RefPublicSchoolResidence] ([RefPublicSchoolResidenceId]),
    CONSTRAINT [FK_K12StudentEnrollment_RefStudentEnrollmentAccessType] FOREIGN KEY ([RefStudentEnrollmentAccessTypeId]) REFERENCES [dbo].[RefStudentEnrollmentAccessType] ([RefStudentEnrollmentAccessTypeId]),
    CONSTRAINT [FK_K12StudentEnrollment_RefRetentionExemptionReason] FOREIGN KEY ([RefRetentionExemptionReasonId]) REFERENCES [dbo].[RefRetentionExemptionReason] ([RefRetentionExemptionReasonId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information about a student enrollment that is unique to the K12 context.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A student who was enrolled, or eligible for enrollment, but has enrolled in another place because of a crisis.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'DisplacedStudentStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Displaced Student Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'DisplacedStudentStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000610', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'DisplacedStudentStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19603', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'DisplacedStudentStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The year, month and day of a person''s initial enrollment into a United States school.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'FirstEntryDateIntoUSSchool';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'First Entry Date into a US School', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'FirstEntryDateIntoUSSchool';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000529', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'FirstEntryDateIntoUSSchool';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19520', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'FirstEntryDateIntoUSSchool';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Indicates that the student''s National School Lunch Program (NSLP) eligibility has been determined through direct certification.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'NSLPDirectCertificationIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'National School Lunch Program Direct Certification Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'NSLPDirectCertificationIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001654', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'NSLPDirectCertificationIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20635', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'NSLPDirectCertificationIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The grade level or primary instructional level at which a student enters and receives services in a school or an educational institution during a given academic session.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefEntryGradeLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Entry Grade Level', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefEntryGradeLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000100', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefEntryGradeLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19100', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefEntryGradeLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of the location of a persons legal residence relative to (within or outside) the boundaries of the public school attended and its administrative unit.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefPublicSchoolResidenceId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Public School Residence Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefPublicSchoolResidenceId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000532', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefPublicSchoolResidenceId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19523', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefPublicSchoolResidenceId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication as to whether a student''s name was, is, or will be officially registered on the roll of a school or schools.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefEnrollmentStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Enrollment Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefEnrollmentStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000094', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefEnrollmentStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19094', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefEnrollmentStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The process by which a student enters a school during a given academic session.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefEntryType';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Entry Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefEntryType';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000099', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefEntryType';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19099', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefEntryType';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The grade level or primary instructional level at which a student exits a school, program, or an educational institution.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefExitGradeLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Exit Grade Level', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefExitGradeLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001210', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefExitGradeLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20177', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefExitGradeLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefExitGradeLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication as to whether an instance of student exit/withdrawal is considered to be of a permanent or temporary nature.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefExitOrWithdrawalStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Exit or Withdrawal Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefExitOrWithdrawalStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000108', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefExitOrWithdrawalStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19108', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefExitOrWithdrawalStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The circumstances under which the student exited from membership in an educational institution. ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefExitOrWithdrawalTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Exit or Withdrawal Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefExitOrWithdrawalTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000110', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefExitOrWithdrawalTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19110', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefExitOrWithdrawalTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The nature of the student''s progress at the end of a given school term.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefEndOfTermStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'End of Term Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefEndOfTermStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000093', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefEndOfTermStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19093', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefEndOfTermStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The nature of the student''s promotion or progress at the end of a given school term.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefPromotionReasonId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Promotion Reason', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefPromotionReasonId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000530', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefPromotionReasonId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19521', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefPromotionReasonId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The primary reason as to why a staff member determined that a student should not be promoted (or be demoted).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefNonPromotionReasonId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Nonpromotion Reason', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefNonPromotionReasonId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000531', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefNonPromotionReasonId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19522', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefNonPromotionReasonId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of a student''s level of eligibility to participate in the National School Lunch Program for breakfast, lunch, snack, supper, and milk programs.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefFoodServiceEligibilityId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Eligibility Status for School Food Service Programs', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefFoodServiceEligibilityId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000092', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefFoodServiceEligibilityId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19092', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefFoodServiceEligibilityId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether a individual requested a Family Education Rights and Privacy Act (FERPA) block to withhold the release of the person''s directory information.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefDirectoryInformationBlockStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Directory Information Block Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefDirectoryInformationBlockStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001590', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefDirectoryInformationBlockStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20569', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefDirectoryInformationBlockStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The designation of how students secure access to age appropriate public schools, or publicly funded charter or private schools.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefStudentEnrollmentAccessTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Student Enrollment Access Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefStudentEnrollmentAccessTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001862', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefStudentEnrollmentAccessTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20843', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefStudentEnrollmentAccessTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An adjustment of the last known circumstances under which the student exited from membership in an educational institution.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefAdjustedExitOrWithdrawalTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Adjusted Exit or Withdrawal Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefAdjustedExitOrWithdrawalTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002017', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefAdjustedExitOrWithdrawalTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25000', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefAdjustedExitOrWithdrawalTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefAdjustedExitOrWithdrawalTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The reason why a student was exempted from retention in a grade level.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefRetentionExemptionReasonId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Retention Exemption Reason', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefRetentionExemptionReasonId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002119', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefRetentionExemptionReasonId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/element/002119', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefRetentionExemptionReasonId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefRetentionExemptionReasonId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The date for which the enrollment status applies.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'EnrollmentStatusDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Enrollment Status Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'EnrollmentStatusDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002129', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'EnrollmentStatusDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/element/002129', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'EnrollmentStatusDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'EnrollmentStatusDate';


GO

