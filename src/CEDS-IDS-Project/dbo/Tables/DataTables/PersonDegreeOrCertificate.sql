CREATE TABLE [dbo].[PersonDegreeOrCertificate] (
    [PersonDegreeOrCertificateId]                        INT           IDENTITY (1, 1) NOT NULL,
    [PersonId]                                           INT           NOT NULL,
    [DegreeOrCertificateTitleOrSubject]                  NVARCHAR (45) NULL,
    [RefDegreeOrCertificateTypeId]                       INT           NULL,
    [AwardDate]                                          DATE          NULL,
    [NameOfInstitution]                                  NVARCHAR (60) NULL,
    [RefHigherEducationInstitutionAccreditationStatusId] INT           NULL,
    [RefEducationVerificationMethodId]                   INT           NULL,
    [RecordStartDateTime]                                DATETIME      NULL,
    [RecordEndDateTime]                                  DATETIME      NULL,
    [RecordStatusId]                                     INT           NULL,
    [DataCollectionId]                                   INT           NULL,
    CONSTRAINT [XPKPersonDegreeOrCertificate] PRIMARY KEY CLUSTERED ([PersonDegreeOrCertificateId] ASC),
    CONSTRAINT [FK_PersonDegreeOrCertificate_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_PersonDegreeOrCertificate_Person] FOREIGN KEY ([PersonId]) REFERENCES [dbo].[Person] ([PersonId]),
    CONSTRAINT [FK_PersonDegreeOrCertificate_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_PersonDegreeOrCertificate_RefDegree] FOREIGN KEY ([RefDegreeOrCertificateTypeId]) REFERENCES [dbo].[RefDegreeOrCertificateType] ([RefDegreeOrCertificateTypeId]),
    CONSTRAINT [FK_PersonDegreeOrCertificate_RefEducationVerificationMethod] FOREIGN KEY ([RefEducationVerificationMethodId]) REFERENCES [dbo].[RefEducationVerificationMethod] ([RefEducationVerificationMethodId]),
    CONSTRAINT [FK_PersonDegreeOrCertificate_RefHigherEdInstitutionAccredStatus] FOREIGN KEY ([RefHigherEducationInstitutionAccreditationStatusId]) REFERENCES [dbo].[RefHigherEducationInstitutionAccreditationStatus] ([RefHigherEducationInstitutionAccreditationStatusId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The name of the degree or certificate earned by an individual. This includes honorary degrees conferred upon an individual.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDegreeOrCertificate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDegreeOrCertificate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDegreeOrCertificate', @level2type = N'COLUMN', @level2name = N'PersonDegreeOrCertificateId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - Person', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDegreeOrCertificate', @level2type = N'COLUMN', @level2name = N'PersonId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The name of the degree or certificate earned by a person. This includes honorary degrees conferred upon an individual.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDegreeOrCertificate', @level2type = N'COLUMN', @level2name = N'DegreeOrCertificateTitleOrSubject';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Degree or Certificate Title or Subject', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDegreeOrCertificate', @level2type = N'COLUMN', @level2name = N'DegreeOrCertificateTitleOrSubject';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000342', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDegreeOrCertificate', @level2type = N'COLUMN', @level2name = N'DegreeOrCertificateTitleOrSubject';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19341', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDegreeOrCertificate', @level2type = N'COLUMN', @level2name = N'DegreeOrCertificateTitleOrSubject';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDegreeOrCertificate', @level2type = N'COLUMN', @level2name = N'DegreeOrCertificateTitleOrSubject';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of degree or certificate earned by a person.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDegreeOrCertificate', @level2type = N'COLUMN', @level2name = N'RefDegreeOrCertificateTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Degree or Certificate Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDegreeOrCertificate', @level2type = N'COLUMN', @level2name = N'RefDegreeOrCertificateTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000343', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDegreeOrCertificate', @level2type = N'COLUMN', @level2name = N'RefDegreeOrCertificateTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19342', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDegreeOrCertificate', @level2type = N'COLUMN', @level2name = N'RefDegreeOrCertificateTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDegreeOrCertificate', @level2type = N'COLUMN', @level2name = N'RefDegreeOrCertificateTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The date on which a person received a degree or certificate.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDegreeOrCertificate', @level2type = N'COLUMN', @level2name = N'AwardDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Diploma or Credential Award Date, Degree or Certificate Conferring Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDegreeOrCertificate', @level2type = N'COLUMN', @level2name = N'AwardDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000081, 000344', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDegreeOrCertificate', @level2type = N'COLUMN', @level2name = N'AwardDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19081, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19343', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDegreeOrCertificate', @level2type = N'COLUMN', @level2name = N'AwardDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDegreeOrCertificate', @level2type = N'COLUMN', @level2name = N'AwardDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The full legally accepted name of the institution.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDegreeOrCertificate', @level2type = N'COLUMN', @level2name = N'NameOfInstitution';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Name of Institution', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDegreeOrCertificate', @level2type = N'COLUMN', @level2name = N'NameOfInstitution';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000191', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDegreeOrCertificate', @level2type = N'COLUMN', @level2name = N'NameOfInstitution';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19191', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDegreeOrCertificate', @level2type = N'COLUMN', @level2name = N'NameOfInstitution';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDegreeOrCertificate', @level2type = N'COLUMN', @level2name = N'NameOfInstitution';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of the accreditation status of a higher education institution.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDegreeOrCertificate', @level2type = N'COLUMN', @level2name = N'RefHigherEducationInstitutionAccreditationStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Higher Education Institution Accreditation Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDegreeOrCertificate', @level2type = N'COLUMN', @level2name = N'RefHigherEducationInstitutionAccreditationStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000818', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDegreeOrCertificate', @level2type = N'COLUMN', @level2name = N'RefHigherEducationInstitutionAccreditationStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19817', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDegreeOrCertificate', @level2type = N'COLUMN', @level2name = N'RefHigherEducationInstitutionAccreditationStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDegreeOrCertificate', @level2type = N'COLUMN', @level2name = N'RefHigherEducationInstitutionAccreditationStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The method by which the formal education is verified.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDegreeOrCertificate', @level2type = N'COLUMN', @level2name = N'RefEducationVerificationMethodId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Education Verification Method', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDegreeOrCertificate', @level2type = N'COLUMN', @level2name = N'RefEducationVerificationMethodId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001607', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDegreeOrCertificate', @level2type = N'COLUMN', @level2name = N'RefEducationVerificationMethodId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20586', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDegreeOrCertificate', @level2type = N'COLUMN', @level2name = N'RefEducationVerificationMethodId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDegreeOrCertificate', @level2type = N'COLUMN', @level2name = N'RefEducationVerificationMethodId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDegreeOrCertificate', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDegreeOrCertificate', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDegreeOrCertificate', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDegreeOrCertificate', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDegreeOrCertificate', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDegreeOrCertificate', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDegreeOrCertificate', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDegreeOrCertificate', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDegreeOrCertificate', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDegreeOrCertificate', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

