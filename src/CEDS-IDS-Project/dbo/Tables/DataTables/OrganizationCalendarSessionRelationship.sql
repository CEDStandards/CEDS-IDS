CREATE TABLE [dbo].[OrganizationCalendarSessionRelationship] (
    [OrganizationCalendarSessionRelationshipId] INT      IDENTITY (1, 1) NOT NULL,
    [OrganizationCalendarSessionId]             INT      NOT NULL,
    [RelatedOrganizationCalendarSessionId]      INT      NOT NULL,
    [RecordStartDateTime]                       DATETIME NULL,
    [RecordEndDateTime]                         DATETIME NULL,
    [RecordStatusId]                            INT      NULL,
    [DataCollectionId]                          INT      NULL,
    CONSTRAINT [PK_OrganizationCalendarSessionRelationship] PRIMARY KEY CLUSTERED ([OrganizationCalendarSessionRelationshipId] ASC),
    CONSTRAINT [FK_OrganizationCalendarSessionRelationship_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_OrganizationCalendarSessionRelationship_OrganizationCalendarSession] FOREIGN KEY ([OrganizationCalendarSessionId]) REFERENCES [dbo].[OrganizationCalendarSession] ([OrganizationCalendarSessionId]),
    CONSTRAINT [FK_OrganizationCalendarSessionRelationship_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The relationship between two calendar sessions, generally used with Session Sequence Number to order sessions.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSessionRelationship';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSessionRelationship';

