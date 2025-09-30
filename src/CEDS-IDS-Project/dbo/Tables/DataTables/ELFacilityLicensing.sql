CREATE TABLE [dbo].[ELFacilityLicensing] (
    [ELFacilityLicensingId]          INT      IDENTITY (1, 1) NOT NULL,
    [OrganizationId]                 INT      NOT NULL,
    [RefELFacilityLicensingStatusId] INT      NULL,
    [StateLicensedFacilityCapacity]  INT      NULL,
    [InitialLicensingDate]           DATE     NULL,
    [ContinuingLicenseDate]          DATE     NULL,
    [RefLicenseExemptId]             INT      NULL,
    [RecordStartDateTime]            DATETIME NULL,
    [RecordEndDateTime]              DATETIME NULL,
    [RecordStatusId]                 INT      NULL,
    [DataCollectionId]               INT      NULL,
    CONSTRAINT [PK_ELFacilityLicensing] PRIMARY KEY CLUSTERED ([ELFacilityLicensingId] ASC),
    CONSTRAINT [FK_ELFacilityLicensing_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_ELFacilityLicensing_Organization] FOREIGN KEY ([OrganizationId]) REFERENCES [dbo].[Organization] ([OrganizationId]),
    CONSTRAINT [FK_ELFacilityLicensing_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_ELFacilityLicensing_RefELFacilityLicensingStatus] FOREIGN KEY ([RefELFacilityLicensingStatusId]) REFERENCES [dbo].[RefELFacilityLicensingStatus] ([RefELFacilityLicensingStatusId]),
    CONSTRAINT [FK_ELFacilityLicensing_RefLicenseExempt] FOREIGN KEY ([RefLicenseExemptId]) REFERENCES [dbo].[RefLicenseExempt] ([RefLicenseExemptId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The status and attributes of the facility license for an early learning organization.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELFacilityLicensing';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELFacilityLicensing';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELFacilityLicensing', @level2type = N'COLUMN', @level2name = N'ELFacilityLicensingId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate key from Organization', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELFacilityLicensing', @level2type = N'COLUMN', @level2name = N'OrganizationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The status of the facility license.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELFacilityLicensing', @level2type = N'COLUMN', @level2name = N'RefELFacilityLicensingStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Facility Licensing Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELFacilityLicensing', @level2type = N'COLUMN', @level2name = N'RefELFacilityLicensingStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000984', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELFacilityLicensing', @level2type = N'COLUMN', @level2name = N'RefELFacilityLicensingStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19985', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELFacilityLicensing', @level2type = N'COLUMN', @level2name = N'RefELFacilityLicensingStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELFacilityLicensing', @level2type = N'COLUMN', @level2name = N'RefELFacilityLicensingStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The maximum number of children for which a state licensed a facility.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELFacilityLicensing', @level2type = N'COLUMN', @level2name = N'StateLicensedFacilityCapacity';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'State Licensed Facility Capacity', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELFacilityLicensing', @level2type = N'COLUMN', @level2name = N'StateLicensedFacilityCapacity';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000865', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELFacilityLicensing', @level2type = N'COLUMN', @level2name = N'StateLicensedFacilityCapacity';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19865', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELFacilityLicensing', @level2type = N'COLUMN', @level2name = N'StateLicensedFacilityCapacity';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELFacilityLicensing', @level2type = N'COLUMN', @level2name = N'StateLicensedFacilityCapacity';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The year, month and day on which a program or center received its initial license.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELFacilityLicensing', @level2type = N'COLUMN', @level2name = N'InitialLicensingDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Initial License Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELFacilityLicensing', @level2type = N'COLUMN', @level2name = N'InitialLicensingDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000348', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELFacilityLicensing', @level2type = N'COLUMN', @level2name = N'InitialLicensingDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19347', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELFacilityLicensing', @level2type = N'COLUMN', @level2name = N'InitialLicensingDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELFacilityLicensing', @level2type = N'COLUMN', @level2name = N'InitialLicensingDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The year, month and day on which a program or center received its continuing license.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELFacilityLicensing', @level2type = N'COLUMN', @level2name = N'ContinuingLicenseDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Continuing License Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELFacilityLicensing', @level2type = N'COLUMN', @level2name = N'ContinuingLicenseDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000349', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELFacilityLicensing', @level2type = N'COLUMN', @level2name = N'ContinuingLicenseDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19348', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELFacilityLicensing', @level2type = N'COLUMN', @level2name = N'ContinuingLicenseDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELFacilityLicensing', @level2type = N'COLUMN', @level2name = N'ContinuingLicenseDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The program or center is legally exempt from licensing.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELFacilityLicensing', @level2type = N'COLUMN', @level2name = N'RefLicenseExemptId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'License Exempt', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELFacilityLicensing', @level2type = N'COLUMN', @level2name = N'RefLicenseExemptId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000350', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELFacilityLicensing', @level2type = N'COLUMN', @level2name = N'RefLicenseExemptId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19349', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELFacilityLicensing', @level2type = N'COLUMN', @level2name = N'RefLicenseExemptId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELFacilityLicensing', @level2type = N'COLUMN', @level2name = N'RefLicenseExemptId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELFacilityLicensing', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELFacilityLicensing', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELFacilityLicensing', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELFacilityLicensing', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELFacilityLicensing', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELFacilityLicensing', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELFacilityLicensing', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELFacilityLicensing', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELFacilityLicensing', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELFacilityLicensing', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

