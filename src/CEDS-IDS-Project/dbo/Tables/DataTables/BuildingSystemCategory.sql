CREATE TABLE [dbo].[BuildingSystemCategory] (
    [BuildingSystemCategoryId]                      INT      IDENTITY (1, 1) NOT NULL,
    [BuildingSystemComponentId]                     INT      NOT NULL,
    [RefBuildingAirDistributionSystemTypeId]        INT      NULL,
    [RefBuildingCommMgmtComponentSystemTypeId]      INT      NULL,
    [RefBuildingCoolingGenerationSystemTypeId]      INT      NULL,
    [RefBuildingElectricalSystemTypeId]             INT      NULL,
    [RefBuildingFireProtectionSystemTypeId]         INT      NULL,
    [RefBuildingHeatingGenerationSystemTypeId]      INT      NULL,
    [RefBuildingHVACSystemTypeId]                   INT      NULL,
    [RefBuildingMechanicalConveyingSystemTypeId]    INT      NULL,
    [RefBuildingMechanicalSystemTypeId]             INT      NULL,
    [RefBuildingPlumbingSystemTypeId]               INT      NULL,
    [RefBuildingSecuritySystemTypeId]               INT      NULL,
    [RefBuildingSystemTypeId]                       INT      NULL,
    [RefBuildingTechnologyWiringSystemTypeId]       INT      NULL,
    [RefBuildingVerticalTransportationSystemTypeId] INT      NULL,
    [RecordStartDateTime]                           DATETIME NULL,
    [RecordEndDateTime]                             DATETIME NULL,
    [RecordStatusId]                                INT      NULL,
    [DataCollectionId]                              INT      NULL,
    CONSTRAINT [PK_BuildingSystemCategory] PRIMARY KEY CLUSTERED ([BuildingSystemCategoryId] ASC),
    CONSTRAINT [FK_BuildingSystemCategory_BuildingSystemComponent] FOREIGN KEY ([BuildingSystemComponentId]) REFERENCES [dbo].[BuildingSystemComponent] ([BuildingSystemComponentId]),
    CONSTRAINT [FK_BuildingSystemCategory_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_BuildingSystemCategory_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_BuildingSystemCategory_RefBuildingAirDistributionSystemType] FOREIGN KEY ([RefBuildingAirDistributionSystemTypeId]) REFERENCES [dbo].[RefBuildingAirDistributionSystemType] ([RefBuildingAirDistributionSystemTypeId]),
    CONSTRAINT [FK_BuildingSystemCategory_RefBuildingCommMgmtComponentSystemType] FOREIGN KEY ([RefBuildingCommMgmtComponentSystemTypeId]) REFERENCES [dbo].[RefBuildingCommMgmtComponentSystemType] ([RefBuildingCommMgmtComponentSystemTypeId]),
    CONSTRAINT [FK_BuildingSystemCategory_RefBuildingCoolingGenerationSystemType] FOREIGN KEY ([RefBuildingCoolingGenerationSystemTypeId]) REFERENCES [dbo].[RefBuildingCoolingGenerationSystemType] ([RefBuildingCoolingGenerationSystemTypeId]),
    CONSTRAINT [FK_BuildingSystemCategory_RefBuildingElectricalSystemType] FOREIGN KEY ([RefBuildingElectricalSystemTypeId]) REFERENCES [dbo].[RefBuildingElectricalSystemType] ([RefBuildingElectricalSystemTypeId]),
    CONSTRAINT [FK_BuildingSystemCategory_RefBuildingFireProtectionSystemType] FOREIGN KEY ([RefBuildingFireProtectionSystemTypeId]) REFERENCES [dbo].[RefBuildingFireProtectionSystemType] ([RefBuildingFireProtectionSystemTypeId]),
    CONSTRAINT [FK_BuildingSystemCategory_RefBuildingHeatingGenerationSystemType] FOREIGN KEY ([RefBuildingHeatingGenerationSystemTypeId]) REFERENCES [dbo].[RefBuildingHeatingGenerationSystemType] ([RefBuildingHeatingGenerationSystemTypeId]),
    CONSTRAINT [FK_BuildingSystemCategory_RefBuildingHVACSystemType] FOREIGN KEY ([RefBuildingHVACSystemTypeId]) REFERENCES [dbo].[RefBuildingHVACSystemType] ([RefBuildingHVACSystemTypeId]),
    CONSTRAINT [FK_BuildingSystemCategory_RefBuildingMechanicalConveyingSystemType] FOREIGN KEY ([RefBuildingMechanicalConveyingSystemTypeId]) REFERENCES [dbo].[RefBuildingMechanicalConveyingSystemType] ([RefBuildingMechanicalConveyingSystemTypeId]),
    CONSTRAINT [FK_BuildingSystemCategory_RefBuildingMechanicalSystemType] FOREIGN KEY ([RefBuildingMechanicalSystemTypeId]) REFERENCES [dbo].[RefBuildingMechanicalSystemType] ([RefBuildingMechanicalSystemTypeId]),
    CONSTRAINT [FK_BuildingSystemCategory_RefBuildingPlumbingSystemType] FOREIGN KEY ([RefBuildingPlumbingSystemTypeId]) REFERENCES [dbo].[RefBuildingPlumbingSystemType] ([RefBuildingPlumbingSystemTypeId]),
    CONSTRAINT [FK_BuildingSystemCategory_RefBuildingSecuritySystemType] FOREIGN KEY ([RefBuildingSecuritySystemTypeId]) REFERENCES [dbo].[RefBuildingSecuritySystemType] ([RefBuildingSecuritySystemTypeId]),
    CONSTRAINT [FK_BuildingSystemCategory_RefBuildingSystemType] FOREIGN KEY ([RefBuildingSystemTypeId]) REFERENCES [dbo].[RefBuildingSystemType] ([RefBuildingSystemTypeId]),
    CONSTRAINT [FK_BuildingSystemCategory_RefBuildingTechnologyWiringSystemType] FOREIGN KEY ([RefBuildingTechnologyWiringSystemTypeId]) REFERENCES [dbo].[RefBuildingTechnologyWiringSystemType] ([RefBuildingTechnologyWiringSystemTypeId]),
    CONSTRAINT [FK_BuildingSystemCategory_RefBuildingVerticalTransportationSystemType] FOREIGN KEY ([RefBuildingVerticalTransportationSystemTypeId]) REFERENCES [dbo].[RefBuildingVerticalTransportationSystemType] ([RefBuildingVerticalTransportationSystemTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Type of building within a school such as a playground, gym, or classroom.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemCategory';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemCategory';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The primary means by which air is circulated, freshened, and exhausted.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemCategory', @level2type = N'COLUMN', @level2name = N'RefBuildingAirDistributionSystemTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Building Air Distribution System Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemCategory', @level2type = N'COLUMN', @level2name = N'RefBuildingAirDistributionSystemTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001790', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemCategory', @level2type = N'COLUMN', @level2name = N'RefBuildingAirDistributionSystemTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20771', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemCategory', @level2type = N'COLUMN', @level2name = N'RefBuildingAirDistributionSystemTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of system, interface, and management components for carrying voice, video, and data throughout a building.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemCategory', @level2type = N'COLUMN', @level2name = N'RefBuildingCommMgmtComponentSystemTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Building Communications Management Component System Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemCategory', @level2type = N'COLUMN', @level2name = N'RefBuildingCommMgmtComponentSystemTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001791', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemCategory', @level2type = N'COLUMN', @level2name = N'RefBuildingCommMgmtComponentSystemTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20772', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemCategory', @level2type = N'COLUMN', @level2name = N'RefBuildingCommMgmtComponentSystemTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of mechanical systems and building designs used for cooling.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemCategory', @level2type = N'COLUMN', @level2name = N'RefBuildingCoolingGenerationSystemTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Building Cooling Generation System Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemCategory', @level2type = N'COLUMN', @level2name = N'RefBuildingCoolingGenerationSystemTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001794', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemCategory', @level2type = N'COLUMN', @level2name = N'RefBuildingCoolingGenerationSystemTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20775', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemCategory', @level2type = N'COLUMN', @level2name = N'RefBuildingCoolingGenerationSystemTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The components and system required to distribute electricity throughout the building or site.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemCategory', @level2type = N'COLUMN', @level2name = N'RefBuildingElectricalSystemTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Building Electrical System Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemCategory', @level2type = N'COLUMN', @level2name = N'RefBuildingElectricalSystemTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001795', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemCategory', @level2type = N'COLUMN', @level2name = N'RefBuildingElectricalSystemTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20776', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemCategory', @level2type = N'COLUMN', @level2name = N'RefBuildingElectricalSystemTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of system that protects the facility against fire.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemCategory', @level2type = N'COLUMN', @level2name = N'RefBuildingFireProtectionSystemTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Building Fire Protection System Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemCategory', @level2type = N'COLUMN', @level2name = N'RefBuildingFireProtectionSystemTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001798', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemCategory', @level2type = N'COLUMN', @level2name = N'RefBuildingFireProtectionSystemTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20779', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemCategory', @level2type = N'COLUMN', @level2name = N'RefBuildingFireProtectionSystemTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The method by which the heat is distributed and delivered throughout the room(s) or building.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemCategory', @level2type = N'COLUMN', @level2name = N'RefBuildingHeatingGenerationSystemTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Building Heating Generation System Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemCategory', @level2type = N'COLUMN', @level2name = N'RefBuildingHeatingGenerationSystemTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001799', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemCategory', @level2type = N'COLUMN', @level2name = N'RefBuildingHeatingGenerationSystemTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20780', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemCategory', @level2type = N'COLUMN', @level2name = N'RefBuildingHeatingGenerationSystemTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The building service system that provides for heating, ventilation and air-conditioning.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemCategory', @level2type = N'COLUMN', @level2name = N'RefBuildingHVACSystemTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Building HVAC System Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemCategory', @level2type = N'COLUMN', @level2name = N'RefBuildingHVACSystemTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001800', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemCategory', @level2type = N'COLUMN', @level2name = N'RefBuildingHVACSystemTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20781', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemCategory', @level2type = N'COLUMN', @level2name = N'RefBuildingHVACSystemTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Mechanical means for moving people and equipment within buildings.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemCategory', @level2type = N'COLUMN', @level2name = N'RefBuildingMechanicalConveyingSystemTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Building Mechanical Conveying System Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemCategory', @level2type = N'COLUMN', @level2name = N'RefBuildingMechanicalConveyingSystemTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001802', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemCategory', @level2type = N'COLUMN', @level2name = N'RefBuildingMechanicalConveyingSystemTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20783', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemCategory', @level2type = N'COLUMN', @level2name = N'RefBuildingMechanicalConveyingSystemTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The major manufactured systems required to operate a building.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemCategory', @level2type = N'COLUMN', @level2name = N'RefBuildingMechanicalSystemTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Building Mechanical System Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemCategory', @level2type = N'COLUMN', @level2name = N'RefBuildingMechanicalSystemTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001809', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemCategory', @level2type = N'COLUMN', @level2name = N'RefBuildingMechanicalSystemTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20790', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemCategory', @level2type = N'COLUMN', @level2name = N'RefBuildingMechanicalSystemTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The component of an on-site system for supplying, eliminating, and treating water.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemCategory', @level2type = N'COLUMN', @level2name = N'RefBuildingPlumbingSystemTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Building Plumbing System Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemCategory', @level2type = N'COLUMN', @level2name = N'RefBuildingPlumbingSystemTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001803', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemCategory', @level2type = N'COLUMN', @level2name = N'RefBuildingPlumbingSystemTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20784', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemCategory', @level2type = N'COLUMN', @level2name = N'RefBuildingPlumbingSystemTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of system that protects the facility from intrusion.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemCategory', @level2type = N'COLUMN', @level2name = N'RefBuildingSecuritySystemTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Building Security System Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemCategory', @level2type = N'COLUMN', @level2name = N'RefBuildingSecuritySystemTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001804', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemCategory', @level2type = N'COLUMN', @level2name = N'RefBuildingSecuritySystemTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20785', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemCategory', @level2type = N'COLUMN', @level2name = N'RefBuildingSecuritySystemTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of system that is installed in the building or site.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemCategory', @level2type = N'COLUMN', @level2name = N'RefBuildingSystemTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Building System Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemCategory', @level2type = N'COLUMN', @level2name = N'RefBuildingSystemTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001811', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemCategory', @level2type = N'COLUMN', @level2name = N'RefBuildingSystemTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20792', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemCategory', @level2type = N'COLUMN', @level2name = N'RefBuildingSystemTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The means through which voice, video, audio, and data information are conveyed.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemCategory', @level2type = N'COLUMN', @level2name = N'RefBuildingTechnologyWiringSystemTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Building Technology Wiring System Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemCategory', @level2type = N'COLUMN', @level2name = N'RefBuildingTechnologyWiringSystemTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001807', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemCategory', @level2type = N'COLUMN', @level2name = N'RefBuildingTechnologyWiringSystemTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20788', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemCategory', @level2type = N'COLUMN', @level2name = N'RefBuildingTechnologyWiringSystemTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of system used to convey persons or freight between floors.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemCategory', @level2type = N'COLUMN', @level2name = N'RefBuildingVerticalTransportationSystemTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Building Vertical Transportation System Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemCategory', @level2type = N'COLUMN', @level2name = N'RefBuildingVerticalTransportationSystemTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001812', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemCategory', @level2type = N'COLUMN', @level2name = N'RefBuildingVerticalTransportationSystemTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20793', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemCategory', @level2type = N'COLUMN', @level2name = N'RefBuildingVerticalTransportationSystemTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemCategory', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemCategory', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemCategory', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemCategory', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemCategory', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemCategory', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemCategory', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemCategory', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemCategory', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemCategory', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

