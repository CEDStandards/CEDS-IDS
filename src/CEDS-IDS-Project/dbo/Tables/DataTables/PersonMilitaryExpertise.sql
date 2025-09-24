CREATE TABLE [dbo].[PersonMilitaryExpertise] (
    [PersonMilitaryExpertiseId] INT      IDENTITY (1, 1) NOT NULL,
    [PersonMilitaryId]          INT      NOT NULL,
    [RefMilitaryExpertiseId]    INT      NULL,
    [RecordStartDateTime]       DATETIME NULL,
    [RecordEndDateTime]         DATETIME NULL,
    [RecordStatusId]            INT      NULL,
    [DataCollectionId]          INT      NULL,
    CONSTRAINT [PK_PersonMilitaryExpertise] PRIMARY KEY CLUSTERED ([PersonMilitaryExpertiseId] ASC),
    CONSTRAINT [FK_PersonMilitaryExpertise_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_PersonMilitaryExpertise_PersonMilitary] FOREIGN KEY ([PersonMilitaryId]) REFERENCES [dbo].[PersonMilitary] ([PersonMilitaryId]),
    CONSTRAINT [FK_PersonMilitaryExpertise_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_PersonMilitaryExpertise_RefMilitaryExpertise] FOREIGN KEY ([RefMilitaryExpertiseId]) REFERENCES [dbo].[RefMilitaryExpertise] ([RefMilitaryExpertiseId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information related to expertise that the person developed during the service period.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryExpertise';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryExpertise';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A list of expertise that the person developed during the service period.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryExpertise', @level2type = N'COLUMN', @level2name = N'RefMilitaryExpertiseId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Military Expertise', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryExpertise', @level2type = N'COLUMN', @level2name = N'RefMilitaryExpertiseId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002036', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryExpertise', @level2type = N'COLUMN', @level2name = N'RefMilitaryExpertiseId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25062', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryExpertise', @level2type = N'COLUMN', @level2name = N'RefMilitaryExpertiseId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryExpertise', @level2type = N'COLUMN', @level2name = N'RefMilitaryExpertiseId';

