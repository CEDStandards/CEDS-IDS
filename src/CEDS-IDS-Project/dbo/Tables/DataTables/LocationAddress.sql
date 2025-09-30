CREATE TABLE [dbo].[LocationAddress] (
    [LocationAddressId]               INT            IDENTITY (1, 1) NOT NULL,
    [LocationId]                      INT            NOT NULL,
    [StreetNumberAndName]             NVARCHAR (150) NULL,
    [ApartmentRoomOrSuiteNumber]      NVARCHAR (60)  NULL,
    [BuildingSiteNumber]              NVARCHAR (60)  NULL,
    [City]                            NVARCHAR (30)  NULL,
    [PostalCode]                      NVARCHAR (17)  NULL,
    [CountyName]                      NVARCHAR (30)  NULL,
    [Latitude]                        NVARCHAR (20)  NULL,
    [Longitude]                       NVARCHAR (20)  NULL,
    [FacilityBlockNumberArea]         NVARCHAR (100) NULL,
    [FacilityCensusTract]             NVARCHAR (100) NULL,
    [RefStateId]                      INT            NULL,
    [RefCountyId]                     INT            NULL,
    [RefCountryId]                    INT            NULL,
    [RefERSRuralUrbanContinuumCodeId] INT            NULL,
    [RecordStartDateTime]             DATETIME       NULL,
    [RecordEndDateTime]               DATETIME       NULL,
    [DoNotPublishIndicator]           BIT            NULL,
    [RecordStatusId]                  INT            NULL,
    [DataCollectionId]                INT            NULL,
    [RefLocaleId]                     INT            NULL,
    CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED ([LocationAddressId] ASC),
    CONSTRAINT [FK_LocationAddress_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_LocationAddress_Location] FOREIGN KEY ([LocationId]) REFERENCES [dbo].[Location] ([LocationId]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_LocationAddress_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_LocationAddress_RefCountry] FOREIGN KEY ([RefCountryId]) REFERENCES [dbo].[RefCountry] ([RefCountryId]),
    CONSTRAINT [FK_LocationAddress_RefCounty] FOREIGN KEY ([RefCountyId]) REFERENCES [dbo].[RefCounty] ([RefCountyId]),
    CONSTRAINT [FK_LocationAddress_RefERSRuralUrbanContinuumCode] FOREIGN KEY ([RefERSRuralUrbanContinuumCodeId]) REFERENCES [dbo].[RefERSRuralUrbanContinuumCode] ([RefERSRuralUrbanContinuumCodeId]),
    CONSTRAINT [FK_LocationAddress_RefState] FOREIGN KEY ([RefStateId]) REFERENCES [dbo].[RefState] ([RefStateId]),
    CONSTRAINT [FK_LocationAddress_RefLocale] FOREIGN KEY ([RefLocaleId]) REFERENCES [dbo].[RefLocale] ([RefLocaleId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Location that contains a address, city, state, zip.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Inherited surrogate key from Location.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'LocationId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'LocationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The street number and street name or post office box number of an address.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'StreetNumberAndName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Address Street Number and Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'StreetNumberAndName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000269', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'StreetNumberAndName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19269', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'StreetNumberAndName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'StreetNumberAndName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The apartment, room, or suite number of an address.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'ApartmentRoomOrSuiteNumber';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Address Apartment Room or Suite Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'ApartmentRoomOrSuiteNumber';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000019', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'ApartmentRoomOrSuiteNumber';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19019', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'ApartmentRoomOrSuiteNumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'ApartmentRoomOrSuiteNumber';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The number of the building on the site, if more than one building shares the same address.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'BuildingSiteNumber';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Building Site Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'BuildingSiteNumber';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000602', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'BuildingSiteNumber';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19595', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'BuildingSiteNumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'BuildingSiteNumber';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The name of the city in which an address is located.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Address City', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000040', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19040', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A number that identifies each postal delivery area in the United States used as a portion of an address.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'PostalCode';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Address Postal Code', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'PostalCode';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000214', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'PostalCode';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19214', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'PostalCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'PostalCode';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The name of the county, parish, borough, or comparable unit (within a state) in which an address is located.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'CountyName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Address County Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'CountyName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000190', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'CountyName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19190', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'CountyName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'CountyName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The north or south angular distance from the equator that, when combined with longitude, reflects an estimation of where the address is physically situated.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'Latitude';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Latitude', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'Latitude';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000606', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'Latitude';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19599', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'Latitude';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'Latitude';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The east or west angular distance from the prime meridian that, when combined with latitude, reflects an estimation of where the address is physically situated.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'Longitude';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Longitude', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'Longitude';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000607', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'Longitude';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19600', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'Longitude';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'Longitude';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The informal description of location sometimes used in rural areas, for example, "from the highway to the railroad tracks."', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'FacilityBlockNumberArea';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Facility Block Number Area', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'FacilityBlockNumberArea';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001774', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'FacilityBlockNumberArea';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20755', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'FacilityBlockNumberArea';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The census tract number of the school site.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'FacilityCensusTract';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Facility Census Tract', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'FacilityCensusTract';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001779', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'FacilityCensusTract';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20760', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'FacilityCensusTract';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate key from RefStateAbbreviation identifying the state.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'RefStateId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate key from RefCounty identifying the county code.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'RefCountyId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate key from RefCountry identifying the country code.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'RefCountryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Rural-Urban Continuum Codes form a classification scheme that distinguishes metropolitan (metro) counties by the population size of their metro area, and nonmetropolitan (nonmetro) counties by degree of urbanization and adjacency to a metro area or areas. The metro and nonmetro categories have been subdivided into three metro and six nonmetro groupings, resulting in a nine-part county codification. The codes allow researchers working with county data to break such data into finer residential groups beyond a simple metro-nonmetro dichotomy, particularly for the analysis of trends in nonmetro areas that may be related to degree of rurality and metro proximity.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'RefERSRuralUrbanContinuumCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Economic Research Service Rural-Urban Continuum Code', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'RefERSRuralUrbanContinuumCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000862', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'RefERSRuralUrbanContinuumCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19862', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'RefERSRuralUrbanContinuumCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'RefERSRuralUrbanContinuumCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication that the record should not be published.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'DoNotPublishIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Do Not Publish Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'DoNotPublishIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001928', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'DoNotPublishIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20905', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'DoNotPublishIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'DoNotPublishIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A general geographic classification that describes the type of area where a school is located.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'RefLocaleId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Locale', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'RefLocaleId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002130', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'RefLocaleId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/element/002130', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'RefLocaleId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocationAddress', @level2type = N'COLUMN', @level2name = N'RefLocaleId';


GO