CREATE TABLE [dbo].[ELEnrollment] (
    [ELEnrollmentId]                INT            IDENTITY (1, 1) NOT NULL,
    [OrganizationPersonRoleId]      INT            NOT NULL,
    [EnrollmentDate]                DATE           NULL,
    [NumberOfDaysInAttendance]      DECIMAL (8, 2) NULL,
    [ELClassSectionId]              INT            NULL,
    [RefIDEAEnvironmentELId]        INT            NULL,
    [RefFoodServiceParticipationId] INT            NULL,
    [RefServiceOptionId]            INT            NULL,
    [RefELFederalFundingTypeId]     INT            NULL,
    [RecordStartDateTime]           DATETIME       NULL,
    [RecordEndDateTime]             DATETIME       NULL,
    [RecordStatusId]                INT            NULL,
    [DataCollectionId]              INT            NULL,
    [RefExitOrWithdrawalStatusId]   INT            NULL,
    [RefPublicSchoolResidenceId]    INT            NULL,
    CONSTRAINT [XPKECEnrollment] PRIMARY KEY CLUSTERED ([ELEnrollmentId] ASC),
    CONSTRAINT [FK_EcProgramEnrollment_OrganizationPerson] FOREIGN KEY ([OrganizationPersonRoleId]) REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_ELEnrollment_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_ELEnrollment_ELClassSection] FOREIGN KEY ([ELClassSectionId]) REFERENCES [dbo].[ELClassSection] ([ELClassSectionId]),
    CONSTRAINT [FK_ELEnrollment_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_ELEnrollment_RefELFederalFundingType] FOREIGN KEY ([RefELFederalFundingTypeId]) REFERENCES [dbo].[RefELFederalFundingType] ([RefELFederalFundingTypeId]),
    CONSTRAINT [FK_ELEnrollment_RefExitOrWithdrawalStatus] FOREIGN KEY ([RefExitOrWithdrawalStatusId]) REFERENCES [dbo].[RefExitOrWithdrawalStatus] ([RefExitOrWithdrawalStatusId]),
    CONSTRAINT [FK_ELEnrollment_RefFoodServiceParticipation] FOREIGN KEY ([RefFoodServiceParticipationId]) REFERENCES [dbo].[RefFoodServiceParticipation] ([RefFoodServiceParticipationId]),
    CONSTRAINT [FK_ELEnrollment_RefIDEAEnvironmentEL] FOREIGN KEY ([RefIDEAEnvironmentELId]) REFERENCES [dbo].[RefIDEAEnvironmentEL] ([RefIDEAEnvironmentELId]),
    CONSTRAINT [FK_ELEnrollment_RefPublicSchoolResidence] FOREIGN KEY ([RefPublicSchoolResidenceId]) REFERENCES [dbo].[RefPublicSchoolResidence] ([RefPublicSchoolResidenceId]),
    CONSTRAINT [FK_ELEnrollment_RefServiceOption] FOREIGN KEY ([RefServiceOptionId]) REFERENCES [dbo].[RefServiceOption] ([RefServiceOptionId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Enrollment of early learners in a program, class, or section.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELEnrollment';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELEnrollment';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Inherited surrogate key from OrganizationPersonRole.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELEnrollment', @level2type = N'COLUMN', @level2name = N'OrganizationPersonRoleId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELEnrollment', @level2type = N'COLUMN', @level2name = N'OrganizationPersonRoleId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The year, month and day on which a person is considered officially enrolled in the program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELEnrollment', @level2type = N'COLUMN', @level2name = N'EnrollmentDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Enrollment Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELEnrollment', @level2type = N'COLUMN', @level2name = N'EnrollmentDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000324', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELEnrollment', @level2type = N'COLUMN', @level2name = N'EnrollmentDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19324', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELEnrollment', @level2type = N'COLUMN', @level2name = N'EnrollmentDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELEnrollment', @level2type = N'COLUMN', @level2name = N'EnrollmentDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The number of days a person is present when school is in session during a given reporting period.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELEnrollment', @level2type = N'COLUMN', @level2name = N'NumberOfDaysInAttendance';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Number of Days in Attendance', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELEnrollment', @level2type = N'COLUMN', @level2name = N'NumberOfDaysInAttendance';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000202', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELEnrollment', @level2type = N'COLUMN', @level2name = N'NumberOfDaysInAttendance';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19202', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELEnrollment', @level2type = N'COLUMN', @level2name = N'NumberOfDaysInAttendance';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELEnrollment', @level2type = N'COLUMN', @level2name = N'NumberOfDaysInAttendance';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - ELClassSection.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELEnrollment', @level2type = N'COLUMN', @level2name = N'ELClassSectionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The program in which children ages 3 through 5 attend and in which these children receive special education and related services.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELEnrollment', @level2type = N'COLUMN', @level2name = N'RefIDEAEnvironmentELId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'IDEA Educational Environment for Early Childhood', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELEnrollment', @level2type = N'COLUMN', @level2name = N'RefIDEAEnvironmentELId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000559', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELEnrollment', @level2type = N'COLUMN', @level2name = N'RefIDEAEnvironmentELId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19550', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELEnrollment', @level2type = N'COLUMN', @level2name = N'RefIDEAEnvironmentELId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELEnrollment', @level2type = N'COLUMN', @level2name = N'RefIDEAEnvironmentELId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of a student''s participation in free, reduced price, full price breakfast, lunch, snack, supper, and milk programs.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELEnrollment', @level2type = N'COLUMN', @level2name = N'RefFoodServiceParticipationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Participation in School Food Service Programs', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELEnrollment', @level2type = N'COLUMN', @level2name = N'RefFoodServiceParticipationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000325', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELEnrollment', @level2type = N'COLUMN', @level2name = N'RefFoodServiceParticipationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19325', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELEnrollment', @level2type = N'COLUMN', @level2name = N'RefFoodServiceParticipationId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELEnrollment', @level2type = N'COLUMN', @level2name = N'RefFoodServiceParticipationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Nature of early childhood program, class or group in which a person is enrolled.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELEnrollment', @level2type = N'COLUMN', @level2name = N'RefServiceOptionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Service Option Variation', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELEnrollment', @level2type = N'COLUMN', @level2name = N'RefServiceOptionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000353', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELEnrollment', @level2type = N'COLUMN', @level2name = N'RefServiceOptionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19352', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELEnrollment', @level2type = N'COLUMN', @level2name = N'RefServiceOptionId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELEnrollment', @level2type = N'COLUMN', @level2name = N'RefServiceOptionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Federal source, even if administered by state or local, that contributes to the EL program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELEnrollment', @level2type = N'COLUMN', @level2name = N'RefELFederalFundingTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Early Learning Federal Funding Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELEnrollment', @level2type = N'COLUMN', @level2name = N'RefELFederalFundingTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001328', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELEnrollment', @level2type = N'COLUMN', @level2name = N'RefELFederalFundingTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20294', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELEnrollment', @level2type = N'COLUMN', @level2name = N'RefELFederalFundingTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELEnrollment', @level2type = N'COLUMN', @level2name = N'RefELFederalFundingTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELEnrollment', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELEnrollment', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELEnrollment', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELEnrollment', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELEnrollment', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELEnrollment', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELEnrollment', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELEnrollment', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELEnrollment', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication as to whether an instance of student exit/withdrawal is considered to be of a permanent or temporary nature.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELEnrollment', @level2type = N'COLUMN', @level2name = N'RefExitOrWithdrawalStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Exit or Withdrawal Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELEnrollment', @level2type = N'COLUMN', @level2name = N'RefExitOrWithdrawalStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000108', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELEnrollment', @level2type = N'COLUMN', @level2name = N'RefExitOrWithdrawalStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=21108', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELEnrollment', @level2type = N'COLUMN', @level2name = N'RefExitOrWithdrawalStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELEnrollment', @level2type = N'COLUMN', @level2name = N'RefExitOrWithdrawalStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of the location of a persons legal residence relative to (within or outside) the boundaries of the public school attended and its administrative unit.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELEnrollment', @level2type = N'COLUMN', @level2name = N'RefPublicSchoolResidenceId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Public School Residence Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELEnrollment', @level2type = N'COLUMN', @level2name = N'RefPublicSchoolResidenceId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000532', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELEnrollment', @level2type = N'COLUMN', @level2name = N'RefPublicSchoolResidenceId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=21523', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELEnrollment', @level2type = N'COLUMN', @level2name = N'RefPublicSchoolResidenceId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELEnrollment', @level2type = N'COLUMN', @level2name = N'RefPublicSchoolResidenceId';

