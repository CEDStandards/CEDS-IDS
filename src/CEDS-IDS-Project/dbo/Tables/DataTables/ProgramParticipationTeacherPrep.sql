CREATE TABLE [dbo].[ProgramParticipationTeacherPrep] (
    [RefTeacherPrepEnrollmentStatusId]        INT             NULL,
    [RefTeacherPrepCompleterStatusId]         INT             NULL,
    [RefSupervisedClinicalExperienceId]       INT             NULL,
    [ClinicalExperienceClockHours]            INT             NULL,
    [RefTeachingCredentialBasisId]            INT             NULL,
    [RefTeachingCredentialTypeId]             INT             NULL,
    [RefCriticalTeacherShortageCandidateId]   INT             NULL,
    [RefAltRouteToCertificationOrLicensureId] INT             NULL,
    [RecordStartDateTime]                     DATETIME        NULL,
    [RecordEndDateTime]                       DATETIME        NULL,
    [PersonProgramParticipationId]            INT             NOT NULL,
    [ProgramParticipationTeacherPrepId]       INT             IDENTITY (1, 1) NOT NULL,
    [SchoolAgeEducationPSCredits]             DECIMAL (10, 2) NULL,
    [RecordStatusId]                          INT             NULL,
    [DataCollectionId]                        INT             NULL,
    CONSTRAINT [PK_ProgramParticipationTeacherPrepId] PRIMARY KEY CLUSTERED ([ProgramParticipationTeacherPrepId] ASC),
    CONSTRAINT [FK_PrgmParticipationTeacherPrep_PersonProgramParticipation] FOREIGN KEY ([PersonProgramParticipationId]) REFERENCES [dbo].[PersonProgramParticipation] ([PersonProgramParticipationId]),
    CONSTRAINT [FK_PrgmParticipationTeacherPrep_RefCritTeachShortageCandidate] FOREIGN KEY ([RefCriticalTeacherShortageCandidateId]) REFERENCES [dbo].[RefCriticalTeacherShortageCandidate] ([RefCriticalTeacherShortageCandidateId]),
    CONSTRAINT [FK_PrgmParticipationTeacherPrep_RefTeacherPrepCompleterStatus] FOREIGN KEY ([RefTeacherPrepCompleterStatusId]) REFERENCES [dbo].[RefTeacherPrepCompleterStatus] ([RefTeacherPrepCompleterStatusId]),
    CONSTRAINT [FK_PrgmParticipationTeacherPrep_RefTeacherPrepEnrollStatus] FOREIGN KEY ([RefTeacherPrepEnrollmentStatusId]) REFERENCES [dbo].[RefTeacherPrepEnrollmentStatus] ([RefTeacherPrepEnrollmentStatusId]),
    CONSTRAINT [FK_PrgmParticipationTeacherPrep_RefTeachingCredentialBasis] FOREIGN KEY ([RefTeachingCredentialBasisId]) REFERENCES [dbo].[RefTeachingCredentialBasis] ([RefTeachingCredentialBasisId]),
    CONSTRAINT [FK_PrgmParticipationTeacherPrep_RefTeachingCredentialType] FOREIGN KEY ([RefTeachingCredentialTypeId]) REFERENCES [dbo].[RefTeachingCredentialType] ([RefTeachingCredentialTypeId]),
    CONSTRAINT [FK_ProgramParticipationTeacherPrep_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_ProgramParticipationTeacherPrep_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_ProgramParticipationTeacherPrep_RefAltRouteToCertificationOrLicensure] FOREIGN KEY ([RefAltRouteToCertificationOrLicensureId]) REFERENCES [dbo].[RefAltRouteToCertificationOrLicensure] ([RefAltRouteToCertificationOrLicensureId]),
    CONSTRAINT [FK_ProgramParticipationTeacherPrep_RefSupervisedClinicalExper] FOREIGN KEY ([RefSupervisedClinicalExperienceId]) REFERENCES [dbo].[RefSupervisedClinicalExperience] ([RefSupervisedClinicalExperienceId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information on a person participating in a teacher preparation education program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether a person is pursuing certification as a teacher.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'RefTeacherPrepEnrollmentStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Teacher Preparation Program Enrollment Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'RefTeacherPrepEnrollmentStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000767', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'RefTeacherPrepEnrollmentStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19749', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'RefTeacherPrepEnrollmentStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether a person completed a state-approved teacher preparation program.  The fact that a person has or has not been recommended to the state for initial certification or licensure may not be used as a criterion for determining who is a program completer.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'RefTeacherPrepCompleterStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Teacher Preparation Program Completer Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'RefTeacherPrepCompleterStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000768', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'RefTeacherPrepCompleterStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19750', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'RefTeacherPrepCompleterStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether a person is enrolled in a supervised clinical experience (including student teaching) as part of a teacher preparation program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'RefSupervisedClinicalExperienceId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Supervised Clinical Experience', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'RefSupervisedClinicalExperienceId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000771', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'RefSupervisedClinicalExperienceId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19754', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'RefSupervisedClinicalExperienceId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of  the number of clock hours (minimum) a student is required to complete associated with a supervised clinical experience.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'ClinicalExperienceClockHours';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Supervised Clinical Experience Clock Hours', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'ClinicalExperienceClockHours';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000772', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'ClinicalExperienceClockHours';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19755', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'ClinicalExperienceClockHours';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of the pre-determined criteria for granting the teaching credential that a person holds.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'RefTeachingCredentialBasisId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Teaching Credential Basis', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'RefTeachingCredentialBasisId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000277', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'RefTeachingCredentialBasisId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19277', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'RefTeachingCredentialBasisId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of the category of a legal document giving authorization to perform teaching assignment services.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'RefTeachingCredentialTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Teaching Credential Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'RefTeachingCredentialTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000278', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'RefTeachingCredentialTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19278', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'RefTeachingCredentialTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether a person is pursuing licensure/certification in a field designated as a shortage area as defined by Title II.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'RefCriticalTeacherShortageCandidateId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Critical Teacher Shortage Area Candidate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'RefCriticalTeacherShortageCandidateId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000770', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'RefCriticalTeacherShortageCandidateId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19753', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'RefCriticalTeacherShortageCandidateId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether a person is enrolled in an alternative teacher preparation program as defined by Title II.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'RefAltRouteToCertificationOrLicensureId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Alternative Route to Certification or Licensure', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'RefAltRouteToCertificationOrLicensureId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000769', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'RefAltRouteToCertificationOrLicensureId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19751', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'RefAltRouteToCertificationOrLicensureId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The number of college course credit hours an individual has successfully completed that are related to K-12 education, parks and recreation, and juvenile justice.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'SchoolAgeEducationPSCredits';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Number of School-age Education Postsecondary Credit Hours', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'SchoolAgeEducationPSCredits';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000816', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'SchoolAgeEducationPSCredits';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19815', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'SchoolAgeEducationPSCredits';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'SchoolAgeEducationPSCredits';

