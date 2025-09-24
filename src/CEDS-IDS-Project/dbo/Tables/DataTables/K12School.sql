CREATE TABLE [dbo].[K12School] (
    [K12SchoolId]                              INT            IDENTITY (1, 1) NOT NULL,
    [OrganizationId]                           INT            NOT NULL,
    [CharterSchoolIndicator]                   BIT            NULL,
    [CharterSchoolApprovalYear]                NVARCHAR (9)   NULL,
    [AccreditationAgencyName]                  NVARCHAR (300) NULL,
    [CharterSchoolOpenEnrollmentIndicator]     BIT            NULL,
    [CharterSchoolContractApprovalDate]        DATE           NULL,
    [CharterSchoolContractIdNumber]            NVARCHAR (30)  NULL,
    [CharterSchoolContractRenewalDate]         DATE           NULL,
    [K12CharterSchoolManagementOrganizationId] INT            NULL,
    [K12CharterSchoolAuthorizerAgencyId]       INT            NULL,
    [RefSchoolTypeId]                          INT            NULL,
    [RefSchoolLevelId]                         INT            NULL,
    [RefAdministrativeFundingControlId]        INT            NULL,
    [RefCharterSchoolTypeId]                   INT            NULL,
    [RefIncreasedLearningTimeTypeId]           INT            NULL,
    [RefStatePovertyDesignationId]             INT            NULL,
    [RecordStartDateTime]                      DATETIME       NULL,
    [RecordEndDateTime]                        DATETIME       NULL,
    [RecordStatusId]                           INT            NULL,
    [DataCollectionId]                         INT            NULL,
    CONSTRAINT [PK_K12School] PRIMARY KEY NONCLUSTERED ([K12SchoolId] ASC),
    CONSTRAINT [FK_K12School_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_K12School_K12CharterSchoolAuthorizerAgency] FOREIGN KEY ([K12CharterSchoolAuthorizerAgencyId]) REFERENCES [dbo].[K12CharterSchoolAuthorizerAgency] ([K12CharterSchoolAuthorizerAgencyId]),
    CONSTRAINT [FK_K12School_K12CharterSchoolManagementOrganization] FOREIGN KEY ([K12CharterSchoolManagementOrganizationId]) REFERENCES [dbo].[K12CharterSchoolManagementOrganization] ([K12CharterSchoolManagementOrganizationId]),
    CONSTRAINT [FK_K12School_Organization] FOREIGN KEY ([OrganizationId]) REFERENCES [dbo].[Organization] ([OrganizationId]),
    CONSTRAINT [FK_K12School_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_K12School_RefAdminFundingControl] FOREIGN KEY ([RefAdministrativeFundingControlId]) REFERENCES [dbo].[RefAdministrativeFundingControl] ([RefAdministrativeFundingControlId]),
    CONSTRAINT [FK_K12School_RefCharterSchoolType] FOREIGN KEY ([RefCharterSchoolTypeId]) REFERENCES [dbo].[RefCharterSchoolType] ([RefCharterSchoolTypeId]),
    CONSTRAINT [FK_K12School_RefIncreasedLearningTimeType] FOREIGN KEY ([RefIncreasedLearningTimeTypeId]) REFERENCES [dbo].[RefIncreasedLearningTimeType] ([RefIncreasedLearningTimeTypeId]),
    CONSTRAINT [FK_K12School_RefSchoolLevel] FOREIGN KEY ([RefSchoolLevelId]) REFERENCES [dbo].[RefSchoolLevel] ([RefSchoolLevelId]),
    CONSTRAINT [FK_K12School_RefSchoolType] FOREIGN KEY ([RefSchoolTypeId]) REFERENCES [dbo].[RefSchoolType] ([RefSchoolTypeId]),
    CONSTRAINT [FK_K12School_RefStatePovertyDesignation] FOREIGN KEY ([RefStatePovertyDesignationId]) REFERENCES [dbo].[RefStatePovertyDesignation] ([RefStatePovertyDesignationId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information specific to K12 Schools. (Organization and related tables have properties that are common.)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Inherited surrogate key from Organization.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'OrganizationId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'OrganizationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication that a public school provides free public elementary and/or secondary education to eligible students under a specific charter executed, pursuant to a state charter school law, by an authorized chartering agency/authority and that is designated by such authority to be a public charter school.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'CharterSchoolIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Charter School Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'CharterSchoolIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000039', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'CharterSchoolIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19039', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'CharterSchoolIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'CharterSchoolIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The school year in which a charter school was initially approved.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'CharterSchoolApprovalYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Charter School Approval Year', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'CharterSchoolApprovalYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001293', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'CharterSchoolApprovalYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20259', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'CharterSchoolApprovalYear';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'CharterSchoolApprovalYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The full name of an agency that accredited a school.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'AccreditationAgencyName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Accreditation Agency Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'AccreditationAgencyName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001526', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'AccreditationAgencyName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20500', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'AccreditationAgencyName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'AccreditationAgencyName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Indicates that the charter school offers open enrollment.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'CharterSchoolOpenEnrollmentIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Charter School Open Enrollment Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'CharterSchoolOpenEnrollmentIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001548', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'CharterSchoolOpenEnrollmentIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20524', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'CharterSchoolOpenEnrollmentIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'CharterSchoolOpenEnrollmentIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The effective date of the contract (or charter) that an approved charter school authorizer authorized the charter school to operate in the state under the state''s charter school legislation.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'CharterSchoolContractApprovalDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Charter School Contract Approval Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'CharterSchoolContractApprovalDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001652', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'CharterSchoolContractApprovalDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20633', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'CharterSchoolContractApprovalDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'CharterSchoolContractApprovalDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The unique number the SEA assigns to the contract (or charter) that authorizes the charter school to operate in the state under the state''s charter school legislation.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'CharterSchoolContractIdNumber';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Charter School Contract Id Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'CharterSchoolContractIdNumber';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001651', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'CharterSchoolContractIdNumber';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20632', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'CharterSchoolContractIdNumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'CharterSchoolContractIdNumber';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The date by which the charter school must renew its contract (or charter) with an approved charter school authorizer in order to continue to operate in the state under the state''s charter school legislation.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'CharterSchoolContractRenewalDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Charter School Contract Renewal Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'CharterSchoolContractRenewalDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001653', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'CharterSchoolContractRenewalDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20634', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'CharterSchoolContractRenewalDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'CharterSchoolContractRenewalDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of organization that is a separate legal entity that 1) contracts with one or more charter schools to manage, operate, and oversee the charter schools; or 2) holds a charter, or charters, to operate multiple charter schools.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'K12CharterSchoolManagementOrganizationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Charter School Management Organization Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'K12CharterSchoolManagementOrganizationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001650', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'K12CharterSchoolManagementOrganizationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20631', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'K12CharterSchoolManagementOrganizationId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'K12CharterSchoolManagementOrganizationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of education institution as classified by its primary focus. ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'RefSchoolTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'School Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'RefSchoolTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000242', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'RefSchoolTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19242', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'RefSchoolTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'RefSchoolTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of the level of the education institution.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'RefSchoolLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'School Level', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'RefSchoolLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000241', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'RefSchoolLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19241', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'RefSchoolLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'RefSchoolLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of education institution as classified by its funding source.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'RefAdministrativeFundingControlId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Administrative Funding Control', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'RefAdministrativeFundingControlId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000012', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'RefAdministrativeFundingControlId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19012', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'RefAdministrativeFundingControlId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'RefAdministrativeFundingControlId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The category of charter school.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'RefCharterSchoolTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Charter School Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'RefCharterSchoolTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000710', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'RefCharterSchoolTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19686', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'RefCharterSchoolTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'RefCharterSchoolTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The types of increased learning time provided.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'RefIncreasedLearningTimeTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Increased Learning Time Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'RefIncreasedLearningTimeTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000164', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'RefIncreasedLearningTimeTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19164', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'RefIncreasedLearningTimeTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'RefIncreasedLearningTimeTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The designation of a school’s poverty quartile for purposes of determining classes taught by highly qualified teachers in high and low poverty schools, according to state’s indicator of poverty.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'RefStatePovertyDesignationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'State Poverty Designation', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'RefStatePovertyDesignationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000585', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'RefStatePovertyDesignationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19578', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'RefStatePovertyDesignationId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'RefStatePovertyDesignationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12School', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

