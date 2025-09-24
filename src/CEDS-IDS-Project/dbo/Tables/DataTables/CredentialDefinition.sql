CREATE TABLE [dbo].[CredentialDefinition] (
    [CredentialDefinitionId]                      INT             IDENTITY (1, 1) NOT NULL,
    [AlternateName]                               NVARCHAR (300)  NULL,
    [CredentialNAICSIndustryType]                 NVARCHAR (6)    NULL,
    [Description]                                 NVARCHAR (300)  NULL,
    [EmploymentNAICSCode]                         NVARCHAR (6)    NULL,
    [ImageUrl]                                    NVARCHAR (512)  NULL,
    [JurisdictionRegion]                          NVARCHAR (2000) NULL,
    [JurisdictionRegionException]                 NVARCHAR (2000) NULL,
    [Keywords]                                    NVARCHAR (MAX)  NULL,
    [Title]                                       NVARCHAR (300)  NULL,
    [ValidationMethodDescription]                 NVARCHAR (MAX)  NULL,
    [Version]                                     DECIMAL (9, 2)  NULL,
    [CredentialDefDateEffective]                  DATE            NULL,
    [RefCareerClusterId]                          INT             NULL,
    [RefCipCodeId]                                INT             NULL,
    [RefCredentialDefIntendedPurposeTypeId]       INT             NULL,
    [RefCredentialDefStatusTypeId]                INT             NULL,
    [RefCredentialDefVerificationTypeId]          INT             NULL,
    [RefONETSOCOccupationTypeId]                  INT             NULL,
    [RefCTDLAudienceLevelTypeId]                  INT             NULL,
    [RecordStartDateTime]                         DATETIME        NULL,
    [RecordEndDateTime]                           DATETIME        NULL,
    [CredentialDefinitionTerminalDegreeIndicator] BIT             NULL,
    [RecordStatusId]                              INT             NULL,
    [DataCollectionId]                            INT             NULL,
    [RefCredentialTypeId]                         INT             NULL,
    [CredentialName]                             NVARCHAR (60)  NOT NULL,
    CONSTRAINT [PK_CredentialDefinition] PRIMARY KEY CLUSTERED ([CredentialDefinitionId] ASC),
    CONSTRAINT [FK_CredentialDefinition_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_CredentialDefinition_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_CredentialDefinition_RefCareerCluster] FOREIGN KEY ([RefCareerClusterId]) REFERENCES [dbo].[RefCareerCluster] ([RefCareerClusterId]),
    CONSTRAINT [FK_CredentialDefinition_RefCipCode] FOREIGN KEY ([RefCipCodeId]) REFERENCES [dbo].[RefCipCode] ([RefCipCodeId]),
    CONSTRAINT [FK_CredentialDefinition_RefCredentialType] FOREIGN KEY ([RefCredentialTypeId]) REFERENCES [dbo].[RefCredentialType] ([RefCredentialTypeId]),
    CONSTRAINT [FK_CredentialDefinition_RefCredentialDefinitionIntendedPurposeType] FOREIGN KEY ([RefCredentialDefIntendedPurposeTypeId]) REFERENCES [dbo].[RefCredentialDefIntendedPurposeType] ([RefCredentialDefIntendedPurposeTypeId]),
    CONSTRAINT [FK_CredentialDefinition_RefCredentialDefinitionStatusType] FOREIGN KEY ([RefCredentialDefStatusTypeId]) REFERENCES [dbo].[RefCredentialDefStatusType] ([RefCredentialDefStatusTypeId]),
    CONSTRAINT [FK_CredentialDefinition_RefCredentialDefinitionVerificationType] FOREIGN KEY ([RefCredentialDefVerificationTypeId]) REFERENCES [dbo].[RefCredentialDefVerificationType] ([RefCredentialDefVerificationTypeId]),
    CONSTRAINT [FK_CredentialDefinition_RefCTDLAudienceLevelType] FOREIGN KEY ([RefCTDLAudienceLevelTypeId]) REFERENCES [dbo].[RefCTDLAudienceLevelType] ([RefCTDLAudienceLevelTypeId]),
    CONSTRAINT [FK_CredentialDefinition_RefONETSOCOccupationType] FOREIGN KEY ([RefONETSOCOccupationTypeId]) REFERENCES [dbo].[RefONETSOCOccupationType] ([RefONETSOCOccupationTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Defines a qualification, achievement, personal or organizational quality, or aspect of an identity typically used to indicate suitability.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An alias for the credential, which may include acronyms, alpha-numeric notations, and other forms of name abbreviations in common use such as PhD, MA, and BA.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'AlternateName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Credential Definition Alternate Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'AlternateName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001736', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'AlternateName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20717', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'AlternateName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'AlternateName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The North American Industry Classification System (NAICS) class identifier for an industry associated with the credential.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'CredentialNAICSIndustryType';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Credential Definition NAICS Industry Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'CredentialNAICSIndustryType';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001742', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'CredentialNAICSIndustryType';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20723', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'CredentialNAICSIndustryType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'CredentialNAICSIndustryType';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A description of the achievement.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Credential Definition Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000895', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19895', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The North American Industry Classification System (NAICS) code associated with an individual''s employment.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'EmploymentNAICSCode';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Employment NAICS Code', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'EmploymentNAICSCode';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001064', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'EmploymentNAICSCode';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20070', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'EmploymentNAICSCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'EmploymentNAICSCode';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The Uniform Resource Locator (URL) for the unique address of an image representing an award or badge associated with the achievement.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'ImageUrl';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Credential Image URL', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'ImageUrl';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000894', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'ImageUrl';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19894', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'ImageUrl';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'ImageUrl';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The geo-political region in which the credential is applicable.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'JurisdictionRegion';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Credential Definition Jurisdiction Region', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'JurisdictionRegion';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001743', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'JurisdictionRegion';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20724', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'JurisdictionRegion';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'JurisdictionRegion';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A geo-political region in which the credential does not apply.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'JurisdictionRegionException';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Credential Definition Jurisdiction Region Exception', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'JurisdictionRegionException';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001744', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'JurisdictionRegionException';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20725', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'JurisdictionRegionException';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'JurisdictionRegionException';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Keywords or key phrases describing aspects of a credential considered useful for its discovery.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'Keywords';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Credential Definition Keywords', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'Keywords';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001745', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'Keywords';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20726', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'Keywords';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'Keywords';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The title assigned to the achievement.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'Title';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Credential Definition Title', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'Title';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000893', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'Title';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19893', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'Title';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'Title';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Description of the methods used to evaluate the validity and reliability of a credential earned by a person.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'ValidationMethodDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Credential Definition Validation Method Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'ValidationMethodDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001752', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'ValidationMethodDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20733', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'ValidationMethodDescription';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'ValidationMethodDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An alphanumeric identifier of a version of the credential being described that is unique within the organizational context.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'Version';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Credential Definition Version', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'Version';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001754', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'Version';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20735', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'Version';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'Version';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Effective date of the content of a credential definition.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'CredentialDefDateEffective';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Credential Definition Date Effective', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'CredentialDefDateEffective';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001910', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'CredentialDefDateEffective';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20891', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'CredentialDefDateEffective';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'CredentialDefDateEffective';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The career cluster that defines the industry or occupational focus which may be associated with a career pathways program, plan of study, or course.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'RefCareerClusterId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Career Cluster', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'RefCareerClusterId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001288', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'RefCareerClusterId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20254', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'RefCareerClusterId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'RefCareerClusterId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A six-digit code in the form xx.xxxx that identifies instructional program specialties within educational institutions.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'RefCipCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Classification of Instructional Program Code', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'RefCipCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000043', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'RefCipCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19043', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'RefCipCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'RefCipCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The intended type of application of the credential by the holder.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'RefCredentialDefIntendedPurposeTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Credential Definition Intended Purpose Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'RefCredentialDefIntendedPurposeTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001749', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'RefCredentialDefIntendedPurposeTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20730', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'RefCredentialDefIntendedPurposeTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'RefCredentialDefIntendedPurposeTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The status of the credential offered by a credentialing organization.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'RefCredentialDefStatusTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Credential Definition Status Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'RefCredentialDefStatusTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001740', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'RefCredentialDefStatusTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20721', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'RefCredentialDefStatusTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'RefCredentialDefStatusTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A resource describing the means by which someone can verify whether a credential has been attained by a person.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'RefCredentialDefVerificationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Credential Definition Verification Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'RefCredentialDefVerificationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001753', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'RefCredentialDefVerificationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20734', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'RefCredentialDefVerificationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'RefCredentialDefVerificationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The O*NET-SOC taxonomy defines the set of occupations across the world of work based on the Standard Occupational Classification.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'RefONETSOCOccupationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'O*NET-SOC Occupation Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'RefONETSOCOccupationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001756', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'RefONETSOCOccupationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20737', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'RefONETSOCOccupationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'RefONETSOCOccupationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Type of level indicating a point in a progression through an educational or training context, for which the credential is intended; select from an existing enumeration of such types.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'RefCTDLAudienceLevelTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'CTDL Audience Level Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'RefCTDLAudienceLevelTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001913', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'RefCTDLAudienceLevelTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20894', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'RefCTDLAudienceLevelTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'RefCTDLAudienceLevelTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'This degree is the highest degree that can be awarded in this classification of instructional programs field or program area.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'CredentialDefinitionTerminalDegreeIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Credential Definition Terminal Degree Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'CredentialDefinitionTerminalDegreeIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001953', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'CredentialDefinitionTerminalDegreeIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20919', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'CredentialDefinitionTerminalDegreeIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefinition', @level2type = N'COLUMN', @level2name = N'CredentialDefinitionTerminalDegreeIndicator';

