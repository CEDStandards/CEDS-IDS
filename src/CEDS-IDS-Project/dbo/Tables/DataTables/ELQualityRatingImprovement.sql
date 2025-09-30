CREATE TABLE [dbo].[ELQualityRatingImprovement] (
    [ELQualityRatingImprovementId] INT           IDENTITY (1, 1) NOT NULL,
    [OrganizationId]               INT           NOT NULL,
    [NumberQrisLevels]             INT           NULL,
    [QrisAwardDate]                DATE          NULL,
    [QRISExpirationDate]           DATE          NULL,
    [RefQrisParticipationId]       INT           NULL,
    [QrisScore]                    NVARCHAR (45) NULL,
    [RecordStartDateTime]          DATETIME      NULL,
    [RecordEndDateTime]            DATETIME      NULL,
    [RecordStatusId]               INT           NULL,
    [DataCollectionId]             INT           NULL,
    CONSTRAINT [PK_ELQualityRatingImprovement] PRIMARY KEY CLUSTERED ([ELQualityRatingImprovementId] ASC),
    CONSTRAINT [FK_ELQualityRatingImprovement_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_ELQualityRatingImprovement_Organization] FOREIGN KEY ([OrganizationId]) REFERENCES [dbo].[Organization] ([OrganizationId]),
    CONSTRAINT [FK_ELQualityRatingImprovement_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_ELQualityRatingImprovement_RefQRISParticipation] FOREIGN KEY ([RefQrisParticipationId]) REFERENCES [dbo].[RefQrisParticipation] ([RefQrisParticipationId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The early learning organization''s Quality Rating and Improvement System (QRIS) attributes.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityRatingImprovement';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityRatingImprovement';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityRatingImprovement', @level2type = N'COLUMN', @level2name = N'ELQualityRatingImprovementId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate key from Organization.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityRatingImprovement', @level2type = N'COLUMN', @level2name = N'OrganizationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Number of quality levels in the Quality Rating and Improvement System (QRIS).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityRatingImprovement', @level2type = N'COLUMN', @level2name = N'NumberQrisLevels';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Number of Quality Rating and Improvement System Levels', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityRatingImprovement', @level2type = N'COLUMN', @level2name = N'NumberQrisLevels';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000843', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityRatingImprovement', @level2type = N'COLUMN', @level2name = N'NumberQrisLevels';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19843', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityRatingImprovement', @level2type = N'COLUMN', @level2name = N'NumberQrisLevels';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityRatingImprovement', @level2type = N'COLUMN', @level2name = N'NumberQrisLevels';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Date Quality Rating and Improvement System score, level or rating was awarded.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityRatingImprovement', @level2type = N'COLUMN', @level2name = N'QrisAwardDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Quality Rating and Improvement System Award Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityRatingImprovement', @level2type = N'COLUMN', @level2name = N'QrisAwardDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000830', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityRatingImprovement', @level2type = N'COLUMN', @level2name = N'QrisAwardDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19830', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityRatingImprovement', @level2type = N'COLUMN', @level2name = N'QrisAwardDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityRatingImprovement', @level2type = N'COLUMN', @level2name = N'QrisAwardDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Date Quality Rating and Improvement System score, level or rating expires.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityRatingImprovement', @level2type = N'COLUMN', @level2name = N'QRISExpirationDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Quality Rating and Improvement System Expiration Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityRatingImprovement', @level2type = N'COLUMN', @level2name = N'QRISExpirationDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000831', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityRatingImprovement', @level2type = N'COLUMN', @level2name = N'QRISExpirationDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19831', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityRatingImprovement', @level2type = N'COLUMN', @level2name = N'QRISExpirationDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityRatingImprovement', @level2type = N'COLUMN', @level2name = N'QRISExpirationDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Program site participates in a Quality Rating and Improvement System (QRIS).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityRatingImprovement', @level2type = N'COLUMN', @level2name = N'RefQrisParticipationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Quality Rating and Improvement System Participation', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityRatingImprovement', @level2type = N'COLUMN', @level2name = N'RefQrisParticipationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000357', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityRatingImprovement', @level2type = N'COLUMN', @level2name = N'RefQrisParticipationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19356', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityRatingImprovement', @level2type = N'COLUMN', @level2name = N'RefQrisParticipationId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityRatingImprovement', @level2type = N'COLUMN', @level2name = N'RefQrisParticipationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The score, rating or level received by a program for its Quality Rating and Improvement System (QRIS).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityRatingImprovement', @level2type = N'COLUMN', @level2name = N'QrisScore';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Quality Rating and Improvement System Score', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityRatingImprovement', @level2type = N'COLUMN', @level2name = N'QrisScore';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000358', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityRatingImprovement', @level2type = N'COLUMN', @level2name = N'QrisScore';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19357', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityRatingImprovement', @level2type = N'COLUMN', @level2name = N'QrisScore';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityRatingImprovement', @level2type = N'COLUMN', @level2name = N'QrisScore';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityRatingImprovement', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityRatingImprovement', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityRatingImprovement', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityRatingImprovement', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityRatingImprovement', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityRatingImprovement', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityRatingImprovement', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityRatingImprovement', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityRatingImprovement', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityRatingImprovement', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

