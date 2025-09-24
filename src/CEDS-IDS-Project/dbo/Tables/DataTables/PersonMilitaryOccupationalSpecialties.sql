CREATE TABLE [dbo].[PersonMilitaryOccupationalSpecialties] (
    [PersonMilitaryOccupationalSpecialtiesId] INT            IDENTITY (1, 1) NOT NULL,
    [PersonMilitaryId]                        INT            NOT NULL,
    [MilitaryOccupationalSpecialties]         NVARCHAR (200) NULL,
    [RecordStartDateTime]                     DATETIME       NULL,
    [RecordEndDateTime]                       DATETIME       NULL,
    [RecordStatusId]                          INT            NULL,
    [DataCollectionId]                        INT            NULL,
    CONSTRAINT [PK_PersonMilitaryOccupationalSpecialties] PRIMARY KEY CLUSTERED ([PersonMilitaryOccupationalSpecialtiesId] ASC),
    CONSTRAINT [FK_PersonMilitaryOccupationalSpecialties_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_PersonMilitaryOccupationalSpecialties_PersonMilitary] FOREIGN KEY ([PersonMilitaryId]) REFERENCES [dbo].[PersonMilitary] ([PersonMilitaryId]),
    CONSTRAINT [FK_PersonMilitaryOccupationalSpecialties_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information related to a military occupational specialty of a person.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryOccupationalSpecialties';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryOccupationalSpecialties';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A military occupational specialty of a person. ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryOccupationalSpecialties', @level2type = N'COLUMN', @level2name = N'MilitaryOccupationalSpecialties';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Military Occupational Specialties ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryOccupationalSpecialties', @level2type = N'COLUMN', @level2name = N'MilitaryOccupationalSpecialties';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002035', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryOccupationalSpecialties', @level2type = N'COLUMN', @level2name = N'MilitaryOccupationalSpecialties';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25067', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryOccupationalSpecialties', @level2type = N'COLUMN', @level2name = N'MilitaryOccupationalSpecialties';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryOccupationalSpecialties', @level2type = N'COLUMN', @level2name = N'MilitaryOccupationalSpecialties';

