CREATE TABLE [dbo].[PersonMilitaryHonors] (
    [PersonMilitaryHonorsId] INT           IDENTITY (1, 1) NOT NULL,
    [PersonMilitaryId]       INT           NOT NULL,
    [MilitaryHonors]         NVARCHAR (40) NULL,
    [RecordStartDateTime]    DATETIME      NULL,
    [RecordEndDateTime]      DATETIME      NULL,
    [RecordStatusId]         INT           NULL,
    [DataCollectionId]       INT           NULL,
    CONSTRAINT [PK_PersonMilitaryHonors] PRIMARY KEY CLUSTERED ([PersonMilitaryHonorsId] ASC),
    CONSTRAINT [FK_PersonMilitaryHonors_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_PersonMilitaryHonors_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information related to a military honor that the person received during the service period.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryHonors';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryHonors';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A military honor that the person received during the service period.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryHonors', @level2type = N'COLUMN', @level2name = N'MilitaryHonors';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Military Honors', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryHonors', @level2type = N'COLUMN', @level2name = N'MilitaryHonors';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002049', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryHonors', @level2type = N'COLUMN', @level2name = N'MilitaryHonors';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25064', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryHonors', @level2type = N'COLUMN', @level2name = N'MilitaryHonors';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryHonors', @level2type = N'COLUMN', @level2name = N'MilitaryHonors';

