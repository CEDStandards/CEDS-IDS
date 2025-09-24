CREATE TABLE [dbo].[OrganizationJob] (
    [OrganizationJobId]   INT      IDENTITY (1, 1) NOT NULL,
    [JobId]               INT      NOT NULL,
    [OrganizationId]      INT      NOT NULL,
    [RecordStartDateTime] DATETIME NULL,
    [RecordEndDateTime]   DATETIME NULL,
    [RecordStatusId]      INT      NULL,
    [DataCollectionId]    INT      NULL,
    CONSTRAINT [PK_OrganizationJob] PRIMARY KEY CLUSTERED ([OrganizationJobId] ASC),
    CONSTRAINT [FK_OrganizationJob_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_OrganizationJob_Job] FOREIGN KEY ([JobId]) REFERENCES [dbo].[Job] ([JobId]),
    CONSTRAINT [FK_OrganizationJob_Organization] FOREIGN KEY ([OrganizationId]) REFERENCES [dbo].[Organization] ([OrganizationId]),
    CONSTRAINT [FK_OrganizationJob_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The organization responsible for creating the information related to a job.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationJob';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationJob';

