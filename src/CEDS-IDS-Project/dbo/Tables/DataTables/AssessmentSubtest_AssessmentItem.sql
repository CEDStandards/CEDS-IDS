CREATE TABLE [dbo].[AssessmentSubtest_AssessmentItem] (
    [AssessmentSubtestItemId] INT            IDENTITY (1, 1) NOT NULL,
    [AssessmentSubtestId]     INT            NOT NULL,
    [AssessmentItemId]        INT            NOT NULL,
    [ItemWeightCorrect]       DECIMAL (3, 2) NULL,
    [ItemWeightIncorrect]     DECIMAL (3, 2) NULL,
    [ItemWeightNotAttempted]  DECIMAL (3, 2) NULL,
    [RecordStartDateTime]     DATETIME       NULL,
    [RecordEndDateTime]       DATETIME       NULL,
    [RecordStatusId]          INT            NULL,
    [DataCollectionId]        INT            NULL,
    CONSTRAINT [PK_AssessmentSubtest_AssessmentItem] PRIMARY KEY CLUSTERED ([AssessmentSubtestItemId] ASC),
    CONSTRAINT [FK_AssessmentSubtest_AssessmentItem_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_AssessmentSubtest_AssessmentItem_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_AssessmentSubtestAI_AssessmentItem] FOREIGN KEY ([AssessmentItemId]) REFERENCES [dbo].[AssessmentItem] ([AssessmentItemId]),
    CONSTRAINT [FK_AssessmentSubtestItems_AssessmentSubTest] FOREIGN KEY ([AssessmentSubtestId]) REFERENCES [dbo].[AssessmentSubtest] ([AssessmentSubtestId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'This join links an assessment subtest to an assessment item.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSubtest_AssessmentItem';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSubtest_AssessmentItem';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSubtest_AssessmentItem', @level2type = N'COLUMN', @level2name = N'AssessmentSubtestItemId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - AssessmentSubtest', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSubtest_AssessmentItem', @level2type = N'COLUMN', @level2name = N'AssessmentSubtestId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - AssessmentItem', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSubtest_AssessmentItem', @level2type = N'COLUMN', @level2name = N'AssessmentItemId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A weighting factor for how the item score is used to compute a sub-test score when the item is correct or partially correct. Item weight of 1 indicates the full item score is used. A weight of .5 would indicate the item only contributes one half of the item score to the subtest. A weight of 0 indicates the item does not affect the sub test score.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSubtest_AssessmentItem', @level2type = N'COLUMN', @level2name = N'ItemWeightCorrect';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Form Subtest Item Weight Correct', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSubtest_AssessmentItem', @level2type = N'COLUMN', @level2name = N'ItemWeightCorrect';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001010', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSubtest_AssessmentItem', @level2type = N'COLUMN', @level2name = N'ItemWeightCorrect';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20013', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSubtest_AssessmentItem', @level2type = N'COLUMN', @level2name = N'ItemWeightCorrect';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSubtest_AssessmentItem', @level2type = N'COLUMN', @level2name = N'ItemWeightCorrect';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A weighting factor for how the item score is used to compute a sub-test score when the item is attempted and incorrect. Item weight should be a negative value if the item subtracts from the score if missed.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSubtest_AssessmentItem', @level2type = N'COLUMN', @level2name = N'ItemWeightIncorrect';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Form Subtest Item Weight Incorrect', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSubtest_AssessmentItem', @level2type = N'COLUMN', @level2name = N'ItemWeightIncorrect';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001012', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSubtest_AssessmentItem', @level2type = N'COLUMN', @level2name = N'ItemWeightIncorrect';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20014', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSubtest_AssessmentItem', @level2type = N'COLUMN', @level2name = N'ItemWeightIncorrect';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSubtest_AssessmentItem', @level2type = N'COLUMN', @level2name = N'ItemWeightIncorrect';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A weighting factor for how the item score is used to compute a sub-test score when the item has not been attempted by the student. Item weight should be a negative value if the item subtracts from the score if not attempted.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSubtest_AssessmentItem', @level2type = N'COLUMN', @level2name = N'ItemWeightNotAttempted';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Form Subtest Item Weight Not Attempted', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSubtest_AssessmentItem', @level2type = N'COLUMN', @level2name = N'ItemWeightNotAttempted';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001013', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSubtest_AssessmentItem', @level2type = N'COLUMN', @level2name = N'ItemWeightNotAttempted';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20015', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSubtest_AssessmentItem', @level2type = N'COLUMN', @level2name = N'ItemWeightNotAttempted';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSubtest_AssessmentItem', @level2type = N'COLUMN', @level2name = N'ItemWeightNotAttempted';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSubtest_AssessmentItem', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSubtest_AssessmentItem', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSubtest_AssessmentItem', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSubtest_AssessmentItem', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSubtest_AssessmentItem', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSubtest_AssessmentItem', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSubtest_AssessmentItem', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSubtest_AssessmentItem', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSubtest_AssessmentItem', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSubtest_AssessmentItem', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

