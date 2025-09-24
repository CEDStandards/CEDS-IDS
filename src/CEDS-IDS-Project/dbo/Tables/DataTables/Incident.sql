CREATE TABLE [dbo].[Incident] (
    [IncidentId]                          INT            IDENTITY (1, 1) NOT NULL,
    [IncidentIdentifier]                  NVARCHAR (40)  NULL,
    [IncidentDate]                        DATE           NULL,
    [IncidentTime]                        TIME (7)       NULL,
    [RefIncidentTimeDescriptionCodeId]    INT            NULL,
    [IncidentDescription]                 NVARCHAR (MAX) NULL,
    [RefIncidentBehaviorId]               INT            NULL,
    [RefIncidentBehaviorSecondaryId]      INT            NULL,
    [RefIncidentInjuryTypeId]             INT            NULL,
    [RefWeaponTypeId]                     INT            NULL,
    [IncidentCost]                        NVARCHAR (30)  NULL,
    [OrganizationPersonRoleId]            INT            NULL,
    [IncidentReporterId]                  INT            NULL,
    [RefIncidentReporterTypeId]           INT            NULL,
    [RefIncidentLocationId]               INT            NULL,
    [RefFirearmTypeId]                    INT            NULL,
    [RegulationViolatedDescription]       NVARCHAR (100) NULL,
    [RelatedToDisabilityManifestationInd] BIT            NULL,
    [ReportedToLawEnforcementInd]         BIT            NULL,
    [RefIncidentMultipleOffenseTypeId]    INT            NULL,
    [RefIncidentPerpetratorInjuryTypeId]  INT            NULL,
    [RecordStartDateTime]                 DATETIME       NULL,
    [RecordEndDateTime]                   DATETIME       NULL,
    [RecordStatusId]                      INT            NULL,
    [DataCollectionId]                    INT            NULL,
    CONSTRAINT [PK_Incident] PRIMARY KEY CLUSTERED ([IncidentId] ASC),
    CONSTRAINT [FK_Incident_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_Incident_OrganizationPerson] FOREIGN KEY ([OrganizationPersonRoleId]) REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]),
    CONSTRAINT [FK_Incident_Person] FOREIGN KEY ([IncidentReporterId]) REFERENCES [dbo].[Person] ([PersonId]),
    CONSTRAINT [FK_Incident_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_Incident_RefFirearmType] FOREIGN KEY ([RefFirearmTypeId]) REFERENCES [dbo].[RefFirearmType] ([RefFirearmTypeId]),
    CONSTRAINT [FK_Incident_RefIncidentInjuryType] FOREIGN KEY ([RefIncidentInjuryTypeId]) REFERENCES [dbo].[RefIncidentInjuryType] ([RefIncidentInjuryTypeId]),
    CONSTRAINT [FK_Incident_RefIncidentLocation] FOREIGN KEY ([RefIncidentLocationId]) REFERENCES [dbo].[RefIncidentLocation] ([RefIncidentLocationId]),
    CONSTRAINT [FK_Incident_RefIncidentMultipleOffenseType] FOREIGN KEY ([RefIncidentMultipleOffenseTypeId]) REFERENCES [dbo].[RefIncidentMultipleOffenseType] ([RefIncidentMultipleOffenseTypeId]),
    CONSTRAINT [FK_Incident_RefIncidentPerpetratorInjuryType] FOREIGN KEY ([RefIncidentPerpetratorInjuryTypeId]) REFERENCES [dbo].[RefIncidentPerpetratorInjuryType] ([RefIncidentPerpetratorInjuryTypeId]),
    CONSTRAINT [FK_Incident_RefIncidentReporterType] FOREIGN KEY ([RefIncidentReporterTypeId]) REFERENCES [dbo].[RefIncidentReporterType] ([RefIncidentReporterTypeId]),
    CONSTRAINT [FK_Incident_RefIncidentTimeDescriptionCode] FOREIGN KEY ([RefIncidentTimeDescriptionCodeId]) REFERENCES [dbo].[RefIncidentTimeDescriptionCode] ([RefIncidentTimeDescriptionCodeId]),
    CONSTRAINT [FK_Incident_RefRefIncidentBehavior] FOREIGN KEY ([RefIncidentBehaviorId]) REFERENCES [dbo].[RefIncidentBehavior] ([RefIncidentBehaviorId]),
    CONSTRAINT [FK_Incident_RefRefIncidentBehaviorSecondary] FOREIGN KEY ([RefIncidentBehaviorSecondaryId]) REFERENCES [dbo].[RefIncidentBehaviorSecondary] ([RefIncidentBehaviorSecondaryId]),
    CONSTRAINT [FK_Incident_RefWeaponType] FOREIGN KEY ([RefWeaponTypeId]) REFERENCES [dbo].[RefWeaponType] ([RefWeaponTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The details for an incident involving a student or school.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'IncidentId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A locally assigned unique identifier (within the school or school district) to identify each specific incident or occurrence. The same identifier should be used to document the entire incident even if it included multiple offenses and multiple offenders.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'IncidentIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Incident Identifier', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'IncidentIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000501', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'IncidentIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19492', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'IncidentIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'IncidentIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The year, month and day on which the incident occurred.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'IncidentDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Incident Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'IncidentDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000502', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'IncidentDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19493', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'IncidentDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'IncidentDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of the time of day the incident took place.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'IncidentTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Incident Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'IncidentTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000503', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'IncidentTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19494', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'IncidentTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'IncidentTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A code for the description of the time of day that an incident took place.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'RefIncidentTimeDescriptionCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Incident Time Description Code', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'RefIncidentTimeDescriptionCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000515', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'RefIncidentTimeDescriptionCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19506', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'RefIncidentTimeDescriptionCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'RefIncidentTimeDescriptionCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The description for an incident.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'IncidentDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Incident Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'IncidentDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000508', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'IncidentDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19499', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'IncidentDescription';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'IncidentDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Categories of behavior coded for use in describing an incident.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'RefIncidentBehaviorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Incident Behavior', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'RefIncidentBehaviorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000509', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'RefIncidentBehaviorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19500', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'RefIncidentBehaviorId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'RefIncidentBehaviorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Supplemental information about an incident when the primary offense is more serious in nature than alcohol or drug, etc. offenses.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'RefIncidentBehaviorSecondaryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Secondary Incident Behavior', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'RefIncidentBehaviorSecondaryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000627', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'RefIncidentBehaviorSecondaryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19620', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'RefIncidentBehaviorSecondaryId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'RefIncidentBehaviorSecondaryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of the occurrence of physical injury to participants involved in the incident and, if so, the level of injury sustained.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'RefIncidentInjuryTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Incident Injury Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'RefIncidentInjuryTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000510', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'RefIncidentInjuryTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19501', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'RefIncidentInjuryTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'RefIncidentInjuryTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Identifies the type of weapon used during an incident.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'RefWeaponTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Weapon Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'RefWeaponTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001211', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'RefWeaponTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20178', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'RefWeaponTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'RefWeaponTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The value of any quantifiable monetary loss directly resulting from the incident. Examples include the value of repairs necessitated by vandalism of a school facility, the value of personnel resources used for repairs or consumed by the incident, the value of stolen items, and the value of time consumed by an incident (e.g., instructional time involved in evacuating a school during a false fire alarm).  Cost may be reported by specific monetary amount or range.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'IncidentCost';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Incident Cost', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'IncidentCost';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000505', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'IncidentCost';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19496', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'IncidentCost';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'IncidentCost';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - OrganizationPersonRoleId.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'OrganizationPersonRoleId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Identifies the reporter of the incident using  a pre-existing unique student identifier or unique staff identifier, when the reporter is a student or staff member.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'IncidentReporterId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Reporter Identifier', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'IncidentReporterId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000507', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'IncidentReporterId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19498', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'IncidentReporterId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'IncidentReporterId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information on the type of person who reported the incident. When known and/or if useful, use a more specific option code (e.g., "Counselor" rather than "Professional Staff").', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'RefIncidentReporterTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Incident Reporter Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'RefIncidentReporterTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000506', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'RefIncidentReporterTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19497', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'RefIncidentReporterTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'RefIncidentReporterTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Identifies where the incident occurred and whether or not it occurred on campus.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'RefIncidentLocationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Incident Location', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'RefIncidentLocationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000617', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'RefIncidentLocationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19610', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'RefIncidentLocationId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'RefIncidentLocationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of firearm.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'RefFirearmTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Firearm Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'RefFirearmTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000557', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'RefFirearmTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19548', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'RefFirearmTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'RefFirearmTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A description of the rule‚ regulation‚ or standard that was violated when an incident occurred (e.g.‚ the identification of a relevant law‚ conduct standard‚ or acceptable use policy).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'RegulationViolatedDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Incident Regulation Violated Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'RegulationViolatedDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001374', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'RegulationViolatedDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20342', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'RegulationViolatedDescription';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'RegulationViolatedDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication whether a student’s behavior (offense) was a manifestation of‚ or related to‚ a disability condition.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'RelatedToDisabilityManifestationInd';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Incident Related to Disability Manifestation', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'RelatedToDisabilityManifestationInd';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001375', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'RelatedToDisabilityManifestationInd';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20343', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'RelatedToDisabilityManifestationInd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'RelatedToDisabilityManifestationInd';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication that the school resource officer or any other law enforcement official was notified about the incident‚ regardless of whether official action is taken.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'ReportedToLawEnforcementInd';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Incident Reported to Law Enforcement Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'ReportedToLawEnforcementInd';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001376', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'ReportedToLawEnforcementInd';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20345', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'ReportedToLawEnforcementInd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'ReportedToLawEnforcementInd';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether the offense was primary or secondary in nature when a single incident included more than one type of offense.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'RefIncidentMultipleOffenseTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Incident Multiple Offense Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'RefIncidentMultipleOffenseTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001369', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'RefIncidentMultipleOffenseTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20337', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'RefIncidentMultipleOffenseTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'RefIncidentMultipleOffenseTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of the occurrence of physical injury to the perpetrator(s) (participants) involved in the incident and‚ if so‚ the level of injury sustained.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'RefIncidentPerpetratorInjuryTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Incident Perpetrator Injury Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'RefIncidentPerpetratorInjuryTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001371', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'RefIncidentPerpetratorInjuryTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20339', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'RefIncidentPerpetratorInjuryTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'RefIncidentPerpetratorInjuryTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Incident', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

