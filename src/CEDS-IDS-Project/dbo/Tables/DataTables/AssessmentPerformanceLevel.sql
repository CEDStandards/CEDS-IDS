CREATE TABLE [dbo].[AssessmentPerformanceLevel] (
    [AssessmentPerformanceLevelId] INT            IDENTITY (1, 1) NOT NULL,
    [Identifier]                   NVARCHAR (40)  NULL,
    [AssessmentSubtestId]          INT            NULL,
    [ScoreMetric]                  NVARCHAR (30)  NULL,
    [Label]                        NVARCHAR (20)  NULL,
    [LowerCutScore]                NVARCHAR (30)  NULL,
    [UpperCutScore]                NVARCHAR (30)  NULL,
    [DescriptiveFeedback]          NVARCHAR (MAX) NULL,
    [RecordStartDateTime]          DATETIME       NULL,
    [RecordEndDateTime]            DATETIME       NULL,
    [RecordStatusId]               INT            NULL,
    [DataCollectionId]             INT            NULL,
    CONSTRAINT [PK_AssessmentPerformanceLevel] PRIMARY KEY CLUSTERED ([AssessmentPerformanceLevelId] ASC),
    CONSTRAINT [FK_AssessmentPerformanceLevel_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_AssessmentPerformanceLevel_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_PerformanceLevel_AssessmentSubTest] FOREIGN KEY ([AssessmentSubtestId]) REFERENCES [dbo].[AssessmentSubtest] ([AssessmentSubtestId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'information about the performance levels that may be assigned to an Assessment Subtest Result and specifications for selecting the performance level based on a score. Four styles are supported:
1) specification of performance level by lower and upper cut score,
2) specification of performance level by lower cut score only,
3) specification of performance level without any mapping to scores, and
4) Specification of performance level by mapping to other scores.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPerformanceLevel';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPerformanceLevel';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPerformanceLevel', @level2type = N'COLUMN', @level2name = N'AssessmentPerformanceLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A unique number or alphanumeric code assigned to an assessment performance level.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPerformanceLevel', @level2type = N'COLUMN', @level2name = N'Identifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Performance Level Identifier', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPerformanceLevel', @level2type = N'COLUMN', @level2name = N'Identifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000717', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPerformanceLevel', @level2type = N'COLUMN', @level2name = N'Identifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19693', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPerformanceLevel', @level2type = N'COLUMN', @level2name = N'Identifier';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPerformanceLevel', @level2type = N'COLUMN', @level2name = N'Identifier';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - AssessmentSubtest', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPerformanceLevel', @level2type = N'COLUMN', @level2name = N'AssessmentSubtestId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The metric or scale used for score reporting.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPerformanceLevel', @level2type = N'COLUMN', @level2name = N'ScoreMetric';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Performance Level Score Metric', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPerformanceLevel', @level2type = N'COLUMN', @level2name = N'ScoreMetric';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000417', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPerformanceLevel', @level2type = N'COLUMN', @level2name = N'ScoreMetric';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19407', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPerformanceLevel', @level2type = N'COLUMN', @level2name = N'ScoreMetric';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPerformanceLevel', @level2type = N'COLUMN', @level2name = N'ScoreMetric';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A label representing the performance level appropriate for use on a report.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPerformanceLevel', @level2type = N'COLUMN', @level2name = N'Label';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Performance Level Label', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPerformanceLevel', @level2type = N'COLUMN', @level2name = N'Label';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000718', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPerformanceLevel', @level2type = N'COLUMN', @level2name = N'Label';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19694', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPerformanceLevel', @level2type = N'COLUMN', @level2name = N'Label';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPerformanceLevel', @level2type = N'COLUMN', @level2name = N'Label';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Lowest possible score for the performance level.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPerformanceLevel', @level2type = N'COLUMN', @level2name = N'LowerCutScore';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Performance Level Lower Cut Score', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPerformanceLevel', @level2type = N'COLUMN', @level2name = N'LowerCutScore';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000418', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPerformanceLevel', @level2type = N'COLUMN', @level2name = N'LowerCutScore';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19408', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPerformanceLevel', @level2type = N'COLUMN', @level2name = N'LowerCutScore';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPerformanceLevel', @level2type = N'COLUMN', @level2name = N'LowerCutScore';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Highest possible score for the performance level.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPerformanceLevel', @level2type = N'COLUMN', @level2name = N'UpperCutScore';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Performance Level Upper Cut Score', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPerformanceLevel', @level2type = N'COLUMN', @level2name = N'UpperCutScore';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000419', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPerformanceLevel', @level2type = N'COLUMN', @level2name = N'UpperCutScore';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19409', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPerformanceLevel', @level2type = N'COLUMN', @level2name = N'UpperCutScore';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPerformanceLevel', @level2type = N'COLUMN', @level2name = N'UpperCutScore';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A feedback message designed to be reported with the assessment performance level.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPerformanceLevel', @level2type = N'COLUMN', @level2name = N'DescriptiveFeedback';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Performance Level Descriptive Feedback', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPerformanceLevel', @level2type = N'COLUMN', @level2name = N'DescriptiveFeedback';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001218', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPerformanceLevel', @level2type = N'COLUMN', @level2name = N'DescriptiveFeedback';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20184', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPerformanceLevel', @level2type = N'COLUMN', @level2name = N'DescriptiveFeedback';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPerformanceLevel', @level2type = N'COLUMN', @level2name = N'DescriptiveFeedback';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPerformanceLevel', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPerformanceLevel', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPerformanceLevel', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPerformanceLevel', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPerformanceLevel', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPerformanceLevel', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPerformanceLevel', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPerformanceLevel', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPerformanceLevel', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPerformanceLevel', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

