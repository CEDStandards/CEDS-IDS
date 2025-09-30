CREATE TABLE [dbo].[AssessmentSubtestLevelsForWhichDesigned] (
    [AssessmentSubtestLevelsForWhichDesignedId] INT      IDENTITY (1, 1) NOT NULL,
    [AssessmentSubTestId]                       INT      NOT NULL,
    [RefGradeId]                                INT      NOT NULL,
    [RecordStartDateTime]                       DATETIME NULL,
    [RecordEndDateTime]                         DATETIME NULL,
    [RecordStatusId]                            INT      NULL,
    [DataCollectionId]                          INT      NULL,
    CONSTRAINT [PK_AssessmentSubtestLevelsForWhichDesigned] PRIMARY KEY CLUSTERED ([AssessmentSubtestLevelsForWhichDesignedId] ASC),
    CONSTRAINT [FK_AssessmentSubtestLevelsForWhichDesigned_AssessmentSubtest] FOREIGN KEY ([AssessmentSubTestId]) REFERENCES [dbo].[AssessmentSubtest] ([AssessmentSubtestId]),
    CONSTRAINT [FK_AssessmentSubtestLevelsForWhichDesigned_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_AssessmentSubtestLevelsForWhichDesigned_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_AssessmentSubtestLevelsForWhichDesigned_RefGrade] FOREIGN KEY ([RefGradeId]) REFERENCES [dbo].[RefGradeLevel] ([RefGradeLevelId]),
    CONSTRAINT [IX_AssessmentSubtestLevelsForWhichDesigned] UNIQUE NONCLUSTERED ([AssessmentSubTestId] ASC, [RefGradeId] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'This join links an assessment subtest to records that define education levels for which the subtest was designed.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSubtestLevelsForWhichDesigned';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSubtestLevelsForWhichDesigned';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSubtestLevelsForWhichDesigned', @level2type = N'COLUMN', @level2name = N'AssessmentSubtestLevelsForWhichDesignedId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - AssessmentSubtest', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSubtestLevelsForWhichDesigned', @level2type = N'COLUMN', @level2name = N'AssessmentSubTestId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - RefGradeLevel', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSubtestLevelsForWhichDesigned', @level2type = N'COLUMN', @level2name = N'RefGradeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSubtestLevelsForWhichDesigned', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSubtestLevelsForWhichDesigned', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSubtestLevelsForWhichDesigned', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSubtestLevelsForWhichDesigned', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSubtestLevelsForWhichDesigned', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSubtestLevelsForWhichDesigned', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSubtestLevelsForWhichDesigned', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSubtestLevelsForWhichDesigned', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSubtestLevelsForWhichDesigned', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSubtestLevelsForWhichDesigned', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

