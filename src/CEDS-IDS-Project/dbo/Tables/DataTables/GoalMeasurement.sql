CREATE TABLE [dbo].[GoalMeasurement] (
    [GoalMeasurementId]        INT            IDENTITY (1, 1) NOT NULL,
    [GoalId]                   INT            NOT NULL,
    [Description]              NVARCHAR (MAX) NULL,
    [Schedule]                 NVARCHAR (MAX) NULL,
    [SuccessCriteria]          NVARCHAR (300) NULL,
    [RefGoalMeasurementTypeId] INT            NULL,
    [RecordStartDateTime]      DATETIME       NULL,
    [RecordEndDateTime]        DATETIME       NULL,
    [RecordStatusId]           INT            NULL,
    [DataCollectionId]         INT            NULL,
    CONSTRAINT [PK_GoalMeasurement] PRIMARY KEY CLUSTERED ([GoalMeasurementId] ASC),
    CONSTRAINT [FK_GoalMeasurement_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_GoalMeasurement_Goal] FOREIGN KEY ([GoalId]) REFERENCES [dbo].[Goal] ([GoalId]),
    CONSTRAINT [FK_GoalMeasurement_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_GoalMeasurement_RefGoalMeasurementType] FOREIGN KEY ([RefGoalMeasurementTypeId]) REFERENCES [dbo].[RefGoalMeasurementType] ([RefGoalMeasurementTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information that defines how a goal is to be measured. This may be included in a performance plan, learning plan or IEP.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'GoalMeasurement';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'GoalMeasurement';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The procedures and/or instruments that will be used to measure achievement of a goal or short-term objective.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'GoalMeasurement', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Goal Measurement Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'GoalMeasurement', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001695', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'GoalMeasurement', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20676', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'GoalMeasurement', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Frequency of evaluation of progress toward meeting the goal or short-term objective.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'GoalMeasurement', @level2type = N'COLUMN', @level2name = N'Schedule';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Goal Measurement Schedule', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'GoalMeasurement', @level2type = N'COLUMN', @level2name = N'Schedule';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001696', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'GoalMeasurement', @level2type = N'COLUMN', @level2name = N'Schedule';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20677', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'GoalMeasurement', @level2type = N'COLUMN', @level2name = N'Schedule';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'One or more statements that describes the criteria used by teachers and students to check for attainment of a goal.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'GoalMeasurement', @level2type = N'COLUMN', @level2name = N'SuccessCriteria';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Goal Success Criteria', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'GoalMeasurement', @level2type = N'COLUMN', @level2name = N'SuccessCriteria';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000902', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'GoalMeasurement', @level2type = N'COLUMN', @level2name = N'SuccessCriteria';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19902', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'GoalMeasurement', @level2type = N'COLUMN', @level2name = N'SuccessCriteria';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Type of evidence appropriate for assessing achievement of a goal or short-term objective.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'GoalMeasurement', @level2type = N'COLUMN', @level2name = N'RefGoalMeasurementTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Goal Measurement Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'GoalMeasurement', @level2type = N'COLUMN', @level2name = N'RefGoalMeasurementTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001697', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'GoalMeasurement', @level2type = N'COLUMN', @level2name = N'RefGoalMeasurementTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20678', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'GoalMeasurement', @level2type = N'COLUMN', @level2name = N'RefGoalMeasurementTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'GoalMeasurement', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'GoalMeasurement', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'GoalMeasurement', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'GoalMeasurement', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'GoalMeasurement', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'GoalMeasurement', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'GoalMeasurement', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'GoalMeasurement', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'GoalMeasurement', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'GoalMeasurement', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

