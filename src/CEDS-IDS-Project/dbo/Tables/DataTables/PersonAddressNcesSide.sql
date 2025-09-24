CREATE TABLE [dbo].[PersonAddressNcesSide] (
    [PersonAddressNcesSideId]  INT            IDENTITY (1, 1) NOT NULL,
    [PersonAddressId]          INT            NOT NULL,
    [NcesSideDateProcessed]    DATETIME       NULL,
    [NcesSideEstimate]         DECIMAL (9, 2) NULL,
    [NcesSideStandardError]    DECIMAL (9, 2) NULL,
    [NcesSideVintageBeginYear] NVARCHAR (4)   NULL,
    [NcesSideVintageEndYear]   NVARCHAR (4)   NULL,
    [RecordStartDateTime]      DATETIME       NULL,
    [RecordEndDateTime]        DATETIME       NULL,
    [RecordStatusId]           INT            NULL,
    [DataCollectionId]         INT            NULL,
    CONSTRAINT [PK_PersonAddressNcesSide] PRIMARY KEY CLUSTERED ([PersonAddressNcesSideId] ASC),
    CONSTRAINT [FK_PersonAddressNcesSide_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_PersonAddressNcesSide_PersonAddress] FOREIGN KEY ([PersonAddressId]) REFERENCES [dbo].[PersonAddress] ([PersonAddressId]),
    CONSTRAINT [FK_PersonAddressNcesSide_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information related to the National Center for Education Statistics (NCES) spatially interpolated demographic estimate (SIDE) based on the address latitude and longitude location.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddressNcesSide';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddressNcesSide';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The year, month, and day on which the National Center for Education Statistics (NCES) spatially interpolated demographic estimate (SIDE) was processed through the BlindSIDE resource.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddressNcesSide', @level2type = N'COLUMN', @level2name = N'NcesSideDateProcessed';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'NCES SIDE Date Processed', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddressNcesSide', @level2type = N'COLUMN', @level2name = N'NcesSideDateProcessed';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001950', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddressNcesSide', @level2type = N'COLUMN', @level2name = N'NcesSideDateProcessed';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20943', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddressNcesSide', @level2type = N'COLUMN', @level2name = N'NcesSideDateProcessed';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddressNcesSide', @level2type = N'COLUMN', @level2name = N'NcesSideDateProcessed';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The National Center for Education Statistics (NCES) spatially interpolated demographic estimate (SIDE) based on the person''s latitude and longitude location.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddressNcesSide', @level2type = N'COLUMN', @level2name = N'NcesSideEstimate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'NCES SIDE Estimate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddressNcesSide', @level2type = N'COLUMN', @level2name = N'NcesSideEstimate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001948', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddressNcesSide', @level2type = N'COLUMN', @level2name = N'NcesSideEstimate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20944', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddressNcesSide', @level2type = N'COLUMN', @level2name = N'NcesSideEstimate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddressNcesSide', @level2type = N'COLUMN', @level2name = N'NcesSideEstimate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The standard error applied to the National Center for Education Statistics (NCES) spatially interpolated demographic estimate (SIDE).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddressNcesSide', @level2type = N'COLUMN', @level2name = N'NcesSideStandardError';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'NCES SIDE Standard Error', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddressNcesSide', @level2type = N'COLUMN', @level2name = N'NcesSideStandardError';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001949', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddressNcesSide', @level2type = N'COLUMN', @level2name = N'NcesSideStandardError';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20945', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddressNcesSide', @level2type = N'COLUMN', @level2name = N'NcesSideStandardError';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddressNcesSide', @level2type = N'COLUMN', @level2name = N'NcesSideStandardError';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The begin year for the American Community Survey (ACS) period estimates used to construct the National Center for Education Statistics (NCES) spatially interpolated demographic estimate (SIDE).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddressNcesSide', @level2type = N'COLUMN', @level2name = N'NcesSideVintageBeginYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'NCES SIDE Vintage Begin Year', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddressNcesSide', @level2type = N'COLUMN', @level2name = N'NcesSideVintageBeginYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001951', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddressNcesSide', @level2type = N'COLUMN', @level2name = N'NcesSideVintageBeginYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20946', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddressNcesSide', @level2type = N'COLUMN', @level2name = N'NcesSideVintageBeginYear';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddressNcesSide', @level2type = N'COLUMN', @level2name = N'NcesSideVintageBeginYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end year for the American Community Survey (ACS) period estimates used to construct the National Center for Education Statistics (NCES) spatially interpolated demographic estimate (SIDE).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddressNcesSide', @level2type = N'COLUMN', @level2name = N'NcesSideVintageEndYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'NCES SIDE Vintage End Year', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddressNcesSide', @level2type = N'COLUMN', @level2name = N'NcesSideVintageEndYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001952', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddressNcesSide', @level2type = N'COLUMN', @level2name = N'NcesSideVintageEndYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20947', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddressNcesSide', @level2type = N'COLUMN', @level2name = N'NcesSideVintageEndYear';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddressNcesSide', @level2type = N'COLUMN', @level2name = N'NcesSideVintageEndYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddressNcesSide', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddressNcesSide', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddressNcesSide', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddressNcesSide', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddressNcesSide', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddressNcesSide', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddressNcesSide', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddressNcesSide', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddressNcesSide', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddressNcesSide', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

