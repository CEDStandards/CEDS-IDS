CREATE TABLE [dbo].[AssessmentResult] (
    [AssessmentResultId]                          INT            IDENTITY (1, 1) NOT NULL,
    [ScoreValue]                                  NVARCHAR (35)  NULL,
    [RefScoreMetricTypeId]                        INT            NULL,
    [PreliminaryIndicator]                        BIT            NULL,
    [RefAssessmentPretestOutcomeId]               INT            NULL,
    [NumberOfResponses]                           INT            NULL,
    [DiagnosticStatement]                         NVARCHAR (MAX) NULL,
    [DiagnosticStatementSource]                   NVARCHAR (300) NULL,
    [DescriptiveFeedback]                         NVARCHAR (300) NULL,
    [DescriptiveFeedbackSource]                   NVARCHAR (60)  NULL,
    [InstructionalRecommendation]                 NVARCHAR (100) NULL,
    [IncludedInAypCalculation]                    BIT            NULL,
    [DateUpdated]                                 DATE           NULL,
    [DateCreated]                                 DATE           NULL,
    [AssessmentSubtestId]                         INT            NOT NULL,
    [AssessmentRegistrationId]                    INT            NOT NULL,
    [RefELOutcomeMeasurementLevelId]              INT            NULL,
    [EarlyLearningOutcomeMeasurementDate]         DATETIME       NULL,
    [RefOutcomeTimePointId]                       INT            NULL,
    [AssessmentResultDescriptiveFeedbackDateTime] DATETIME       NULL,
    [AssessmentResultScoreValueStandardError]     DECIMAL (9, 2) NULL,
    [RefAssessmentResultDataTypeId]               INT            NULL,
    [RefAssessmentResultScoreTypeId]              INT            NULL,
    [RecordStartDateTime]                         DATETIME       NULL,
    [RecordEndDateTime]                           DATETIME       NULL,
    [RecordStatusId]                              INT            NULL,
    [DataCollectionId]                            INT            NULL,
    CONSTRAINT [PK_AssessmentResult] PRIMARY KEY CLUSTERED ([AssessmentResultId] ASC),
    CONSTRAINT [FK_AssessmentResult_AssessmentRegistration] FOREIGN KEY ([AssessmentRegistrationId]) REFERENCES [dbo].[AssessmentRegistration] ([AssessmentRegistrationId]),
    CONSTRAINT [FK_AssessmentResult_AssessmentSubTest] FOREIGN KEY ([AssessmentSubtestId]) REFERENCES [dbo].[AssessmentSubtest] ([AssessmentSubtestId]),
    CONSTRAINT [FK_AssessmentResult_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_AssessmentResult_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_AssessmentResult_RefAssessmentPretestOutcome] FOREIGN KEY ([RefAssessmentPretestOutcomeId]) REFERENCES [dbo].[RefAssessmentPretestOutcome] ([RefAssessmentPretestOutcomeId]),
    CONSTRAINT [FK_AssessmentResult_RefAssessmentResultDataType] FOREIGN KEY ([RefAssessmentResultDataTypeId]) REFERENCES [dbo].[RefAssessmentResultDataType] ([RefAssessmentResultDataTypeId]),
    CONSTRAINT [FK_AssessmentResult_RefAssessmentResultScoreType] FOREIGN KEY ([RefAssessmentResultScoreTypeId]) REFERENCES [dbo].[RefAssessmentResultScoreType] ([RefAssessmentResultScoreTypeId]),
    CONSTRAINT [FK_AssessmentResult_RefELOutcomeMeasurement] FOREIGN KEY ([RefELOutcomeMeasurementLevelId]) REFERENCES [dbo].[RefELOutcomeMeasurementLevel] ([RefELOutcomeMeasurementLevelId]),
    CONSTRAINT [FK_AssessmentResult_RefOutcomeTimePoint] FOREIGN KEY ([RefOutcomeTimePointId]) REFERENCES [dbo].[RefOutcomeTimePoint] ([RefOutcomeTimePointId]),
    CONSTRAINT [FK_AssessmentResult_RefScoreMetricType] FOREIGN KEY ([RefScoreMetricTypeId]) REFERENCES [dbo].[RefScoreMetricType] ([RefScoreMetricTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An entity that includes information about a person''s results from an assessment which may be for the entire assessment or one aspect of evaluation. The scoring method is defined by the related Assessment Subtest. The entity includes the score value and information about the score, such as a diagnostic statement.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'AssessmentResultId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A meaningful raw score, derived score, or statistical expression of the performance of a person on an assessment. The type of result is indicated by the Assessment Score Metric Type element. The results can be expressed as a number, percentile, range, level, etc. The score relates to all scored items or a sub test scoring one aspect of performance on the test. This value may or may not correspond to one or more Performance Levels.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'ScoreValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Result Score Value', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'ScoreValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000245', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'ScoreValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19245', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'ScoreValue';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'ScoreValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The specific method used to report the performance and achievement of the assessment. This is the metric that is being used to derive the scores.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'RefScoreMetricTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Score Metric Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'RefScoreMetricTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000369', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'RefScoreMetricTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19368', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'RefScoreMetricTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'RefScoreMetricTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'If this score is preliminary, then this attribute value should be set.  Preliminary scores may be provided for early use by the assessment program or user while final scoring is occurring.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'PreliminaryIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Result Preliminary Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'PreliminaryIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001007', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'PreliminaryIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20010', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'PreliminaryIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'PreliminaryIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The results of a pre-test in academic subjects.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'RefAssessmentPretestOutcomeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Result Pretest Outcome', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'RefAssessmentPretestOutcomeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000572', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'RefAssessmentPretestOutcomeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19564', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'RefAssessmentPretestOutcomeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'RefAssessmentPretestOutcomeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The number of responses that are included with the Student Score Set. Responses are those items that were attempted (partially or fully answered) by the student and not necessarily the number of items in the assessment (which can be determined from the assessment object).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'NumberOfResponses';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Result Number of Responses', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'NumberOfResponses';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001009', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'NumberOfResponses';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20012', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'NumberOfResponses';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'NumberOfResponses';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A statement intended for use by education professionals, using professional terminology, to interpret learner needs based on the scored/evaluated portion of an assessment.  This statement may inform Descriptive Feedback given to the learner.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'DiagnosticStatement';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Result Diagnostic Statement', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'DiagnosticStatement';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001219', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'DiagnosticStatement';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20185', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'DiagnosticStatement';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'DiagnosticStatement';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Identifies the source of the Diagnostic Statement based on a scored/evaluated portion of an assessment.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'DiagnosticStatementSource';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Diagnostic Statement Source', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'DiagnosticStatementSource';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001008', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'DiagnosticStatementSource';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20011', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'DiagnosticStatementSource';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'DiagnosticStatementSource';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The formative descriptive feedback that was given to a learner based on a scored/evaluated portion of an assessment as recorded in the result entity.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'DescriptiveFeedback';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Result Descriptive Feedback', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'DescriptiveFeedback';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000890', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'DescriptiveFeedback';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19890', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'DescriptiveFeedback';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'DescriptiveFeedback';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Identifies the source of the descriptive feedback that was given to a learner based on a scored/evaluated portion of an assessment. May indicate if this is teacher, scorer, or system generated feedback. Values for this attribute would be determined by the assessment program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'DescriptiveFeedbackSource';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Result Descriptive Feedback Source', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'DescriptiveFeedbackSource';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001092', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'DescriptiveFeedbackSource';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20076', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'DescriptiveFeedbackSource';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'DescriptiveFeedbackSource';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'This provides the next steps for instruction for the student based upon the assessment results and student characteristics.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'InstructionalRecommendation';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Instructional Recommendation', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'InstructionalRecommendation';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000370', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'InstructionalRecommendation';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19369', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'InstructionalRecommendation';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'InstructionalRecommendation';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether a proficiency score on the state assessment was included in the state’s calculation of adequate yearly progress (AYP).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'IncludedInAypCalculation';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Result Included in Adequate Yearly Progress Calculation', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'IncludedInAypCalculation';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000576', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'IncludedInAypCalculation';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=15568', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'IncludedInAypCalculation';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'IncludedInAypCalculation';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The most recent date that the result was calculated/updated.  The value should be the same as Assessment Result Date Created if the subtest has only been scored once, but may be different if the score was recalculated with a different result.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'DateUpdated';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Result Date Updated', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'DateUpdated';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000970', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'DateUpdated';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19971', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'DateUpdated';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'DateUpdated';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The date on which the assessment result was generated.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'DateCreated';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Result Date Created', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'DateCreated';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000971', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'DateCreated';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19972', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'DateCreated';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'DateCreated';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - AssessmentSubtest', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'AssessmentSubtestId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - AssessmentRegistration', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'AssessmentRegistrationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Use for outcome measures in early learning.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'RefELOutcomeMeasurementLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Early Learning Outcome Measurement Level', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'RefELOutcomeMeasurementLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001336', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'RefELOutcomeMeasurementLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20303', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'RefELOutcomeMeasurementLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'RefELOutcomeMeasurementLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The point in time for which the result is used for an outcome measure.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'RefOutcomeTimePointId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Early Learning Outcome Time Point', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'RefOutcomeTimePointId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001503', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'RefOutcomeTimePointId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20475', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'RefOutcomeTimePointId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'RefOutcomeTimePointId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The date and time the descriptive feedback was entered for a scored/evaluated portion of an assessment.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'AssessmentResultDescriptiveFeedbackDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Result Descriptive Feedback Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'AssessmentResultDescriptiveFeedbackDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001545', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'AssessmentResultDescriptiveFeedbackDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20520', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'AssessmentResultDescriptiveFeedbackDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'AssessmentResultDescriptiveFeedbackDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The measure of sampling variability and measurement error for the score, the amount of error to be expected in the score.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'AssessmentResultScoreValueStandardError';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Result Score Value Standard Error', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'AssessmentResultScoreValueStandardError';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001546', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'AssessmentResultScoreValueStandardError';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20522', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'AssessmentResultScoreValueStandardError';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'AssessmentResultScoreValueStandardError';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N' The data type of the assessment result score value.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'RefAssessmentResultDataTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Result Data Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'RefAssessmentResultDataTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001543', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'RefAssessmentResultDataTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20518', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'RefAssessmentResultDataTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'RefAssessmentResultDataTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Indicates the purpose for which this assessment score instance was recorded.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'RefAssessmentResultScoreTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Result Score Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'RefAssessmentResultScoreTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001547', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'RefAssessmentResultScoreTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20523', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'RefAssessmentResultScoreTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'RefAssessmentResultScoreTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentResult', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

