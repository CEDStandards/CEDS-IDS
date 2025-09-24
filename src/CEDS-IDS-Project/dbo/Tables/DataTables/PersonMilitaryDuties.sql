CREATE TABLE [dbo].[PersonMilitaryDuties] (
    [PersonMilitaryDutiesId] INT      IDENTITY (1, 1) NOT NULL,
    [PersonMilitaryId]       INT      NOT NULL,
    [RefMilitaryDutiesId]    INT      NULL,
    [RecordStartDateTime]    DATETIME NULL,
    [RecordEndDateTime]      DATETIME NULL,
    [RecordStatusId]         INT      NULL,
    [DataCollectionId]       INT      NULL,
    CONSTRAINT [PK_PersonMilitaryDuties] PRIMARY KEY CLUSTERED ([PersonMilitaryDutiesId] ASC),
    CONSTRAINT [FK_PersonMilitaryDuties_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_PersonMilitaryDuties_PersonMilitary] FOREIGN KEY ([PersonMilitaryId]) REFERENCES [dbo].[PersonMilitary] ([PersonMilitaryId]),
    CONSTRAINT [FK_PersonMilitaryDuties_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_PersonMilitaryDuties_RefMilitaryDuties] FOREIGN KEY ([RefMilitaryDutiesId]) REFERENCES [dbo].[RefMilitaryDuties] ([RefMilitaryDutiesId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information related to duties encompassed within a period of military service.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryDuties';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryDuties';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A description of the duties encompassed within a period of military service.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryDuties', @level2type = N'COLUMN', @level2name = N'RefMilitaryDutiesId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Military Duties', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryDuties', @level2type = N'COLUMN', @level2name = N'RefMilitaryDutiesId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002037', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryDuties', @level2type = N'COLUMN', @level2name = N'RefMilitaryDutiesId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25061', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryDuties', @level2type = N'COLUMN', @level2name = N'RefMilitaryDutiesId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryDuties', @level2type = N'COLUMN', @level2name = N'RefMilitaryDutiesId';

