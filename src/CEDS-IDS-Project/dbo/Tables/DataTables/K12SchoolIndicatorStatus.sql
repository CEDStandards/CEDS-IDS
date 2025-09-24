CREATE TABLE [dbo].[K12SchoolIndicatorStatus] (
    [K12SchoolIndicatorStatusId]       INT            IDENTITY (1, 1) NOT NULL,
    [K12SchoolId]                      INT            NOT NULL,
    [RefIndicatorStatusTypeId]         INT            NOT NULL,
    [RefIndicatorStateDefinedStatusId] INT            NULL,
    [RefIndicatorStatusSubgroupTypeId] INT            NULL,
    [IndicatorStatusSubgroup]          NVARCHAR (100) NULL,
    [IndicatorStatus]                  NVARCHAR (100) NULL,
    [RecordStartDateTime]              DATETIME       NULL,
    [RecordEndDateTime]                DATETIME       NULL,
    [RefIndicatorStatusCustomTypeId]   INT            NULL,
    [RecordStatusId]                   INT            NULL,
    [DataCollectionId]                 INT            NULL,
    CONSTRAINT [PK_K12SchoolIndicatorStatus] PRIMARY KEY CLUSTERED ([K12SchoolIndicatorStatusId] ASC),
    CONSTRAINT [FK_K12SchoolIndicatorStatus_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_K12SchoolIndicatorStatus_K12School] FOREIGN KEY ([K12SchoolId]) REFERENCES [dbo].[K12School] ([K12SchoolId]),
    CONSTRAINT [FK_K12SchoolIndicatorStatus_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_K12SchoolIndicatorStatus_RefIndicatorStateDefinedStatus] FOREIGN KEY ([RefIndicatorStateDefinedStatusId]) REFERENCES [dbo].[RefIndicatorStateDefinedStatus] ([RefIndicatorStateDefinedStatusId]),
    CONSTRAINT [FK_K12SchoolIndicatorStatus_RefIndicatorStatusCustomType] FOREIGN KEY ([RefIndicatorStatusCustomTypeId]) REFERENCES [dbo].[RefIndicatorStatusCustomType] ([RefIndicatorStatusCustomTypeId]),
    CONSTRAINT [FK_K12SchoolIndicatorStatus_RefIndicatorStatusSubgroupType] FOREIGN KEY ([RefIndicatorStatusSubgroupTypeId]) REFERENCES [dbo].[RefIndicatorStatusSubgroupType] ([RefIndicatorStatusSubgroupTypeId]),
    CONSTRAINT [FK_K12SchoolIndicatorStatus_RefIndicatorStatusType] FOREIGN KEY ([RefIndicatorStatusTypeId]) REFERENCES [dbo].[RefIndicatorStatusType] ([RefIndicatorStatusTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information about a K-12 school''s status that can be used to capture categories of accountability such as an indication of whether the school is identified by the state as amoung persistently lowest-achieving schools.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolIndicatorStatus';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolIndicatorStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolIndicatorStatus', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolIndicatorStatus', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolIndicatorStatus', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolIndicatorStatus', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolIndicatorStatus', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolIndicatorStatus', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolIndicatorStatus', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolIndicatorStatus', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolIndicatorStatus', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

