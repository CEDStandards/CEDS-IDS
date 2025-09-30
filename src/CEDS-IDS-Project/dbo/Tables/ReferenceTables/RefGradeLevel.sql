CREATE TABLE [dbo].[RefGradeLevel] (
    [RefGradeLevelId]     INT             IDENTITY (1, 1) NOT NULL,
    [Description]         NVARCHAR (150)  NOT NULL,
    [Code]                NVARCHAR (50)   NULL,
    [Definition]          NVARCHAR (4000) NULL,
    [RefJurisdictionId]   INT             NULL,
    [RefGradeLevelTypeId] INT             NULL,
    [SortOrder]           DECIMAL (5, 2)  NULL,
    [RecordStartDateTime] DATETIME        NULL,
    [RecordEndDateTime]   DATETIME        NULL,
    CONSTRAINT [XPKRefGrade] PRIMARY KEY CLUSTERED ([RefGradeLevelId] ASC),
    CONSTRAINT [FK_RefGradeLevel_Organization] FOREIGN KEY ([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId]),
    CONSTRAINT [FK_RefGradeLevel_RefGradeLevelType] FOREIGN KEY ([RefGradeLevelTypeId]) REFERENCES [dbo].[RefGradeLevelType] ([RefGradeLevelTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Grade levels offered by educational institutions.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefGradeLevel';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Entry Grade Level, Grade Level When Course Taken, Grade Level When Assessed, Grades Offered, Assessment Level for Which Designed, Assessment Registration Grade Level to Be Assessed, Exit Grade Level', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefGradeLevel';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000100, 000125, 000126, 000131, 000177, 001057, 001210', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefGradeLevel';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19100, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19125, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19126, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19131, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19177, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20063, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20177', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefGradeLevel';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefGradeLevel';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefGradeLevel', @level2type = N'COLUMN', @level2name = N'RefGradeLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A description for the options in this option set.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefGradeLevel', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefGradeLevel', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A code or abbreviation for the options in this option set.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefGradeLevel', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefGradeLevel', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The defintion for the options in this option set.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefGradeLevel', @level2type = N'COLUMN', @level2name = N'Definition';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefGradeLevel', @level2type = N'COLUMN', @level2name = N'Definition';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate key from Organization identifying the publisher of the reference value.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefGradeLevel', @level2type = N'COLUMN', @level2name = N'RefJurisdictionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The sequence the options in this option set should be ordered.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefGradeLevel', @level2type = N'COLUMN', @level2name = N'SortOrder';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefGradeLevel', @level2type = N'COLUMN', @level2name = N'SortOrder';

