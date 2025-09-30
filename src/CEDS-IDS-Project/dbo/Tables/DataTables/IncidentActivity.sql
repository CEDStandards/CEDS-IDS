CREATE TABLE [dbo].[IncidentActivity] (
    [IncidentActivityId]    INT      IDENTITY (1, 1) NOT NULL,
    [RefIncidentActivityId] INT      NULL,
    [RecordStartDateTime]   DATETIME NULL,
    [RecordEndDateTime]     DATETIME NULL,
    [RecordStatusId]        INT      NULL,
    [DataCollectionId]      INT      NULL,
    CONSTRAINT [PK_IncidentActivity] PRIMARY KEY CLUSTERED ([IncidentActivityId] ASC),
    CONSTRAINT [FK_IncidentActivity_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_IncidentActivity_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_IncidentActivity_RefIncidentActivity] FOREIGN KEY ([RefIncidentActivityId]) REFERENCES [dbo].[RefIncidentActivity] ([RefIncidentActivityId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information about the activity or activies taking place during an incident.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IncidentActivity';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IncidentActivity';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The activity taking place during the occurrence. ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IncidentActivity', @level2type = N'COLUMN', @level2name = N'RefIncidentActivityId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Incident Activity', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IncidentActivity', @level2type = N'COLUMN', @level2name = N'RefIncidentActivityId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002110', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IncidentActivity', @level2type = N'COLUMN', @level2name = N'RefIncidentActivityId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25024', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IncidentActivity', @level2type = N'COLUMN', @level2name = N'RefIncidentActivityId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IncidentActivity', @level2type = N'COLUMN', @level2name = N'RefIncidentActivityId';

