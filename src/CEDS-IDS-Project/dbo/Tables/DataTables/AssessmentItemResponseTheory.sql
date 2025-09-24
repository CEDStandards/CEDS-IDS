CREATE TABLE [dbo].[AssessmentItemResponseTheory] (
    [AssessmentItemResponseTheoryId]            INT      IDENTITY (1, 1) NOT NULL,
    [AssessmentItemId]                          INT      NOT NULL,
    [ParameterA]                                INT      NULL,
    [ParameterB]                                INT      NULL,
    [ParameterC]                                INT      NULL,
    [ParameterD1]                               INT      NULL,
    [ParameterD2]                               INT      NULL,
    [ParameterD3]                               INT      NULL,
    [ParameterD4]                               INT      NULL,
    [ParameterD5]                               INT      NULL,
    [ParameterD6]                               INT      NULL,
    [PointBiserialCorrelationValue]             INT      NULL,
    [DIFValue]                                  INT      NULL,
    [KappaValue]                                INT      NULL,
    [RefItemResponseTheoryDifficultyCategoryId] INT      NULL,
    [RefItemResponseTheoryKappaAlgorithmId]     INT      NULL,
    [RecordStartDateTime]                       DATETIME NULL,
    [RecordEndDateTime]                         DATETIME NULL,
    [RecordStatusId]                            INT      NULL,
    [DataCollectionId]                          INT      NULL,
    CONSTRAINT [PK_AssessmentItemResponseTheory] PRIMARY KEY CLUSTERED ([AssessmentItemResponseTheoryId] ASC),
    CONSTRAINT [FK_AssessmentItemResponseTheory_AssessmentItem] FOREIGN KEY ([AssessmentItemId]) REFERENCES [dbo].[AssessmentItem] ([AssessmentItemId]),
    CONSTRAINT [FK_AssessmentItemResponseTheory_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_AssessmentItemResponseTheory_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_AssessmentItemResponseTheory_RefIRTDifficultyCategory] FOREIGN KEY ([RefItemResponseTheoryDifficultyCategoryId]) REFERENCES [dbo].[RefItemResponseTheoryDifficultyCategory] ([RefItemResponseTheoryDifficultyCategoryId]),
    CONSTRAINT [FK_AssessmentItemResponseTheory_RefIRTKappaAlgorithm] FOREIGN KEY ([RefItemResponseTheoryKappaAlgorithmId]) REFERENCES [dbo].[RefItemResponseTheoryKappaAlgorithm] ([RefItemResponseTheoryKappaAlgorithmId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information representing the difficulty of an assessment itme and other measures of the relationship between any individuals'' performances on the test item and the test takers'' levels of performance on an overall measure of the ability that item was designed to measure.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'AssessmentItemId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The Item Response Theory value representing the discrimination of the item. The a parameter is found by taking the slope of the line tangent to the item characteristic curve at the inflection point, B. The parameter is the steepness of the curve at its steepest point.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'ParameterA';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Item Response Theory Parameter A', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'ParameterA';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001251', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'ParameterA';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20217', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'ParameterA';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'ParameterA';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The Item Response Theory value representing the difficulty of the item.   It is the Theta value for the location of the inflection point of the item characteristic curve.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'ParameterB';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Item Response Theory Parameter B', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'ParameterB';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001252', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'ParameterB';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20218', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'ParameterB';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'ParameterB';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The Item Response Theory value for multiple choice items representing the guessing of the item. The c parameter is a lower asymptote. It is the low point of the curve as it moves to negative infinity on the horizontal axis. You can think of c as the probability that a chicken would get the item right.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'ParameterC';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Item Response Theory Parameter C', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'ParameterC';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001254', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'ParameterC';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20220', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'ParameterC';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'ParameterC';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'For   polytomous assessment items with more than two possible responses, this is the item response theory value representing the threshold between the first and second item characteristic functions.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'ParameterD1';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Item Response Theory Parameter D1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'ParameterD1';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'ParameterD1';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20221', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'ParameterD1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'ParameterD1';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'For   polytomous assessment items with more than two possible responses, this is the item response theory value representing the threshold between the second and third item characteristic functions.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'ParameterD2';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Item Response Theory Parameter D2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'ParameterD2';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001256', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'ParameterD2';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20222', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'ParameterD2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'ParameterD2';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'For   polytomous assessment items with more than three possible responses, this is the item response theory value representing the threshold between the third and fourth item characteristic functions.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'ParameterD3';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Item Response Theory Parameter D3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'ParameterD3';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001257', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'ParameterD3';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20223', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'ParameterD3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'ParameterD3';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'For   polytomous assessment items with more than four possible responses, this is the item response theory value representing the threshold between the fourth and fifth item characteristic functions.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'ParameterD4';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Item Response Theory Parameter D4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'ParameterD4';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001258', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'ParameterD4';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20224', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'ParameterD4';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'ParameterD4';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'For   polytomous assessment items with more than five possible responses, this is the item response theory value representing the threshold between the fifth and sixth item characteristic functions.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'ParameterD5';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Item Response Theory Parameter D5', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'ParameterD5';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001259', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'ParameterD5';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20225', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'ParameterD5';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'ParameterD5';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'For   polytomous assessment items with more than six possible responses, this is the item response theory value representing the threshold between the sixth and seventh item characteristic functions.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'ParameterD6';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Item Response Theory Parameter D6', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'ParameterD6';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001260', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'ParameterD6';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20226', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'ParameterD6';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'ParameterD6';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The correlation between correct answers on this item and total correct answers on the test during a previous administration. ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'PointBiserialCorrelationValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Item Response Theory Point Biserial Correlation Value', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'PointBiserialCorrelationValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001262', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'PointBiserialCorrelationValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20228', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'PointBiserialCorrelationValue';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'PointBiserialCorrelationValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A value representing the Differential Item Functioning, also referred to as  measurement bias, for the assessment item.  The value represents differences in the functioning of the item across groups which are matched on the attribute being measure by the item.  The value is calculated using Mantel-Haenszel approach or a comparable algorithm so that a value of 1.0 represents no bias.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'DIFValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Item Response Theory DIF Value', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'DIFValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001264', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'DIFValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20230', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'DIFValue';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'DIFValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The measure used to represent the degree of agreement among raters.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'KappaValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Item Response Theory Kappa Value', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'KappaValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001265', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'KappaValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20231', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'KappaValue';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'KappaValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A category for the difficulty of the item based on the Item Response Theory value.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'RefItemResponseTheoryDifficultyCategoryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Item Response Theory Parameter Difficulty Category', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'RefItemResponseTheoryDifficultyCategoryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001253', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'RefItemResponseTheoryDifficultyCategoryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20219', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'RefItemResponseTheoryDifficultyCategoryId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'RefItemResponseTheoryDifficultyCategoryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The algorithm used to derive the Assessment Item Kappa Value', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'RefItemResponseTheoryKappaAlgorithmId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Item Response Theory Kappa Algorithm', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'RefItemResponseTheoryKappaAlgorithmId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001266', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'RefItemResponseTheoryKappaAlgorithmId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20232', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'RefItemResponseTheoryKappaAlgorithmId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'RefItemResponseTheoryKappaAlgorithmId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponseTheory', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

