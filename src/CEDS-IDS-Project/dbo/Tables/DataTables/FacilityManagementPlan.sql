CREATE TABLE [dbo].[FacilityManagementPlan] (
    [FacilityManagementPlanId]         INT           IDENTITY (1, 1) NOT NULL,
    [FacilityManagementId]             INT           NOT NULL,
    [FacilitiesPlanDescription]        NVARCHAR (80) NULL,
    [RefFacilitiesPlanTypeId]          INT           NULL,
    [RefFacilitiesMgmtEmergencyTypeId] INT           NULL,
    [RecordStartDateTime]              DATETIME      NULL,
    [RecordEndDateTime]                DATETIME      NULL,
    [RecordStatusId]                   INT           NULL,
    [DataCollectionId]                 INT           NULL,
    CONSTRAINT [PK_FacilityManagementPlan] PRIMARY KEY CLUSTERED ([FacilityManagementPlanId] ASC),
    CONSTRAINT [FK_FacilityManagementPlan_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_FacilityManagementPlan_FacilityManagement] FOREIGN KEY ([FacilityManagementId]) REFERENCES [dbo].[FacilityManagement] ([FacilityManagementId]),
    CONSTRAINT [FK_FacilityManagementPlan_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_FacilityManagementPlan_RefFacilitiesMgmtEmergencyType] FOREIGN KEY ([RefFacilitiesMgmtEmergencyTypeId]) REFERENCES [dbo].[RefFacilitiesMgmtEmergencyType] ([RefFacilitiesMgmtEmergencyTypeId]),
    CONSTRAINT [FK_FacilityManagementPlan_RefFacilitiesPlanType] FOREIGN KEY ([RefFacilitiesPlanTypeId]) REFERENCES [dbo].[RefFacilitiesPlanType] ([RefFacilitiesPlanTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information describing a financial management plan and metadata about the applicable types of plans.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityManagementPlan';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityManagementPlan';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A description of the management and accountability plan.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityManagementPlan', @level2type = N'COLUMN', @level2name = N'FacilitiesPlanDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Facilities Plan Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityManagementPlan', @level2type = N'COLUMN', @level2name = N'FacilitiesPlanDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001882', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityManagementPlan', @level2type = N'COLUMN', @level2name = N'FacilitiesPlanDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20863', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityManagementPlan', @level2type = N'COLUMN', @level2name = N'FacilitiesPlanDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of management and accountability plan.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityManagementPlan', @level2type = N'COLUMN', @level2name = N'RefFacilitiesPlanTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Facilities Plan Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityManagementPlan', @level2type = N'COLUMN', @level2name = N'RefFacilitiesPlanTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001883', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityManagementPlan', @level2type = N'COLUMN', @level2name = N'RefFacilitiesPlanTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20864', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityManagementPlan', @level2type = N'COLUMN', @level2name = N'RefFacilitiesPlanTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of abnormal and urgent circumstances that disrupt the normal operation of the building, threaten the health and safety of the occupants, or require an emergency response.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityManagementPlan', @level2type = N'COLUMN', @level2name = N'RefFacilitiesMgmtEmergencyTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Facilities Management Emergency Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityManagementPlan', @level2type = N'COLUMN', @level2name = N'RefFacilitiesMgmtEmergencyTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001871', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityManagementPlan', @level2type = N'COLUMN', @level2name = N'RefFacilitiesMgmtEmergencyTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20852', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityManagementPlan', @level2type = N'COLUMN', @level2name = N'RefFacilitiesMgmtEmergencyTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityManagementPlan', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityManagementPlan', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityManagementPlan', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityManagementPlan', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityManagementPlan', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityManagementPlan', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityManagementPlan', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityManagementPlan', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityManagementPlan', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityManagementPlan', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

