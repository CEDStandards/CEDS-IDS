CREATE TABLE [dbo].[JobEvaluation] (
    [JobEvaluationId]                  INT      IDENTITY (1, 1) NOT NULL,
    [JobId]                            INT      NOT NULL,
    [RefEvaluationRequiredIndicatorId] INT      NULL,
    [RecordStartDateTime]              DATETIME NULL,
    [RecordEndDateTime]                DATETIME NULL,
    [RecordStatusId]                   INT      NULL,
    [DataCollectionId]                 INT      NULL,
    CONSTRAINT [PK_JobEvaluation] PRIMARY KEY CLUSTERED ([JobEvaluationId] ASC),
    CONSTRAINT [FK_JobEvaluation_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_JobEvaluation_Job] FOREIGN KEY ([JobId]) REFERENCES [dbo].[Job] ([JobId]),
    CONSTRAINT [FK_JobEvaluation_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_JobEvaluation_RefEvaluationRequiredIndicator] FOREIGN KEY ([RefEvaluationRequiredIndicatorId]) REFERENCES [dbo].[RefEvaluationRequiredIndicator] ([RefEvaluationRequiredIndicatorId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information about the evaluation requirements and outcomes associated with a job.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobEvaluation';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobEvaluation';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobEvaluation', @level2type = N'COLUMN', @level2name = N'JobEvaluationId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Inherited surrogate key from Job.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobEvaluation', @level2type = N'COLUMN', @level2name = N'JobId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Indicates if a position must be evaluated.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobEvaluation', @level2type = N'COLUMN', @level2name = N'RefEvaluationRequiredIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Evaluation Required Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobEvaluation', @level2type = N'COLUMN', @level2name = N'RefEvaluationRequiredIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'C002194', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobEvaluation', @level2type = N'COLUMN', @level2name = N'RefEvaluationRequiredIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://w3id.org/CEDStandards/terms/C002194', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobEvaluation', @level2type = N'COLUMN', @level2name = N'RefEvaluationRequiredIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobEvaluation', @level2type = N'COLUMN', @level2name = N'RefEvaluationRequiredIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobEvaluation', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobEvaluation', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobEvaluation', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobEvaluation', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobEvaluation', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobEvaluation', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobEvaluation', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobEvaluation', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobEvaluation', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobEvaluation', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';
