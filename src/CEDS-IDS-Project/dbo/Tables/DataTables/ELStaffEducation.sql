CREATE TABLE [dbo].[ELStaffEducation] (
    [ELStaffEducationId]                      INT             IDENTITY (1, 1) NOT NULL,
    [ELStaffId]                               INT             NOT NULL,
    [ECDegreeOrCertificateHolder]             BIT             NULL,
    [TotalCollegeCreditsEarned]               DECIMAL (10, 2) NULL,
    [TotalApprovedECCreditsEarned]            DECIMAL (10, 2) NULL,
    [SchoolAgeEducationPSCredits]             DECIMAL (10, 2) NULL,
    [RefELLevelOfSpecializationId]            INT             NULL,
    [RefELProfessionalDevelopmentTopicAreaId] INT             NULL,
    [RecordStartDateTime]                     DATETIME        NULL,
    [RecordEndDateTime]                       DATETIME        NULL,
    [RecordStatusId]                          INT             NULL,
    [DataCollectionId]                        INT             NULL,
    CONSTRAINT [PK_ELStaffEducation] PRIMARY KEY CLUSTERED ([ELStaffEducationId] ASC),
    CONSTRAINT [FK_ELStaff_RefELLevelOfSpecialization] FOREIGN KEY ([RefELLevelOfSpecializationId]) REFERENCES [dbo].[RefELLevelOfSpecialization] ([RefELLevelOfSpecializationId]),
    CONSTRAINT [FK_ELStaffEducation_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_ELStaffEducation_ELStaff] FOREIGN KEY ([ELStaffId]) REFERENCES [dbo].[ELStaff] ([ELStaffId]),
    CONSTRAINT [FK_ELStaffEducation_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_ELStaffEducation_RefELPDTopicArea] FOREIGN KEY ([RefELProfessionalDevelopmentTopicAreaId]) REFERENCES [dbo].[RefELProfessionalDevelopmentTopicArea] ([RefELProfessionalDevelopmentTopicAreaId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Early childhood credentials and education credits held by an early learning staff member.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEducation';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEducation';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Staff has a degree in early childhood regardless of level.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEducation', @level2type = N'COLUMN', @level2name = N'ECDegreeOrCertificateHolder';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Early Childhood Degree or Certificate Holder', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEducation', @level2type = N'COLUMN', @level2name = N'ECDegreeOrCertificateHolder';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000789', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEducation', @level2type = N'COLUMN', @level2name = N'ECDegreeOrCertificateHolder';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19786', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEducation', @level2type = N'COLUMN', @level2name = N'ECDegreeOrCertificateHolder';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEducation', @level2type = N'COLUMN', @level2name = N'ECDegreeOrCertificateHolder';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Total number of college credits earned, including all credits within a degree and outside a degree, regardless of whether they all are early childhood credits.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEducation', @level2type = N'COLUMN', @level2name = N'TotalCollegeCreditsEarned';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Early Learning Staff Total College Credits Earned', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEducation', @level2type = N'COLUMN', @level2name = N'TotalCollegeCreditsEarned';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000792', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEducation', @level2type = N'COLUMN', @level2name = N'TotalCollegeCreditsEarned';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19791', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEducation', @level2type = N'COLUMN', @level2name = N'TotalCollegeCreditsEarned';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEducation', @level2type = N'COLUMN', @level2name = N'TotalCollegeCreditsEarned';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Total semester credits earned in early childhood regardless of whether credits are earned as part of an early childhood degree program, other degree program or outside of a degree program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEducation', @level2type = N'COLUMN', @level2name = N'TotalApprovedECCreditsEarned';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Total Approved Early Childhood Credits Earned', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEducation', @level2type = N'COLUMN', @level2name = N'TotalApprovedECCreditsEarned';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001086', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEducation', @level2type = N'COLUMN', @level2name = N'TotalApprovedECCreditsEarned';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19787', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEducation', @level2type = N'COLUMN', @level2name = N'TotalApprovedECCreditsEarned';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEducation', @level2type = N'COLUMN', @level2name = N'TotalApprovedECCreditsEarned';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The number of college course credit hours an individual has successfully completed that are related to K-12 education, parks and recreation, and juvenile justice.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEducation', @level2type = N'COLUMN', @level2name = N'SchoolAgeEducationPSCredits';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Number of School-age Education Postsecondary Credit Hours', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEducation', @level2type = N'COLUMN', @level2name = N'SchoolAgeEducationPSCredits';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000816', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEducation', @level2type = N'COLUMN', @level2name = N'SchoolAgeEducationPSCredits';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19815', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEducation', @level2type = N'COLUMN', @level2name = N'SchoolAgeEducationPSCredits';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEducation', @level2type = N'COLUMN', @level2name = N'SchoolAgeEducationPSCredits';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The extent to which a person concentrates upon a particular subject matter area during his or her period of study at an educational institution.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEducation', @level2type = N'COLUMN', @level2name = N'RefELLevelOfSpecializationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Level of Specialization in Early Learning', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEducation', @level2type = N'COLUMN', @level2name = N'RefELLevelOfSpecializationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000341', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEducation', @level2type = N'COLUMN', @level2name = N'RefELLevelOfSpecializationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19340', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEducation', @level2type = N'COLUMN', @level2name = N'RefELLevelOfSpecializationId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEducation', @level2type = N'COLUMN', @level2name = N'RefELLevelOfSpecializationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The topical area of competence needed for Staff professional development.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEducation', @level2type = N'COLUMN', @level2name = N'RefELProfessionalDevelopmentTopicAreaId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Early Learning Professional Development Topic Area', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEducation', @level2type = N'COLUMN', @level2name = N'RefELProfessionalDevelopmentTopicAreaId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001337', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEducation', @level2type = N'COLUMN', @level2name = N'RefELProfessionalDevelopmentTopicAreaId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20304', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEducation', @level2type = N'COLUMN', @level2name = N'RefELProfessionalDevelopmentTopicAreaId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEducation', @level2type = N'COLUMN', @level2name = N'RefELProfessionalDevelopmentTopicAreaId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEducation', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEducation', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEducation', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEducation', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEducation', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEducation', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEducation', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEducation', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEducation', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

