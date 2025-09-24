CREATE TABLE [dbo].[FacilityEnergy] (
    [FacilityEnergyId]                 INT           IDENTITY (1, 1) NOT NULL,
    [FacilityId]                       INT           NOT NULL,
    [BuildingEnergyServiceCompanyName] NVARCHAR (60) NULL,
    [RefBuildingEnergySourceTypeId]    INT           NULL,
    [RefFacilityUtilityProviderTypeId] INT           NULL,
    [RefFacilityUtilityTypeId]         INT           NULL,
    [RecordStartDateTime]              DATETIME      NULL,
    [RecordEndDateTime]                DATETIME      NULL,
    [RecordStatusId]                   INT           NULL,
    [DataCollectionId]                 INT           NULL,
    CONSTRAINT [PK_FacilityEnergy] PRIMARY KEY CLUSTERED ([FacilityEnergyId] ASC),
    CONSTRAINT [FK_FacilityEnergy_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_FacilityEnergy_Facility] FOREIGN KEY ([FacilityId]) REFERENCES [dbo].[Facility] ([FacilityId]),
    CONSTRAINT [FK_FacilityEnergy_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_FacilityEnergy_RefBuildingEnergySourceType] FOREIGN KEY ([RefBuildingEnergySourceTypeId]) REFERENCES [dbo].[RefBuildingEnergySourceType] ([RefBuildingEnergySourceTypeId]),
    CONSTRAINT [FK_FacilityEnergy_RefFacilityUtilityProviderType] FOREIGN KEY ([RefFacilityUtilityProviderTypeId]) REFERENCES [dbo].[RefFacilityUtilityProviderType] ([RefFacilityUtilityProviderTypeId]),
    CONSTRAINT [FK_FacilityEnergy_RefFacilityUtilityType] FOREIGN KEY ([RefFacilityUtilityTypeId]) REFERENCES [dbo].[RefFacilityUtilityType] ([RefFacilityUtilityTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information about energy consumption of a facility.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityEnergy';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityEnergy';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The name of the company that designs, procures, finances, installs, maintains, and guarantees the performance of energy conservation measures in an owner''s facility or facilities.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityEnergy', @level2type = N'COLUMN', @level2name = N'BuildingEnergyServiceCompanyName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Building Energy Service Company Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityEnergy', @level2type = N'COLUMN', @level2name = N'BuildingEnergyServiceCompanyName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001869', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityEnergy', @level2type = N'COLUMN', @level2name = N'BuildingEnergyServiceCompanyName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20850', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityEnergy', @level2type = N'COLUMN', @level2name = N'BuildingEnergyServiceCompanyName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The source of energy that directly powers a school district facility or building system.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityEnergy', @level2type = N'COLUMN', @level2name = N'RefBuildingEnergySourceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Building Energy Source Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityEnergy', @level2type = N'COLUMN', @level2name = N'RefBuildingEnergySourceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001870', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityEnergy', @level2type = N'COLUMN', @level2name = N'RefBuildingEnergySourceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20851', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityEnergy', @level2type = N'COLUMN', @level2name = N'RefBuildingEnergySourceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of how utilities are supplied to a site or a building by a company or provider.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityEnergy', @level2type = N'COLUMN', @level2name = N'RefFacilityUtilityProviderTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Facility Utility Provider Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityEnergy', @level2type = N'COLUMN', @level2name = N'RefFacilityUtilityProviderTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001878', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityEnergy', @level2type = N'COLUMN', @level2name = N'RefFacilityUtilityProviderTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20859', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityEnergy', @level2type = N'COLUMN', @level2name = N'RefFacilityUtilityProviderTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of utility used in the operation of a facility.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityEnergy', @level2type = N'COLUMN', @level2name = N'RefFacilityUtilityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Facility Utility Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityEnergy', @level2type = N'COLUMN', @level2name = N'RefFacilityUtilityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001879', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityEnergy', @level2type = N'COLUMN', @level2name = N'RefFacilityUtilityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20860', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityEnergy', @level2type = N'COLUMN', @level2name = N'RefFacilityUtilityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityEnergy', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityEnergy', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityEnergy', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityEnergy', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityEnergy', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityEnergy', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityEnergy', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityEnergy', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityEnergy', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityEnergy', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

