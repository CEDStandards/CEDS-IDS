CREATE TABLE [dbo].[JobCompetency] (
    [JobCompetencyId]        INT      IDENTITY (1, 1) NOT NULL,
    [CompetencyDefinitionId] INT      NOT NULL,
    [JobId]                  INT      NOT NULL,
    [RecordStartDateTime]    DATETIME NULL,
    [RecordEndDateTime]      DATETIME NULL,
    [RecordStatusId]         INT      NULL,
    [DataCollectionId]       INT      NULL,
    CONSTRAINT [PK_JobCompetency] PRIMARY KEY CLUSTERED ([JobCompetencyId] ASC),
    CONSTRAINT [FK_JobCompetency_CompetencyDefinition] FOREIGN KEY ([CompetencyDefinitionId]) REFERENCES [dbo].[CompetencyDefinition] ([CompetencyDefinitionId]),
    CONSTRAINT [FK_JobCompetency_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_JobCompetency_Job] FOREIGN KEY ([JobId]) REFERENCES [dbo].[Job] ([JobId]),
    CONSTRAINT [FK_JobCompetency_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The relationship between a job and the competency or competencies required for that job.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobCompetency';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobCompetency';

