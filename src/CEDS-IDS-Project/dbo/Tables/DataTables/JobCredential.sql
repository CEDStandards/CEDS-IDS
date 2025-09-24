CREATE TABLE [dbo].[JobCredential] (
    [JobCredentialId]        INT      IDENTITY (1, 1) NOT NULL,
    [JobId]                  INT      NOT NULL,
    [CredentialDefinitionId] INT      NOT NULL,
    [RecordStartDateTime]    DATETIME NULL,
    [RecordEndDateTime]      DATETIME NULL,
    [RecordStatusId]         INT      NULL,
    [DataCollectionId]       INT      NULL,
    CONSTRAINT [PK_JobCredential] PRIMARY KEY CLUSTERED ([JobCredentialId] ASC),
    CONSTRAINT [FK_JobCredential_CredentialDefinition] FOREIGN KEY ([CredentialDefinitionId]) REFERENCES [dbo].[CredentialDefinition] ([CredentialDefinitionId]),
    CONSTRAINT [FK_JobCredential_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_JobCredential_Job] FOREIGN KEY ([JobId]) REFERENCES [dbo].[Job] ([JobId]),
    CONSTRAINT [FK_JobCredential_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The relationship between a job and credential or credentials required for that job.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobCredential';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobCredential';

