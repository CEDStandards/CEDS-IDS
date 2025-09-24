CREATE TABLE [dbo].[LearningResourceIdentifier] (
    [LearningResourceIdentifierId]              INT           IDENTITY (1, 1) NOT NULL,
    [LearningResourceId]                        INT           NOT NULL,
    [LearningResourceIdentifier]                NVARCHAR (40) NULL,
    [RefLearningResourceIdentificationSystemId] INT           NULL,
    [RecordStartDateTime]                       DATETIME      NULL,
    [RecordEndDateTime]                         DATETIME      NULL,
    [RecordStatusId]                            INT           NULL,
    [DataCollectionId]                          INT           NULL,
    CONSTRAINT [PK_LearningResourceIdentifier] PRIMARY KEY CLUSTERED ([LearningResourceIdentifierId] ASC),
    CONSTRAINT [FK_LearningResourceIdentifier_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_LearningResourceIdentifier_LearningResource] FOREIGN KEY ([LearningResourceId]) REFERENCES [dbo].[LearningResource] ([LearningResourceId]),
    CONSTRAINT [FK_LearningResourceIdentifier_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_LearningResourceIdentifier_RefLearningResourceIdentificationSystem] FOREIGN KEY ([RefLearningResourceIdentificationSystemId]) REFERENCES [dbo].[RefLearningResourceIdentificationSystem] ([RefLearningResourceIdentificationSystemId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A unique number or alphanumeric code assigned to a learning resource by an organization.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResourceIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResourceIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A unique number or alphanumeric code assigned to a learning resource by an organization.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResourceIdentifier', @level2type = N'COLUMN', @level2name = N'LearningResourceIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Learning Resource Identifier', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResourceIdentifier', @level2type = N'COLUMN', @level2name = N'LearningResourceIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002027', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResourceIdentifier', @level2type = N'COLUMN', @level2name = N'LearningResourceIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25037', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResourceIdentifier', @level2type = N'COLUMN', @level2name = N'LearningResourceIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResourceIdentifier', @level2type = N'COLUMN', @level2name = N'LearningResourceIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A coding scheme that is used for identification and record-keeping purposes to refer to a learning resource.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResourceIdentifier', @level2type = N'COLUMN', @level2name = N'RefLearningResourceIdentificationSystemId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Learning Resource Identification System', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResourceIdentifier', @level2type = N'COLUMN', @level2name = N'RefLearningResourceIdentificationSystemId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002028', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResourceIdentifier', @level2type = N'COLUMN', @level2name = N'RefLearningResourceIdentificationSystemId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25036', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResourceIdentifier', @level2type = N'COLUMN', @level2name = N'RefLearningResourceIdentificationSystemId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResourceIdentifier', @level2type = N'COLUMN', @level2name = N'RefLearningResourceIdentificationSystemId';

