CREATE TABLE [dbo].[CompetencyFramework] (
    [CompetencyFrameworkId]                     INT            IDENTITY (1, 1) NOT NULL,
    [URI]                                       NVARCHAR (512) NULL,
    [Title]                                     NVARCHAR (120) NULL,
    [Subject]                                   NVARCHAR (30)  NULL,
    [Version]                                   NVARCHAR (30)  NULL,
    [Creator]                                   NVARCHAR (120) NULL,
    [Jurisdiction]                              NVARCHAR (120) NULL,
    [Description]                               NVARCHAR (300) NULL,
    [Publisher]                                 NVARCHAR (30)  NULL,
    [RefCompetencyFrameworkPublicationStatusId] INT            NULL,
    [ValidStartDate]                            DATE           NOT NULL,
    [ValidEndDate]                              DATE           NOT NULL,
    [RefLanguageId]                             INT            NULL,
    [License]                                   NVARCHAR (300) NULL,
    [Rights]                                    NVARCHAR (300) NULL,
    [RightsHolder]                              NVARCHAR (30)  NULL,
    [CompetencyFrameworkPublicationDate]        DATE           NULL,
    [CompetencyFrameworkSourceUrl]              NVARCHAR (512) NULL,
    [RecordStartDateTime]                       DATETIME       NULL,
    [RecordEndDateTime]                         DATETIME       NULL,
    [RecordStatusId]                            INT            NULL,
    [DataCollectionId]                          INT            NULL,
    CONSTRAINT [PK_CompetencyFramework] PRIMARY KEY CLUSTERED ([CompetencyFrameworkId] ASC),
    CONSTRAINT [FK_CompetencyFramework_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_CompetencyFramework_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_CompetencyFramework_RefCompetencyFrameworkPublicationStatus] FOREIGN KEY ([RefCompetencyFrameworkPublicationStatusId]) REFERENCES [dbo].[RefCompetencyFrameworkPublicationStatus] ([RefCompetencyFrameworkPublicationStatusId]),
    CONSTRAINT [FK_CompetencyFramework_RefLanguage] FOREIGN KEY ([RefLanguageId]) REFERENCES [dbo].[RefLanguage] ([RefLanguageId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A resource that identifies a collection of logically related CompetencyDefinitions, CompetencyDefAssociations, and contextualizing metadata.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An unambiguous reference to the competency framework using a network-resolvable URI.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'URI';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Competency Framework Identifier URI', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'URI';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000693', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'URI';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19670', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'URI';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The name of the competency framework.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'Title';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Competency Framework Title', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'Title';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000694', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'Title';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19671', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'Title';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The topic or academic subject of the competency framework.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'Subject';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Competency Framework Subject', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'Subject';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000702', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'Subject';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19679', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'Subject';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Defines the revision of the competency framework as a version number or date.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'Version';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Competency Framework Version', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'Version';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000695', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'Version';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19672', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'Version';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The person or organization chiefly responsible for the intellectual content of the competency framework.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'Creator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Competency Framework Creator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'Creator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000696', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'Creator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19673', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'Creator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A legal, quasi-legal, organizational or institutional domain of the entity mandating the use of the statement--e.g., California.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'Jurisdiction';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Competency Framework Jurisdiction', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'Jurisdiction';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000699', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'Jurisdiction';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19676', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'Jurisdiction';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A textual description of the scope and contents of the competency framework.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Competency Framework Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000697', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19674', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The entity responsible for making the competency framework available.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'Publisher';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Competency Framework Publisher', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'Publisher';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000884', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'Publisher';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19884', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'Publisher';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The publication status of the competency framework.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'RefCompetencyFrameworkPublicationStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Competency Framework Publication Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'RefCompetencyFrameworkPublicationStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000698', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'RefCompetencyFrameworkPublicationStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19675', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'RefCompetencyFrameworkPublicationStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The year, month and day the competency framework was adopted by the jurisdiction in which it was intended to apply.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'ValidStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Competency Framework Valid Start Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'ValidStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000700', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'ValidStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19677', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'ValidStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The year, month and day the competency framework was deprecated/replaced by the jurisdiction in which it was intended to apply.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'ValidEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Competency Framework Valid End Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'ValidEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000701', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'ValidEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19678', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'ValidEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'ValidEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The default language of the text used for the content in the competency framework.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'RefLanguageId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Competency Framework Language', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'RefLanguageId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000880', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'RefLanguageId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19880', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'RefLanguageId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'RefLanguageId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A legal document giving official permission to do something with the competency framework.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'License';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Competency Framework License', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'License';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000882', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'License';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19882', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'License';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The information about rights held in and over the resource.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'Rights';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Competency Framework Rights', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'Rights';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000885', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'Rights';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19885', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'Rights';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The person or organization owning or managing rights over the competency framework.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'RightsHolder';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Competency Framework Rights Holder', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'RightsHolder';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000886', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'RightsHolder';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19886', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'RightsHolder';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The date on which this content was first published.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'CompetencyFrameworkPublicationDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Competency Framework Publication Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'CompetencyFrameworkPublicationDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001569', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'CompetencyFrameworkPublicationDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20548', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'CompetencyFrameworkPublicationDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A URL that resolves to the original or authoritative competency framework document.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'CompetencyFrameworkSourceUrl';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Competency Framework Source URL', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'CompetencyFrameworkSourceUrl';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001907', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'CompetencyFrameworkSourceUrl';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20888', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'CompetencyFrameworkSourceUrl';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'CompetencyFrameworkSourceUrl';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyFramework', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

