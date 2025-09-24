CREATE TABLE [dbo].[LearnerActivity_LearningResource] (
    [LearnerActivity_LearningResourceId] INT      IDENTITY (1, 1) NOT NULL,
    [LearnerActivityId]                  INT      NOT NULL,
    [LearningResourceId]                 INT      NOT NULL,
    [RecordStartDateTime]                DATETIME NULL,
    [RecordEndDateTime]                  DATETIME NULL,
    [RecordStatusId]                     INT      NULL,
    [DataCollectionId]                   INT      NULL,
    CONSTRAINT [PK_LearnerActivity_LearningResource] PRIMARY KEY CLUSTERED ([LearnerActivity_LearningResourceId] ASC),
    CONSTRAINT [FK_LearnerActivity_LearningResource_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_LearnerActivity_LearningResource_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_LearnerAssignment_LearningResource_LearnerAssignment] FOREIGN KEY ([LearnerActivityId]) REFERENCES [dbo].[LearnerActivity] ([LearnerActivityId]),
    CONSTRAINT [FK_LearnerAssignment_LearningResource_LearningResource] FOREIGN KEY ([LearningResourceId]) REFERENCES [dbo].[LearningResource] ([LearningResourceId]),
    CONSTRAINT [IX_LearnerActivity_LearningResource] UNIQUE NONCLUSTERED ([LearnerActivityId] ASC, [LearningResourceId] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The collection of learning resources for a learner activity.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearnerActivity_LearningResource';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearnerActivity_LearningResource';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearnerActivity_LearningResource', @level2type = N'COLUMN', @level2name = N'LearnerActivity_LearningResourceId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - LearnerActivity', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearnerActivity_LearningResource', @level2type = N'COLUMN', @level2name = N'LearnerActivityId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - LearningResource', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearnerActivity_LearningResource', @level2type = N'COLUMN', @level2name = N'LearningResourceId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearnerActivity_LearningResource', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearnerActivity_LearningResource', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearnerActivity_LearningResource', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearnerActivity_LearningResource', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearnerActivity_LearningResource', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearnerActivity_LearningResource', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearnerActivity_LearningResource', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearnerActivity_LearningResource', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearnerActivity_LearningResource', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearnerActivity_LearningResource', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

