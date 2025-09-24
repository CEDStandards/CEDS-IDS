CREATE TABLE [dbo].[PersonAddress] (
    [PersonAddressId]                      INT            IDENTITY (1, 1) NOT NULL,
    [PersonId]                             INT            NOT NULL,
    [RefPersonLocationTypeId]              INT            NOT NULL,
    [StreetNumberAndName]                  NVARCHAR (150) NULL,
    [ApartmentRoomOrSuiteNumber]           NVARCHAR (60)  NULL,
    [City]                                 NVARCHAR (30)  NULL,
    [RefStateId]                           INT            NULL,
    [PostalCode]                           NVARCHAR (17)  NULL,
    [AddressCountyName]                    NVARCHAR (30)  NULL,
    [RefCountyId]                          INT            NULL,
    [RefCountryId]                         INT            NULL,
    [Latitude]                             NVARCHAR (20)  NULL,
    [Longitude]                            NVARCHAR (20)  NULL,
    [RefPersonalInformationVerificationId] INT            NULL,
    [RecordStartDateTime]                  DATETIME       NULL,
    [RecordEndDateTime]                    DATETIME       NULL,
    [DoNotPublishIndicator]                BIT            NULL,
    [RecordStatusId]                       INT            NULL,
    [DataCollectionId]                     INT            NULL,
    CONSTRAINT [PK_PersonAddress] PRIMARY KEY CLUSTERED ([PersonAddressId] ASC),
    CONSTRAINT [FK_PersonAddress_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_PersonAddress_Person] FOREIGN KEY ([PersonId]) REFERENCES [dbo].[Person] ([PersonId]),
    CONSTRAINT [FK_PersonAddress_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_PersonAddress_RefCountry] FOREIGN KEY ([RefCountryId]) REFERENCES [dbo].[RefCountry] ([RefCountryId]),
    CONSTRAINT [FK_PersonAddress_RefCounty] FOREIGN KEY ([RefCountyId]) REFERENCES [dbo].[RefCounty] ([RefCountyId]),
    CONSTRAINT [FK_PersonAddress_RefPersonalInformationVerification] FOREIGN KEY ([RefPersonalInformationVerificationId]) REFERENCES [dbo].[RefPersonalInformationVerification] ([RefPersonalInformationVerificationId]),
    CONSTRAINT [FK_PersonAddress_RefPersonLocationType] FOREIGN KEY ([RefPersonLocationTypeId]) REFERENCES [dbo].[RefPersonLocationType] ([RefPersonLocationTypeId]),
    CONSTRAINT [FK_PersonAddress_RefState] FOREIGN KEY ([RefStateId]) REFERENCES [dbo].[RefState] ([RefStateId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An address (e.g. physical or mailing) for a person.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress', @level2type = N'COLUMN', @level2name = N'PersonAddressId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - Person', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress', @level2type = N'COLUMN', @level2name = N'PersonId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of address for a person.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress', @level2type = N'COLUMN', @level2name = N'RefPersonLocationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Address Type for Learner or Family, Address Type for Staff', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress', @level2type = N'COLUMN', @level2name = N'RefPersonLocationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000010, 000722', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress', @level2type = N'COLUMN', @level2name = N'RefPersonLocationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19358, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19698', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress', @level2type = N'COLUMN', @level2name = N'RefPersonLocationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress', @level2type = N'COLUMN', @level2name = N'RefPersonLocationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The street number and street name or post office box number of an address.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress', @level2type = N'COLUMN', @level2name = N'StreetNumberAndName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Address Street Number and Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress', @level2type = N'COLUMN', @level2name = N'StreetNumberAndName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000269', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress', @level2type = N'COLUMN', @level2name = N'StreetNumberAndName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19269', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress', @level2type = N'COLUMN', @level2name = N'StreetNumberAndName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress', @level2type = N'COLUMN', @level2name = N'StreetNumberAndName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The apartment, room, or suite number of an address.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress', @level2type = N'COLUMN', @level2name = N'ApartmentRoomOrSuiteNumber';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Address Apartment Room or Suite Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress', @level2type = N'COLUMN', @level2name = N'ApartmentRoomOrSuiteNumber';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000019', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress', @level2type = N'COLUMN', @level2name = N'ApartmentRoomOrSuiteNumber';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19019', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress', @level2type = N'COLUMN', @level2name = N'ApartmentRoomOrSuiteNumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress', @level2type = N'COLUMN', @level2name = N'ApartmentRoomOrSuiteNumber';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The name of the city in which an address is located.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Address City', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000040', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19040', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The abbreviation for the state (within the United States) or outlying area in which an address is located.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress', @level2type = N'COLUMN', @level2name = N'RefStateId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'State Abbreviation', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress', @level2type = N'COLUMN', @level2name = N'RefStateId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000267', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress', @level2type = N'COLUMN', @level2name = N'RefStateId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19267', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress', @level2type = N'COLUMN', @level2name = N'RefStateId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress', @level2type = N'COLUMN', @level2name = N'RefStateId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A number that identifies each postal delivery area in the United States used as a portion of an address.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress', @level2type = N'COLUMN', @level2name = N'PostalCode';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Address Postal Code', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress', @level2type = N'COLUMN', @level2name = N'PostalCode';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000214', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress', @level2type = N'COLUMN', @level2name = N'PostalCode';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19214', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress', @level2type = N'COLUMN', @level2name = N'PostalCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress', @level2type = N'COLUMN', @level2name = N'PostalCode';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The name of the county, parish, borough, or comparable unit (within a state) in which an address is located.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress', @level2type = N'COLUMN', @level2name = N'AddressCountyName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Address County Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress', @level2type = N'COLUMN', @level2name = N'AddressCountyName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000190', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress', @level2type = N'COLUMN', @level2name = N'AddressCountyName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19190', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress', @level2type = N'COLUMN', @level2name = N'AddressCountyName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress', @level2type = N'COLUMN', @level2name = N'AddressCountyName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The county where the address is located.  (Foreign key - RefCounty)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress', @level2type = N'COLUMN', @level2name = N'RefCountyId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress', @level2type = N'COLUMN', @level2name = N'RefCountyId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The unique two character International Organization for Standardization (ISO) code for the country in which an address is located.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress', @level2type = N'COLUMN', @level2name = N'RefCountryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Country Code', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress', @level2type = N'COLUMN', @level2name = N'RefCountryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000050', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress', @level2type = N'COLUMN', @level2name = N'RefCountryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19050', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress', @level2type = N'COLUMN', @level2name = N'RefCountryId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress', @level2type = N'COLUMN', @level2name = N'RefCountryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The north or south angular distance from the equator that, when combined with longitude, reflects an estimation of where the address is physically situated.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress', @level2type = N'COLUMN', @level2name = N'Latitude';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Latitude', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress', @level2type = N'COLUMN', @level2name = N'Latitude';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000606', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress', @level2type = N'COLUMN', @level2name = N'Latitude';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19599', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress', @level2type = N'COLUMN', @level2name = N'Latitude';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress', @level2type = N'COLUMN', @level2name = N'Latitude';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The east or west angular distance from the prime meridian that, when combined with latitude, reflects an estimation of where the address is physically situated.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress', @level2type = N'COLUMN', @level2name = N'Longitude';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Longitude', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress', @level2type = N'COLUMN', @level2name = N'Longitude';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000607', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress', @level2type = N'COLUMN', @level2name = N'Longitude';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19600', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress', @level2type = N'COLUMN', @level2name = N'Longitude';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress', @level2type = N'COLUMN', @level2name = N'Longitude';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The evidence by which a persons name, address, date of birth, etc. is confirmed.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress', @level2type = N'COLUMN', @level2name = N'RefPersonalInformationVerificationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Personal Information Verification', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress', @level2type = N'COLUMN', @level2name = N'RefPersonalInformationVerificationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000618', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress', @level2type = N'COLUMN', @level2name = N'RefPersonalInformationVerificationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19611', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress', @level2type = N'COLUMN', @level2name = N'RefPersonalInformationVerificationId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress', @level2type = N'COLUMN', @level2name = N'RefPersonalInformationVerificationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication that the record should not be published.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress', @level2type = N'COLUMN', @level2name = N'DoNotPublishIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Do Not Publish Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress', @level2type = N'COLUMN', @level2name = N'DoNotPublishIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001928', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress', @level2type = N'COLUMN', @level2name = N'DoNotPublishIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20905', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress', @level2type = N'COLUMN', @level2name = N'DoNotPublishIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonAddress', @level2type = N'COLUMN', @level2name = N'DoNotPublishIndicator';

