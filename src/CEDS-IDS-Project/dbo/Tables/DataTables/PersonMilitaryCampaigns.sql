CREATE TABLE [dbo].[PersonMilitaryCampaigns] (
    [PersonMilitaryCampaignsId] INT      IDENTITY (1, 1) NOT NULL,
    [PersonMilitaryId]          INT      NOT NULL,
    [RefMilitaryCampaignsId]    INT      NULL,
    [RecordStartDateTime]       DATETIME NULL,
    [RecordEndDateTime]         DATETIME NULL,
    [RecordStatusId]            INT      NULL,
    [DataCollectionId]          INT      NULL,
    CONSTRAINT [PK_PersonMilitaryCampaigns] PRIMARY KEY CLUSTERED ([PersonMilitaryCampaignsId] ASC),
    CONSTRAINT [FK_PersonMilitaryCampaigns_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_PersonMilitaryCampaigns_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_PersonMilitaryCampaigns_RefMilitaryCampaigns] FOREIGN KEY ([RefMilitaryCampaignsId]) REFERENCES [dbo].[RefMilitaryCampaigns] ([RefMilitaryCampaignsId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information related to a military campaign in which the person has been involved during the service period.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryCampaigns';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryCampaigns';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A military campaign in which the person has been involved during the service period.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryCampaigns', @level2type = N'COLUMN', @level2name = N'RefMilitaryCampaignsId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Military Campaigns', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryCampaigns', @level2type = N'COLUMN', @level2name = N'RefMilitaryCampaignsId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002050', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryCampaigns', @level2type = N'COLUMN', @level2name = N'RefMilitaryCampaignsId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25047', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryCampaigns', @level2type = N'COLUMN', @level2name = N'RefMilitaryCampaignsId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryCampaigns', @level2type = N'COLUMN', @level2name = N'RefMilitaryCampaignsId';

