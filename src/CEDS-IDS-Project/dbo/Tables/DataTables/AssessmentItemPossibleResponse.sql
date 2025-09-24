CREATE TABLE [dbo].[AssessmentItemPossibleResponse] (
    [AssessmentItemPossibleResponseId] INT            IDENTITY (1, 1) NOT NULL,
    [AssessmentItemId]                 INT            NOT NULL,
    [PossibleResponseOption]           NVARCHAR (MAX) NULL,
    [Value]                            NVARCHAR (300) NULL,
    [CorrectIndicator]                 BIT            NULL,
    [FeedbackMessage]                  NVARCHAR (300) NULL,
    [SequenceNumber]                   INT            NULL,
    [RecordStartDateTime]              DATETIME       NULL,
    [RecordEndDateTime]                DATETIME       NULL,
    [RecordStatusId]                   INT            NULL,
    [DataCollectionId]                 INT            NULL,
    CONSTRAINT [PK_AssessmentItemPossibleResponse] PRIMARY KEY CLUSTERED ([AssessmentItemPossibleResponseId] ASC),
    CONSTRAINT [FK_AssessmentItemPossibleResponse_AssessmentItem] FOREIGN KEY ([AssessmentItemId]) REFERENCES [dbo].[AssessmentItem] ([AssessmentItemId]),
    CONSTRAINT [FK_AssessmentItemPossibleResponse_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_AssessmentItemPossibleResponse_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information about one of the possible responses that a person may give in response to an assessment item prompt.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemPossibleResponse';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemPossibleResponse';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemPossibleResponse', @level2type = N'COLUMN', @level2name = N'AssessmentItemPossibleResponseId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - AssessmentItem.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemPossibleResponse', @level2type = N'COLUMN', @level2name = N'AssessmentItemId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The possible response presented to the participant within a selected-response/multiple-choice assessment item.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemPossibleResponse', @level2type = N'COLUMN', @level2name = N'PossibleResponseOption';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Item Possible Response Option', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemPossibleResponse', @level2type = N'COLUMN', @level2name = N'PossibleResponseOption';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001269', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemPossibleResponse', @level2type = N'COLUMN', @level2name = N'PossibleResponseOption';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20235', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemPossibleResponse', @level2type = N'COLUMN', @level2name = N'PossibleResponseOption';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemPossibleResponse', @level2type = N'COLUMN', @level2name = N'PossibleResponseOption';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The description of each distracter on an assessment item, explaining why it is there, what misunderstandings it exposes.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemPossibleResponse', @level2type = N'COLUMN', @level2name = N'Value';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Item Possible Response Value', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemPossibleResponse', @level2type = N'COLUMN', @level2name = N'Value';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000908', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemPossibleResponse', @level2type = N'COLUMN', @level2name = N'Value';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19908', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemPossibleResponse', @level2type = N'COLUMN', @level2name = N'Value';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemPossibleResponse', @level2type = N'COLUMN', @level2name = N'Value';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Indicates that the possible response is the correct response.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemPossibleResponse', @level2type = N'COLUMN', @level2name = N'CorrectIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Item Possible Response Correct Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemPossibleResponse', @level2type = N'COLUMN', @level2name = N'CorrectIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001217', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemPossibleResponse', @level2type = N'COLUMN', @level2name = N'CorrectIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20183', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemPossibleResponse', @level2type = N'COLUMN', @level2name = N'CorrectIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemPossibleResponse', @level2type = N'COLUMN', @level2name = N'CorrectIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A message provided to the person being assessed after giving a response that matches the possible response.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemPossibleResponse', @level2type = N'COLUMN', @level2name = N'FeedbackMessage';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Item Possible Response Feedback Message', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemPossibleResponse', @level2type = N'COLUMN', @level2name = N'FeedbackMessage';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000904', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemPossibleResponse', @level2type = N'COLUMN', @level2name = N'FeedbackMessage';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19904', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemPossibleResponse', @level2type = N'COLUMN', @level2name = N'FeedbackMessage';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemPossibleResponse', @level2type = N'COLUMN', @level2name = N'FeedbackMessage';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The position of this response in the list of responses displayed, such as for a multiple choice item type.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemPossibleResponse', @level2type = N'COLUMN', @level2name = N'SequenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Item Possible Response Sequence Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemPossibleResponse', @level2type = N'COLUMN', @level2name = N'SequenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000905', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemPossibleResponse', @level2type = N'COLUMN', @level2name = N'SequenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19905', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemPossibleResponse', @level2type = N'COLUMN', @level2name = N'SequenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemPossibleResponse', @level2type = N'COLUMN', @level2name = N'SequenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemPossibleResponse', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemPossibleResponse', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemPossibleResponse', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemPossibleResponse', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemPossibleResponse', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemPossibleResponse', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemPossibleResponse', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemPossibleResponse', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemPossibleResponse', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemPossibleResponse', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

