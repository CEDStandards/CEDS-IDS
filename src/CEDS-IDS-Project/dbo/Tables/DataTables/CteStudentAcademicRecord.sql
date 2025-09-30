CREATE TABLE [dbo].[CteStudentAcademicRecord] (
    [CteStudentAcademicRecordId]               INT            IDENTITY (1, 1) NOT NULL,
    [OrganizationPersonRoleId]                 INT            NOT NULL,
    [CreditsAttemptedCumulative]               DECIMAL (9, 2) NULL,
    [CreditsEarnedCumulative]                  DECIMAL (9, 2) NULL,
    [DiplomaOrCredentialAwardDate]             NCHAR (7)      NULL,
    [RefProfessionalTechnicalCredentialTypeId] INT            NULL,
    [RecordStartDateTime]                      DATETIME       NULL,
    [RecordEndDateTime]                        DATETIME       NULL,
    [RecordStatusId]                           INT            NULL,
    [DataCollectionId]                         INT            NULL,
    CONSTRAINT [PK_CteStudentAcademicRecord] PRIMARY KEY CLUSTERED ([CteStudentAcademicRecordId] ASC),
    CONSTRAINT [FK_CteStudentAcademicRecord_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_CteStudentAcademicRecord_OrganizationPersonRole] FOREIGN KEY ([OrganizationPersonRoleId]) REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]),
    CONSTRAINT [FK_CteStudentAcademicRecord_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_CteStudentAcademicRecord_RefProfessionalTechnicalCredential] FOREIGN KEY ([RefProfessionalTechnicalCredentialTypeId]) REFERENCES [dbo].[RefProfessionalTechnicalCredentialType] ([RefProfessionalTechnicalCredentialTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Summary academic record information for a career and technical education student.  ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteStudentAcademicRecord';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteStudentAcademicRecord';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Inherited surrogate Key from OrganizationPersonRole.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'OrganizationPersonRoleId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'OrganizationPersonRoleId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The cumulative number of credits a person attempts to earn by taking courses during his or her enrollment in the current school as well as those credits transferred from schools in which the person had been previously enrolled.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'CreditsAttemptedCumulative';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Credits Attempted Cumulative', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'CreditsAttemptedCumulative';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000073', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'CreditsAttemptedCumulative';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19073', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'CreditsAttemptedCumulative';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'CreditsAttemptedCumulative';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The cumulative number of credits a person earns by completing courses or examinations during his or her enrollment in the current school as well as those credits transferred from schools in which the person had been previously enrolled.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'CreditsEarnedCumulative';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Credits Earned Cumulative', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'CreditsEarnedCumulative';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000074', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'CreditsEarnedCumulative';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19074', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'CreditsEarnedCumulative';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'CreditsEarnedCumulative';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The month and year on which the diploma/credential is awarded to a student in recognition of his/her completion of the curricular requirements.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'DiplomaOrCredentialAwardDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Diploma or Credential Award Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'DiplomaOrCredentialAwardDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000081', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'DiplomaOrCredentialAwardDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19081', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'DiplomaOrCredentialAwardDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'DiplomaOrCredentialAwardDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indicator of the category of credential conferred by a state occupational licensing entity or industry organization for competency in a specific area measured by a set of pre-established standards.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RefProfessionalTechnicalCredentialTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Professional or Technical Credential Conferred', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RefProfessionalTechnicalCredentialTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000783', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RefProfessionalTechnicalCredentialTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19780', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RefProfessionalTechnicalCredentialTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RefProfessionalTechnicalCredentialTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CteStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

