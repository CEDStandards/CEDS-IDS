CREATE TABLE [dbo].[ELProgramLicensing] (
    [ELProgramLicensingId]        INT      IDENTITY (1, 1) NOT NULL,
    [OrganizationId]              INT      NOT NULL,
    [RefELProgramLicenseStatusId] INT      NULL,
    [InitialLicenseDate]          DATE     NULL,
    [ContinuingLicenseDate]       DATE     NULL,
    [LicenseSuspensionStatus]     BIT      NULL,
    [LicenseRevocationStatus]     BIT      NULL,
    [NumberOfFatalities]          INT      NULL,
    [NumberOfInjuries]            INT      NULL,
    [RefLicenseExemptId]          INT      NULL,
    [RecordStartDateTime]         DATETIME NULL,
    [RecordEndDateTime]           DATETIME NULL,
    [RecordStatusId]              INT      NULL,
    [DataCollectionId]            INT      NULL,
    CONSTRAINT [PK_ELProgramLicensing] PRIMARY KEY CLUSTERED ([ELProgramLicensingId] ASC),
    CONSTRAINT [FK_ELProgramLicensing_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_ELProgramLicensing_Organization] FOREIGN KEY ([OrganizationId]) REFERENCES [dbo].[Organization] ([OrganizationId]),
    CONSTRAINT [FK_ELProgramLicensing_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_ELProgramLicensing_RefELProgramLicenseStatus] FOREIGN KEY ([RefELProgramLicenseStatusId]) REFERENCES [dbo].[RefELProgramLicenseStatus] ([RefELProgramLicenseStatusId]),
    CONSTRAINT [FK_ELProgramLicensing_RefLicenseExempt] FOREIGN KEY ([RefLicenseExemptId]) REFERENCES [dbo].[RefLicenseExempt] ([RefLicenseExemptId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The status and attributes of the licensing for an early learning program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELProgramLicensing';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELProgramLicensing';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELProgramLicensing', @level2type = N'COLUMN', @level2name = N'ELProgramLicensingId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate key from Organization', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELProgramLicensing', @level2type = N'COLUMN', @level2name = N'OrganizationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The current licensing status for an early learning program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELProgramLicensing', @level2type = N'COLUMN', @level2name = N'RefELProgramLicenseStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Early Learning Program Licensing Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELProgramLicensing', @level2type = N'COLUMN', @level2name = N'RefELProgramLicenseStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000828', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELProgramLicensing', @level2type = N'COLUMN', @level2name = N'RefELProgramLicenseStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19828', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELProgramLicensing', @level2type = N'COLUMN', @level2name = N'RefELProgramLicenseStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELProgramLicensing', @level2type = N'COLUMN', @level2name = N'RefELProgramLicenseStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The year, month and day on which a program or center received its initial license.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELProgramLicensing', @level2type = N'COLUMN', @level2name = N'InitialLicenseDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Initial License Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELProgramLicensing', @level2type = N'COLUMN', @level2name = N'InitialLicenseDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000348', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELProgramLicensing', @level2type = N'COLUMN', @level2name = N'InitialLicenseDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19347', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELProgramLicensing', @level2type = N'COLUMN', @level2name = N'InitialLicenseDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELProgramLicensing', @level2type = N'COLUMN', @level2name = N'InitialLicenseDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The year, month and day on which a program or center received its continuing license.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELProgramLicensing', @level2type = N'COLUMN', @level2name = N'ContinuingLicenseDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Continuing License Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELProgramLicensing', @level2type = N'COLUMN', @level2name = N'ContinuingLicenseDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000349', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELProgramLicensing', @level2type = N'COLUMN', @level2name = N'ContinuingLicenseDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19348', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELProgramLicensing', @level2type = N'COLUMN', @level2name = N'ContinuingLicenseDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELProgramLicensing', @level2type = N'COLUMN', @level2name = N'ContinuingLicenseDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether a program''s license was suspended due to violations as determined by the state.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELProgramLicensing', @level2type = N'COLUMN', @level2name = N'LicenseSuspensionStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Early Learning Program License Suspension Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELProgramLicensing', @level2type = N'COLUMN', @level2name = N'LicenseSuspensionStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000837', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELProgramLicensing', @level2type = N'COLUMN', @level2name = N'LicenseSuspensionStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19837', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELProgramLicensing', @level2type = N'COLUMN', @level2name = N'LicenseSuspensionStatus';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELProgramLicensing', @level2type = N'COLUMN', @level2name = N'LicenseSuspensionStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether a program''s license was revoked due to violations as determined by the state.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELProgramLicensing', @level2type = N'COLUMN', @level2name = N'LicenseRevocationStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Early Learning Program License Revocation Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELProgramLicensing', @level2type = N'COLUMN', @level2name = N'LicenseRevocationStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000838', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELProgramLicensing', @level2type = N'COLUMN', @level2name = N'LicenseRevocationStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19838', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELProgramLicensing', @level2type = N'COLUMN', @level2name = N'LicenseRevocationStatus';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELProgramLicensing', @level2type = N'COLUMN', @level2name = N'LicenseRevocationStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Number of child fatalities at the program in the past year, as defined by the State', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELProgramLicensing', @level2type = N'COLUMN', @level2name = N'NumberOfFatalities';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Number of Early Learning Fatalities', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELProgramLicensing', @level2type = N'COLUMN', @level2name = N'NumberOfFatalities';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000835', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELProgramLicensing', @level2type = N'COLUMN', @level2name = N'NumberOfFatalities';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19835', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELProgramLicensing', @level2type = N'COLUMN', @level2name = N'NumberOfFatalities';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELProgramLicensing', @level2type = N'COLUMN', @level2name = N'NumberOfFatalities';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Number of child injuries at the program in the past year, as defined by the State.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELProgramLicensing', @level2type = N'COLUMN', @level2name = N'NumberOfInjuries';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Number of Early Learning Injuries', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELProgramLicensing', @level2type = N'COLUMN', @level2name = N'NumberOfInjuries';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000836', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELProgramLicensing', @level2type = N'COLUMN', @level2name = N'NumberOfInjuries';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19836', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELProgramLicensing', @level2type = N'COLUMN', @level2name = N'NumberOfInjuries';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELProgramLicensing', @level2type = N'COLUMN', @level2name = N'NumberOfInjuries';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The program or center is legally exempt from licensing.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELProgramLicensing', @level2type = N'COLUMN', @level2name = N'RefLicenseExemptId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'License Exempt', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELProgramLicensing', @level2type = N'COLUMN', @level2name = N'RefLicenseExemptId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000350', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELProgramLicensing', @level2type = N'COLUMN', @level2name = N'RefLicenseExemptId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19349', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELProgramLicensing', @level2type = N'COLUMN', @level2name = N'RefLicenseExemptId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELProgramLicensing', @level2type = N'COLUMN', @level2name = N'RefLicenseExemptId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELProgramLicensing', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELProgramLicensing', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELProgramLicensing', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELProgramLicensing', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELProgramLicensing', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELProgramLicensing', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELProgramLicensing', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELProgramLicensing', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELProgramLicensing', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELProgramLicensing', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

