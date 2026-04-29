CREATE TABLE [dbo].[CredentialAwardStatus] (
    [CredentialAwardStatusId]        INT      IDENTITY (1, 1) NOT NULL,
    [CredentialAwardId]              INT      NOT NULL,
    [CredentialAwardStatusDate]      DATE     NULL,
    [RefCredentialAwardStatusTypeId] INT      NULL,
    [RecordStartDateTime]            DATETIME NULL,
    [RecordEndDateTime]              DATETIME NULL,
    [RecordStatusId]                 INT      NULL,
    [DataCollectionId]               INT      NULL,
    CONSTRAINT [PK_CredentialAwardStatus] PRIMARY KEY CLUSTERED ([CredentialAwardStatusId] ASC),
    CONSTRAINT [FK_CredentialAwardStatus_CredentialAward] FOREIGN KEY ([CredentialAwardId]) REFERENCES [dbo].[CredentialAward] ([CredentialAwardId]),
    CONSTRAINT [FK_CredentialAwardStatus_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_CredentialAwardStatus_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_CredentialAwardStatus_RefCredentialAwardStatusType] FOREIGN KEY ([RefCredentialAwardStatusTypeId]) REFERENCES [dbo].[RefCredentialAwardStatusType] ([RefCredentialAwardStatusTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Defines one or more status records for a credential award, capturing validity and status changes over time.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAwardStatus';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAwardStatus';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAwardStatus', @level2type = N'COLUMN', @level2name = N'CredentialAwardStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Inherited surrogate key from CredentialAward.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAwardStatus', @level2type = N'COLUMN', @level2name = N'CredentialAwardId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The date on which the status of a credential award was recorded.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAwardStatus', @level2type = N'COLUMN', @level2name = N'CredentialAwardStatusDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Credential Award Status Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAwardStatus', @level2type = N'COLUMN', @level2name = N'CredentialAwardStatusDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002197', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAwardStatus', @level2type = N'COLUMN', @level2name = N'CredentialAwardStatusDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=22197', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAwardStatus', @level2type = N'COLUMN', @level2name = N'CredentialAwardStatusDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAwardStatus', @level2type = N'COLUMN', @level2name = N'CredentialAwardStatusDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether a credential is valid for use.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAwardStatus', @level2type = N'COLUMN', @level2name = N'RefCredentialAwardStatusTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Credential Award Status Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAwardStatus', @level2type = N'COLUMN', @level2name = N'RefCredentialAwardStatusTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'C002196', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAwardStatus', @level2type = N'COLUMN', @level2name = N'RefCredentialAwardStatusTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://w3id.org/CEDStandards/terms/C002196', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAwardStatus', @level2type = N'COLUMN', @level2name = N'RefCredentialAwardStatusTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAwardStatus', @level2type = N'COLUMN', @level2name = N'RefCredentialAwardStatusTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAwardStatus', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAwardStatus', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAwardStatus', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAwardStatus', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAwardStatus', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAwardStatus', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAwardStatus', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAwardStatus', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAwardStatus', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAwardStatus', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';
