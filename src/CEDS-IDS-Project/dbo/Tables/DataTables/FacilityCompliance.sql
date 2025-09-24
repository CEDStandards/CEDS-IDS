CREATE TABLE [dbo].[FacilityCompliance] (
    [FacilityComplianceId]                          INT            IDENTITY (1, 1) NOT NULL,
    [FacilityMandateId]                             INT            NULL,
    [BuildingSystemComponentId]                     INT            NULL,
    [FacilityComplianceName]                        NVARCHAR (80)  NULL,
    [FacilityComplianceDeterminationDate]           DATE           NULL,
    [ComponentOrFixtureCheckDate]                   DATE           NULL,
    [FacilityComponentDeficiencyDescription]        NVARCHAR (80)  NULL,
    [FacilityEstimatedCostToEliminateDeferredMaint] DECIMAL (9, 2) NULL,
    [FacilityInspectionScoreResultDescription]      NVARCHAR (35)  NULL,
    [FacilityInspectionViolationDescription]        NVARCHAR (80)  NULL,
    [RefFacilityComplianceStatusId]                 INT            NULL,
    [RefFacilityMaintStandardTypeId]                INT            NULL,
    [RecordStartDateTime]                           DATETIME       NULL,
    [RecordEndDateTime]                             DATETIME       NULL,
    [RecordStatusId]                                INT            NULL,
    [DataCollectionId]                              INT            NULL,
    CONSTRAINT [PK_FacilityCompliance] PRIMARY KEY CLUSTERED ([FacilityComplianceId] ASC),
    CONSTRAINT [FK_FacilityCompliance_BuildingSystemComponent] FOREIGN KEY ([BuildingSystemComponentId]) REFERENCES [dbo].[BuildingSystemComponent] ([BuildingSystemComponentId]),
    CONSTRAINT [FK_FacilityCompliance_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_FacilityCompliance_FacilityMandate] FOREIGN KEY ([FacilityMandateId]) REFERENCES [dbo].[FacilityMandate] ([FacilityMandateId]),
    CONSTRAINT [FK_FacilityCompliance_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_FacilityCompliance_RefFacilityComplianceStatus] FOREIGN KEY ([RefFacilityComplianceStatusId]) REFERENCES [dbo].[RefFacilityComplianceStatus] ([RefFacilityComplianceStatusId]),
    CONSTRAINT [FK_FacilityCompliance_RefFacilityMaintStandardType] FOREIGN KEY ([RefFacilityMaintStandardTypeId]) REFERENCES [dbo].[RefFacilityMaintStandardType] ([RefFacilityMaintStandardTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Designation that assesses whether a facility or building meets safety & teaching standards set by the school district, state, & federal agencies.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityCompliance';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityCompliance';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The name of the inspection or process that indicates conformity to the requirements or standards specified in federal, state, or local standards or codes.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityCompliance', @level2type = N'COLUMN', @level2name = N'FacilityComplianceName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Facility Compliance Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityCompliance', @level2type = N'COLUMN', @level2name = N'FacilityComplianceName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001838', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityCompliance', @level2type = N'COLUMN', @level2name = N'FacilityComplianceName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20819', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityCompliance', @level2type = N'COLUMN', @level2name = N'FacilityComplianceName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The month, day, and year that the school, building, site, system, component, equipment, or fixture compliance status was determined.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityCompliance', @level2type = N'COLUMN', @level2name = N'FacilityComplianceDeterminationDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Facility Compliance Determination Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityCompliance', @level2type = N'COLUMN', @level2name = N'FacilityComplianceDeterminationDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001837', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityCompliance', @level2type = N'COLUMN', @level2name = N'FacilityComplianceDeterminationDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20818', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityCompliance', @level2type = N'COLUMN', @level2name = N'FacilityComplianceDeterminationDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The month, day, and year that the condition of a system, component, equipment, or fixture was  checked.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityCompliance', @level2type = N'COLUMN', @level2name = N'ComponentOrFixtureCheckDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Component or Fixture Check Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityCompliance', @level2type = N'COLUMN', @level2name = N'ComponentOrFixtureCheckDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityCompliance', @level2type = N'COLUMN', @level2name = N'ComponentOrFixtureCheckDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20879', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityCompliance', @level2type = N'COLUMN', @level2name = N'ComponentOrFixtureCheckDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A description of the component, system, or finish that needs replacement, repair, or maintenance to perform at an optimal level.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityCompliance', @level2type = N'COLUMN', @level2name = N'FacilityComponentDeficiencyDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Facility Component Deficiency Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityCompliance', @level2type = N'COLUMN', @level2name = N'FacilityComponentDeficiencyDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001839', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityCompliance', @level2type = N'COLUMN', @level2name = N'FacilityComponentDeficiencyDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20820', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityCompliance', @level2type = N'COLUMN', @level2name = N'FacilityComponentDeficiencyDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The estimated cost to bring systems, components, finishes, fixtures, or equipment to a state of good repair.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityCompliance', @level2type = N'COLUMN', @level2name = N'FacilityEstimatedCostToEliminateDeferredMaint';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Facility Estimated Cost to Eliminate Deferred Maintenance', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityCompliance', @level2type = N'COLUMN', @level2name = N'FacilityEstimatedCostToEliminateDeferredMaint';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001841', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityCompliance', @level2type = N'COLUMN', @level2name = N'FacilityEstimatedCostToEliminateDeferredMaint';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20822', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityCompliance', @level2type = N'COLUMN', @level2name = N'FacilityEstimatedCostToEliminateDeferredMaint';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The description of a meaningful raw score of statistical expression of the performance on an inspection.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityCompliance', @level2type = N'COLUMN', @level2name = N'FacilityInspectionScoreResultDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Facility Inspection Score Result Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityCompliance', @level2type = N'COLUMN', @level2name = N'FacilityInspectionScoreResultDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001846', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityCompliance', @level2type = N'COLUMN', @level2name = N'FacilityInspectionScoreResultDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20827', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityCompliance', @level2type = N'COLUMN', @level2name = N'FacilityInspectionScoreResultDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A description of the standard violation(s) found in the inspection.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityCompliance', @level2type = N'COLUMN', @level2name = N'FacilityInspectionViolationDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Facility Inspection Violation Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityCompliance', @level2type = N'COLUMN', @level2name = N'FacilityInspectionViolationDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001847', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityCompliance', @level2type = N'COLUMN', @level2name = N'FacilityInspectionViolationDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20828', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityCompliance', @level2type = N'COLUMN', @level2name = N'FacilityInspectionViolationDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether the school, building, site, system, component, equipment, vehicle, or fixture conforms to the requirements or standards specified in federal, state, or local standards or codes or other officially required guidelines or regulations.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityCompliance', @level2type = N'COLUMN', @level2name = N'RefFacilityComplianceStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Facility Compliance Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityCompliance', @level2type = N'COLUMN', @level2name = N'RefFacilityComplianceStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001792', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityCompliance', @level2type = N'COLUMN', @level2name = N'RefFacilityComplianceStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20773', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityCompliance', @level2type = N'COLUMN', @level2name = N'RefFacilityComplianceStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The standard for maintenance of a component, system, or building.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityCompliance', @level2type = N'COLUMN', @level2name = N'RefFacilityMaintStandardTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Facility Maintenance Standard Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityCompliance', @level2type = N'COLUMN', @level2name = N'RefFacilityMaintStandardTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001876', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityCompliance', @level2type = N'COLUMN', @level2name = N'RefFacilityMaintStandardTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20857', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityCompliance', @level2type = N'COLUMN', @level2name = N'RefFacilityMaintStandardTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityCompliance', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityCompliance', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityCompliance', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityCompliance', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityCompliance', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityCompliance', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityCompliance', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityCompliance', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityCompliance', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityCompliance', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

