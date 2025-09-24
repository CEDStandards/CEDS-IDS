CREATE TABLE [dbo].[ELChildServicesApplication] (
    [ELChildServicesApplicationId]                  INT            IDENTITY (1, 1) NOT NULL,
    [OrganizationPersonRoleId]                      INT            NOT NULL,
    [ELApplicationIdentifier]                       NVARCHAR (40)  NULL,
    [ApplicationDate]                               DATE           NULL,
    [ELEnrollmentApplicationDocumentIdentifier]     NVARCHAR (40)  NULL,
    [ELEnrollmentApplicationDocumentName]           NVARCHAR (60)  NULL,
    [ELEnrollmentApplicationDocumentType]           NVARCHAR (100) NULL,
    [ELApplicationRequiredDocument]                 BIT            NULL,
    [ELEnrollmentApplicationVerificationDate]       DATE           NULL,
    [ELEnrollmentApplicationVerificationReasonType] NVARCHAR (100) NULL,
    [SitePreferenceRank]                            NVARCHAR (300) NULL,
    [RecordStartDateTime]                           DATETIME       NULL,
    [RecordEndDateTime]                             DATETIME       NULL,
    [RecordStatusId]                                INT            NULL,
    [DataCollectionId]                              INT            NULL,
    CONSTRAINT [PK_ELChildServicesApplication] PRIMARY KEY CLUSTERED ([ELChildServicesApplicationId] ASC),
    CONSTRAINT [FK_ELChildServicesApplication_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_ELChildServicesApplication_OrgPersonRole] FOREIGN KEY ([OrganizationPersonRoleId]) REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]),
    CONSTRAINT [FK_ELChildServicesApplication_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information about the application process for earliy learning services.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildServicesApplication';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildServicesApplication';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate key from OrganizationPersonRole', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildServicesApplication', @level2type = N'COLUMN', @level2name = N'OrganizationPersonRoleId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Identifier for the application for enrollment or direct services filled out on behalf of a child', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildServicesApplication', @level2type = N'COLUMN', @level2name = N'ELApplicationIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Early Learning Application Identifier', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildServicesApplication', @level2type = N'COLUMN', @level2name = N'ELApplicationIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001597', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildServicesApplication', @level2type = N'COLUMN', @level2name = N'ELApplicationIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20576', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildServicesApplication', @level2type = N'COLUMN', @level2name = N'ELApplicationIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildServicesApplication', @level2type = N'COLUMN', @level2name = N'ELApplicationIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The year, month and day on which an individual  application is received by the organization.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildServicesApplication', @level2type = N'COLUMN', @level2name = N'ApplicationDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Application Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildServicesApplication', @level2type = N'COLUMN', @level2name = N'ApplicationDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000323', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildServicesApplication', @level2type = N'COLUMN', @level2name = N'ApplicationDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19323', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildServicesApplication', @level2type = N'COLUMN', @level2name = N'ApplicationDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildServicesApplication', @level2type = N'COLUMN', @level2name = N'ApplicationDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Identifier for an enrollment application document record.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildServicesApplication', @level2type = N'COLUMN', @level2name = N'ELEnrollmentApplicationDocumentIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Early Learning Enrollment Application Document Identifier', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildServicesApplication', @level2type = N'COLUMN', @level2name = N'ELEnrollmentApplicationDocumentIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001593', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildServicesApplication', @level2type = N'COLUMN', @level2name = N'ELEnrollmentApplicationDocumentIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20572', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildServicesApplication', @level2type = N'COLUMN', @level2name = N'ELEnrollmentApplicationDocumentIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildServicesApplication', @level2type = N'COLUMN', @level2name = N'ELEnrollmentApplicationDocumentIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Document name for an enrollment application document record.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildServicesApplication', @level2type = N'COLUMN', @level2name = N'ELEnrollmentApplicationDocumentName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Early Learning Enrollment Application Document Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildServicesApplication', @level2type = N'COLUMN', @level2name = N'ELEnrollmentApplicationDocumentName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001594', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildServicesApplication', @level2type = N'COLUMN', @level2name = N'ELEnrollmentApplicationDocumentName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20573', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildServicesApplication', @level2type = N'COLUMN', @level2name = N'ELEnrollmentApplicationDocumentName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildServicesApplication', @level2type = N'COLUMN', @level2name = N'ELEnrollmentApplicationDocumentName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Document type for an enrollment application document record.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildServicesApplication', @level2type = N'COLUMN', @level2name = N'ELEnrollmentApplicationDocumentType';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Early Learning Enrollment Application Document Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildServicesApplication', @level2type = N'COLUMN', @level2name = N'ELEnrollmentApplicationDocumentType';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001595', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildServicesApplication', @level2type = N'COLUMN', @level2name = N'ELEnrollmentApplicationDocumentType';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20574', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildServicesApplication', @level2type = N'COLUMN', @level2name = N'ELEnrollmentApplicationDocumentType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildServicesApplication', @level2type = N'COLUMN', @level2name = N'ELEnrollmentApplicationDocumentType';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Identifies a specific document required for enrollment.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildServicesApplication', @level2type = N'COLUMN', @level2name = N'ELApplicationRequiredDocument';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Early Learning Application Required Document', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildServicesApplication', @level2type = N'COLUMN', @level2name = N'ELApplicationRequiredDocument';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001599', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildServicesApplication', @level2type = N'COLUMN', @level2name = N'ELApplicationRequiredDocument';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20578', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildServicesApplication', @level2type = N'COLUMN', @level2name = N'ELApplicationRequiredDocument';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildServicesApplication', @level2type = N'COLUMN', @level2name = N'ELApplicationRequiredDocument';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Date the required document was verified for the enrollment application', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildServicesApplication', @level2type = N'COLUMN', @level2name = N'ELEnrollmentApplicationVerificationDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Early Learning Enrollment Application Verification Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildServicesApplication', @level2type = N'COLUMN', @level2name = N'ELEnrollmentApplicationVerificationDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001592', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildServicesApplication', @level2type = N'COLUMN', @level2name = N'ELEnrollmentApplicationVerificationDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20571', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildServicesApplication', @level2type = N'COLUMN', @level2name = N'ELEnrollmentApplicationVerificationDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildServicesApplication', @level2type = N'COLUMN', @level2name = N'ELEnrollmentApplicationVerificationDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Identifies the reason for verification of enrollment application information', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildServicesApplication', @level2type = N'COLUMN', @level2name = N'ELEnrollmentApplicationVerificationReasonType';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Early Learning Enrollment Application Verification Reason Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildServicesApplication', @level2type = N'COLUMN', @level2name = N'ELEnrollmentApplicationVerificationReasonType';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001600', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildServicesApplication', @level2type = N'COLUMN', @level2name = N'ELEnrollmentApplicationVerificationReasonType';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20579', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildServicesApplication', @level2type = N'COLUMN', @level2name = N'ELEnrollmentApplicationVerificationReasonType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildServicesApplication', @level2type = N'COLUMN', @level2name = N'ELEnrollmentApplicationVerificationReasonType';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The applicant preference that the family has for the program sites.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildServicesApplication', @level2type = N'COLUMN', @level2name = N'SitePreferenceRank';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Site Preference Rank', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildServicesApplication', @level2type = N'COLUMN', @level2name = N'SitePreferenceRank';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001627', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildServicesApplication', @level2type = N'COLUMN', @level2name = N'SitePreferenceRank';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20608', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildServicesApplication', @level2type = N'COLUMN', @level2name = N'SitePreferenceRank';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildServicesApplication', @level2type = N'COLUMN', @level2name = N'SitePreferenceRank';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildServicesApplication', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildServicesApplication', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildServicesApplication', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildServicesApplication', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildServicesApplication', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildServicesApplication', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildServicesApplication', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildServicesApplication', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildServicesApplication', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

