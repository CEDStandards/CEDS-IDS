CREATE TABLE [dbo].[RefLanguage] (
    [RefLanguageId]       INT            IDENTITY (1, 1) NOT NULL,
    [Description]         NVARCHAR (150) NOT NULL,
    [Code]                NVARCHAR (50)  NULL,
    [Definition]          NVARCHAR (MAX) NULL,
    [RefJurisdictionId]   INT            NULL,
    [SortOrder]           DECIMAL (5, 2) NULL,
    [RecordStartDateTime] DATETIME       NULL,
    [RecordEndDateTime]   DATETIME       NULL,
    CONSTRAINT [PK_Language] PRIMARY KEY CLUSTERED ([RefLanguageId] ASC),
    CONSTRAINT [FK_RefLanguage_Organization] FOREIGN KEY ([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A three-letter language identifier representing widely known individual languages and language groups (families), including languages or dialects in active use for communication, as well as historical or ancient languages that are important for research, culture, or tradition.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefLanguage';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'ISO 639-2 Language Code, Assessment Participant Session Language, Competency Framework Language, Competency Definition Language, Learning Resource Language', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefLanguage';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000317, 000371, 000880, 000881, 000919', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefLanguage';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19317, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19370, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19880, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19881, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19920', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefLanguage';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefLanguage';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefLanguage', @level2type = N'COLUMN', @level2name = N'RefLanguageId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A description for the options in this option set.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefLanguage', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefLanguage', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A code or abbreviation for the options in this option set.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefLanguage', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefLanguage', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The defintion for the options in this option set.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefLanguage', @level2type = N'COLUMN', @level2name = N'Definition';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefLanguage', @level2type = N'COLUMN', @level2name = N'Definition';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate key from Organization identifying the publisher of the reference value.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefLanguage', @level2type = N'COLUMN', @level2name = N'RefJurisdictionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The sequence the options in this option set should be ordered.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefLanguage', @level2type = N'COLUMN', @level2name = N'SortOrder';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefLanguage', @level2type = N'COLUMN', @level2name = N'SortOrder';

