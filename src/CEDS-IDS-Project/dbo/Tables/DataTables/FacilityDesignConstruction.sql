CREATE TABLE [dbo].[FacilityDesignConstruction] (
    [FacilityDesignConstructionId]               INT           IDENTITY (1, 1) NOT NULL,
    [FacilityDesignId]                           INT           NOT NULL,
    [FacilityConstructionDate]                   DATE          NULL,
    [FacilityConstructionYear]                   NCHAR (4)     NULL,
    [BuildingAdditionCode]                       NVARCHAR (30) NULL,
    [BuildingAdditionDescription]                NVARCHAR (80) NULL,
    [FacilityAdditionYear]                       NCHAR (4)     NULL,
    [BuildingSiteImprovementDescription]         NVARCHAR (80) NULL,
    [RefBuildingEnergyConservationMeasureTypeId] INT           NULL,
    [RefFacilityConstructionDateTypeId]          INT           NULL,
    [RefFacilityConstructionMaterialTypeId]      INT           NULL,
    [RefFacilityJointDevelopmentTypeId]          INT           NULL,
    [RefFacilitySiteImprovementLocationTypeId]   INT           NULL,
    [RefFacilityStandardTypeId]                  INT           NULL,
    [RecordStartDateTime]                        DATETIME      NULL,
    [RecordEndDateTime]                          DATETIME      NULL,
    [RecordStatusId]                             INT           NULL,
    [DataCollectionId]                           INT           NULL,
    CONSTRAINT [PK_FacilityDesignConstruction] PRIMARY KEY CLUSTERED ([FacilityDesignConstructionId] ASC),
    CONSTRAINT [FK_FacilityDesignConstruction_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_FacilityDesignConstruction_FacilityDesign] FOREIGN KEY ([FacilityDesignId]) REFERENCES [dbo].[FacilityDesign] ([FacilityDesignId]),
    CONSTRAINT [FK_FacilityDesignConstruction_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_FacilityDesignConstruction_RefBuildingEnergyConservationMeasureType] FOREIGN KEY ([RefBuildingEnergyConservationMeasureTypeId]) REFERENCES [dbo].[RefBuildingEnergyConservationMeasureType] ([RefBuildingEnergyConservationMeasureTypeId]),
    CONSTRAINT [FK_FacilityDesignConstruction_RefFacilityConstructionDateType] FOREIGN KEY ([RefFacilityConstructionDateTypeId]) REFERENCES [dbo].[RefFacilityConstructionDateType] ([RefFacilityConstructionDateTypeId]),
    CONSTRAINT [FK_FacilityDesignConstruction_RefFacilityConstructionMaterialType] FOREIGN KEY ([RefFacilityConstructionMaterialTypeId]) REFERENCES [dbo].[RefFacilityConstructionMaterialType] ([RefFacilityConstructionMaterialTypeId]),
    CONSTRAINT [FK_FacilityDesignConstruction_RefFacilityJointDevelopmentType] FOREIGN KEY ([RefFacilityJointDevelopmentTypeId]) REFERENCES [dbo].[RefFacilityJointDevelopmentType] ([RefFacilityJointDevelopmentTypeId]),
    CONSTRAINT [FK_FacilityDesignConstruction_RefFacilitySiteImprovementLocationType] FOREIGN KEY ([RefFacilitySiteImprovementLocationTypeId]) REFERENCES [dbo].[RefFacilitySiteImprovementLocationType] ([RefFacilitySiteImprovementLocationTypeId]),
    CONSTRAINT [FK_FacilityDesignConstruction_RefFacilityStandardType] FOREIGN KEY ([RefFacilityStandardTypeId]) REFERENCES [dbo].[RefFacilityStandardType] ([RefFacilityStandardTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information about the construction of a facility or asset space.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesignConstruction';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesignConstruction';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The month, day, and year on which construction of a building, addition, or improvement was completed.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesignConstruction', @level2type = N'COLUMN', @level2name = N'FacilityConstructionDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Facility Construction Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesignConstruction', @level2type = N'COLUMN', @level2name = N'FacilityConstructionDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001780', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesignConstruction', @level2type = N'COLUMN', @level2name = N'FacilityConstructionDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20761', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesignConstruction', @level2type = N'COLUMN', @level2name = N'FacilityConstructionDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The year the building was first constructed.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesignConstruction', @level2type = N'COLUMN', @level2name = N'FacilityConstructionYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Facility Construction Year', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesignConstruction', @level2type = N'COLUMN', @level2name = N'FacilityConstructionYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001771', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesignConstruction', @level2type = N'COLUMN', @level2name = N'FacilityConstructionYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20752', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesignConstruction', @level2type = N'COLUMN', @level2name = N'FacilityConstructionYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A unique number or alphanumeric code assigned to a building addition by a school, school system, state, or other agency or entity.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesignConstruction', @level2type = N'COLUMN', @level2name = N'BuildingAdditionCode';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Building Addition Code', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesignConstruction', @level2type = N'COLUMN', @level2name = N'BuildingAdditionCode';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001776', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesignConstruction', @level2type = N'COLUMN', @level2name = N'BuildingAdditionCode';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20757', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesignConstruction', @level2type = N'COLUMN', @level2name = N'BuildingAdditionCode';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A description of the permanent structure added to the original building.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesignConstruction', @level2type = N'COLUMN', @level2name = N'BuildingAdditionDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Building Addition Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesignConstruction', @level2type = N'COLUMN', @level2name = N'BuildingAdditionDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001775', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesignConstruction', @level2type = N'COLUMN', @level2name = N'BuildingAdditionDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20756', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesignConstruction', @level2type = N'COLUMN', @level2name = N'BuildingAdditionDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The year the construction on the addition was completed.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesignConstruction', @level2type = N'COLUMN', @level2name = N'FacilityAdditionYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Facility Addition Year', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesignConstruction', @level2type = N'COLUMN', @level2name = N'FacilityAdditionYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001769', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesignConstruction', @level2type = N'COLUMN', @level2name = N'FacilityAdditionYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20750', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesignConstruction', @level2type = N'COLUMN', @level2name = N'FacilityAdditionYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A description of the designed and constructed improvements made to a site.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesignConstruction', @level2type = N'COLUMN', @level2name = N'BuildingSiteImprovementDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Building Site Improvement Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesignConstruction', @level2type = N'COLUMN', @level2name = N'BuildingSiteImprovementDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001850', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesignConstruction', @level2type = N'COLUMN', @level2name = N'BuildingSiteImprovementDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20831', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesignConstruction', @level2type = N'COLUMN', @level2name = N'BuildingSiteImprovementDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of modification to, or replacement of, a piece of equipment or building shell/system that increases energy efficiency.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesignConstruction', @level2type = N'COLUMN', @level2name = N'RefBuildingEnergyConservationMeasureTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Building Energy Conservation Measure Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesignConstruction', @level2type = N'COLUMN', @level2name = N'RefBuildingEnergyConservationMeasureTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001868', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesignConstruction', @level2type = N'COLUMN', @level2name = N'RefBuildingEnergyConservationMeasureTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20849', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesignConstruction', @level2type = N'COLUMN', @level2name = N'RefBuildingEnergyConservationMeasureTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Designation of the nature of the construction completion date.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesignConstruction', @level2type = N'COLUMN', @level2name = N'RefFacilityConstructionDateTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Facility Construction Date Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesignConstruction', @level2type = N'COLUMN', @level2name = N'RefFacilityConstructionDateTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001781', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesignConstruction', @level2type = N'COLUMN', @level2name = N'RefFacilityConstructionDateTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20762', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesignConstruction', @level2type = N'COLUMN', @level2name = N'RefFacilityConstructionDateTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The primary material used for the construction of a building.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesignConstruction', @level2type = N'COLUMN', @level2name = N'RefFacilityConstructionMaterialTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Facility Construction Material Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesignConstruction', @level2type = N'COLUMN', @level2name = N'RefFacilityConstructionMaterialTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001782', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesignConstruction', @level2type = N'COLUMN', @level2name = N'RefFacilityConstructionMaterialTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20763', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesignConstruction', @level2type = N'COLUMN', @level2name = N'RefFacilityConstructionMaterialTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of development where two or more entities partner to plan, site, design, and/or build a new school or renovate an existing school to better support the joint use of the building and/or land.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesignConstruction', @level2type = N'COLUMN', @level2name = N'RefFacilityJointDevelopmentTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Facility Joint Development Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesignConstruction', @level2type = N'COLUMN', @level2name = N'RefFacilityJointDevelopmentTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001875', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesignConstruction', @level2type = N'COLUMN', @level2name = N'RefFacilityJointDevelopmentTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20856', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesignConstruction', @level2type = N'COLUMN', @level2name = N'RefFacilityJointDevelopmentTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of location of the designed and constructed improvements made to a site.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesignConstruction', @level2type = N'COLUMN', @level2name = N'RefFacilitySiteImprovementLocationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Facility Site Improvement Location Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesignConstruction', @level2type = N'COLUMN', @level2name = N'RefFacilitySiteImprovementLocationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001787', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesignConstruction', @level2type = N'COLUMN', @level2name = N'RefFacilitySiteImprovementLocationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20768', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesignConstruction', @level2type = N'COLUMN', @level2name = N'RefFacilitySiteImprovementLocationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of the district or state requirements or guidelines for the design and construction of school facilities.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesignConstruction', @level2type = N'COLUMN', @level2name = N'RefFacilityStandardTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Facility Standard Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesignConstruction', @level2type = N'COLUMN', @level2name = N'RefFacilityStandardTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001884', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesignConstruction', @level2type = N'COLUMN', @level2name = N'RefFacilityStandardTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20865', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesignConstruction', @level2type = N'COLUMN', @level2name = N'RefFacilityStandardTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesignConstruction', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesignConstruction', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesignConstruction', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesignConstruction', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesignConstruction', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesignConstruction', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesignConstruction', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesignConstruction', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesignConstruction', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityDesignConstruction', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

