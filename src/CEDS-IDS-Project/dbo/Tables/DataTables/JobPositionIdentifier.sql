CREATE TABLE [dbo].[JobPositionIdentifier] (
    [JobPositionIdentifierId]              INT           IDENTITY (1, 1) NOT NULL,
    [JobPositionIdentifier]                NVARCHAR (40) NULL,
    [JobPositionId]                        INT           NOT NULL,
    [RefJobPositionIdentificationSystemId] INT           NULL,
    [RecordStartDateTime]                  DATETIME      NULL,
    [RecordEndDateTime]                    DATETIME      NULL,
    [RecordStatusId]                       INT           NULL,
    [DataCollectionId]                     INT           NULL,
    CONSTRAINT [PK_JobPositionIdentifier] PRIMARY KEY CLUSTERED ([JobPositionIdentifierId] ASC),
    CONSTRAINT [FK_JobPositionIdentifier_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_JobPositionIdentifier_JobPosition] FOREIGN KEY ([JobPositionId]) REFERENCES [dbo].[JobPosition] ([JobPositionId]),
    CONSTRAINT [FK_JobPositionIdentifier_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_JobPositionIdentifier_RefJobPositionIdentificationSystem] FOREIGN KEY ([RefJobPositionIdentificationSystemId]) REFERENCES [dbo].[RefJobPositionIdentificationSystem] ([RefJobPositionIdentificationSystemId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A unique number or alphanumeric code used to identify a job position.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobPositionIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobPositionIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A unique number or alphanumeric code used to identify a job position.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobPositionIdentifier', @level2type = N'COLUMN', @level2name = N'JobPositionIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Job Position Identifier', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobPositionIdentifier', @level2type = N'COLUMN', @level2name = N'JobPositionIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002075', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobPositionIdentifier', @level2type = N'COLUMN', @level2name = N'JobPositionIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25030', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobPositionIdentifier', @level2type = N'COLUMN', @level2name = N'JobPositionIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobPositionIdentifier', @level2type = N'COLUMN', @level2name = N'JobPositionIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A coding scheme that is used by an organization for identification and record keeping purposes to refer to a job position.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobPositionIdentifier', @level2type = N'COLUMN', @level2name = N'RefJobPositionIdentificationSystemId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Job Position Identification System', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobPositionIdentifier', @level2type = N'COLUMN', @level2name = N'RefJobPositionIdentificationSystemId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002076', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobPositionIdentifier', @level2type = N'COLUMN', @level2name = N'RefJobPositionIdentificationSystemId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25029', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobPositionIdentifier', @level2type = N'COLUMN', @level2name = N'RefJobPositionIdentificationSystemId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobPositionIdentifier', @level2type = N'COLUMN', @level2name = N'RefJobPositionIdentificationSystemId';

