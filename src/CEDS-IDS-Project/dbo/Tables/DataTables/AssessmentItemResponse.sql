CREATE TABLE [dbo].[AssessmentItemResponse] (
    [AssessmentItemResponseId]                      INT            IDENTITY (1, 1) NOT NULL,
    [Value]                                         NVARCHAR (300) NULL,
    [ScoreValue]                                    NVARCHAR (60)  NULL,
    [RefAssessItemResponseStatusId]                 INT            NULL,
    [RefProficiencyStatusId]                        INT            NULL,
    [AidSetUsed]                                    NVARCHAR (30)  NULL,
    [DescriptiveFeedback]                           NVARCHAR (300) NULL,
    [ScaffoldingItemFlag]                           BIT            NULL,
    [HintCount]                                     INT            NULL,
    [HintIncludedAnswer]                            BIT            NULL,
    [Duration]                                      TIME (7)       NULL,
    [FirstAttemptDuration]                          TIME (7)       NULL,
    [StartTime]                                     TIME (7)       NULL,
    [StartDate]                                     DATE           NULL,
    [SecurityIssue]                                 NVARCHAR (300) NULL,
    [AssessmentItemId]                              INT            NOT NULL,
    [AssessmentParticipantSessionId]                INT            NOT NULL,
    [ResultXML]                                     NVARCHAR (MAX) NULL,
    [AssessmentItemResponseDescriptiveFeedbackDate] DATETIME       NULL,
    [RefAssessmentItemResponseScoreStatusId]        INT            NULL,
    [RecordStartDateTime]                           DATETIME       NULL,
    [RecordEndDateTime]                             DATETIME       NULL,
    [RecordStatusId]                                INT            NULL,
    [DataCollectionId]                              INT            NULL,
    CONSTRAINT [PK_AssessmentItemResponse] PRIMARY KEY CLUSTERED ([AssessmentItemResponseId] ASC),
    CONSTRAINT [FK_AssessmentItemResponse_AssessmentItem] FOREIGN KEY ([AssessmentItemId]) REFERENCES [dbo].[AssessmentItem] ([AssessmentItemId]),
    CONSTRAINT [FK_AssessmentItemResponse_AssessmentParticipantSession] FOREIGN KEY ([AssessmentParticipantSessionId]) REFERENCES [dbo].[AssessmentParticipantSession] ([AssessmentParticipantSessionId]),
    CONSTRAINT [FK_AssessmentItemResponse_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_AssessmentItemResponse_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_AssessmentItemResponse_RefAssessItemResponseStatus] FOREIGN KEY ([RefAssessItemResponseStatusId]) REFERENCES [dbo].[RefAssessmentItemResponseStatus] ([RefAssessmentItemResponseStatusId]),
    CONSTRAINT [FK_AssessmentItemResponse_RefAssessmentItemResponseScoreStatus] FOREIGN KEY ([RefAssessmentItemResponseScoreStatusId]) REFERENCES [dbo].[RefAssessmentItemResponseScoreStatus] ([RefAssessmentItemResponseScoreStatusId]),
    CONSTRAINT [FK_AssessmentItemResponse_RefProficiencyStatus] FOREIGN KEY ([RefProficiencyStatusId]) REFERENCES [dbo].[RefProficiencyStatus] ([RefProficiencyStatusId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'AssessmentItemResponse includes information about a learner response and subsequent information about feedback and scoring of the response.  Some properties like DescriptiveFeedback are for support of a  formative assessment process. Some properties are used within intelligent tutoring systems such as HintCount and ScaffoldingItemFlag.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'AssessmentItemResponseId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N' A specific response to an assessment item by the person being assessed.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'Value';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Item Response Value', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'Value';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001063', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'Value';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20069', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'Value';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'Value';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The score given to a person''s response to an assessment item.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'ScoreValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Item Response Score Value', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'ScoreValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000724', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'ScoreValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19700', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'ScoreValue';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'ScoreValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The status of the response for a given item.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'RefAssessItemResponseStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Item Response Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'RefAssessItemResponseStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000405', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'RefAssessItemResponseStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19396', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'RefAssessItemResponseStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'RefAssessItemResponseStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether a student''s scores were proficient.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'RefProficiencyStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Proficiency Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'RefProficiencyStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000573', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'RefProficiencyStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19565', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'RefProficiencyStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'RefProficiencyStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A tool or aid set used while viewing the item. This can include things like a calculator, reference tools, etc.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'AidSetUsed';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Item Response Aid Set Used', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'AidSetUsed';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000406', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'AidSetUsed';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19397', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'AidSetUsed';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'AidSetUsed';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The formative descriptive feedback that was given to a learner in response to the results from a scored/evaluated assessment item.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'DescriptiveFeedback';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Item Response Descriptive Feedback', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'DescriptiveFeedback';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000891', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'DescriptiveFeedback';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19891', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'DescriptiveFeedback';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'DescriptiveFeedback';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Indicates that the response is to a scaffolding problem rather than the main/assigned problem.  A scaffolding item is a follow-up formative assessment item used to assess prerequisite or component skills, presented immediately after a learner gives an incorrect answer on the previous item.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'ScaffoldingItemFlag';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Item Response Scaffolding Item Flag', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'ScaffoldingItemFlag';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000954', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'ScaffoldingItemFlag';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19955', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'ScaffoldingItemFlag';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'ScaffoldingItemFlag';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The total number of hints presented as the learner responded to a formative assessment item.  This may include hints requested by the learner or hints automatically presented such as in an online tutoring system. Presentation of a scaffolding item is a separate response record and not counted as a hint.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'HintCount';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Item Response Hint Count', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'HintCount';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000955', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'HintCount';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19956', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'HintCount';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'HintCount';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Indicates that one of the hints presented included the correct answer.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'HintIncludedAnswer';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Item Response Hint Included Answer', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'HintIncludedAnswer';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000956', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'HintIncludedAnswer';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19957', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'HintIncludedAnswer';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'HintIncludedAnswer';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The total amount of time in seconds or milliseconds  that a person spent responding to a given assessment item.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'Duration';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Item Response Duration', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'Duration';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000402', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'Duration';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19394', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'Duration';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'Duration';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The amount of time in seconds or milliseconds that a person took to give an initial response, a first attempt to answer a formative assessment item.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'FirstAttemptDuration';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Item Response First Attempt Duration', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'FirstAttemptDuration';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000957', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'FirstAttemptDuration';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19958', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'FirstAttemptDuration';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'FirstAttemptDuration';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The time of day that the assessment item was presented to the learner.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'StartTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Item Response Start Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'StartTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000958', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'StartTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19959', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'StartTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'StartTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The date on which the assessment item was presented to the learner.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Item Response Start Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000959', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19960', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The description of security issue, if any, related to a learner''s response to an assessment item.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'SecurityIssue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Item Response Security Issue', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'SecurityIssue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000969', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'SecurityIssue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19970', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'SecurityIssue';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'SecurityIssue';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - AssessmentItem.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'AssessmentItemId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - AssessmentParticipantSession', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'AssessmentParticipantSessionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The  assessment item result formatted according to the IMS Global QTI  Specification.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'ResultXML';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Item Result XML', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'ResultXML';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001284', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'ResultXML';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20250', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'ResultXML';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'ResultXML';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The date and time the descriptive feedback was entered in response to the results from a scored/evaluated assessment item.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'AssessmentItemResponseDescriptiveFeedbackDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Item Response Descriptive Feedback Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'AssessmentItemResponseDescriptiveFeedbackDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001537', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'AssessmentItemResponseDescriptiveFeedbackDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20512', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'AssessmentItemResponseDescriptiveFeedbackDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'AssessmentItemResponseDescriptiveFeedbackDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The status of scoring a person''s response to an assessment item.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'RefAssessmentItemResponseScoreStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Item Response Score Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'RefAssessmentItemResponseScoreStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001538', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'RefAssessmentItemResponseScoreStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20513', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'RefAssessmentItemResponseScoreStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'RefAssessmentItemResponseScoreStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemResponse', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

