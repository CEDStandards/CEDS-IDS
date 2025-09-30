CREATE TABLE [dbo].[K12LeaSafeDrugFree] (
    [K12LeaSafeDrugFreeId] INT            IDENTITY (1, 1) NOT NULL,
    [K12LeaId]             INT            NOT NULL,
    [Baseline]             NVARCHAR (60)  NULL,
    [BaselineYear]         NVARCHAR (20)  NULL,
    [CollectionFrequency]  NVARCHAR (60)  NULL,
    [IndicatorName]        NVARCHAR (60)  NULL,
    [Instrument]           NVARCHAR (100) NULL,
    [Performance]          NVARCHAR (20)  NULL,
    [Target]               NVARCHAR (20)  NULL,
    [MostRecentCollection] NVARCHAR (20)  NULL,
    [RecordStartDateTime]  DATETIME       NULL,
    [RecordEndDateTime]    DATETIME       NULL,
    [RecordStatusId]       INT            NULL,
    [DataCollectionId]     INT            NULL,
    CONSTRAINT [XPKK12SchoolSafeDrugFree] PRIMARY KEY CLUSTERED ([K12LeaSafeDrugFreeId] ASC),
    CONSTRAINT [FK_K12LeaSafeDrugFree_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_K12LeaSafeDrugFree_K12Lea] FOREIGN KEY ([K12LeaId]) REFERENCES [dbo].[K12Lea] ([K12LeaId]),
    CONSTRAINT [FK_K12LeaSafeDrugFree_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information about the LEA''s performance under the Safe and Drug-Free Schools and Communities act.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaSafeDrugFree';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaSafeDrugFree';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The baseline of the performance indicator of student behavior under the Safe and Drug-Free Schools and Communities Act.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaSafeDrugFree', @level2type = N'COLUMN', @level2name = N'Baseline';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Safe and Drug Free Baseline', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaSafeDrugFree', @level2type = N'COLUMN', @level2name = N'Baseline';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000477', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaSafeDrugFree', @level2type = N'COLUMN', @level2name = N'Baseline';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19468', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaSafeDrugFree', @level2type = N'COLUMN', @level2name = N'Baseline';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaSafeDrugFree', @level2type = N'COLUMN', @level2name = N'Baseline';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The academic year the baseline was established.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaSafeDrugFree', @level2type = N'COLUMN', @level2name = N'BaselineYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Safe and Drug Free Baseline Year', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaSafeDrugFree', @level2type = N'COLUMN', @level2name = N'BaselineYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000478', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaSafeDrugFree', @level2type = N'COLUMN', @level2name = N'BaselineYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19469', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaSafeDrugFree', @level2type = N'COLUMN', @level2name = N'BaselineYear';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaSafeDrugFree', @level2type = N'COLUMN', @level2name = N'BaselineYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N' The frequency of data collection for performance indicator under the Safe and Drug-Free Schools and Communities Act.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaSafeDrugFree', @level2type = N'COLUMN', @level2name = N'CollectionFrequency';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Safe and Drug Free Collection Frequency', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaSafeDrugFree', @level2type = N'COLUMN', @level2name = N'CollectionFrequency';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000473', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaSafeDrugFree', @level2type = N'COLUMN', @level2name = N'CollectionFrequency';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19463', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaSafeDrugFree', @level2type = N'COLUMN', @level2name = N'CollectionFrequency';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaSafeDrugFree', @level2type = N'COLUMN', @level2name = N'CollectionFrequency';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The name of the performance indicator for student behaviors under the Safe and Drug-Free Schools and Communities Act.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaSafeDrugFree', @level2type = N'COLUMN', @level2name = N'IndicatorName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Safe and Drug Free Indicator Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaSafeDrugFree', @level2type = N'COLUMN', @level2name = N'IndicatorName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000471', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaSafeDrugFree', @level2type = N'COLUMN', @level2name = N'IndicatorName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19461', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaSafeDrugFree', @level2type = N'COLUMN', @level2name = N'IndicatorName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaSafeDrugFree', @level2type = N'COLUMN', @level2name = N'IndicatorName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The instrument or data source for reported performance indicator of student behavior under the Safe and Drug-Free Schools and Communities Act.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaSafeDrugFree', @level2type = N'COLUMN', @level2name = N'Instrument';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Safe and Drug Free Instrument', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaSafeDrugFree', @level2type = N'COLUMN', @level2name = N'Instrument';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000472', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaSafeDrugFree', @level2type = N'COLUMN', @level2name = N'Instrument';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19462', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaSafeDrugFree', @level2type = N'COLUMN', @level2name = N'Instrument';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaSafeDrugFree', @level2type = N'COLUMN', @level2name = N'Instrument';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Actual performance for the given  indicator of student behavior under the Safe and Drug-Free Schools and Communities Act', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaSafeDrugFree', @level2type = N'COLUMN', @level2name = N'Performance';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Safe and Drug Free Performance', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaSafeDrugFree', @level2type = N'COLUMN', @level2name = N'Performance';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000476', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaSafeDrugFree', @level2type = N'COLUMN', @level2name = N'Performance';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19466', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaSafeDrugFree', @level2type = N'COLUMN', @level2name = N'Performance';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaSafeDrugFree', @level2type = N'COLUMN', @level2name = N'Performance';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The targeted performance for the given  indicator of student behavior under the Safe and Drug-Free Schools and Communities Act.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaSafeDrugFree', @level2type = N'COLUMN', @level2name = N'Target';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Safe and Drug Free Target', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaSafeDrugFree', @level2type = N'COLUMN', @level2name = N'Target';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000475', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaSafeDrugFree', @level2type = N'COLUMN', @level2name = N'Target';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19465', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaSafeDrugFree', @level2type = N'COLUMN', @level2name = N'Target';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaSafeDrugFree', @level2type = N'COLUMN', @level2name = N'Target';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The academic year of the most recent collection of the performance indicator under the Sage and Drug-Free Schools and Communities Act.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaSafeDrugFree', @level2type = N'COLUMN', @level2name = N'MostRecentCollection';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Safe and Drug Free Year Most Recent Collection', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaSafeDrugFree', @level2type = N'COLUMN', @level2name = N'MostRecentCollection';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000474', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaSafeDrugFree', @level2type = N'COLUMN', @level2name = N'MostRecentCollection';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19464', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaSafeDrugFree', @level2type = N'COLUMN', @level2name = N'MostRecentCollection';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaSafeDrugFree', @level2type = N'COLUMN', @level2name = N'MostRecentCollection';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaSafeDrugFree', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaSafeDrugFree', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaSafeDrugFree', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaSafeDrugFree', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaSafeDrugFree', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaSafeDrugFree', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaSafeDrugFree', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaSafeDrugFree', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaSafeDrugFree', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

