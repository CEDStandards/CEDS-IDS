CREATE TABLE [dbo].[JobPosition] (
    [JobPositionId]       INT      IDENTITY (1, 1) NOT NULL,
    [JobId]               INT      NOT NULL,
    [RecordStartDateTime] DATETIME NULL,
    [RecordEndDateTime]   DATETIME NULL,
    [RecordStatusId]      INT      NULL,
    [DataCollectionId]    INT      NULL,
    CONSTRAINT [PK_JobPosition] PRIMARY KEY CLUSTERED ([JobPositionId] ASC),
    CONSTRAINT [FK_JobPosition_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_JobPosition_Job] FOREIGN KEY ([JobId]) REFERENCES [dbo].[Job] ([JobId]),
    CONSTRAINT [FK_JobPosition_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An entity that represents any type of job position. A job position represents an instance of a job.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobPosition';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobPosition';

