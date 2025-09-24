CREATE TABLE [dbo].[CredentialIssuer] (
    [CredentialIssuerId]        INT            IDENTITY (1, 1) NOT NULL,
    [OrganizationId]            INT            NOT NULL,
    [AwardIssuerOriginURL]      NVARCHAR (512) NULL,
    [RevocationListURL]         NVARCHAR (512) NULL,
    [RefCTDLOrganizationTypeId] INT            NULL,
    [RecordStartDateTime]       DATETIME       NULL,
    [RecordEndDateTime]         DATETIME       NULL,
    [RecordStatusId]            INT            NULL,
    [DataCollectionId]          INT            NULL,
    CONSTRAINT [PK_CredentialIssuer] PRIMARY KEY CLUSTERED ([CredentialIssuerId] ASC),
    CONSTRAINT [FK_CredentialIssuer_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_CredentialIssuer_Organization] FOREIGN KEY ([OrganizationId]) REFERENCES [dbo].[Organization] ([OrganizationId]),
    CONSTRAINT [FK_CredentialIssuer_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_CredentialIssuer_RefCTDLOrganizationType] FOREIGN KEY ([RefCTDLOrganizationTypeId]) REFERENCES [dbo].[RefCTDLOrganizationType] ([RefCTDLOrganizationTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An organization or person that issues a credential.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialIssuer';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialIssuer';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The Uniform Resource Locator (URL) from which the award was issued.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialIssuer', @level2type = N'COLUMN', @level2name = N'AwardIssuerOriginURL';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Credential Award Issuer Origin URL', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialIssuer', @level2type = N'COLUMN', @level2name = N'AwardIssuerOriginURL';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000900', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialIssuer', @level2type = N'COLUMN', @level2name = N'AwardIssuerOriginURL';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19900', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialIssuer', @level2type = N'COLUMN', @level2name = N'AwardIssuerOriginURL';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The URL to a document that includes a list of credential award assertions an issuer has revoked.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialIssuer', @level2type = N'COLUMN', @level2name = N'RevocationListURL';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Credential Issuer Revocation List URL', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialIssuer', @level2type = N'COLUMN', @level2name = N'RevocationListURL';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001662', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialIssuer', @level2type = N'COLUMN', @level2name = N'RevocationListURL';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20643', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialIssuer', @level2type = N'COLUMN', @level2name = N'RevocationListURL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialIssuer', @level2type = N'COLUMN', @level2name = N'RevocationListURL';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of credentialing organization or entity as defined by the Credential Transparency Description Language.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialIssuer', @level2type = N'COLUMN', @level2name = N'RefCTDLOrganizationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'CTDL Organization Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialIssuer', @level2type = N'COLUMN', @level2name = N'RefCTDLOrganizationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001755', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialIssuer', @level2type = N'COLUMN', @level2name = N'RefCTDLOrganizationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20736', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialIssuer', @level2type = N'COLUMN', @level2name = N'RefCTDLOrganizationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialIssuer', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialIssuer', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialIssuer', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialIssuer', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialIssuer', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialIssuer', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialIssuer', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialIssuer', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialIssuer', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

