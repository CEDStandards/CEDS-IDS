CREATE TABLE [dbo].[CompetencyDefEducationLevel] (
    [CompetencyDefEducationLevelId] INT      IDENTITY (1, 1) NOT NULL,
    [CompetencyDefinitionId]        INT      NOT NULL,
    [RefEducationLevelId]           INT      NOT NULL,
    [RecordStartDateTime]           DATETIME NULL,
    [RecordEndDateTime]             DATETIME NULL,
    [RecordStatusId]                INT      NULL,
    [DataCollectionId]              INT      NULL,
    CONSTRAINT [PK_CompetencyDefEducationLevel] PRIMARY KEY CLUSTERED ([CompetencyDefEducationLevelId] ASC),
    CONSTRAINT [FK_CompetencyDefEducationLevel_CompetencyDefinition] FOREIGN KEY ([CompetencyDefinitionId]) REFERENCES [dbo].[CompetencyDefinition] ([CompetencyDefinitionId]),
    CONSTRAINT [FK_CompetencyDefEducationLevel_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_CompetencyDefEducationLevel_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_CompetencyDefEducationLevel_RefEducationLevel] FOREIGN KEY ([RefEducationLevelId]) REFERENCES [dbo].[RefEducationLevel] ([RefEducationLevelId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A relation between a Competency Definition and an Education Level.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefEducationLevel';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefEducationLevel';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The education level, grade level or primary instructional level at which a Competency Definition is intended.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefEducationLevel', @level2type = N'COLUMN', @level2name = N'RefEducationLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Competency Definition Education Level', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefEducationLevel', @level2type = N'COLUMN', @level2name = N'RefEducationLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000725', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefEducationLevel', @level2type = N'COLUMN', @level2name = N'RefEducationLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19701', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefEducationLevel', @level2type = N'COLUMN', @level2name = N'RefEducationLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefEducationLevel', @level2type = N'COLUMN', @level2name = N'RefEducationLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefEducationLevel', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefEducationLevel', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefEducationLevel', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefEducationLevel', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefEducationLevel', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefEducationLevel', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefEducationLevel', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefEducationLevel', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefEducationLevel', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefEducationLevel', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

