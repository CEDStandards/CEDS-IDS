CREATE TABLE [dbo].[JobIdentifier] (
    [JobIdentifierId]              INT           IDENTITY (1, 1) NOT NULL,
    [JobId]                        INT           NOT NULL,
    [JobIdentifier]                NVARCHAR (40) NULL,
    [RefJobIdentificationSystemId] INT           NULL,
    [RecordStartDateTime]          DATETIME      NULL,
    [RecordEndDateTime]            DATETIME      NULL,
    [RecordStatusId]               INT           NULL,
    [DataCollectionId]             INT           NULL,
    CONSTRAINT [PK_JobIdentifier] PRIMARY KEY CLUSTERED ([JobIdentifierId] ASC),
    CONSTRAINT [FK_JobIdentifier_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_JobIdentifier_Job] FOREIGN KEY ([JobId]) REFERENCES [dbo].[Job] ([JobId]),
    CONSTRAINT [FK_JobIdentifier_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_JobIdentifier_RefJobIdentificationSystem] FOREIGN KEY ([RefJobIdentificationSystemId]) REFERENCES [dbo].[RefJobIdentificationSystem] ([RefJobIdentificationSystemId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A unique number or alphanumeric code used to identify a job.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A unique number or alphanumeric code used to identify a job.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobIdentifier', @level2type = N'COLUMN', @level2name = N'JobIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Job Identifier', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobIdentifier', @level2type = N'COLUMN', @level2name = N'JobIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002069', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobIdentifier', @level2type = N'COLUMN', @level2name = N'JobIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25027', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobIdentifier', @level2type = N'COLUMN', @level2name = N'JobIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobIdentifier', @level2type = N'COLUMN', @level2name = N'JobIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A coding scheme that is used by an organization for identification and record keeping purposes to refer to a job.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobIdentifier', @level2type = N'COLUMN', @level2name = N'RefJobIdentificationSystemId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Job Identification System', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobIdentifier', @level2type = N'COLUMN', @level2name = N'RefJobIdentificationSystemId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002070', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobIdentifier', @level2type = N'COLUMN', @level2name = N'RefJobIdentificationSystemId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25026', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobIdentifier', @level2type = N'COLUMN', @level2name = N'RefJobIdentificationSystemId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobIdentifier', @level2type = N'COLUMN', @level2name = N'RefJobIdentificationSystemId';

