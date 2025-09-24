CREATE TABLE [dbo].[FacilityHazard] (
    [FacilityHazardId]                             INT            IDENTITY (1, 1) NOT NULL,
    [FacilityId]                                   INT            NOT NULL,
    [FacilityHazardousCondExpectedRemediationDate] DATE           NULL,
    [FacilityLocationOfHazardousMaterials]         NVARCHAR (60)  NULL,
    [FacilityNearbyEnvHazardDescription]           NVARCHAR (MAX) NULL,
    [HazardousMaterialOrConditionDescription]      NVARCHAR (80)  NULL,
    [HazardousMaterialOrConditionTestingDate]      DATE           NULL,
    [RefFacilityHazardousMaterialsOrCondTypeId]    INT            NULL,
    [RefFacilityNaturallyOccurringHazardTypeId]    INT            NULL,
    [RecordStartDateTime]                          DATETIME       NULL,
    [RecordEndDateTime]                            DATETIME       NULL,
    [RecordStatusId]                               INT            NULL,
    [DataCollectionId]                             INT            NULL,
    CONSTRAINT [PK_FacilityHazard] PRIMARY KEY CLUSTERED ([FacilityHazardId] ASC),
    CONSTRAINT [FK_FacilityHazard_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_FacilityHazard_Facility] FOREIGN KEY ([FacilityId]) REFERENCES [dbo].[Facility] ([FacilityId]),
    CONSTRAINT [FK_FacilityHazard_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_FacilityHazard_RefFacilityHazardousMaterialsOrCondType] FOREIGN KEY ([RefFacilityHazardousMaterialsOrCondTypeId]) REFERENCES [dbo].[RefFacilityHazardousMaterialsOrCondType] ([RefFacilityHazardousMaterialsOrCondTypeId]),
    CONSTRAINT [FK_FacilityHazard_RefFacilityNaturallyOccurringHazardType] FOREIGN KEY ([RefFacilityNaturallyOccurringHazardTypeId]) REFERENCES [dbo].[RefFacilityNaturallyOccurringHazardType] ([RefFacilityNaturallyOccurringHazardTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information about hazardous conditions or materials at or near a facility.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityHazard';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityHazard';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The month, day, and year by which a hazardous condition of a site or building is expected to be remediated.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityHazard', @level2type = N'COLUMN', @level2name = N'FacilityHazardousCondExpectedRemediationDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Facility Hazardous Condition Expected Remediation Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityHazard', @level2type = N'COLUMN', @level2name = N'FacilityHazardousCondExpectedRemediationDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001842', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityHazard', @level2type = N'COLUMN', @level2name = N'FacilityHazardousCondExpectedRemediationDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20823', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityHazard', @level2type = N'COLUMN', @level2name = N'FacilityHazardousCondExpectedRemediationDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The location at which the identified hazardous material is found.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityHazard', @level2type = N'COLUMN', @level2name = N'FacilityLocationOfHazardousMaterials';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Facility Location of Hazardous Materials', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityHazard', @level2type = N'COLUMN', @level2name = N'FacilityLocationOfHazardousMaterials';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001808', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityHazard', @level2type = N'COLUMN', @level2name = N'FacilityLocationOfHazardousMaterials';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20789', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityHazard', @level2type = N'COLUMN', @level2name = N'FacilityLocationOfHazardousMaterials';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Description of any type of environmental hazards within range of the facility that has the potential to seriously affect the health, safety and operation of school facilities and their occupants.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityHazard', @level2type = N'COLUMN', @level2name = N'FacilityNearbyEnvHazardDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Facility Nearby Environmental Hazard Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityHazard', @level2type = N'COLUMN', @level2name = N'FacilityNearbyEnvHazardDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001810', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityHazard', @level2type = N'COLUMN', @level2name = N'FacilityNearbyEnvHazardDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20791', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityHazard', @level2type = N'COLUMN', @level2name = N'FacilityNearbyEnvHazardDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A description of the seriousness a threat or hazardous material poses.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityHazard', @level2type = N'COLUMN', @level2name = N'HazardousMaterialOrConditionDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Hazardous Material or Condition Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityHazard', @level2type = N'COLUMN', @level2name = N'HazardousMaterialOrConditionDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001844', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityHazard', @level2type = N'COLUMN', @level2name = N'HazardousMaterialOrConditionDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20825', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityHazard', @level2type = N'COLUMN', @level2name = N'HazardousMaterialOrConditionDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The month, day, and year that the site or building is tested for a specific hazardous material.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityHazard', @level2type = N'COLUMN', @level2name = N'HazardousMaterialOrConditionTestingDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Hazardous Material or Condition Testing Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityHazard', @level2type = N'COLUMN', @level2name = N'HazardousMaterialOrConditionTestingDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001845', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityHazard', @level2type = N'COLUMN', @level2name = N'HazardousMaterialOrConditionTestingDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20826', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityHazard', @level2type = N'COLUMN', @level2name = N'HazardousMaterialOrConditionTestingDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of hazardous materials or conditions tested for at a site or building.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityHazard', @level2type = N'COLUMN', @level2name = N'RefFacilityHazardousMaterialsOrCondTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Facility Hazardous Materials or Condition Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityHazard', @level2type = N'COLUMN', @level2name = N'RefFacilityHazardousMaterialsOrCondTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001874', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityHazard', @level2type = N'COLUMN', @level2name = N'RefFacilityHazardousMaterialsOrCondTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20855', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityHazard', @level2type = N'COLUMN', @level2name = N'RefFacilityHazardousMaterialsOrCondTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Type of natural hazard that can affect the health, safety and operation of school facilities and their occupants.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityHazard', @level2type = N'COLUMN', @level2name = N'RefFacilityNaturallyOccurringHazardTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Facility Naturally Occurring Hazard Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityHazard', @level2type = N'COLUMN', @level2name = N'RefFacilityNaturallyOccurringHazardTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001877', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityHazard', @level2type = N'COLUMN', @level2name = N'RefFacilityNaturallyOccurringHazardTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20858', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityHazard', @level2type = N'COLUMN', @level2name = N'RefFacilityNaturallyOccurringHazardTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityHazard', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityHazard', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityHazard', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityHazard', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityHazard', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityHazard', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityHazard', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityHazard', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityHazard', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityHazard', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

