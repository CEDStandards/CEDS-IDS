CREATE TABLE [dbo].[IndividualizedProgramProgressGoal] (
    [IndividualizedProgramProgressGoalId]   INT      IDENTITY (1, 1) NOT NULL,
    [GoalPerformanceId]                     INT      NOT NULL,
    [IndividualizedProgramProgressReportId] INT      NOT NULL,
    [RecordStartDateTime]                   DATETIME NULL,
    [RecordEndDateTime]                     DATETIME NULL,
    [RecordStatusId]                        INT      NULL,
    [DataCollectionId]                      INT      NULL,
    CONSTRAINT [PK_IndividualizedProgramProgressGoal] PRIMARY KEY CLUSTERED ([IndividualizedProgramProgressGoalId] ASC),
    CONSTRAINT [FK_IndividualizedProgramProgressGoal_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_IndividualizedProgramProgressGoal_GoalPerformance] FOREIGN KEY ([GoalPerformanceId]) REFERENCES [dbo].[GoalPerformance] ([GoalPerformanceId]),
    CONSTRAINT [FK_IndividualizedProgramProgressGoal_IndividualizedProgramProgressReport] FOREIGN KEY ([IndividualizedProgramProgressReportId]) REFERENCES [dbo].[IndividualizedProgramProgressReport] ([IndividualizedProgramProgressReportId]),
    CONSTRAINT [FK_IndividualizedProgramProgressGoal_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [IX_GoalPerformance_IndividualizedProgramProgressReport] UNIQUE NONCLUSTERED ([GoalPerformanceId] ASC, [IndividualizedProgramProgressReportId] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Links a detailed GoalPerformance record to the progress report, such as for an IEP.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramProgressGoal';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramProgressGoal';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramProgressGoal', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramProgressGoal', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramProgressGoal', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramProgressGoal', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramProgressGoal', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramProgressGoal', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramProgressGoal', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramProgressGoal', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramProgressGoal', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramProgressGoal', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

