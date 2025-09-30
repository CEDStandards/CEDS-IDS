CREATE TABLE [dbo].[LearningResourceIssued] (
    [LearningResourceIssuedId]   INT      IDENTITY (1, 1) NOT NULL,
    [LearningResourceId]         INT      NOT NULL,
    [IssuedToPersonId]           INT      NULL,
    [LearningResourceIssuedDate] DATETIME NULL,
    [RecordStartDateTime]        DATETIME NULL,
    [RecordEndDateTime]          DATETIME NULL,
    [RecordStatusId]             INT      NULL,
    [DataCollectionId]           INT      NULL,
    CONSTRAINT [PK_LearningResourceIssued] PRIMARY KEY CLUSTERED ([LearningResourceIssuedId] ASC),
    CONSTRAINT [FK_LearningResourceIssued_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_LearningResourceIssued_IssuedToPerson] FOREIGN KEY ([IssuedToPersonId]) REFERENCES [dbo].[Person] ([PersonId]),
    CONSTRAINT [FK_LearningResourceIssued_LearningResource] FOREIGN KEY ([LearningResourceId]) REFERENCES [dbo].[LearningResource] ([LearningResourceId]),
    CONSTRAINT [FK_LearningResourceIssued_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information related to issuing a learning resource to a person for a period of time.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResourceIssued';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResourceIssued';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The date the learning resource was issued to the student.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResourceIssued', @level2type = N'COLUMN', @level2name = N'LearningResourceIssuedDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Learning Resource Issued Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResourceIssued', @level2type = N'COLUMN', @level2name = N'LearningResourceIssuedDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002093', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResourceIssued', @level2type = N'COLUMN', @level2name = N'LearningResourceIssuedDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25038', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResourceIssued', @level2type = N'COLUMN', @level2name = N'LearningResourceIssuedDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResourceIssued', @level2type = N'COLUMN', @level2name = N'LearningResourceIssuedDate';

