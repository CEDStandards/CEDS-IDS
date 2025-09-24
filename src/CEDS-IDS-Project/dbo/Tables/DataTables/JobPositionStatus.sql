CREATE TABLE [dbo].[JobPositionStatus] (
    [JobPositionStatusId]                   INT      IDENTITY (1, 1) NOT NULL,
    [JobPositionId]                         INT      NOT NULL,
    [RefJobPositionStatusCancelledReasonId] INT      NULL,
    [RefJobPositionStatusId]                INT      NULL,
    [JobPositionStatusDate]                 DATETIME NULL,
    [RecordStartDateTime]                   DATETIME NULL,
    [RecordEndDateTime]                     DATETIME NULL,
    [RecordStatusId]                        INT      NULL,
    [DataCollectionId]                      INT      NULL,
    CONSTRAINT [PK_JobPositionStatus] PRIMARY KEY CLUSTERED ([JobPositionStatusId] ASC),
    CONSTRAINT [FK_JobPositionStatus_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_JobPositionStatus_JobPosition] FOREIGN KEY ([JobPositionId]) REFERENCES [dbo].[JobPosition] ([JobPositionId]),
    CONSTRAINT [FK_JobPositionStatus_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_JobPositionStatus_RefJobPositionStatus] FOREIGN KEY ([RefJobPositionStatusId]) REFERENCES [dbo].[RefJobPositionStatus] ([RefJobPositionStatusId]),
    CONSTRAINT [FK_JobPositionStatus_RefJobPositionStatusCancelledReason] FOREIGN KEY ([RefJobPositionStatusCancelledReasonId]) REFERENCES [dbo].[RefJobPositionStatusCancelledReason] ([RefJobPositionStatusCancelledReasonId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information defining the status of a job position.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobPositionStatus';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobPositionStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The reason why the job position was given the job position status of cancelled.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobPositionStatus', @level2type = N'COLUMN', @level2name = N'RefJobPositionStatusCancelledReasonId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Job Position Status Cancelled Reason', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobPositionStatus', @level2type = N'COLUMN', @level2name = N'RefJobPositionStatusCancelledReasonId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002080', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobPositionStatus', @level2type = N'COLUMN', @level2name = N'RefJobPositionStatusCancelledReasonId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25032', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobPositionStatus', @level2type = N'COLUMN', @level2name = N'RefJobPositionStatusCancelledReasonId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobPositionStatus', @level2type = N'COLUMN', @level2name = N'RefJobPositionStatusCancelledReasonId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A value defining the status of the job position.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobPositionStatus', @level2type = N'COLUMN', @level2name = N'RefJobPositionStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Job Position Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobPositionStatus', @level2type = N'COLUMN', @level2name = N'RefJobPositionStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002078', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobPositionStatus', @level2type = N'COLUMN', @level2name = N'RefJobPositionStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25031', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobPositionStatus', @level2type = N'COLUMN', @level2name = N'RefJobPositionStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobPositionStatus', @level2type = N'COLUMN', @level2name = N'RefJobPositionStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The effective date of the job position status.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobPositionStatus', @level2type = N'COLUMN', @level2name = N'JobPositionStatusDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Job Position Status Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobPositionStatus', @level2type = N'COLUMN', @level2name = N'JobPositionStatusDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002079', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobPositionStatus', @level2type = N'COLUMN', @level2name = N'JobPositionStatusDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobPositionStatus', @level2type = N'COLUMN', @level2name = N'JobPositionStatusDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobPositionStatus', @level2type = N'COLUMN', @level2name = N'JobPositionStatusDate';

