CREATE TABLE [dbo].[K12SchoolGradeOffered] (
    [K12SchoolGradeOfferedId] INT      IDENTITY (1, 1) NOT NULL,
    [K12SchoolId]             INT      NOT NULL,
    [RefGradeLevelId]         INT      NOT NULL,
    [RecordStartDateTime]     DATETIME NULL,
    [RecordEndDateTime]       DATETIME NULL,
    [RecordStatusId]          INT      NULL,
    [DataCollectionId]        INT      NULL,
    CONSTRAINT [PK_K12SchoolGradeOffered] PRIMARY KEY CLUSTERED ([K12SchoolGradeOfferedId] ASC),
    CONSTRAINT [FK_K12SchoolGradeOffered_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_K12SchoolGradeOffered_K12School] FOREIGN KEY ([K12SchoolId]) REFERENCES [dbo].[K12School] ([K12SchoolId]),
    CONSTRAINT [FK_K12SchoolGradeOffered_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_K12SchoolGradeOffered_RefGradeLevel] FOREIGN KEY ([RefGradeLevelId]) REFERENCES [dbo].[RefGradeLevel] ([RefGradeLevelId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The specific grade or combination of grades offered by an education institution.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolGradeOffered';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolGradeOffered';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The specific grade or combination of grades offered by an education institution.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolGradeOffered', @level2type = N'COLUMN', @level2name = N'RefGradeLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Grades Offered', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolGradeOffered', @level2type = N'COLUMN', @level2name = N'RefGradeLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000131', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolGradeOffered', @level2type = N'COLUMN', @level2name = N'RefGradeLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19131', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolGradeOffered', @level2type = N'COLUMN', @level2name = N'RefGradeLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolGradeOffered', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolGradeOffered', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolGradeOffered', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolGradeOffered', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolGradeOffered', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolGradeOffered', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolGradeOffered', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolGradeOffered', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolGradeOffered', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolGradeOffered', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

