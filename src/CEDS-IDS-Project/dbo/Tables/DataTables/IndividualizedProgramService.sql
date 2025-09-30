CREATE TABLE [dbo].[IndividualizedProgramService] (
    [IndividualizedProgramServiceId]               INT            IDENTITY (1, 1) NOT NULL,
    [PersonId]                                     INT            NOT NULL,
    [RefIndividualizedProgramPlannedServiceTypeId] INT            NULL,
    [RefMethodOfServiceDeliveryId]                 INT            NULL,
    [RefServiceFrequencyId]                        INT            NULL,
    [PlannedServiceDuration]                       DECIMAL (6, 2) NULL,
    [PlannedServiceStartDate]                      DATE           NULL,
    [RecordStartDateTime]                          DATETIME       NULL,
    [RecordEndDateTime]                            DATETIME       NULL,
    [RecordStatusId]                               INT            NULL,
    [DataCollectionId]                             INT            NULL,
    CONSTRAINT [PK_IndividualizedProgramService] PRIMARY KEY CLUSTERED ([IndividualizedProgramServiceId] ASC),
    CONSTRAINT [FK_IndividualizedProgramService_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_IndividualizedProgramService_Person] FOREIGN KEY ([PersonId]) REFERENCES [dbo].[Person] ([PersonId]),
    CONSTRAINT [FK_IndividualizedProgramService_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_IndividualizedProgramService_RefIndividualizedProgramPlannedServiceType] FOREIGN KEY ([RefIndividualizedProgramPlannedServiceTypeId]) REFERENCES [dbo].[RefIndividualizedProgramPlannedServiceType] ([RefIndividualizedProgramPlannedServiceTypeId]),
    CONSTRAINT [FK_IndividualizedProgramService_RefMethodOfServiceDelivery] FOREIGN KEY ([RefMethodOfServiceDeliveryId]) REFERENCES [dbo].[RefMethodOfServiceDelivery] ([RefMethodOfServiceDeliveryId]),
    CONSTRAINT [FK_IndividualizedProgramService_RefServiceFrequency] FOREIGN KEY ([RefServiceFrequencyId]) REFERENCES [dbo].[RefServiceFrequency] ([RefServiceFrequencyId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information that defines a service that may be delivered to a student through an individualized program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramService';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramService';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramService', @level2type = N'COLUMN', @level2name = N'IndividualizedProgramServiceId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate key from Person', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramService', @level2type = N'COLUMN', @level2name = N'PersonId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The types of service that adapts the curriculum, materials, or instruction for students identified as needing special education because of a delay or disability.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramService', @level2type = N'COLUMN', @level2name = N'RefIndividualizedProgramPlannedServiceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Individualized Program Planned Service Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramService', @level2type = N'COLUMN', @level2name = N'RefIndividualizedProgramPlannedServiceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001383', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramService', @level2type = N'COLUMN', @level2name = N'RefIndividualizedProgramPlannedServiceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20352', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramService', @level2type = N'COLUMN', @level2name = N'RefIndividualizedProgramPlannedServiceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramService', @level2type = N'COLUMN', @level2name = N'RefIndividualizedProgramPlannedServiceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The method by which the services will be provided.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramService', @level2type = N'COLUMN', @level2name = N'RefMethodOfServiceDeliveryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Method of Service Delivery', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramService', @level2type = N'COLUMN', @level2name = N'RefMethodOfServiceDeliveryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001510', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramService', @level2type = N'COLUMN', @level2name = N'RefMethodOfServiceDeliveryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20482', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramService', @level2type = N'COLUMN', @level2name = N'RefMethodOfServiceDeliveryId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramService', @level2type = N'COLUMN', @level2name = N'RefMethodOfServiceDeliveryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The frequency that a service is planned to be provided.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramService', @level2type = N'COLUMN', @level2name = N'RefServiceFrequencyId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Individualized Program Planned Service Frequency', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramService', @level2type = N'COLUMN', @level2name = N'RefServiceFrequencyId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001519', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramService', @level2type = N'COLUMN', @level2name = N'RefServiceFrequencyId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20492', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramService', @level2type = N'COLUMN', @level2name = N'RefServiceFrequencyId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramService', @level2type = N'COLUMN', @level2name = N'RefServiceFrequencyId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The length, in hours, that delivery of the service is planned.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramService', @level2type = N'COLUMN', @level2name = N'PlannedServiceDuration';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Individualized Program Planned Service Duration', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramService', @level2type = N'COLUMN', @level2name = N'PlannedServiceDuration';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001520', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramService', @level2type = N'COLUMN', @level2name = N'PlannedServiceDuration';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20493', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramService', @level2type = N'COLUMN', @level2name = N'PlannedServiceDuration';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramService', @level2type = N'COLUMN', @level2name = N'PlannedServiceDuration';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The date the service is planned to begin.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramService', @level2type = N'COLUMN', @level2name = N'PlannedServiceStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Individualized Program Planned Service Start Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramService', @level2type = N'COLUMN', @level2name = N'PlannedServiceStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001381', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramService', @level2type = N'COLUMN', @level2name = N'PlannedServiceStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20350', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramService', @level2type = N'COLUMN', @level2name = N'PlannedServiceStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramService', @level2type = N'COLUMN', @level2name = N'PlannedServiceStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramService', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramService', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramService', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramService', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramService', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramService', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramService', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramService', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramService', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramService', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

