CREATE TABLE [dbo].[FacilityDesign] (
    [FacilityDesignId]                             INT           IDENTITY (1, 1) NOT NULL,
    [FacilityId]                                   INT           NOT NULL,
    [BuildingArchitectName]                        NVARCHAR (45) NULL,
    [BuildingArchitecturalFirmName]                NVARCHAR (60) NULL,
    [BuildingDateOfCertificateOfOccupancy]         DATE          NULL,
    [RefBuildingDesignTypeId]                      INT           NULL,
    [RefBuildingEnvOrEnergyPerformanceRatingCatId] INT           NULL,
    [RecordStartDateTime]                          DATETIME      NULL,
    [RecordEndDateTime]                            DATETIME      NULL,
    [RecordStatusId]                               INT           NULL,
    [DataCollectionId]                             INT           NULL,
    CONSTRAINT [PK_FacilityDesign] PRIMARY KEY CLUSTERED ([FacilityDesignId] ASC),
    CONSTRAINT [FK_FacilityDesign_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_FacilityDesign_Facility] FOREIGN KEY ([FacilityId]) REFERENCES [dbo].[Facility] ([FacilityId]),
    CONSTRAINT [FK_FacilityDesign_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_FacilityDesign_RefBuildingDesignType] FOREIGN KEY ([RefBuildingDesignTypeId]) REFERENCES [dbo].[RefBuildingDesignType] ([RefBuildingDesignTypeId]),
    CONSTRAINT [FK_FacilityDesign_RefBuildingEnvOrEnergyPerformanceRatingCat] FOREIGN KEY ([RefBuildingEnvOrEnergyPerformanceRatingCatId]) REFERENCES [dbo].[RefBuildingEnvOrEnergyPerformanceRatingCat] ([RefBuildingEnvOrEnergyPerformanceRatingCatId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Layout of a facility or asset space.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesign';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesign';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The name of the architect of record for the building.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesign', @level2type = N'COLUMN', @level2name = N'BuildingArchitectName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Building Architect Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesign', @level2type = N'COLUMN', @level2name = N'BuildingArchitectName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001834', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesign', @level2type = N'COLUMN', @level2name = N'BuildingArchitectName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20815', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesign', @level2type = N'COLUMN', @level2name = N'BuildingArchitectName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The name of the architectural firm responsible for the building design.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesign', @level2type = N'COLUMN', @level2name = N'BuildingArchitecturalFirmName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Building Architectural Firm Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesign', @level2type = N'COLUMN', @level2name = N'BuildingArchitecturalFirmName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001835', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesign', @level2type = N'COLUMN', @level2name = N'BuildingArchitecturalFirmName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20816', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesign', @level2type = N'COLUMN', @level2name = N'BuildingArchitecturalFirmName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The month, day and year in which a certificate of occupancy was granted by the appropriate local authority.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesign', @level2type = N'COLUMN', @level2name = N'BuildingDateOfCertificateOfOccupancy';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Building Date of Certificate of Occupancy', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesign', @level2type = N'COLUMN', @level2name = N'BuildingDateOfCertificateOfOccupancy';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001880', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesign', @level2type = N'COLUMN', @level2name = N'BuildingDateOfCertificateOfOccupancy';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20861', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesign', @level2type = N'COLUMN', @level2name = N'BuildingDateOfCertificateOfOccupancy';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The primary design or purpose of a building, as determined by its physical layout and built-in systems and equipment, regardless of its current use.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesign', @level2type = N'COLUMN', @level2name = N'RefBuildingDesignTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Building Design Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesign', @level2type = N'COLUMN', @level2name = N'RefBuildingDesignTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001816', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesign', @level2type = N'COLUMN', @level2name = N'RefBuildingDesignTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20797', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesign', @level2type = N'COLUMN', @level2name = N'RefBuildingDesignTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The primary groupings that rating organizations use to evaluate environmental sustainability and energy use.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesign', @level2type = N'COLUMN', @level2name = N'RefBuildingEnvOrEnergyPerformanceRatingCatId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Building Environmental or Energy Performance Rating Category', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesign', @level2type = N'COLUMN', @level2name = N'RefBuildingEnvOrEnergyPerformanceRatingCatId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001819', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesign', @level2type = N'COLUMN', @level2name = N'RefBuildingEnvOrEnergyPerformanceRatingCatId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20800', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesign', @level2type = N'COLUMN', @level2name = N'RefBuildingEnvOrEnergyPerformanceRatingCatId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesign', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesign', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesign', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesign', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesign', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesign', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesign', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesign', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesign', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesign', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

