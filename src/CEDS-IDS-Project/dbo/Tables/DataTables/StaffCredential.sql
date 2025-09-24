CREATE TABLE [dbo].[StaffCredential] (
    [StaffCredentialId]                         INT          IDENTITY (1, 1) NOT NULL,
    [CredentialAwardId]                        INT          NOT NULL,
    [TechnologySkillsStandardsMet]              BIT          NULL,
    [DiplomaOrCredentialAwardDate]              NVARCHAR (7) NULL,
    [CTEInstructorIndustryCertification]        BIT          NULL,
    [CardiopulmonaryResuscitationCertification] DATE         NULL,
    [FirstAidCertification]                     DATE         NULL,
    [RefTeachingCredentialTypeId]               INT          NULL,
    [RefTeachingCredentialBasisId]              INT          NULL,
    [RefChildDevAssociateTypeId]                INT          NULL,
    [RefParaprofessionalQualificationId]        INT          NULL,
    [RefProgramSponsorTypeId]                   INT          NULL,
    [RecordStartDateTime]                       DATETIME     NULL,
    [RecordEndDateTime]                         DATETIME     NULL,
    [RefAeCertificationTypeId]                  INT          NULL,
    [RecordStatusId]                            INT          NULL,
    [DataCollectionId]                          INT          NULL,
    CONSTRAINT [PK_StaffCredential] PRIMARY KEY CLUSTERED ([StaffCredentialId] ASC),
    CONSTRAINT [FK_StaffCredential_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_StaffCredential_CredentialAward] FOREIGN KEY ([CredentialAwardId]) REFERENCES [dbo].[CredentialAward] ([CredentialAwardId]),
    CONSTRAINT [FK_StaffCredential_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_StaffCredential_RefAeCertificationType] FOREIGN KEY ([RefAeCertificationTypeId]) REFERENCES [dbo].[RefAeCertificationType] ([RefAeCertificationTypeId]),
    CONSTRAINT [FK_StaffCredential_RefChildDevelopmentAssociateType] FOREIGN KEY ([RefChildDevAssociateTypeId]) REFERENCES [dbo].[RefChildDevelopmentAssociateType] ([RefChildDevelopmentAssociateTypeId]),
    CONSTRAINT [FK_StaffCredential_RefParaprofessionalQualification] FOREIGN KEY ([RefParaprofessionalQualificationId]) REFERENCES [dbo].[RefParaprofessionalQualification] ([RefParaprofessionalQualificationId]),
    CONSTRAINT [FK_StaffCredential_RefProgramSponsorType] FOREIGN KEY ([RefProgramSponsorTypeId]) REFERENCES [dbo].[RefProgramSponsorType] ([RefProgramSponsorTypeId]),
    CONSTRAINT [FK_StaffCredential_RefTeachingCredentialBasis] FOREIGN KEY ([RefTeachingCredentialBasisId]) REFERENCES [dbo].[RefTeachingCredentialBasis] ([RefTeachingCredentialBasisId]),
    CONSTRAINT [FK_StaffCredential_RefTeachingCredentialType] FOREIGN KEY ([RefTeachingCredentialTypeId]) REFERENCES [dbo].[RefTeachingCredentialType] ([RefTeachingCredentialTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A credential held by a staff member.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication that the person has achieved acceptable performance on a standards-based profile of technology user skills as defined by the state.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'TechnologySkillsStandardsMet';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Technology Skills Standards Met', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'TechnologySkillsStandardsMet';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000546', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'TechnologySkillsStandardsMet';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=17537', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'TechnologySkillsStandardsMet';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The month and year on which the diploma/credential is awarded to a student in recognition of his/her completion of the curricular requirements.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'DiplomaOrCredentialAwardDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Diploma or Credential Award Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'DiplomaOrCredentialAwardDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000081', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'DiplomaOrCredentialAwardDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=17081', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'DiplomaOrCredentialAwardDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether a Career and Technical Education (CTE) instructor holds a current industry-recognized credential related to their teaching field.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'CTEInstructorIndustryCertification';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Career and Technical Education Instructor Industry Certification', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'CTEInstructorIndustryCertification';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001318', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'CTEInstructorIndustryCertification';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=18284', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'CTEInstructorIndustryCertification';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The date an individual''s cardiopulmonary resuscitation (CPR) training certification expires.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'CardiopulmonaryResuscitationCertification';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Cardiopulmonary Resuscitation Certification Expiration Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'CardiopulmonaryResuscitationCertification';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001059', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'CardiopulmonaryResuscitationCertification';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=18065', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'CardiopulmonaryResuscitationCertification';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The date an individual''s first aid training certification expires.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'FirstAidCertification';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'First Aid Certification Expiration Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'FirstAidCertification';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001060', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'FirstAidCertification';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=18066', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'FirstAidCertification';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of the category of a legal document giving authorization to perform teaching assignment services.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'RefTeachingCredentialTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Teaching Credential Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'RefTeachingCredentialTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000278', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'RefTeachingCredentialTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=17278', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'RefTeachingCredentialTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of the pre-determined criteria for granting the teaching credential that a person holds.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'RefTeachingCredentialBasisId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Teaching Credential Basis', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'RefTeachingCredentialBasisId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000277', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'RefTeachingCredentialBasisId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=17277', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'RefTeachingCredentialBasisId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Type of Child Development Associate credential as defined by options.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'RefChildDevAssociateTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Child Development Associate Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'RefChildDevAssociateTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000806', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'RefChildDevAssociateTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=17805', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'RefChildDevAssociateTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether paraprofessionals are classified as qualified for their assignment according to state definition.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'RefParaprofessionalQualificationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Paraprofessional Qualification Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'RefParaprofessionalQualificationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000207', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'RefParaprofessionalQualificationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=17207', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'RefParaprofessionalQualificationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A type of organization providing funds for a particular educational or service program or activity or for an individual''s participation in the program or activity.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'RefProgramSponsorTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Program Sponsor Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'RefProgramSponsorTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000716', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'RefProgramSponsorTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=17692', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'RefProgramSponsorTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=18898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of the category of the adult education certification a person holds.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'RefAeCertificationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Adult Education Certification Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'RefAeCertificationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001085', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'RefAeCertificationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19775', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'RefAeCertificationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'RefAeCertificationTypeId';

