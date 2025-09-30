CREATE TABLE [dbo].[ServiceFrequency] (
    [ServiceFrequencyId]  INT      IDENTITY (1, 1) NOT NULL,
    [ServicePlanId]       INT      NOT NULL,
    [DurationInMinutes]   INT      NULL,
    [FrequencyLength]     INT      NULL,
    [InstancesPerCycle]   INT      NULL,
    [RefFrequencyUnitId]  INT      NULL,
    [RecordStartDateTime] DATETIME NULL,
    [RecordEndDateTime]   DATETIME NULL,
    [RecordStatusId]      INT      NULL,
    [DataCollectionId]    INT      NULL,
    CONSTRAINT [PK_ServiceFrequency] PRIMARY KEY CLUSTERED ([ServiceFrequencyId] ASC),
    CONSTRAINT [FK_ServiceFrequency_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_ServiceFrequency_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_ServiceFrequency_RefFrequencyUnit] FOREIGN KEY ([RefFrequencyUnitId]) REFERENCES [dbo].[RefFrequencyUnit] ([RefFrequencyUnitId]),
    CONSTRAINT [FK_ServiceFrequency_ServicePlan] FOREIGN KEY ([ServicePlanId]) REFERENCES [dbo].[ServicePlan] ([ServicePlanId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information about the schedule and frequency by which services are planned to be deliverd.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ServiceFrequency';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ServiceFrequency';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The number of minutes in an instance.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ServiceFrequency', @level2type = N'COLUMN', @level2name = N'DurationInMinutes';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Duration Length in Minutes', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ServiceFrequency', @level2type = N'COLUMN', @level2name = N'DurationInMinutes';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001716', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ServiceFrequency', @level2type = N'COLUMN', @level2name = N'DurationInMinutes';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20697', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ServiceFrequency', @level2type = N'COLUMN', @level2name = N'DurationInMinutes';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The number of units within a repeating cycle. Used with Frequency and Frequency Units elements to describe the occurrence of repeating events such as student services delivered 3 times a week for 16 weeks.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ServiceFrequency', @level2type = N'COLUMN', @level2name = N'FrequencyLength';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Frequency Length', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ServiceFrequency', @level2type = N'COLUMN', @level2name = N'FrequencyLength';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001715', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ServiceFrequency', @level2type = N'COLUMN', @level2name = N'FrequencyLength';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20696', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ServiceFrequency', @level2type = N'COLUMN', @level2name = N'FrequencyLength';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The number of recurrences within a cycle.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ServiceFrequency', @level2type = N'COLUMN', @level2name = N'InstancesPerCycle';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Frequency Instances Per Cycle', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ServiceFrequency', @level2type = N'COLUMN', @level2name = N'InstancesPerCycle';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001714', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ServiceFrequency', @level2type = N'COLUMN', @level2name = N'InstancesPerCycle';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20695', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ServiceFrequency', @level2type = N'COLUMN', @level2name = N'InstancesPerCycle';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The unit of time by which a cycle is defined.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ServiceFrequency', @level2type = N'COLUMN', @level2name = N'RefFrequencyUnitId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Frequency Unit', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ServiceFrequency', @level2type = N'COLUMN', @level2name = N'RefFrequencyUnitId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001713', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ServiceFrequency', @level2type = N'COLUMN', @level2name = N'RefFrequencyUnitId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20694', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ServiceFrequency', @level2type = N'COLUMN', @level2name = N'RefFrequencyUnitId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ServiceFrequency', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ServiceFrequency', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ServiceFrequency', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ServiceFrequency', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ServiceFrequency', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ServiceFrequency', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ServiceFrequency', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ServiceFrequency', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ServiceFrequency', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ServiceFrequency', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

