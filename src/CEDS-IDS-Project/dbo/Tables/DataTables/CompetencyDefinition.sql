CREATE TABLE [dbo].[CompetencyDefinition] (
    [CompetencyDefinitionId]                     INT             IDENTITY (1, 1) NOT NULL,
    [CompetencyFrameworkId]                      INT             NOT NULL,
    [Identifier]                                 NVARCHAR (40)   NULL,
    [Code]                                       NVARCHAR (30)   NULL,
    [URL]                                        NVARCHAR (512)  NULL,
    [Type]                                       NVARCHAR (60)   NULL,
    [Statement]                                  NVARCHAR (MAX)  NULL,
    [Version]                                    NVARCHAR (MAX)  NULL,
    [TypicalAgeRange]                            NVARCHAR (20)   NULL,
    [TextComplexitySystem]                       NVARCHAR (30)   NULL,
    [TextComplexityMinimumValue]                 DECIMAL (18, 4) NULL,
    [TextComplexityMaximumValue]                 DECIMAL (18, 4) NULL,
    [ConceptTerm]                                NVARCHAR (30)   NULL,
    [ConceptKeyword]                             NVARCHAR (300)  NULL,
    [License]                                    NVARCHAR (300)  NULL,
    [Notes]                                      NVARCHAR (MAX)  NULL,
    [CompetencyDefParentId]                      NVARCHAR (40)   NULL,
    [CompetencyDefParentCode]                    NVARCHAR (30)   NULL,
    [CompetencyDefParentUrl]                     NVARCHAR (512)  NULL,
    [ChildOf_CompetencyDefinitionId]             INT             NULL,
    [CurrentVersionIndicator]                    BIT             NULL,
    [PreviousVersionIdentifier]                  NVARCHAR (40)   NULL,
    [ValidStartDate]                             DATE            NULL,
    [ValidEndDate]                               DATE            NULL,
    [ShortName]                                  NVARCHAR (30)   NULL,
    [CompetencyDefSequence]                      NVARCHAR (60)   NULL,
    [TypeURL]                                    NVARCHAR (512)  NULL,
    [TypicalAgeRangeMaximum]                     INT             NULL,
    [TypicalAgeRangeMinimum]                     INT             NULL,
    [RefLanguageId]                              INT             NULL,
    [RefBloomsTaxonomyDomainId]                  INT             NULL,
    [RefMultipleIntelligenceTypeId]              INT             NULL,
    [RefCompetencyDefNodeAccessibilityProfileId] INT             NULL,
    [RefCompetencyDefTestabilityTypeId]          INT             NULL,
    [RecordStartDateTime]                        DATETIME        NULL,
    [RecordEndDateTime]                          DATETIME        NULL,
    [RecordStatusId]                             INT             NULL,
    [DataCollectionId]                           INT             NULL,
    CONSTRAINT [XPKCompetencyDefinition] PRIMARY KEY CLUSTERED ([CompetencyDefinitionId] ASC),
    CONSTRAINT [FK_CompetencyDefinition_CompetencyDefinition] FOREIGN KEY ([ChildOf_CompetencyDefinitionId]) REFERENCES [dbo].[CompetencyDefinition] ([CompetencyDefinitionId]),
    CONSTRAINT [FK_CompetencyDefinition_CompetencyFramework] FOREIGN KEY ([CompetencyFrameworkId]) REFERENCES [dbo].[CompetencyFramework] ([CompetencyFrameworkId]),
    CONSTRAINT [FK_CompetencyDefinition_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_CompetencyDefinition_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_CompetencyDefinition_RefBloomsTaxonomyDomain] FOREIGN KEY ([RefBloomsTaxonomyDomainId]) REFERENCES [dbo].[RefBloomsTaxonomyDomain] ([RefBloomsTaxonomyDomainId]),
    CONSTRAINT [FK_CompetencyDefinition_RefCompetencyDefinitionNodeAccessibilityProfile] FOREIGN KEY ([RefCompetencyDefNodeAccessibilityProfileId]) REFERENCES [dbo].[RefCompetencyDefNodeAccessibilityProfile] ([RefCompetencyDefNodeAccessibilityProfileId]),
    CONSTRAINT [FK_CompetencyDefinition_RefCompetencyDefinitionTestabilityType] FOREIGN KEY ([RefCompetencyDefTestabilityTypeId]) REFERENCES [dbo].[RefCompetencyDefTestabilityType] ([RefCompetencyDefTestabilityTypeId]),
    CONSTRAINT [FK_CompetencyDefinition_RefLanguage] FOREIGN KEY ([RefLanguageId]) REFERENCES [dbo].[RefLanguage] ([RefLanguageId]),
    CONSTRAINT [FK_CompetencyDefinition_RefMultipleIntelligenceType] FOREIGN KEY ([RefMultipleIntelligenceTypeId]) REFERENCES [dbo].[RefMultipleIntelligenceType] ([RefMultipleIntelligenceTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A resource that states a capability or behavior that a person may learn or be able to do within a given context with references to potential levels of competence, a mastery threshold, and other contextualizing metadata.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The globally unique identifier (GUID) issued by the publisher of the competency framework that uniquely identifies the definition in the hierarchy of competency definitions using a RFC 4122 compliant 32-character hexadecimal string, such as 21EC2020-3AEA-1069-A2DD-08002B30309D.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'Identifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Competency Definition Identifier', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'Identifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000689', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'Identifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19666', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'Identifier';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'Identifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A human-referenceable code designated by the publisher to identify the item in the hierarchy of competency definitions.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Competency Definition Code', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000692', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19669', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A network-resolvable Uniform Resource Locator (URL) pointing to the authoritative reference for the competency definition.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'URL';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Competency Definition URL', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'URL';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000874', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'URL';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19874', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'URL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'URL';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The class of statement in the structure of statements in the Competency Framework according to a controlled vocabulary, specified as a textual label.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'Type';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Competency Definition Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'Type';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000691', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'Type';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19668', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'Type';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'Type';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The text of the statement. The textual content that either describes a specific competency or describes a less granular group of competencies within the taxonomy of the competency framework.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'Statement';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Competency Definition Statement', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'Statement';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000690', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'Statement';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19667', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'Statement';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'Statement';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A label assigned by the publisher indicating the version of the competency framework statement.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'Version';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Competency Definition Version', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'Version';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001250', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'Version';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20216', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'Version';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'Version';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The typical range of ages for the content’s intended end user.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'TypicalAgeRange';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Competency Item Typical Age Range', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'TypicalAgeRange';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000870', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'TypicalAgeRange';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=15870', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'TypicalAgeRange';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'TypicalAgeRange';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The scaling system used to specify the text complexity of a competency item.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'TextComplexitySystem';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Competency Definition Text Complexity System', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'TextComplexitySystem';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000910', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'TextComplexitySystem';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19910', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'TextComplexitySystem';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'TextComplexitySystem';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The minimum value in the range of text complexity applicable to a language competency definition using the scaling system defined by Text Complexity System, e.g. Lexile(tm).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'TextComplexityMinimumValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Competency Definition Text Complexity Minimum Value', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'TextComplexityMinimumValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001154', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'TextComplexityMinimumValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20114', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'TextComplexityMinimumValue';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'TextComplexityMinimumValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The maximum value in the range of text complexity applicable to a language competency definition using the scaling system defined by Text Complexity System, e.g. Lexile(tm).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'TextComplexityMaximumValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Competency Definition Text Complexity Maximum Value', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'TextComplexityMaximumValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001155', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'TextComplexityMaximumValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20115', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'TextComplexityMaximumValue';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'TextComplexityMaximumValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The topicality of the competency definition, e.g. "Pythagorean Theorem," "Trigonometric functions," "Forces and energy," "Scientific method," "Oral history," etc.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'ConceptTerm';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Competency Definition Concept Term', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'ConceptTerm';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000888', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'ConceptTerm';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19888', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'ConceptTerm';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'ConceptTerm';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The significant topicality of the competency definition using free-text keywords and phrases.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'ConceptKeyword';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Competency Definition Concept Keyword', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'ConceptKeyword';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000887', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'ConceptKeyword';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19887', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'ConceptKeyword';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'ConceptKeyword';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The full text or URL reference to a legal document giving official permission to do something with the competency definition statement.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'License';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Competency Definition License', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'License';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000883', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'License';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19883', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'License';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'License';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information about the derivation of a Competency Definition Statement.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'Notes';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Competency Definition Notes', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'Notes';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001249', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'Notes';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20215', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'Notes';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'Notes';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The globally unique identifier (GUID) issued by the publisher of the competency framework that uniquely identifies the parent item in the hierarchy of competency definitions using a RFC 4122 compliant 32-character hexadecimal string, such as 21EC2020-3AEA-1069-A2DD-08002B30309D.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'CompetencyDefParentId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Competency Definition Parent Identifier', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'CompetencyDefParentId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000872', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'CompetencyDefParentId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19872', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'CompetencyDefParentId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'CompetencyDefParentId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A human-referenceable code designated by the publisher to identify the parent item in the hierarchy of competency definitions.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'CompetencyDefParentCode';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Competency Definition Parent Code', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'CompetencyDefParentCode';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000873', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'CompetencyDefParentCode';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19873', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'CompetencyDefParentCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'CompetencyDefParentCode';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A network-resolvable Uniform Resource Locator (URL) pointing to the authoritative reference for the hierarchal parent of the competency definition.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'CompetencyDefParentUrl';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Competency Definition Parent URL', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'CompetencyDefParentUrl';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001094', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'CompetencyDefParentUrl';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20078', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'CompetencyDefParentUrl';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'CompetencyDefParentUrl';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Indicates that this is the most current version of the Competency Definition.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'CurrentVersionIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Competency Definition Current Version Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'CurrentVersionIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001525', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'CurrentVersionIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20499', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'CurrentVersionIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'CurrentVersionIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The unique identifier of the previous version of the Competency Definition if the statement was modified.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'PreviousVersionIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Competency Definition Previous Version Identifier', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'PreviousVersionIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001524', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'PreviousVersionIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20498', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'PreviousVersionIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'PreviousVersionIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The year, month and day the competency definition was adopted by the jurisdiction in which it was intended to apply.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'ValidStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Competency Definition Valid Start Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'ValidStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001512', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'ValidStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20484', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'ValidStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'ValidStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The year, month and day the competency definition was deprecated/replaced by the jurisdiction in which it was intended to apply.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'ValidEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Competency Definition Valid End Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'ValidEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001511', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'ValidEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20483', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'ValidEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'ValidEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The short name or label for the competency definition or its node in a competency framework.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'ShortName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Competency Definition Short Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'ShortName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001409', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'ShortName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20378', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'ShortName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'ShortName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A set of one or more alphanumeric characters and/or symbols denoting the positioning of the statement being described in a sequential listing of statements.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'CompetencyDefSequence';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Competency Definition Sequence', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'CompetencyDefSequence';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001570', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'CompetencyDefSequence';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20549', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'CompetencyDefSequence';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'CompetencyDefSequence';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The class of statement in the structure of statements in the Competency Framework according to a controlled vocabulary, specified as a URI referencing a controlled vocabulary.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'TypeURL';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Competency Definition Type URL', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'TypeURL';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001757', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'TypeURL';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20738', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'TypeURL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'TypeURL';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The typical maximum age at which a person learns the defined competency.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'TypicalAgeRangeMaximum';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Competency Definition Typical Age Range Maximum', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'TypicalAgeRangeMaximum';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001909', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'TypicalAgeRangeMaximum';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20890', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'TypicalAgeRangeMaximum';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'TypicalAgeRangeMaximum';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The typical minimum age at which a person learns the defined competency.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'TypicalAgeRangeMinimum';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Competency Definition Typical Age Range Minimum', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'TypicalAgeRangeMinimum';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001908', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'TypicalAgeRangeMinimum';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20889', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'TypicalAgeRangeMinimum';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'TypicalAgeRangeMinimum';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The default language of the text used for the content in the competency definition statement.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'RefLanguageId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Competency Definition Language', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'RefLanguageId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000881', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'RefLanguageId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19881', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'RefLanguageId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'RefLanguageId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Classification of the Competency Definition using Bloom''s Taxonomy Domains. ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'RefBloomsTaxonomyDomainId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Competency Definition Blooms Taxonomy Domain', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'RefBloomsTaxonomyDomainId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000875', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'RefBloomsTaxonomyDomainId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19875', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'RefBloomsTaxonomyDomainId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'RefBloomsTaxonomyDomainId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Classification of the Competency Definition using intelligences defined for Howard Earl Gardner''s Theory of Multiple Intelligences.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'RefMultipleIntelligenceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Competency Definition Multiple Intelligence', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'RefMultipleIntelligenceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000876', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'RefMultipleIntelligenceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19876', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'RefMultipleIntelligenceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'RefMultipleIntelligenceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'When the Competency Definition is used as a node in a learning map, this element supports alternative pathways based on a learner''s accessibility profile. The type selected indicates which accessibility profile the node is designed to address.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'RefCompetencyDefNodeAccessibilityProfileId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Competency Definition Node Accessibility Profile', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'RefCompetencyDefNodeAccessibilityProfileId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001408', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'RefCompetencyDefNodeAccessibilityProfileId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20377', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'RefCompetencyDefNodeAccessibilityProfileId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'RefCompetencyDefNodeAccessibilityProfileId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Indicates if the competency described in the Competency Definition Statement can be tested using one or more assessment items.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'RefCompetencyDefTestabilityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Competency Definition Testability Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'RefCompetencyDefTestabilityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001411', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'RefCompetencyDefTestabilityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20380', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'RefCompetencyDefTestabilityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'RefCompetencyDefTestabilityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefinition', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

