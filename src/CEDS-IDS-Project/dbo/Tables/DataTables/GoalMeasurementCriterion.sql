CREATE TABLE [dbo].[GoalMeasurementCriterion] (
    [GoalMeasurementCriterionId] INT            IDENTITY (1, 1) NOT NULL,
    [GoalMeasurementId]          INT            NOT NULL,
    [AccuracyPercent]            DECIMAL (3, 2) NULL,
    [AttemptsCount]              INT            NULL,
    [Metric]                     NVARCHAR (60)  NULL,
    [SuccessCount]               INT            NULL,
    [RecordStartDateTime]        DATETIME       NULL,
    [RecordEndDateTime]          DATETIME       NULL,
    [RecordStatusId]             INT            NULL,
    [DataCollectionId]           INT            NULL,
    CONSTRAINT [PK_GoalMeasurementCriterion] PRIMARY KEY CLUSTERED ([GoalMeasurementCriterionId] ASC),
    CONSTRAINT [FK_GoalMeasurementCriterion_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_GoalMeasurementCriterion_GoalMeasurement] FOREIGN KEY ([GoalMeasurementId]) REFERENCES [dbo].[GoalMeasurement] ([GoalMeasurementId]),
    CONSTRAINT [FK_GoalMeasurementCriterion_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information about a threshold or rule used with a measurement to determine if a goal has been reached. This may be included in a performance plan, learning plan or IEP.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'GoalMeasurementCriterion';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'GoalMeasurementCriterion';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The percent of correct results that will be considered to represent successful achievement of a goal.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'GoalMeasurementCriterion', @level2type = N'COLUMN', @level2name = N'AccuracyPercent';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Goal Measurement Criterion Accuracy Percent', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'GoalMeasurementCriterion', @level2type = N'COLUMN', @level2name = N'AccuracyPercent';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001691', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'GoalMeasurementCriterion', @level2type = N'COLUMN', @level2name = N'AccuracyPercent';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20672', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'GoalMeasurementCriterion', @level2type = N'COLUMN', @level2name = N'AccuracyPercent';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The number of attempts representing a completed trial for assessing achievement of a goal.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'GoalMeasurementCriterion', @level2type = N'COLUMN', @level2name = N'AttemptsCount';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Goal Measurement Criterion Attempts Count', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'GoalMeasurementCriterion', @level2type = N'COLUMN', @level2name = N'AttemptsCount';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001692', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'GoalMeasurementCriterion', @level2type = N'COLUMN', @level2name = N'AttemptsCount';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20673', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'GoalMeasurementCriterion', @level2type = N'COLUMN', @level2name = N'AttemptsCount';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A metric used for evaluating achievement of a goal.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'GoalMeasurementCriterion', @level2type = N'COLUMN', @level2name = N'Metric';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Goal Measurement Criterion Metric', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'GoalMeasurementCriterion', @level2type = N'COLUMN', @level2name = N'Metric';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001693', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'GoalMeasurementCriterion', @level2type = N'COLUMN', @level2name = N'Metric';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20674', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'GoalMeasurementCriterion', @level2type = N'COLUMN', @level2name = N'Metric';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The number of correct results that will be considered to represent successful achievement of a goal.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'GoalMeasurementCriterion', @level2type = N'COLUMN', @level2name = N'SuccessCount';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Goal Measurement Criterion Success Count', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'GoalMeasurementCriterion', @level2type = N'COLUMN', @level2name = N'SuccessCount';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001694', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'GoalMeasurementCriterion', @level2type = N'COLUMN', @level2name = N'SuccessCount';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20675', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'GoalMeasurementCriterion', @level2type = N'COLUMN', @level2name = N'SuccessCount';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'GoalMeasurementCriterion', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'GoalMeasurementCriterion', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'GoalMeasurementCriterion', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'GoalMeasurementCriterion', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'GoalMeasurementCriterion', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'GoalMeasurementCriterion', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'GoalMeasurementCriterion', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'GoalMeasurementCriterion', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'GoalMeasurementCriterion', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'GoalMeasurementCriterion', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

