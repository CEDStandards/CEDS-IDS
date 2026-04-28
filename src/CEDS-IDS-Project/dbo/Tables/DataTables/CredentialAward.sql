CREATE TABLE [dbo].[CredentialAward] (
    [CredentialAwardId]           INT            IDENTITY (1, 1) NOT NULL,
    [CredentialDefinitionId]      INT            NOT NULL,
    [CredentialIssuerId]          INT            NOT NULL,
    [PersonId]                    INT            NULL,
    [AdvancedStandingDescription] NVARCHAR (MAX) NULL,
    [AdvancedStandingURL]         NVARCHAR (512) NULL,
    [ApproverName]                NVARCHAR (300) NULL,
    [CompletionDate]              DATE           NULL,
    [CredentialAwardEndDate]      DATE           NULL,
    [EvidenceURL]                 NVARCHAR (512) NULL,
    [RevokedDate]                 DATE           NULL,
    [RevokedIndicator]            BIT            NULL,
    [RevokedReason]               NVARCHAR (MAX) NULL,
    [CredentialAwardStartDate]    DATE           NULL,
    [RecordStartDateTime]         DATETIME       NULL,
    [RecordEndDateTime]           DATETIME       NULL,
    [OrganizationId]              INT            NULL,
    [RecordStatusId]              INT            NULL,
    [DataCollectionId]            INT            NULL,
    [ExpirationDate]              DATE           NULL,
    [RefIssuingStateId]           INT            NULL,
    [ProfessionalCertificateOrLicenseNumber] NVARCHAR (30) NULL,
    [CredentialOrLicenseAwardEntity] NVARCHAR (60) NULL,
    [RefCredentialAwardStatusTypeId]           INT            NULL,
    [RefCredentialAwardIdentificationSystemId] INT            NULL,
    [CredentialAwardIdentifier]                NVARCHAR (60)  NULL,
    [CredentialAwardStatusDate]                DATE           NULL,
    CONSTRAINT [PK_CredentialAward] PRIMARY KEY CLUSTERED ([CredentialAwardId] ASC),
    CONSTRAINT [FK_CredentialAward_CredentialIssuer] FOREIGN KEY ([CredentialIssuerId]) REFERENCES [dbo].[CredentialIssuer] ([CredentialIssuerId]),
    CONSTRAINT [FK_CredentialAward_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_CredentialAward_Organization] FOREIGN KEY ([OrganizationId]) REFERENCES [dbo].[Organization] ([OrganizationId]),
    CONSTRAINT [FK_CredentialAward_Person] FOREIGN KEY ([PersonId]) REFERENCES [dbo].[Person] ([PersonId]),
    CONSTRAINT [FK_CredentialAward_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_CredentialAward_RefIssuingState] FOREIGN KEY ([RefIssuingStateId]) REFERENCES [dbo].[RefState] ([RefStateId]),
    CONSTRAINT [FK_CredentialDefinitionAward_CredentialDefinition] FOREIGN KEY ([CredentialDefinitionId]) REFERENCES [dbo].[CredentialDefinition] ([CredentialDefinitionId]),
    CONSTRAINT [FK_CredentialAward_RefCredentialAwardStatusType] FOREIGN KEY ([RefCredentialAwardStatusTypeId]) REFERENCES [dbo].[RefCredentialAwardStatusType] ([RefCredentialAwardStatusTypeId]),
    CONSTRAINT [FK_CredentialAward_RefCredentialAwardIdentificationSystem] FOREIGN KEY ([RefCredentialAwardIdentificationSystemId]) REFERENCES [dbo].[RefCredentialAwardIdentificationSystem] ([RefCredentialAwardIdentificationSystemId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information about the award of a credential to a person or organization.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAward';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAward';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A description of a credential that reduced the time or cost of attaining this credential.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAward', @level2type = N'COLUMN', @level2name = N'AdvancedStandingDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Credential Advanced Standing Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAward', @level2type = N'COLUMN', @level2name = N'AdvancedStandingDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001734', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAward', @level2type = N'COLUMN', @level2name = N'AdvancedStandingDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20715', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAward', @level2type = N'COLUMN', @level2name = N'AdvancedStandingDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A URL that resolves to information about a credential that reduced the time or cost of attaining this credential.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAward', @level2type = N'COLUMN', @level2name = N'AdvancedStandingURL';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Credential Advanced Standing URL', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAward', @level2type = N'COLUMN', @level2name = N'AdvancedStandingURL';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001735', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAward', @level2type = N'COLUMN', @level2name = N'AdvancedStandingURL';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20716', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAward', @level2type = N'COLUMN', @level2name = N'AdvancedStandingURL';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Pronouncement of a favorable judgment by the agent being referenced.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAward', @level2type = N'COLUMN', @level2name = N'ApproverName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Credential Award Approver Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAward', @level2type = N'COLUMN', @level2name = N'ApproverName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001737', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAward', @level2type = N'COLUMN', @level2name = N'ApproverName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20718', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAward', @level2type = N'COLUMN', @level2name = N'ApproverName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The date on which the person''s requirements for earning a credential were met or completed.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAward', @level2type = N'COLUMN', @level2name = N'CompletionDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Credential Completion Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAward', @level2type = N'COLUMN', @level2name = N'CompletionDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001664', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAward', @level2type = N'COLUMN', @level2name = N'CompletionDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20645', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAward', @level2type = N'COLUMN', @level2name = N'CompletionDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The date, if any, on which the award or achievement expires or requires renewal.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAward', @level2type = N'COLUMN', @level2name = N'CredentialAwardEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Credential Award End Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAward', @level2type = N'COLUMN', @level2name = N'CredentialAwardEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001164', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAward', @level2type = N'COLUMN', @level2name = N'CredentialAwardEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20121', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAward', @level2type = N'COLUMN', @level2name = N'CredentialAwardEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAward', @level2type = N'COLUMN', @level2name = N'CredentialAwardEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A URL to a page that describes the evidence that the learner met the criteria for attainment of the credential award.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAward', @level2type = N'COLUMN', @level2name = N'EvidenceURL';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Credential Award Evidence URL', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAward', @level2type = N'COLUMN', @level2name = N'EvidenceURL';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001669', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAward', @level2type = N'COLUMN', @level2name = N'EvidenceURL';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20650', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAward', @level2type = N'COLUMN', @level2name = N'EvidenceURL';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The date on which credential award was revoked.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAward', @level2type = N'COLUMN', @level2name = N'RevokedDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Credential Revoked Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAward', @level2type = N'COLUMN', @level2name = N'RevokedDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001660', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAward', @level2type = N'COLUMN', @level2name = N'RevokedDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20641', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAward', @level2type = N'COLUMN', @level2name = N'RevokedDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Indicates whether the credential has been revoked by the credential provider.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAward', @level2type = N'COLUMN', @level2name = N'RevokedIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Credential Revoked Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAward', @level2type = N'COLUMN', @level2name = N'RevokedIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001751', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAward', @level2type = N'COLUMN', @level2name = N'RevokedIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20732', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAward', @level2type = N'COLUMN', @level2name = N'RevokedIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Published reason for revocation of a credential award.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAward', @level2type = N'COLUMN', @level2name = N'RevokedReason';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Credential Revoked Reason', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAward', @level2type = N'COLUMN', @level2name = N'RevokedReason';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001661', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAward', @level2type = N'COLUMN', @level2name = N'RevokedReason';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20642', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAward', @level2type = N'COLUMN', @level2name = N'RevokedReason';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The date on which the achievement was conferred.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAward', @level2type = N'COLUMN', @level2name = N'CredentialAwardStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Credential Award Start Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAward', @level2type = N'COLUMN', @level2name = N'CredentialAwardStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001163', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAward', @level2type = N'COLUMN', @level2name = N'CredentialAwardStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20120', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAward', @level2type = N'COLUMN', @level2name = N'CredentialAwardStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAward', @level2type = N'COLUMN', @level2name = N'CredentialAwardStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAward', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAward', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAward', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAward', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAward', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAward', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAward', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAward', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAward', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAward', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether a credential is valid for use.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAward', @level2type = N'COLUMN', @level2name = N'RefCredentialAwardStatusTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Credential Award Status Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAward', @level2type = N'COLUMN', @level2name = N'RefCredentialAwardStatusTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'C002196', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAward', @level2type = N'COLUMN', @level2name = N'RefCredentialAwardStatusTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://w3id.org/CEDStandards/terms/C002196', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAward', @level2type = N'COLUMN', @level2name = N'RefCredentialAwardStatusTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAward', @level2type = N'COLUMN', @level2name = N'RefCredentialAwardStatusTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A coding scheme that is used for identification and record-keeping purposes by a program, school, school system, state, or other organization to refer to the award of a credential.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAward', @level2type = N'COLUMN', @level2name = N'RefCredentialAwardIdentificationSystemId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Credential Award Identification System', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAward', @level2type = N'COLUMN', @level2name = N'RefCredentialAwardIdentificationSystemId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'C002199', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAward', @level2type = N'COLUMN', @level2name = N'RefCredentialAwardIdentificationSystemId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://w3id.org/CEDStandards/terms/C002199', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAward', @level2type = N'COLUMN', @level2name = N'RefCredentialAwardIdentificationSystemId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAward', @level2type = N'COLUMN', @level2name = N'RefCredentialAwardIdentificationSystemId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A unique number or alphanumeric code assigned to a credential award by a program, school, school system, state, or other agency or entity.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAward', @level2type = N'COLUMN', @level2name = N'CredentialAwardIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Credential Award Identifier', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAward', @level2type = N'COLUMN', @level2name = N'CredentialAwardIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002198', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAward', @level2type = N'COLUMN', @level2name = N'CredentialAwardIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=22198', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAward', @level2type = N'COLUMN', @level2name = N'CredentialAwardIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAward', @level2type = N'COLUMN', @level2name = N'CredentialAwardIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The date on which the status of a credential award was recorded.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAward', @level2type = N'COLUMN', @level2name = N'CredentialAwardStatusDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Credential Award Status Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAward', @level2type = N'COLUMN', @level2name = N'CredentialAwardStatusDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002197', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAward', @level2type = N'COLUMN', @level2name = N'CredentialAwardStatusDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=22197', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAward', @level2type = N'COLUMN', @level2name = N'CredentialAwardStatusDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAward', @level2type = N'COLUMN', @level2name = N'CredentialAwardStatusDate';
