CREATE TABLE [dbo].[PersonMilitaryServiceLocations] (
    [PersonMilitaryServiceLocationsId] INT            IDENTITY (1, 1) NOT NULL,
    [PersonMilitaryId]                 INT            NOT NULL,
    [MilitaryServiceLocations]         NVARCHAR (MAX) NULL,
    [RecordStartDateTime]              DATETIME       NULL,
    [RecordEndDateTime]                DATETIME       NULL,
    [RecordStatusId]                   INT            NULL,
    [DataCollectionId]                 INT            NULL,
    CONSTRAINT [PK_PersonMilitaryServiceLocations] PRIMARY KEY CLUSTERED ([PersonMilitaryServiceLocationsId] ASC),
    CONSTRAINT [FK_PersonMilitaryServiceLocations_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_PersonMilitaryServiceLocations_PersonMilitary] FOREIGN KEY ([PersonMilitaryId]) REFERENCES [dbo].[PersonMilitary] ([PersonMilitaryId]),
    CONSTRAINT [FK_PersonMilitaryServiceLocations_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information related to the duty stations (locations) encompassed within a period of military service.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryServiceLocations';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryServiceLocations';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A description of the duty stations (locations) encompassed within a period of military service.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryServiceLocations', @level2type = N'COLUMN', @level2name = N'MilitaryServiceLocations';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Military Service Locations', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryServiceLocations', @level2type = N'COLUMN', @level2name = N'MilitaryServiceLocations';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002038', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryServiceLocations', @level2type = N'COLUMN', @level2name = N'MilitaryServiceLocations';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25069', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryServiceLocations', @level2type = N'COLUMN', @level2name = N'MilitaryServiceLocations';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryServiceLocations', @level2type = N'COLUMN', @level2name = N'MilitaryServiceLocations';

