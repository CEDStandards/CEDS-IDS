CREATE TABLE [dbo].[OrganizationAccreditation] (
    [OrganizationAccreditationId]                        INT            IDENTITY (1, 1) NOT NULL,
    [OrganizationId]                                     INT            NOT NULL,
    [AccreditationStatus]                                BIT            NULL,
    [RefAccreditationAgencyId]                           INT            NULL,
    [AccreditationAwardDate]                             DATE           NULL,
    [AccreditationExpirationDate]                        DATE           NULL,
    [SeekingAccreditationDate]                           DATE           NULL,
    [RefHigherEducationInstitutionAccreditationStatusId] INT            NULL,
    [RecordStartDateTime]                                DATETIME       NULL,
    [RecordEndDateTime]                                  DATETIME       NULL,
    [AccreditationAgencyName]                            NVARCHAR (300) NULL,
    [RecordStatusId]                                     INT            NULL,
    [DataCollectionId]                                   INT            NULL,
    CONSTRAINT [PK_OrganizationAccreditation] PRIMARY KEY CLUSTERED ([OrganizationAccreditationId] ASC),
    CONSTRAINT [FK_OrganizationAccreditation_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_OrganizationAccreditation_Organization] FOREIGN KEY ([OrganizationId]) REFERENCES [dbo].[Organization] ([OrganizationId]),
    CONSTRAINT [FK_OrganizationAccreditation_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_OrganizationAccreditation_RefAccreditationAgency] FOREIGN KEY ([RefAccreditationAgencyId]) REFERENCES [dbo].[RefAccreditationAgency] ([RefAccreditationAgencyId]),
    CONSTRAINT [FK_OrganizationAccreditation_RefHigherEducationInstitutionAccreditationStatus] FOREIGN KEY ([RefHigherEducationInstitutionAccreditationStatusId]) REFERENCES [dbo].[RefHigherEducationInstitutionAccreditationStatus] ([RefHigherEducationInstitutionAccreditationStatusId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The accreditation status of an organization and accreditation agency.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationAccreditation';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationAccreditation';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationAccreditation', @level2type = N'COLUMN', @level2name = N'OrganizationAccreditationId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate key from Organization', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationAccreditation', @level2type = N'COLUMN', @level2name = N'OrganizationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of the accreditation status of a organization.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationAccreditation', @level2type = N'COLUMN', @level2name = N'AccreditationStatus';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationAccreditation', @level2type = N'COLUMN', @level2name = N'AccreditationStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The agency that accredited a program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationAccreditation', @level2type = N'COLUMN', @level2name = N'RefAccreditationAgencyId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Accreditation Agency', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationAccreditation', @level2type = N'COLUMN', @level2name = N'RefAccreditationAgencyId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000982', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationAccreditation', @level2type = N'COLUMN', @level2name = N'RefAccreditationAgencyId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19983', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationAccreditation', @level2type = N'COLUMN', @level2name = N'RefAccreditationAgencyId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationAccreditation', @level2type = N'COLUMN', @level2name = N'RefAccreditationAgencyId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The year, month and day when an accreditation was awarded.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationAccreditation', @level2type = N'COLUMN', @level2name = N'AccreditationAwardDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Accreditation Award Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationAccreditation', @level2type = N'COLUMN', @level2name = N'AccreditationAwardDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000840', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationAccreditation', @level2type = N'COLUMN', @level2name = N'AccreditationAwardDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19840', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationAccreditation', @level2type = N'COLUMN', @level2name = N'AccreditationAwardDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationAccreditation', @level2type = N'COLUMN', @level2name = N'AccreditationAwardDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The year, month and day when an accreditation expires.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationAccreditation', @level2type = N'COLUMN', @level2name = N'AccreditationExpirationDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Accreditation Expiration Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationAccreditation', @level2type = N'COLUMN', @level2name = N'AccreditationExpirationDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000841', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationAccreditation', @level2type = N'COLUMN', @level2name = N'AccreditationExpirationDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19841', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationAccreditation', @level2type = N'COLUMN', @level2name = N'AccreditationExpirationDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationAccreditation', @level2type = N'COLUMN', @level2name = N'AccreditationExpirationDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The date in which accreditation process was started (but not officially approved or denied)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationAccreditation', @level2type = N'COLUMN', @level2name = N'SeekingAccreditationDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Organization Seeking Accreditation Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationAccreditation', @level2type = N'COLUMN', @level2name = N'SeekingAccreditationDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001419', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationAccreditation', @level2type = N'COLUMN', @level2name = N'SeekingAccreditationDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20388', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationAccreditation', @level2type = N'COLUMN', @level2name = N'SeekingAccreditationDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationAccreditation', @level2type = N'COLUMN', @level2name = N'SeekingAccreditationDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of the accreditation status of a higher education institution.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationAccreditation', @level2type = N'COLUMN', @level2name = N'RefHigherEducationInstitutionAccreditationStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Higher Education Institution Accreditation Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationAccreditation', @level2type = N'COLUMN', @level2name = N'RefHigherEducationInstitutionAccreditationStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000818', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationAccreditation', @level2type = N'COLUMN', @level2name = N'RefHigherEducationInstitutionAccreditationStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19817', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationAccreditation', @level2type = N'COLUMN', @level2name = N'RefHigherEducationInstitutionAccreditationStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationAccreditation', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationAccreditation', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationAccreditation', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationAccreditation', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationAccreditation', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationAccreditation', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationAccreditation', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationAccreditation', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationAccreditation', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationAccreditation', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The full name of an agency that accredited a school.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationAccreditation', @level2type = N'COLUMN', @level2name = N'AccreditationAgencyName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Accreditation Agency Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationAccreditation', @level2type = N'COLUMN', @level2name = N'AccreditationAgencyName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001526', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationAccreditation', @level2type = N'COLUMN', @level2name = N'AccreditationAgencyName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20500', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationAccreditation', @level2type = N'COLUMN', @level2name = N'AccreditationAgencyName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationAccreditation', @level2type = N'COLUMN', @level2name = N'AccreditationAgencyName';

