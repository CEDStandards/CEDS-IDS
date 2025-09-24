CREATE TABLE [dbo].[EligibilityDetermination] (
    [EligibilityDeterminationId]            INT            IDENTITY (1, 1) NOT NULL,
    [EligibilityDeterminationDate]          DATE           NULL,
    [RefBehaviorImpedesLearningIndicatorId] INT            NULL,
    [RecordStartDateTime]                   DATETIME       NULL,
    [RecordEndDateTime]                     DATETIME       NULL,
    [RecordStatusId]                        INT            NULL,
    [DataCollectionId]                      INT            NULL,
    CONSTRAINT [PK_EligibilityDetermination] PRIMARY KEY CLUSTERED ([EligibilityDeterminationId] ASC),
    CONSTRAINT [FK_EligibilityDetermination_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_EligibilityDetermination_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_EligibilityDetermination_RefBehaviorImpedesLearningIndicator] FOREIGN KEY ([RefBehaviorImpedesLearningIndicatorId]) REFERENCES [dbo].[RefBehaviorImpedesLearningIndicator] ([RefBehaviorImpedesLearningIndicatorId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information about an event used to determine a learner''s eligibility to participate in a program or recieve services.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EligibilityDetermination';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EligibilityDetermination';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Upon completion of the administration of assessments and other evaluation measures, the date that a group of qualified professionals and the parent of the child determine whether the child is a child with a disability.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EligibilityDetermination', @level2type = N'COLUMN', @level2name = N'EligibilityDeterminationDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Eligibility Determination Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EligibilityDetermination', @level2type = N'COLUMN', @level2name = N'EligibilityDeterminationDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002120', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EligibilityDetermination', @level2type = N'COLUMN', @level2name = N'EligibilityDeterminationDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/element/002120', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EligibilityDetermination', @level2type = N'COLUMN', @level2name = N'EligibilityDeterminationDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EligibilityDetermination', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EligibilityDetermination', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EligibilityDetermination', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/element/001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EligibilityDetermination', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EligibilityDetermination', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EligibilityDetermination', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EligibilityDetermination', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EligibilityDetermination', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/element/001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EligibilityDetermination', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EligibilityDetermination', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication that a student''s behavior impedes the student''s learning or the learning of other students.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EligibilityDetermination', @level2type = N'COLUMN', @level2name = N'RefBehaviorImpedesLearningIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Behavior Impedes Learning Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EligibilityDetermination', @level2type = N'COLUMN', @level2name = N'RefBehaviorImpedesLearningIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002122', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EligibilityDetermination', @level2type = N'COLUMN', @level2name = N'RefBehaviorImpedesLearningIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/element/002122', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EligibilityDetermination', @level2type = N'COLUMN', @level2name = N'RefBehaviorImpedesLearningIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EligibilityDetermination', @level2type = N'COLUMN', @level2name = N'RefBehaviorImpedesLearningIndicatorId';


GO