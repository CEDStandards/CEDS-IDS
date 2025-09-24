CREATE TABLE [dbo].[IndividualizedProgramProgressReportPlan] (
    [IndividualizedProgramProgressReportPlanId] INT      IDENTITY (1, 1) NOT NULL,
    [IndividualizedProgramId]                   INT      NOT NULL,
    [RefIPSPProgressReportScheduleId]           INT      NULL,
    [RefIPSPProgressReportTypeId]               INT      NULL,
    [RecordStartDateTime]                       DATETIME NULL,
    [RecordEndDateTime]                         DATETIME NULL,
    [RecordStatusId]                            INT      NULL,
    [DataCollectionId]                          INT      NULL,
    CONSTRAINT [PK_IndividualizedProgramProgressReportPlan] PRIMARY KEY CLUSTERED ([IndividualizedProgramProgressReportPlanId] ASC),
    CONSTRAINT [FK_IndividualizedProgramProgressReportPlan_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_IndividualizedProgramProgressReportPlan_IndividualizedProgram] FOREIGN KEY ([IndividualizedProgramId]) REFERENCES [dbo].[IndividualizedProgram] ([IndividualizedProgramId]),
    CONSTRAINT [FK_IndividualizedProgramProgressReportPlan_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_IndividualizedProgramProgressReportPlan_RefIPSPProgressReportSchedule] FOREIGN KEY ([RefIPSPProgressReportScheduleId]) REFERENCES [dbo].[RefIPSPProgressReportSchedule] ([RefIPSPProgressReportScheduleId]),
    CONSTRAINT [FK_IndividualizedProgramProgressReportPlan_RefIPSPProgressReportType] FOREIGN KEY ([RefIPSPProgressReportTypeId]) REFERENCES [dbo].[RefIPSPProgressReportType] ([RefIPSPProgressReportTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Defines frequency and type of progress reporting specified in the plan as required in an IEP.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramProgressReportPlan';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramProgressReportPlan';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Frequency by which parents are notified of the student’s progress on annual goals and if the progress is sufficient to achieve the goals by the end of the individualized program service plan year.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramProgressReportPlan', @level2type = N'COLUMN', @level2name = N'RefIPSPProgressReportScheduleId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Individualized Program Service Plan Progress Report Schedule', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramProgressReportPlan', @level2type = N'COLUMN', @level2name = N'RefIPSPProgressReportScheduleId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001681', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramProgressReportPlan', @level2type = N'COLUMN', @level2name = N'RefIPSPProgressReportScheduleId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20662', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramProgressReportPlan', @level2type = N'COLUMN', @level2name = N'RefIPSPProgressReportScheduleId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A method by which parents are notified of the student’s progress on annual goals and if the progress is sufficient to achieve the goals by the end of the individualized program service plan.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramProgressReportPlan', @level2type = N'COLUMN', @level2name = N'RefIPSPProgressReportTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Individualized Program Service Plan Progress Report Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramProgressReportPlan', @level2type = N'COLUMN', @level2name = N'RefIPSPProgressReportTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001701', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramProgressReportPlan', @level2type = N'COLUMN', @level2name = N'RefIPSPProgressReportTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20682', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramProgressReportPlan', @level2type = N'COLUMN', @level2name = N'RefIPSPProgressReportTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramProgressReportPlan', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramProgressReportPlan', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramProgressReportPlan', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramProgressReportPlan', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramProgressReportPlan', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramProgressReportPlan', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramProgressReportPlan', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramProgressReportPlan', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramProgressReportPlan', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramProgressReportPlan', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

