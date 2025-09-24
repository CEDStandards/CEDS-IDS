CREATE TABLE [dbo].[LearningResourceOrder] (
    [LearningResourceOrderId]      INT      IDENTITY (1, 1) NOT NULL,
    [LearningResourceId]           INT      NOT NULL,
    [LearningResourceOrderedDate]  DATETIME NULL,
    [LearningResourceReceivedDate] DATETIME NULL,
    [RecordStartDateTime]          DATETIME NULL,
    [RecordEndDateTime]            DATETIME NULL,
    [RecordStatusId]               INT      NULL,
    [DataCollectionId]             INT      NULL,
    CONSTRAINT [PK_LearningResourceOrder] PRIMARY KEY CLUSTERED ([LearningResourceOrderId] ASC),
    CONSTRAINT [FK_LearningResourceOrder_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_LearningResourceOrder_LearningResource] FOREIGN KEY ([LearningResourceId]) REFERENCES [dbo].[LearningResource] ([LearningResourceId]),
    CONSTRAINT [FK_LearningResourceOrder_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information related to an organization ordering or purchasing a learning resource.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResourceOrder';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResourceOrder';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The date the learning resource was ordered for the student.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResourceOrder', @level2type = N'COLUMN', @level2name = N'LearningResourceOrderedDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Learning Resource Ordered Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResourceOrder', @level2type = N'COLUMN', @level2name = N'LearningResourceOrderedDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002095', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResourceOrder', @level2type = N'COLUMN', @level2name = N'LearningResourceOrderedDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25039', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResourceOrder', @level2type = N'COLUMN', @level2name = N'LearningResourceOrderedDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResourceOrder', @level2type = N'COLUMN', @level2name = N'LearningResourceOrderedDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The date the learning resource was received by the organization that placed the order. ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResourceOrder', @level2type = N'COLUMN', @level2name = N'LearningResourceReceivedDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Learning Resource Received Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResourceOrder', @level2type = N'COLUMN', @level2name = N'LearningResourceReceivedDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002094', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResourceOrder', @level2type = N'COLUMN', @level2name = N'LearningResourceReceivedDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25040', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResourceOrder', @level2type = N'COLUMN', @level2name = N'LearningResourceReceivedDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResourceOrder', @level2type = N'COLUMN', @level2name = N'LearningResourceReceivedDate';

