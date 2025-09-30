CREATE TABLE [dbo].[FacilitySite] (
    [FacilitySiteId]                       INT            IDENTITY (1, 1) NOT NULL,
    [FacilityId]                           INT            NOT NULL,
    [FacilitySiteIdentifier]               NVARCHAR (20)  NULL,
    [FacilitySiteArea]                     DECIMAL (9, 1) NULL,
    [RefBuildingSiteUseRestrictionsTypeId] INT            NULL,
    [RefFacilitySiteOutdoorAreaTypeId]     INT            NULL,
    [RecordStartDateTime]                  DATETIME       NULL,
    [RecordEndDateTime]                    DATETIME       NULL,
    [RecordStatusId]                       INT            NULL,
    [DataCollectionId]                     INT            NULL,
    CONSTRAINT [PK_FacilitySite] PRIMARY KEY CLUSTERED ([FacilitySiteId] ASC),
    CONSTRAINT [FK_FacilitySite_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_FacilitySite_Facility] FOREIGN KEY ([FacilityId]) REFERENCES [dbo].[Facility] ([FacilityId]),
    CONSTRAINT [FK_FacilitySite_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_FacilitySite_RefBuildingSiteUseRestrictionsType] FOREIGN KEY ([RefBuildingSiteUseRestrictionsTypeId]) REFERENCES [dbo].[RefBuildingSiteUseRestrictionsType] ([RefBuildingSiteUseRestrictionsTypeId]),
    CONSTRAINT [FK_FacilitySite_RefFacilitySiteOutdoorAreaType] FOREIGN KEY ([RefFacilitySiteOutdoorAreaTypeId]) REFERENCES [dbo].[RefFacilitySiteOutdoorAreaType] ([RefFacilitySiteOutdoorAreaTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information about a site at which a facility exists.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilitySite';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilitySite';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The lot and square number, or equivalent unique municipal number identification, of a parcel of land.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilitySite', @level2type = N'COLUMN', @level2name = N'FacilitySiteIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Facility Site Identifier', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilitySite', @level2type = N'COLUMN', @level2name = N'FacilitySiteIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001786', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilitySite', @level2type = N'COLUMN', @level2name = N'FacilitySiteIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20767', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilitySite', @level2type = N'COLUMN', @level2name = N'FacilitySiteIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The total number of acres in a continuous piece of land, to the nearest tenth, including undeveloped areas as well as areas occupied by buildings, walks, drives, parking facilities, and other improvements.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilitySite', @level2type = N'COLUMN', @level2name = N'FacilitySiteArea';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Facility Site Area', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilitySite', @level2type = N'COLUMN', @level2name = N'FacilitySiteArea';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001773', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilitySite', @level2type = N'COLUMN', @level2name = N'FacilitySiteArea';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20754', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilitySite', @level2type = N'COLUMN', @level2name = N'FacilitySiteArea';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A characterization of a site that would define restrictions or opportunities.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilitySite', @level2type = N'COLUMN', @level2name = N'RefBuildingSiteUseRestrictionsTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Building Site Use Restrictions Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilitySite', @level2type = N'COLUMN', @level2name = N'RefBuildingSiteUseRestrictionsTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001860', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilitySite', @level2type = N'COLUMN', @level2name = N'RefBuildingSiteUseRestrictionsTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20841', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilitySite', @level2type = N'COLUMN', @level2name = N'RefBuildingSiteUseRestrictionsTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The designated constructed outdoor area on a public school site.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilitySite', @level2type = N'COLUMN', @level2name = N'RefFacilitySiteOutdoorAreaTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Facility Site Outdoor Area Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilitySite', @level2type = N'COLUMN', @level2name = N'RefFacilitySiteOutdoorAreaTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001830', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilitySite', @level2type = N'COLUMN', @level2name = N'RefFacilitySiteOutdoorAreaTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20811', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilitySite', @level2type = N'COLUMN', @level2name = N'RefFacilitySiteOutdoorAreaTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilitySite', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilitySite', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilitySite', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilitySite', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilitySite', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilitySite', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilitySite', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilitySite', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilitySite', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilitySite', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

