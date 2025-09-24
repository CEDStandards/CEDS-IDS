CREATE TABLE [dbo].[BuildingSystemComponentService] (
    [BuildingSystemComponentServiceId]        INT      IDENTITY (1, 1) NOT NULL,
    [BuildingSystemComponentId]               INT      NOT NULL,
    [ComponentOrFixtureScheduledServicedDate] DATE     NULL,
    [ComponentOrFixtureServicedDate]          DATE     NULL,
    [RecordStartDateTime]                     DATETIME NULL,
    [RecordEndDateTime]                       DATETIME NULL,
    [RecordStatusId]                          INT      NULL,
    [DataCollectionId]                        INT      NULL,
    CONSTRAINT [PK_BuildingSystemComponentService] PRIMARY KEY CLUSTERED ([BuildingSystemComponentServiceId] ASC),
    CONSTRAINT [FK_BuildingSystemComponentService_BuildingSystemComponent] FOREIGN KEY ([BuildingSystemComponentId]) REFERENCES [dbo].[BuildingSystemComponent] ([BuildingSystemComponentId]),
    CONSTRAINT [FK_BuildingSystemComponentService_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_BuildingSystemComponentService_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information that tracks the service record of a building system component.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemComponentService';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemComponentService';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The month, day, and year a major component, system, equipment, or fixture is scheduled to be serviced for preventive or routine maintenance.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemComponentService', @level2type = N'COLUMN', @level2name = N'ComponentOrFixtureScheduledServicedDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Component or Fixture Scheduled Serviced Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemComponentService', @level2type = N'COLUMN', @level2name = N'ComponentOrFixtureScheduledServicedDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001900', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemComponentService', @level2type = N'COLUMN', @level2name = N'ComponentOrFixtureScheduledServicedDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20881', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemComponentService', @level2type = N'COLUMN', @level2name = N'ComponentOrFixtureScheduledServicedDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The month, day, and year a system, component, equipment, or fixture was serviced for repair or routine maintenance.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemComponentService', @level2type = N'COLUMN', @level2name = N'ComponentOrFixtureServicedDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Component or Fixture Serviced Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemComponentService', @level2type = N'COLUMN', @level2name = N'ComponentOrFixtureServicedDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemComponentService', @level2type = N'COLUMN', @level2name = N'ComponentOrFixtureServicedDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20880', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemComponentService', @level2type = N'COLUMN', @level2name = N'ComponentOrFixtureServicedDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemComponentService', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemComponentService', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemComponentService', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemComponentService', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemComponentService', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemComponentService', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemComponentService', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemComponentService', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemComponentService', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSystemComponentService', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

