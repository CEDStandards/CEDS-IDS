CREATE TABLE [dbo].[DataCollection] (
    [DataCollectionId]                     INT            IDENTITY (1, 1) NOT NULL,
    [DataCollectionAcademicSchoolYear]     NVARCHAR (4)   NULL,
    [DataCollectionCloseDate]              DATETIME       NULL,
    [DataCollectionDescription]            NVARCHAR (MAX) NULL,
    [DataCollectionName]                   NVARCHAR (100) NULL,
    [DataCollectionSchoolYear]             NVARCHAR (4)   NULL,
    [SourceSystemDataCollectionIdentifier] NVARCHAR (36)  NULL,
    [SourceSystemName]                     NVARCHAR (100) NULL,
    [DataCollectionOpenDate]               DATETIME       NULL,
    [RefDataCollectionStatusId]            INT            NULL,
    [RecordStartDateTime]                  DATETIME       NULL,
    [RecordEndDateTime]                    DATETIME       NULL,
    CONSTRAINT [PK_DataCollection] PRIMARY KEY CLUSTERED ([DataCollectionId] ASC),
    CONSTRAINT [FK_DataCollection_RefDataCollectionStatus] FOREIGN KEY ([RefDataCollectionStatusId]) REFERENCES [dbo].[RefDataCollectionStatus] ([RefDataCollectionStatusId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information related to the collection of data used to record this information.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DataCollection';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DataCollection';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The year for a reported school session for which the data is applicable.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DataCollection', @level2type = N'COLUMN', @level2name = N'DataCollectionAcademicSchoolYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Data Collection Academic School Year', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DataCollection', @level2type = N'COLUMN', @level2name = N'DataCollectionAcademicSchoolYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001970', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DataCollection', @level2type = N'COLUMN', @level2name = N'DataCollectionAcademicSchoolYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20920', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DataCollection', @level2type = N'COLUMN', @level2name = N'DataCollectionAcademicSchoolYear';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DataCollection', @level2type = N'COLUMN', @level2name = N'DataCollectionAcademicSchoolYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The date the data collection closes or ends.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DataCollection', @level2type = N'COLUMN', @level2name = N'DataCollectionCloseDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Data Collection Close Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DataCollection', @level2type = N'COLUMN', @level2name = N'DataCollectionCloseDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001969', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DataCollection', @level2type = N'COLUMN', @level2name = N'DataCollectionCloseDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20921', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DataCollection', @level2type = N'COLUMN', @level2name = N'DataCollectionCloseDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DataCollection', @level2type = N'COLUMN', @level2name = N'DataCollectionCloseDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The description of what is included in the data within the context of the data collection based on the source system and collection period as defined by the Data Collection Open Date and Data Collection Close Date.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DataCollection', @level2type = N'COLUMN', @level2name = N'DataCollectionDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Data Collection Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DataCollection', @level2type = N'COLUMN', @level2name = N'DataCollectionDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001967', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DataCollection', @level2type = N'COLUMN', @level2name = N'DataCollectionDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20922', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DataCollection', @level2type = N'COLUMN', @level2name = N'DataCollectionDescription';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DataCollection', @level2type = N'COLUMN', @level2name = N'DataCollectionDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A human readable name used to identify the data within the collection.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DataCollection', @level2type = N'COLUMN', @level2name = N'DataCollectionName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Data Collection Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DataCollection', @level2type = N'COLUMN', @level2name = N'DataCollectionName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001966', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DataCollection', @level2type = N'COLUMN', @level2name = N'DataCollectionName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20923', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DataCollection', @level2type = N'COLUMN', @level2name = N'DataCollectionName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DataCollection', @level2type = N'COLUMN', @level2name = N'DataCollectionName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The year for a reported school session in which the data collection occurs.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DataCollection', @level2type = N'COLUMN', @level2name = N'DataCollectionSchoolYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Data Collection School Year', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DataCollection', @level2type = N'COLUMN', @level2name = N'DataCollectionSchoolYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001971', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DataCollection', @level2type = N'COLUMN', @level2name = N'DataCollectionSchoolYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20925', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DataCollection', @level2type = N'COLUMN', @level2name = N'DataCollectionSchoolYear';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DataCollection', @level2type = N'COLUMN', @level2name = N'DataCollectionSchoolYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The identifier specified by the source system that uniquely identifies the data collection.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DataCollection', @level2type = N'COLUMN', @level2name = N'SourceSystemDataCollectionIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Source System Data Collection Identifier', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DataCollection', @level2type = N'COLUMN', @level2name = N'SourceSystemDataCollectionIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001964', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DataCollection', @level2type = N'COLUMN', @level2name = N'SourceSystemDataCollectionIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20960', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DataCollection', @level2type = N'COLUMN', @level2name = N'SourceSystemDataCollectionIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DataCollection', @level2type = N'COLUMN', @level2name = N'SourceSystemDataCollectionIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The name of the source system that provided the data within the collection.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DataCollection', @level2type = N'COLUMN', @level2name = N'SourceSystemName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Source System Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DataCollection', @level2type = N'COLUMN', @level2name = N'SourceSystemName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001965', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DataCollection', @level2type = N'COLUMN', @level2name = N'SourceSystemName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20961', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DataCollection', @level2type = N'COLUMN', @level2name = N'SourceSystemName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DataCollection', @level2type = N'COLUMN', @level2name = N'SourceSystemName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The date the data collection opens or commences.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DataCollection', @level2type = N'COLUMN', @level2name = N'DataCollectionOpenDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Data Collection Open Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DataCollection', @level2type = N'COLUMN', @level2name = N'DataCollectionOpenDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001968', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DataCollection', @level2type = N'COLUMN', @level2name = N'DataCollectionOpenDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20924', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DataCollection', @level2type = N'COLUMN', @level2name = N'DataCollectionOpenDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DataCollection', @level2type = N'COLUMN', @level2name = N'DataCollectionOpenDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A process indicator of the level of stability, quality, and/or preparedness of the collection of data.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DataCollection', @level2type = N'COLUMN', @level2name = N'RefDataCollectionStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Data Collection Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DataCollection', @level2type = N'COLUMN', @level2name = N'RefDataCollectionStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001990', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DataCollection', @level2type = N'COLUMN', @level2name = N'RefDataCollectionStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20926', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DataCollection', @level2type = N'COLUMN', @level2name = N'RefDataCollectionStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DataCollection', @level2type = N'COLUMN', @level2name = N'RefDataCollectionStatusId';

