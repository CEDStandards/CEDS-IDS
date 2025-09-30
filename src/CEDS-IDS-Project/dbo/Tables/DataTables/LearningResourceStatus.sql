CREATE TABLE [dbo].[LearningResourceStatus] (
    [LearningResourceStatusId]       INT      IDENTITY (1, 1) NOT NULL,
    [RefLearningResourceStatusId]    INT      NULL,
    [LearningResourceStatusQuantity] INT      NULL,
    [StatusEndDate]                  DATETIME NULL,
    [StatusStartDate]                DATETIME NULL,
    [RecordStartDateTime]            DATETIME NULL,
    [RecordEndDateTime]              DATETIME NULL,
    [RecordStatusId]                 INT      NULL,
    [DataCollectionId]               INT      NULL,
    CONSTRAINT [PK_LearningResourceStatus] PRIMARY KEY CLUSTERED ([LearningResourceStatusId] ASC),
    CONSTRAINT [FK_LearningResourceStatus_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_LearningResourceStatus_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_LearningResourceStatus_RefLearningResourceStatus] FOREIGN KEY ([RefLearningResourceStatusId]) REFERENCES [dbo].[RefLearningResourceStatus] ([RefLearningResourceStatusId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The current status of a learning resource owned or leased by an organization.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResourceStatus';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResourceStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The status of the Learning Resource as of the status start date.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResourceStatus', @level2type = N'COLUMN', @level2name = N'RefLearningResourceStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Learning Resource Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResourceStatus', @level2type = N'COLUMN', @level2name = N'RefLearningResourceStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002031', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResourceStatus', @level2type = N'COLUMN', @level2name = N'RefLearningResourceStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25041', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResourceStatus', @level2type = N'COLUMN', @level2name = N'RefLearningResourceStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResourceStatus', @level2type = N'COLUMN', @level2name = N'RefLearningResourceStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The total number of a specific related learning resource for each distinct learning resource status.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResourceStatus', @level2type = N'COLUMN', @level2name = N'LearningResourceStatusQuantity';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Learning Resource Status Quantity', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResourceStatus', @level2type = N'COLUMN', @level2name = N'LearningResourceStatusQuantity';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResourceStatus', @level2type = N'COLUMN', @level2name = N'LearningResourceStatusQuantity';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25042', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResourceStatus', @level2type = N'COLUMN', @level2name = N'LearningResourceStatusQuantity';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResourceStatus', @level2type = N'COLUMN', @level2name = N'LearningResourceStatusQuantity';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The last year, month, day, and optionally time when a status applied.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResourceStatus', @level2type = N'COLUMN', @level2name = N'StatusEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Status End Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResourceStatus', @level2type = N'COLUMN', @level2name = N'StatusEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001228', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResourceStatus', @level2type = N'COLUMN', @level2name = N'StatusEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=24193', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResourceStatus', @level2type = N'COLUMN', @level2name = N'StatusEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResourceStatus', @level2type = N'COLUMN', @level2name = N'StatusEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The year, month, day and optionally time, that a status became applicable.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResourceStatus', @level2type = N'COLUMN', @level2name = N'StatusStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Status Start Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResourceStatus', @level2type = N'COLUMN', @level2name = N'StatusStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001227', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResourceStatus', @level2type = N'COLUMN', @level2name = N'StatusStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=24192', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResourceStatus', @level2type = N'COLUMN', @level2name = N'StatusStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResourceStatus', @level2type = N'COLUMN', @level2name = N'StatusStartDate';

