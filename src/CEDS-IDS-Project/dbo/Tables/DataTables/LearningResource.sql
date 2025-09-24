CREATE TABLE [dbo].[LearningResource] (
    [LearningResourceId]                             INT            IDENTITY (1, 1) NOT NULL,
    [Title]                                          NVARCHAR (30)  NULL,
    [Description]                                    NVARCHAR (300) NULL,
    [Url]                                            NVARCHAR (512) NULL,
    [ConceptKeyword]                                 NVARCHAR (300) NULL,
    [SubjectName]                                    NVARCHAR (30)  NULL,
    [SubjectCode]                                    NVARCHAR (30)  NULL,
    [SubjectCodeSystem]                              NVARCHAR (30)  NULL,
    [RefLearningResourceTypeId]                      INT            NULL,
    [DateCreated]                                    DATE           NULL,
    [Version]                                        NVARCHAR (30)  NULL,
    [Creator]                                        NVARCHAR (60)  NULL,
    [PublisherName]                                  NVARCHAR (60)  NULL,
    [PublishedDate]                                  DATE           NULL,
    [CopyrightHolderName]                            NVARCHAR (60)  NULL,
    [CopyrightYear]                                  NCHAR (4)      NULL,
    [LearningResourceLicenseURL]                     NVARCHAR (512) NULL,
    [BasedOnUrl]                                     NVARCHAR (512) NULL,
    [RefLearningResourceIntendedEndUserRoleId]       INT            NULL,
    [RefLearningResourceEducationalUseId]            INT            NULL,
    [RefLearningResourceInteractivityTypeId]         INT            NULL,
    [RefLanguageId]                                  INT            NULL,
    [TimeRequired]                                   DECIMAL (9, 2) NULL,
    [TypicalAgeRangeMinimum]                         TINYINT        NULL,
    [TypicalAgeRangeMaximum]                         TINYINT        NULL,
    [TextComplexityValue]                            NVARCHAR (30)  NULL,
    [TextComplexitySystem]                           NVARCHAR (30)  NULL,
    [AdaptedFromURL]                                 NVARCHAR (512) NULL,
    [AssistiveTechnologiesCompatibleInd]             BIT            NULL,
    [PeerRatingSampleSize]                           INT            NULL,
    [RefLearningResourceAccessAPITypeId]             INT            NULL,
    [RefLearningResourceAccessHazardTypeId]          INT            NULL,
    [RefLearningResourceAccessModeTypeId]            INT            NULL,
    [RefLearningResourceBookFormatTypeId]            INT            NULL,
    [RefLearningResourceControlFlexibilityTypeId]    INT            NULL,
    [RefLearningResourceDigitalMediaSubTypeId]       INT            NULL,
    [RefLearningResourceDigitalMediaTypeId]          INT            NULL,
    [LearningResourceAuthorEmail]                    NVARCHAR (128) NULL,
    [LearningResourceAuthorURL]                      NVARCHAR (512) NULL,
    [LearningResourceDateModified]                   DATE           NULL,
    [LearningResourcePublisherEmail]                 NVARCHAR (128) NULL,
    [LearningResourcePublisherURL]                   NVARCHAR (512) NULL,
    [RefLearningResourceAccessRightsUrlId]           INT            NULL,
    [RefLearningResourceAuthorTypeId]                INT            NULL,
    [RefLearningResourceInteractionModeId]           INT            NULL,
    [RecordStartDateTime]                            DATETIME       NULL,
    [RecordEndDateTime]                              DATETIME       NULL,
    [RecordStatusId]                                 INT            NULL,
    [DataCollectionId]                               INT            NULL,
    [RefHighQualityInstructionalMaterialIndicatorId] INT            NULL,
    [RefAccessibleFormatTypeId]                      INT            NULL,
    CONSTRAINT [PK_LearningResource] PRIMARY KEY CLUSTERED ([LearningResourceId] ASC),
    CONSTRAINT [FK_LearningResource_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_LearningResource_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_LearningResource_RefAccessibleFormatType] FOREIGN KEY ([RefAccessibleFormatTypeId]) REFERENCES [dbo].[RefAccessibleFormatType] ([RefAccessibleFormatTypeId]),
    CONSTRAINT [FK_LearningResource_RefHighQualityInstructionalMaterialIndicator] FOREIGN KEY ([RefHighQualityInstructionalMaterialIndicatorId]) REFERENCES [dbo].[RefHighQualityInstructionalMaterialIndicator] ([RefHighQualityInstructionalMaterialIndicatorId]),
    CONSTRAINT [FK_LearningResource_RefLanguage] FOREIGN KEY ([RefLanguageId]) REFERENCES [dbo].[RefLanguage] ([RefLanguageId]),
    CONSTRAINT [FK_LearningResource_RefLearningResourceAccessAPIType] FOREIGN KEY ([RefLearningResourceAccessAPITypeId]) REFERENCES [dbo].[RefLearningResourceAccessAPIType] ([RefLearningResourceAccessAPITypeId]),
    CONSTRAINT [FK_LearningResource_RefLearningResourceAccessHazardType] FOREIGN KEY ([RefLearningResourceAccessHazardTypeId]) REFERENCES [dbo].[RefLearningResourceAccessHazardType] ([RefLearningResourceAccessHazardTypeId]),
    CONSTRAINT [FK_LearningResource_RefLearningResourceAccessModeType] FOREIGN KEY ([RefLearningResourceAccessModeTypeId]) REFERENCES [dbo].[RefLearningResourceAccessModeType] ([RefLearningResourceAccessModeTypeId]),
    CONSTRAINT [FK_LearningResource_RefLearningResourceAccessRightsUrl] FOREIGN KEY ([RefLearningResourceAccessRightsUrlId]) REFERENCES [dbo].[RefLearningResourceAccessRightsUrl] ([RefLearningResourceAccessRightsUrlId]),
    CONSTRAINT [FK_LearningResource_RefLearningResourceAuthorType] FOREIGN KEY ([RefLearningResourceAuthorTypeId]) REFERENCES [dbo].[RefLearningResourceAuthorType] ([RefLearningResourceAuthorTypeId]),
    CONSTRAINT [FK_LearningResource_RefLearningResourceBookFormatTypeId] FOREIGN KEY ([RefLearningResourceBookFormatTypeId]) REFERENCES [dbo].[RefLearningResourceBookFormatType] ([RefLearningResourceBookFormatTypeId]),
    CONSTRAINT [FK_LearningResource_RefLearningResourceControlFlexibilityType] FOREIGN KEY ([RefLearningResourceControlFlexibilityTypeId]) REFERENCES [dbo].[RefLearningResourceControlFlexibilityType] ([RefLearningResourceControlFlexibilityTypeId]),
    CONSTRAINT [FK_LearningResource_RefLearningResourceDigitalMediaSubType] FOREIGN KEY ([RefLearningResourceDigitalMediaSubTypeId]) REFERENCES [dbo].[RefLearningResourceDigitalMediaSubType] ([RefLearningResourceDigitalMediaSubTypeId]),
    CONSTRAINT [FK_LearningResource_RefLearningResourceDigitalMediaType] FOREIGN KEY ([RefLearningResourceDigitalMediaTypeId]) REFERENCES [dbo].[RefLearningResourceDigitalMediaType] ([RefLearningResourceDigitalMediaTypeId]),
    CONSTRAINT [FK_LearningResource_RefLearningResourceInteractionMode] FOREIGN KEY ([RefLearningResourceInteractionModeId]) REFERENCES [dbo].[RefLearningResourceInteractionMode] ([RefLearningResourceInteractionModeId]),
    CONSTRAINT [FK_LearningResource_RefLREducationalUse] FOREIGN KEY ([RefLearningResourceEducationalUseId]) REFERENCES [dbo].[RefLearningResourceEducationalUse] ([RefLearningResourceEducationalUseId]),
    CONSTRAINT [FK_LearningResource_RefLRIntendedEndUserRole] FOREIGN KEY ([RefLearningResourceIntendedEndUserRoleId]) REFERENCES [dbo].[RefLearningResourceIntendedEndUserRole] ([RefLearningResourceIntendedEndUserRoleId]),
    CONSTRAINT [FK_LearningResource_RefLRInteractivityType] FOREIGN KEY ([RefLearningResourceInteractivityTypeId]) REFERENCES [dbo].[RefLearningResourceInteractivityType] ([RefLearningResourceInteractivityTypeId]),
    CONSTRAINT [FK_LearningResource_RefLRType] FOREIGN KEY ([RefLearningResourceTypeId]) REFERENCES [dbo].[RefLearningResourceType] ([RefLearningResourceTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A persistent resource that has one or more physical or digital representations, and that explicitly involves, specifies or entails a learning activity or learning experience.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'LearningResourceId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The title of the resource.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'Title';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Learning Resource Title', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'Title';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000912', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'Title';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19912', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'Title';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'Title';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N' A short description of the Learning Resource.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Learning Resource Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001143', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20156', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The Uniform Resource Locator where the resource may be accessed, or a proxy for the resource, such as an information page for a commercially available resource.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'Url';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Learning Resource URL', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'Url';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000911', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'Url';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19911', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'Url';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'Url';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The significant topicality of the Learning Resource using free-text keywords and phrases.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'ConceptKeyword';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Learning Resource Concept Keyword', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'ConceptKeyword';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001146', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'ConceptKeyword';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20159', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'ConceptKeyword';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'ConceptKeyword';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The descriptive name for the subject of the content for the learning resource.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'SubjectName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Learning Resource Subject Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'SubjectName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000913', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'SubjectName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19913', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'SubjectName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'SubjectName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The code used to identify the organization of subject matter and related learning experiences addressed by the learning resource.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'SubjectCode';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Learning Resource Subject Code', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'SubjectCode';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000914', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'SubjectCode';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19914', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'SubjectCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'SubjectCode';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The system that is used to identify the organization of subject matter and related learning experiences addressed by the learning resource.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'SubjectCodeSystem';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Learning Resource Subject Code System', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'SubjectCodeSystem';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000915', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'SubjectCodeSystem';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19915', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'SubjectCodeSystem';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'SubjectCodeSystem';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The predominate type or kind characterizing the learning resource.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefLearningResourceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Learning Resource Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefLearningResourceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000928', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefLearningResourceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19929', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefLearningResourceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefLearningResourceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The date on which the resource was created.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'DateCreated';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Learning Resource Date Created', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'DateCreated';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000916', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'DateCreated';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19916', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'DateCreated';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'DateCreated';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Defines the version of the learning resource as defined by the publisher.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'Version';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Learning Resource Version', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'Version';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001216', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'Version';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20182', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'Version';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'Version';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The name of a person or organization credited with the creation of the resource.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'Creator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Learning Resource Creator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'Creator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'Creator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'Creator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'Creator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The name of the organization credited with publishing the resource.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'PublisherName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Learning Resource Publisher Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'PublisherName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'PublisherName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19919', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'PublisherName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'PublisherName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The published date of an educational resource, such as instructional media, an assessment form, or section of an assessment form.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'PublishedDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Learning Resource Published Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'PublishedDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001184', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'PublishedDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20135', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'PublishedDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'PublishedDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The name(s) of the person(s) or organization(s) holding the copyright for the Learning Resource.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'CopyrightHolderName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Learning Resource Copyright Holder Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'CopyrightHolderName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001144', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'CopyrightHolderName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20157', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'CopyrightHolderName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'CopyrightHolderName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The copyright year for the Learning Resource.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'CopyrightYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Learning Resource Copyright Year', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'CopyrightYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001145', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'CopyrightYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20158', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'CopyrightYear';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'CopyrightYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The URL where the owner specifies permissions for using the resource.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'LearningResourceLicenseURL';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Learning Resource License URL', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'LearningResourceLicenseURL';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000921', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'LearningResourceLicenseURL';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19922', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'LearningResourceLicenseURL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'LearningResourceLicenseURL';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A resource that was used in the creation of this resource. This term can be repeated for multiple sources.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'BasedOnUrl';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Learning Resource Based On URL', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'BasedOnUrl';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000922', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'BasedOnUrl';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19923', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'BasedOnUrl';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'BasedOnUrl';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The individual or group for which the resource was produced.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefLearningResourceIntendedEndUserRoleId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Learning Resource Intended End User Role', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefLearningResourceIntendedEndUserRoleId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000923', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefLearningResourceIntendedEndUserRoleId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19924', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefLearningResourceIntendedEndUserRoleId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefLearningResourceIntendedEndUserRoleId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The purpose of the work in the context of education.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefLearningResourceEducationalUseId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Learning Resource Educational Use', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefLearningResourceEducationalUseId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001002', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefLearningResourceEducationalUseId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20005', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefLearningResourceEducationalUseId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefLearningResourceEducationalUseId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The predominate mode of learning supported by the learning resource. Acceptable values are active, expositive, or mixed.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefLearningResourceInteractivityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Learning Resource Interactivity Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefLearningResourceInteractivityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000927', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefLearningResourceInteractivityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19928', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefLearningResourceInteractivityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefLearningResourceInteractivityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The primary language of the resource.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefLanguageId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Learning Resource Language', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefLanguageId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000919', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefLanguageId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19920', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefLanguageId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefLanguageId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The approximate or typical time it takes to work with or through this learning resource for the typical intended target audience.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'TimeRequired';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Learning Resource Time Required', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'TimeRequired';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000924', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'TimeRequired';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19925', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'TimeRequired';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'TimeRequired';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The minimum for the typical range of ages of the content’s intended end user.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'TypicalAgeRangeMinimum';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Learning Resource Typical Age Range Minimum', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'TypicalAgeRangeMinimum';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000925', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'TypicalAgeRangeMinimum';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19926', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'TypicalAgeRangeMinimum';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'TypicalAgeRangeMinimum';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The maximum for the typical range of ages of the content’s intended end user.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'TypicalAgeRangeMaximum';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Learning Resource Typical Age Range Maximum', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'TypicalAgeRangeMaximum';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000926', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'TypicalAgeRangeMaximum';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19927', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'TypicalAgeRangeMaximum';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'TypicalAgeRangeMaximum';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The complexity of the text using the scaling system defined by Text Complexity System, e.g. Lexile(tm).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'TextComplexityValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Learning Resource Text Complexity Value', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'TextComplexityValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000929', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'TextComplexityValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19930', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'TextComplexityValue';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'TextComplexityValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The scaling system used to specify the text complexity of an Learning Resource', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'TextComplexitySystem';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Learning Resource Text Complexity System', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'TextComplexitySystem';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000930', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'TextComplexitySystem';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19931', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'TextComplexitySystem';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'TextComplexitySystem';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'URL identifier of a learning resource for which this resource is an adaptation.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'AdaptedFromURL';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Learning Resource Adapted From URL', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'AdaptedFromURL';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001398', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'AdaptedFromURL';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20367', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'AdaptedFromURL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'AdaptedFromURL';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Indicates that the learning resource is compatible with assistive technologies.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'AssistiveTechnologiesCompatibleInd';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Learning Resource Assistive Technologies Compatible Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'AssistiveTechnologiesCompatibleInd';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001393', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'AssistiveTechnologiesCompatibleInd';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20362', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'AssistiveTechnologiesCompatibleInd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'AssistiveTechnologiesCompatibleInd';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The sample size of a peer rating value. Only used when the Peer Rating Value is collected in aggregate as an average of multiple atomic/individual ratings.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'PeerRatingSampleSize';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Learning Resource Peer Rating Sample Size', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'PeerRatingSampleSize';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001400', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'PeerRatingSampleSize';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20369', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'PeerRatingSampleSize';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'PeerRatingSampleSize';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Indicates that the learning resource is compatible with the referenced accessibility application programming interface (API).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefLearningResourceAccessAPITypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Learning Resource Access API Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefLearningResourceAccessAPITypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001389', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefLearningResourceAccessAPITypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20358', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefLearningResourceAccessAPITypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefLearningResourceAccessAPITypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A characteristic of the described learning resource that is physiologically dangerous to some users.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefLearningResourceAccessHazardTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Learning Resource Access Hazard Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefLearningResourceAccessHazardTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001390', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefLearningResourceAccessHazardTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20359', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefLearningResourceAccessHazardTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefLearningResourceAccessHazardTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An access mode through which the intellectual content of a described learning resource or adaptation is communicated; if adaptations for the resource are known, the access modes of those adaptations are not included.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefLearningResourceAccessModeTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Learning Resource Access Mode Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefLearningResourceAccessModeTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001391', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefLearningResourceAccessModeTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20360', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefLearningResourceAccessModeTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefLearningResourceAccessModeTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Specifies the format for a learning resource that is a book.  Other options may be considered for inclusion in the option set.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefLearningResourceBookFormatTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Learning Resource Book Format Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefLearningResourceBookFormatTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001394', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefLearningResourceBookFormatTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20363', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefLearningResourceBookFormatTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefLearningResourceBookFormatTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Identifies a single input method that is sufficient to control the described learning resource.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefLearningResourceControlFlexibilityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Learning Resource Control Flexibility Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefLearningResourceControlFlexibilityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001395', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefLearningResourceControlFlexibilityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20364', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefLearningResourceControlFlexibilityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefLearningResourceControlFlexibilityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The media or file subtype of the digital resource being based on the Media Types and Subtypes, formerly known as MIME types, defined by the Internet Assigned Numbers Authority (IANA).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefLearningResourceDigitalMediaSubTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Learning Resource Digital Media Sub Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefLearningResourceDigitalMediaSubTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001396', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefLearningResourceDigitalMediaSubTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20365', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefLearningResourceDigitalMediaSubTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefLearningResourceDigitalMediaSubTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The media or file type of the digital resource being based on the media types defined by the Internet Assigned Numbers Authority (AINA) at http://www.iana.org/assignments/media-types.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefLearningResourceDigitalMediaTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Learning Resource Digital Media Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefLearningResourceDigitalMediaTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001397', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefLearningResourceDigitalMediaTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20366', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefLearningResourceDigitalMediaTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefLearningResourceDigitalMediaTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An email address for the author of the learning resource.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'LearningResourceAuthorEmail';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Learning Resource Author Email', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'LearningResourceAuthorEmail';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001566', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'LearningResourceAuthorEmail';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20544', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'LearningResourceAuthorEmail';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'LearningResourceAuthorEmail';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A Uniform Resource Locator (URL) attributed to the author of a learning resource.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'LearningResourceAuthorURL';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Learning Resource Author URL', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'LearningResourceAuthorURL';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001563', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'LearningResourceAuthorURL';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20541', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'LearningResourceAuthorURL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'LearningResourceAuthorURL';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The most recent date that the learning resource was updated.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'LearningResourceDateModified';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Learning Resource Date Modified', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'LearningResourceDateModified';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001564', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'LearningResourceDateModified';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20542', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'LearningResourceDateModified';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'LearningResourceDateModified';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An email address for the publisher of the learning resource.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'LearningResourcePublisherEmail';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Learning Resource Publisher Email', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'LearningResourcePublisherEmail';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001567', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'LearningResourcePublisherEmail';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20545', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'LearningResourcePublisherEmail';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'LearningResourcePublisherEmail';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A Uniform Resource Locator (URL) attributed to the publisher of a learning resource.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'LearningResourcePublisherURL';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Learning Resource Publisher URL', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'LearningResourcePublisherURL';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001568', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'LearningResourcePublisherURL';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20547', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'LearningResourcePublisherURL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'LearningResourcePublisherURL';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A Uniform Resource Locator (URL) that identifies the conditions that govern the user’s ability to access a learning resource.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefLearningResourceAccessRightsUrlId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Learning Resource Access Rights URL', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefLearningResourceAccessRightsUrlId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001561', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefLearningResourceAccessRightsUrlId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20537', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefLearningResourceAccessRightsUrlId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefLearningResourceAccessRightsUrlId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of entity, organization or person, that authored the learning resource.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefLearningResourceAuthorTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Learning Resource Author Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefLearningResourceAuthorTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001562', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefLearningResourceAuthorTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20540', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefLearningResourceAuthorTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefLearningResourceAuthorTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The primary type of interaction, synchronous or asynchronous, defined for the learning resource.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefLearningResourceInteractionModeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Learning Resource Interaction Mode', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefLearningResourceInteractionModeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001565', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefLearningResourceInteractionModeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20543', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefLearningResourceInteractionModeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefLearningResourceInteractionModeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether the related learning resource meets requirements to be considered high quality instructional material as defined by the organization assigning the indicator.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefHighQualityInstructionalMaterialIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'High Quality Instructional Material Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefHighQualityInstructionalMaterialIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002032', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefHighQualityInstructionalMaterialIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25023', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefHighQualityInstructionalMaterialIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResource', @level2type = N'COLUMN', @level2name = N'RefHighQualityInstructionalMaterialIndicatorId';

