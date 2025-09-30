CREATE TABLE [dbo].[IDEAEligibilityEvaluationCategory] (
    [IDEAEligibilityEvaluationCategoryId]    INT      IDENTITY (1, 1) NOT NULL,
    [EligibilityEvaluationId]                INT      NOT NULL,
    [RefIDEAEligibilityEvaluationCategoryId] INT      NOT NULL,
    [RecordStartDateTime]                    DATETIME NULL,
    [RecordEndDateTime]                      DATETIME NULL,
    [RecordStatusId]                         INT      NULL,
    [DataCollectionId]                       INT      NULL,
    CONSTRAINT [PK_IDEAEligibilityEvaluationCategory] PRIMARY KEY CLUSTERED ([IDEAEligibilityEvaluationCategoryId] ASC),
    CONSTRAINT [FK_IDEAEligibilityEvaluationCategory_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_IDEAEligibilityEvaluationCategory_EligibilityEvaluation] FOREIGN KEY ([EligibilityEvaluationId]) REFERENCES [dbo].[EligibilityEvaluation] ([EligibilityEvaluationId]),
    CONSTRAINT [FK_IDEAEligibilityEvaluationCategory_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_IDEAEligibilityEvaluationCategory_RefIDEAEligibilityEvaluationCategory] FOREIGN KEY ([RefIDEAEligibilityEvaluationCategoryId]) REFERENCES [dbo].[RefIDEAEligibilityEvaluationCategory] ([RefIDEAEligibilityEvaluationCategoryId]),
    CONSTRAINT [IX_EligibilityEvaluation_RefIDEAEligibilityEvaluationCategory] UNIQUE NONCLUSTERED ([EligibilityEvaluationId] ASC, [RefIDEAEligibilityEvaluationCategoryId] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A category by which a learner''s eligibility for participation in an IDEA program may be considered.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IDEAEligibilityEvaluationCategory';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IDEAEligibilityEvaluationCategory';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Category of evaluation used for IDEA eligibility.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IDEAEligibilityEvaluationCategory', @level2type = N'COLUMN', @level2name = N'RefIDEAEligibilityEvaluationCategoryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'IDEA Eligibility Evaluation Category', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IDEAEligibilityEvaluationCategory', @level2type = N'COLUMN', @level2name = N'RefIDEAEligibilityEvaluationCategoryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001729', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IDEAEligibilityEvaluationCategory', @level2type = N'COLUMN', @level2name = N'RefIDEAEligibilityEvaluationCategoryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20710', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IDEAEligibilityEvaluationCategory', @level2type = N'COLUMN', @level2name = N'RefIDEAEligibilityEvaluationCategoryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IDEAEligibilityEvaluationCategory', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IDEAEligibilityEvaluationCategory', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IDEAEligibilityEvaluationCategory', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IDEAEligibilityEvaluationCategory', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IDEAEligibilityEvaluationCategory', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IDEAEligibilityEvaluationCategory', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IDEAEligibilityEvaluationCategory', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IDEAEligibilityEvaluationCategory', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IDEAEligibilityEvaluationCategory', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IDEAEligibilityEvaluationCategory', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

