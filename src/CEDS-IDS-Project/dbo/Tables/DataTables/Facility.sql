CREATE TABLE [dbo].[Facility] (
    [FacilityId]                        INT            NOT NULL,
    [Identifier]                        NVARCHAR (40)  NULL,
    [BuildingName]                      NVARCHAR (60)  NULL,
    [BuildingSiteNumber]                NVARCHAR (60)  NULL,
    [RefBuildingUseTypeId]              INT            NULL,
    [OrganizationId]                    INT            NULL,
    [BuildingArea]                      NVARCHAR (100) NULL,
    [BuildingNumberOfStories]           NVARCHAR (100) NULL,
    [BuildingYearBuilt]                 NVARCHAR (100) NULL,
    [BuildingYearOfLastModernization]   NVARCHAR (100) NULL,
    [FacilityAcquisitionDate]           DATE           NULL,
    [FacilityBuildingPermanency]        NVARCHAR (100) NULL,
    [FacilityExpectedLife]              NVARCHAR (100) NULL,
    [FacilityOwnershipIndicator]        BIT            NULL,
    [RefBuildingHistoricStatusId]       INT            NULL,
    [RefBuildingPrimaryUseTypeId]       INT            NULL,
    [RefCampusStatusId]                 INT            NULL,
    [RefCampusTypeId]                   INT            NULL,
    [RecordStartDateTime]               DATETIME       NULL,
    [RecordEndDateTime]                 DATETIME       NULL,
    [RecordStatusId]                    INT            NULL,
    [DataCollectionId]                  INT            NULL,
    [TemperatureControlledBuildingArea] NVARCHAR (100) NULL,
    CONSTRAINT [PK_Facility] PRIMARY KEY CLUSTERED ([FacilityId] ASC),
    CONSTRAINT [FK_Facility_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_Facility_Organization] FOREIGN KEY ([OrganizationId]) REFERENCES [dbo].[Organization] ([OrganizationId]),
    CONSTRAINT [FK_Facility_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_Facility_RefBuildingHistoricStatus] FOREIGN KEY ([RefBuildingHistoricStatusId]) REFERENCES [dbo].[RefBuildingHistoricStatus] ([RefBuildingHistoricStatusId]),
    CONSTRAINT [FK_Facility_RefBuildingPrimaryUseType] FOREIGN KEY ([RefBuildingPrimaryUseTypeId]) REFERENCES [dbo].[RefBuildingPrimaryUseType] ([RefBuildingPrimaryUseTypeId]),
    CONSTRAINT [FK_Facility_RefBuildingUseType] FOREIGN KEY ([RefBuildingUseTypeId]) REFERENCES [dbo].[RefBuildingUseType] ([RefBuildingUseTypeId]),
    CONSTRAINT [FK_Facility_RefCampusStatus] FOREIGN KEY ([RefCampusStatusId]) REFERENCES [dbo].[RefCampusStatus] ([RefCampusStatusId]),
    CONSTRAINT [FK_Facility_RefCampusType] FOREIGN KEY ([RefCampusTypeId]) REFERENCES [dbo].[RefCampusType] ([RefCampusTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information about a piece of land, a building site, a building, or part of a building owned by and/or used for activities of an organizational unit such as a school, school system, program, or institution. ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'FacilityId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A locally assigned unique number or alphanumeric code used to capture precise information on locations specific to a school (e.g., building number, class number, hall number, school bus number, computer station number, or internet protocol (IP) address).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'Identifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Facilities Identifier', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'Identifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000504', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'Identifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19495', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'Identifier';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'Identifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The full, legally accepted or popularly accepted name of a building.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'BuildingName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Site Name, Facility Building Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'BuildingName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000632, 001205', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'BuildingName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19625, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20172', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'BuildingName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'BuildingName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The number of the building on the site, if more than one building shares the same address.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'BuildingSiteNumber';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Building Site Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'BuildingSiteNumber';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000602', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'BuildingSiteNumber';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19595', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'BuildingSiteNumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'BuildingSiteNumber';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'How a building is principally used, regardless of its original design.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'RefBuildingUseTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Building Use Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'RefBuildingUseTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001206', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'RefBuildingUseTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20173', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'RefBuildingUseTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'RefBuildingUseTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The sum of the areas at each floor level included within the principal outside faces of exterior walls, including roofed areas with finished floors that may not have exterior walls, but are connected to the main building. This sum should include all stories or areas having floor surfaces with clear standing head room (6.5 feet or 1.98 meters) but omit architectural setbacks or projections.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'BuildingArea';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Building Area', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'BuildingArea';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001764', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'BuildingArea';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20745', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'BuildingArea';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The number of stories in a building, excluding the basement if its ceiling is less than three feet above ground level.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'BuildingNumberOfStories';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Building Number of Stories', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'BuildingNumberOfStories';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001785', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'BuildingNumberOfStories';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20766', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'BuildingNumberOfStories';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The year a building was constructed, as indicated by cornerstone or official government records.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'BuildingYearBuilt';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Building Year Built', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'BuildingYearBuilt';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001788', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'BuildingYearBuilt';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20769', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'BuildingYearBuilt';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The most recent year that a comprehensive upgrade of ALL major building systems and components was completed, such that it functions as a modern building, as measured by a facility condition index not greater than 15%.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'BuildingYearOfLastModernization';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Building Year of Last Modernization', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'BuildingYearOfLastModernization';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001789', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'BuildingYearOfLastModernization';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20770', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'BuildingYearOfLastModernization';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The date the property/facility was acquired.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'FacilityAcquisitionDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Facility Acquisition Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'FacilityAcquisitionDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001768', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'FacilityAcquisitionDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20749', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'FacilityAcquisitionDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether the building is built for permanent use in the same location or is relocatable.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'FacilityBuildingPermanency';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Facility Building Permanency', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'FacilityBuildingPermanency';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001770', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'FacilityBuildingPermanency';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20751', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'FacilityBuildingPermanency';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The time, in years, of the expected useful life of a facility for the purposes of depreciation.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'FacilityExpectedLife';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Facility Expected Life', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'FacilityExpectedLife';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001783', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'FacilityExpectedLife';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20764', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'FacilityExpectedLife';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Indicates the public or private entity holds legal title to the building and/or site.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'FacilityOwnershipIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Facility Ownership Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'FacilityOwnershipIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001906', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'FacilityOwnershipIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20887', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'FacilityOwnershipIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether or not a building is eligible to be or has been declared a landmark or historic building.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'RefBuildingHistoricStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Building Historic Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'RefBuildingHistoricStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001772', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'RefBuildingHistoricStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20753', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'RefBuildingHistoricStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The primary use type of the building in which a school is located.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'RefBuildingPrimaryUseTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Building Primary Use Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'RefBuildingPrimaryUseTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001777', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'RefBuildingPrimaryUseTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20758', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'RefBuildingPrimaryUseTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The generalized use or control of a campus, independent of program type.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'RefCampusStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Campus Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'RefCampusStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001778', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'RefCampusStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20759', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'RefCampusStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The primary purpose for which a campus is designed and/or used.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'RefCampusTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Campus Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'RefCampusTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001897', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'RefCampusTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20878', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'RefCampusTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The sum of the Building Area capable of being regulated and maintained within a specific temperature range for a designated purpose, employing heating, cooling, insulation, or climate control systems.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'TemperatureControlledBuildingArea';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Temperature Controlled Building Area', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'TemperatureControlledBuildingArea';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002024', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'TemperatureControlledBuildingArea';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25090', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'TemperatureControlledBuildingArea';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'TemperatureControlledBuildingArea';

