CREATE TABLE [dbo].[JobPositionDetail] (
    [JobPositionDetailId]          INT      IDENTITY (1, 1) NOT NULL,
    [JobPositionId]                INT      NOT NULL,
    [JobPositionExpectedStartDate] DATETIME NULL,
    [RecordStartDateTime]          DATETIME NULL,
    [RecordEndDateTime]            DATETIME NULL,
    [RecordStatusId]               INT      NULL,
    [DataCollectionId]             INT      NULL,
    CONSTRAINT [PK_JobPositionDetail] PRIMARY KEY CLUSTERED ([JobPositionDetailId] ASC),
    CONSTRAINT [FK_JobPositionDetail_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_JobPositionDetail_JobPosition] FOREIGN KEY ([JobPositionId]) REFERENCES [dbo].[JobPosition] ([JobPositionId]),
    CONSTRAINT [FK_JobPositionDetail_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information about the job position.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobPositionDetail';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobPositionDetail';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The date, determined by the organization, on which they anticipate the selected individual to commence their role within the organization.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobPositionDetail', @level2type = N'COLUMN', @level2name = N'JobPositionExpectedStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Job Position Expected Start Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobPositionDetail', @level2type = N'COLUMN', @level2name = N'JobPositionExpectedStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002077', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobPositionDetail', @level2type = N'COLUMN', @level2name = N'JobPositionExpectedStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25028', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobPositionDetail', @level2type = N'COLUMN', @level2name = N'JobPositionExpectedStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobPositionDetail', @level2type = N'COLUMN', @level2name = N'JobPositionExpectedStartDate';

