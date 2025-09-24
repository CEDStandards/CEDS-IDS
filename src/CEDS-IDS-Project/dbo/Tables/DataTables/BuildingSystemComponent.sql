CREATE TABLE [dbo].[BuildingSystemComponent] (
    [BuildingSystemComponentId]                 INT            IDENTITY (1, 1) NOT NULL,
    [FacilityId]                                INT            NOT NULL,
    [Identifier]                                NVARCHAR (30)  NULL,
    [Description]                               NVARCHAR (300) NULL,
    [InstallationDate]                          NCHAR (4)      NULL,
    [LifecycleCost]                             DECIMAL (9, 2) NULL,
    [ComponentOrFixtureUsefulLife]              INT            NULL,
    [BuildingInstitutionalEquipmentDescription] NVARCHAR (80)  NULL,
    [RefFacilityFurnishingsTypeId]              INT            NULL,
    [RefFacilitySystemOrComponentConditionId]   INT            NULL,
    [RecordStartDateTime]                       DATETIME       NULL,
    [RecordEndDateTime]                         DATETIME       NULL,
    [RecordStatusId]                            INT            NULL,
    [DataCollectionId]                          INT            NULL,
    CONSTRAINT [PK_BuildingSystemComponent] PRIMARY KEY CLUSTERED ([BuildingSystemComponentId] ASC),
    CONSTRAINT [FK_BuildingSystemComponent_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_BuildingSystemComponent_Facility] FOREIGN KEY ([FacilityId]) REFERENCES [dbo].[Facility] ([FacilityId]),
    CONSTRAINT [FK_BuildingSystemComponent_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_BuildingSystemComponent_RefFacilityFurnishingsType] FOREIGN KEY ([RefFacilityFurnishingsTypeId]) REFERENCES [dbo].[RefFacilityFurnishingsType] ([RefFacilityFurnishingsTypeId]),
    CONSTRAINT [FK_BuildingSystemComponent_RefFacilitySystemOrComponentCondition] FOREIGN KEY ([RefFacilitySystemOrComponentConditionId]) REFERENCES [dbo].[RefFacilitySystemOrComponentCondition] ([RefFacilitySystemOrComponentConditionId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information about a component of a system within a facility including the installation date, lifecycle cost, description, and useful life.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemComponent';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemComponent';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A unique number or alphanumeric code assigned to a component by a school, school system, state, or other agency or entity.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemComponent', @level2type = N'COLUMN', @level2name = N'Identifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Facility Component Identification Code', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemComponent', @level2type = N'COLUMN', @level2name = N'Identifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001840', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemComponent', @level2type = N'COLUMN', @level2name = N'Identifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20821', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemComponent', @level2type = N'COLUMN', @level2name = N'Identifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The year in which the system, component, equipment, or fixture was originally installed.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemComponent', @level2type = N'COLUMN', @level2name = N'InstallationDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Installation Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemComponent', @level2type = N'COLUMN', @level2name = N'InstallationDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001848', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemComponent', @level2type = N'COLUMN', @level2name = N'InstallationDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20829', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemComponent', @level2type = N'COLUMN', @level2name = N'InstallationDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The total cost of acquiring, owning, operating, and disposing of a building, facility, or piece of equipment over its useful life.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemComponent', @level2type = N'COLUMN', @level2name = N'LifecycleCost';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Life-cycle Cost', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemComponent', @level2type = N'COLUMN', @level2name = N'LifecycleCost';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001849', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemComponent', @level2type = N'COLUMN', @level2name = N'LifecycleCost';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20830', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemComponent', @level2type = N'COLUMN', @level2name = N'LifecycleCost';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The anticipated time (in years) from the time of installation or service that a properly maintained system, component, equipment, or fixture is expected to operate effectively and efficiently.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemComponent', @level2type = N'COLUMN', @level2name = N'ComponentOrFixtureUsefulLife';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Component or Fixture Useful Life', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemComponent', @level2type = N'COLUMN', @level2name = N'ComponentOrFixtureUsefulLife';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001901', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemComponent', @level2type = N'COLUMN', @level2name = N'ComponentOrFixtureUsefulLife';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20882', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemComponent', @level2type = N'COLUMN', @level2name = N'ComponentOrFixtureUsefulLife';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Equipment that is installed for use in support of instructional program such as kilns for art, planetarium equipment for astronomy, fitness equipment for physical education.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemComponent', @level2type = N'COLUMN', @level2name = N'BuildingInstitutionalEquipmentDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Building Institutional Equipment Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemComponent', @level2type = N'COLUMN', @level2name = N'BuildingInstitutionalEquipmentDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001801', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemComponent', @level2type = N'COLUMN', @level2name = N'BuildingInstitutionalEquipmentDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20782', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemComponent', @level2type = N'COLUMN', @level2name = N'BuildingInstitutionalEquipmentDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Moveable assets that are provided so the building or interior assets can be utilized by occupants for their intended purposes.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemComponent', @level2type = N'COLUMN', @level2name = N'RefFacilityFurnishingsTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Facility Furnishings Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemComponent', @level2type = N'COLUMN', @level2name = N'RefFacilityFurnishingsTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001820', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemComponent', @level2type = N'COLUMN', @level2name = N'RefFacilityFurnishingsTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20801', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemComponent', @level2type = N'COLUMN', @level2name = N'RefFacilityFurnishingsTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The rating of the system or component functions under the demands of its regular operation.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemComponent', @level2type = N'COLUMN', @level2name = N'RefFacilitySystemOrComponentConditionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Facility System or Component Condition', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemComponent', @level2type = N'COLUMN', @level2name = N'RefFacilitySystemOrComponentConditionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001793', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemComponent', @level2type = N'COLUMN', @level2name = N'RefFacilitySystemOrComponentConditionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20774', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemComponent', @level2type = N'COLUMN', @level2name = N'RefFacilitySystemOrComponentConditionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemComponent', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemComponent', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemComponent', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemComponent', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemComponent', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemComponent', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemComponent', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemComponent', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemComponent', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemComponent', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

