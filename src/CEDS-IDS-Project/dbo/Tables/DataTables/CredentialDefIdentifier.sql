CREATE TABLE [dbo].[CredentialDefIdentifier] (
    [CredentialDefIdentifierId]       INT            IDENTITY (1, 1) NOT NULL,
    [CredentialDefinitionId]          INT            NOT NULL,
    [Identifier]                      NVARCHAR (512) NULL,
    [RefCredentialIdentifierSystemId] INT            NULL,
    [RecordStartDateTime]             DATETIME       NULL,
    [RecordEndDateTime]               DATETIME       NULL,
    [RecordStatusId]                  INT            NULL,
    [DataCollectionId]                INT            NULL,
    CONSTRAINT [PK_CredentialDefIdentifier] PRIMARY KEY CLUSTERED ([CredentialDefIdentifierId] ASC),
    CONSTRAINT [FK_CredentialDefIdentifier_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_CredentialDefIdentifier_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_CredentialDefIdentifier_RefCredentialDefIdentifierSystem] FOREIGN KEY ([RefCredentialIdentifierSystemId]) REFERENCES [dbo].[RefCredentialIdentifierSystem] ([RefCredentialIdentifierSystemId]),
    CONSTRAINT [FK_CredentialDefinitionDefIdentifier_CredentialDefinition] FOREIGN KEY ([CredentialDefinitionId]) REFERENCES [dbo].[CredentialDefinition] ([CredentialDefinitionId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Defines one or more identifiers for a credential defininition.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A globally unique identifier by which the creator/owner/provider of a credential recognizes the achievement in transactions with the external environment.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefIdentifier', @level2type = N'COLUMN', @level2name = N'Identifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Credential Definition Identifier', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefIdentifier', @level2type = N'COLUMN', @level2name = N'Identifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001658', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefIdentifier', @level2type = N'COLUMN', @level2name = N'Identifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20639', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefIdentifier', @level2type = N'COLUMN', @level2name = N'Identifier';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefIdentifier', @level2type = N'COLUMN', @level2name = N'Identifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A coding scheme that is used for identification and record-keeping purposes by a credentialing organization to refer to an achievement.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefIdentifier', @level2type = N'COLUMN', @level2name = N'RefCredentialIdentifierSystemId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Credential Definition Identifier System', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefIdentifier', @level2type = N'COLUMN', @level2name = N'RefCredentialIdentifierSystemId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001739', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefIdentifier', @level2type = N'COLUMN', @level2name = N'RefCredentialIdentifierSystemId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20720', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefIdentifier', @level2type = N'COLUMN', @level2name = N'RefCredentialIdentifierSystemId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefIdentifier', @level2type = N'COLUMN', @level2name = N'RefCredentialIdentifierSystemId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefIdentifier', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefIdentifier', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefIdentifier', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefIdentifier', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefIdentifier', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefIdentifier', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefIdentifier', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefIdentifier', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefIdentifier', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefIdentifier', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

