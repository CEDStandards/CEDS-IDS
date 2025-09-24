CREATE TABLE [dbo].[AssessmentItem] (
    [AssessmentItemId]                            INT            IDENTITY (1, 1) NOT NULL,
    [Identifier]                                  NVARCHAR (40)  NULL,
    [AssessmentItemBankIdentifier]                NVARCHAR (40)  NULL,
    [AssessmentItemBankName]                      NVARCHAR (60)  NULL,
    [RefAssessmentItemTypeId]                     INT            NULL,
    [BodyText]                                    NVARCHAR (MAX) NULL,
    [Stimulus]                                    NVARCHAR (MAX) NULL,
    [Stem]                                        NVARCHAR (MAX) NULL,
    [AdaptiveIndicator]                           BIT            NULL,
    [MaximumScore]                                NVARCHAR (300) NULL,
    [MinimumScore]                                NVARCHAR (300) NULL,
    [DistractorAnalysis]                          NVARCHAR (100) NULL,
    [AllottedTime]                                TIME (7)       NULL,
    [RefNaepMathComplexityLevelId]                INT            NULL,
    [RefNaepAspectsOfReadingId]                   INT            NULL,
    [Difficulty]                                  DECIMAL (5, 2) NULL,
    [RefTextComplexitySystemId]                   INT            NULL,
    [TextComplexityValue]                         NVARCHAR (30)  NULL,
    [LinkingItemIndicator]                        BIT            NULL,
    [ReleaseStatus]                               BIT            NULL,
    [RubricId]                                    INT            NULL,
    [LearningResourceId]                          INT            NULL,
    [AssessmentFormSectionItemFieldTestIndicator] BIT            NULL,
    [RecordStartDateTime]                         DATETIME       NULL,
    [RecordEndDateTime]                           DATETIME       NULL,
    [RecordStatusId]                              INT            NULL,
    [DataCollectionId]                            INT            NULL,
    CONSTRAINT [PK_AssessmentItem] PRIMARY KEY CLUSTERED ([AssessmentItemId] ASC),
    CONSTRAINT [FK_AssessmentItem_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_AssessmentItem_LearningResource] FOREIGN KEY ([LearningResourceId]) REFERENCES [dbo].[LearningResource] ([LearningResourceId]),
    CONSTRAINT [FK_AssessmentItem_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_AssessmentItem_RefAssessmentItemType] FOREIGN KEY ([RefAssessmentItemTypeId]) REFERENCES [dbo].[RefAssessmentItemType] ([RefAssessmentItemTypeId]),
    CONSTRAINT [FK_AssessmentItem_RefNAEPAspectsOfReading] FOREIGN KEY ([RefNaepAspectsOfReadingId]) REFERENCES [dbo].[RefNaepAspectsOfReading] ([RefNaepAspectsOfReadingId]),
    CONSTRAINT [FK_AssessmentItem_RefNAEPMathComplexityLevel] FOREIGN KEY ([RefNaepMathComplexityLevelId]) REFERENCES [dbo].[RefNaepMathComplexityLevel] ([RefNaepMathComplexityLevelId]),
    CONSTRAINT [FK_AssessmentItem_RefTextComplexitySystem] FOREIGN KEY ([RefTextComplexitySystemId]) REFERENCES [dbo].[RefTextComplexitySystem] ([RefTextComplexitySystemId]),
    CONSTRAINT [FK_AssessmentItem_Rubric] FOREIGN KEY ([RubricId]) REFERENCES [dbo].[Rubric] ([RubricId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A specific prompt that defines a question or protocol for a measurable activity that triggers a response from a person used to determine whether the person has mastered a learning objective.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'AssessmentItemId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The identifier that uniquely identifies an assessment item.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'Identifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Item Identifier', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'Identifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000630', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'Identifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19623', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'Identifier';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'Identifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'If the assessment is provided with an item bank, then this identifies the item bank: a unique code or number used by the item banking system.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'AssessmentItemBankIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Item Bank Identifier', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'AssessmentItemBankIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001181', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'AssessmentItemBankIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20132', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'AssessmentItemBankIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'AssessmentItemBankIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'If the assessment is provided with an item bank, then this is the name of the item bank.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'AssessmentItemBankName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Item Bank Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'AssessmentItemBankName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001182', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'AssessmentItemBankName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20133', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'AssessmentItemBankName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'AssessmentItemBankName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The specific type of assessment item.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'RefAssessmentItemTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Item Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'RefAssessmentItemTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000390', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'RefAssessmentItemTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19382', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'RefAssessmentItemTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'RefAssessmentItemTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The complete text of an assessment item including all applicable parts such as stimulus, stem, and possible response options presented.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'BodyText';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Item Body Text', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'BodyText';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001267', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'BodyText';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20233', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'BodyText';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'BodyText';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N' The text, source (e.g., video clip), and/or graphic about which the assessment item is written. The stimulus provides the context of the item/task to which the student must respond.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'Stimulus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Item Stimulus', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'Stimulus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001268', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'Stimulus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20234', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'Stimulus';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'Stimulus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The statement of the question or prompt for an Assessment Item to which the student responds.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'Stem';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Item Stem', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'Stem';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000400', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'Stem';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19392', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'Stem';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'Stem';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'This indicator determines whether an assessment item is an adaptive item.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'AdaptiveIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Item Adaptive Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'AdaptiveIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001139', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'AdaptiveIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20111', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'AdaptiveIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'AdaptiveIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The maximum number of points possible for the assessment item.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'MaximumScore';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Item Maximum Score', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'MaximumScore';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000707', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'MaximumScore';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19683', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'MaximumScore';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'MaximumScore';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The minimum number of points possible for the assessment item.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'MinimumScore';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Item Minimum Score', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'MinimumScore';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000708', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'MinimumScore';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19684', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'MinimumScore';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'MinimumScore';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The analysis of the distractors provided for a specific assessment.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'DistractorAnalysis';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Item Distractor Analysis', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'DistractorAnalysis';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000398', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'DistractorAnalysis';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19390', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'DistractorAnalysis';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'DistractorAnalysis';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The amount of time allotted for a specific item.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'AllottedTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Item Allotted Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'AllottedTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000403', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'AllottedTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19395', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'AllottedTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'AllottedTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Complexity levels defined by the National Assessment of Educational Progress (NAEP 2005a Framework).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'RefNaepMathComplexityLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'NAEP Mathematical Complexity Level', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'RefNaepMathComplexityLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001088', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'RefNaepMathComplexityLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20072', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'RefNaepMathComplexityLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'RefNaepMathComplexityLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Aspects of reading defined by the National Assessment of Educational Progress (NAEP 2005b Framework).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'RefNaepAspectsOfReadingId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'NAEP Aspects of Reading', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'RefNaepAspectsOfReadingId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001122', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'RefNaepAspectsOfReadingId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20166', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'RefNaepAspectsOfReadingId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'RefNaepAspectsOfReadingId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The percentage of students who answered the item correctly during trial testing of the item.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'Difficulty';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Item Difficulty', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'Difficulty';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000391', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'Difficulty';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19383', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'Difficulty';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'Difficulty';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The scaling system used to specify the text complexity of an assessment item.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'RefTextComplexitySystemId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Item Text Complexity System', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'RefTextComplexitySystemId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000907', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'RefTextComplexitySystemId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19907', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'RefTextComplexitySystemId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'RefTextComplexitySystemId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The complexity of the text using the scaling system defined by Text Complexity System, e.g. Lexile™ for assessment items with a reading passage.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'TextComplexityValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Item Text Complexity Value', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'TextComplexityValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000906', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'TextComplexityValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19906', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'TextComplexityValue';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'TextComplexityValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Indicates that the item is intended to be administered in two different grades for the goal of establishing cross grade comparison.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'LinkingItemIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Item Linking Item Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'LinkingItemIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001261', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'LinkingItemIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20227', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'LinkingItemIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'LinkingItemIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Indicates that the assessment item has been released to the public.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'ReleaseStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Item Release Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'ReleaseStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001263', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'ReleaseStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20229', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'ReleaseStatus';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'ReleaseStatus';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - AssessmentItemRubric', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'RubricId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - LearningResource', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'LearningResourceId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Indicates that the assessment item is being field tested on this form of the test, and is not to be included for scoring.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'AssessmentFormSectionItemFieldTestIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Form Section Item Field Test Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'AssessmentFormSectionItemFieldTestIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001536', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'AssessmentFormSectionItemFieldTestIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20511', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'AssessmentFormSectionItemFieldTestIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'AssessmentFormSectionItemFieldTestIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

