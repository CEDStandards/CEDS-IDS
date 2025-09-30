CREATE TABLE [dbo].[K12StudentEmployment] (
    [K12StudentEmploymentId]     INT       IDENTITY (1, 1) NOT NULL,
    [OrganizationPersonRoleId]   INT       NOT NULL,
    [EmploymentNaicsCode]        NCHAR (6) NULL,
    [RefEmployedWhileEnrolledId] INT       NULL,
    [RefEmployedAfterExitId]     INT       NULL,
    [RecordStartDateTime]        DATETIME  NULL,
    [RecordEndDateTime]          DATETIME  NULL,
    [RecordStatusId]             INT       NULL,
    [DataCollectionId]           INT       NULL,
    CONSTRAINT [PK_K12StudentEmployment] PRIMARY KEY CLUSTERED ([K12StudentEmploymentId] ASC),
    CONSTRAINT [FK_K12StudentEmployment_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_K12StudentEmployment_OrganizationPersonRole] FOREIGN KEY ([OrganizationPersonRoleId]) REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]),
    CONSTRAINT [FK_K12StudentEmployment_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_K12StudentEmployment_RefEmployedAfterExit] FOREIGN KEY ([RefEmployedAfterExitId]) REFERENCES [dbo].[RefEmployedAfterExit] ([RefEmployedAfterExitId]),
    CONSTRAINT [FK_K12StudentEmployment_RefEmployedWhileEnrolled] FOREIGN KEY ([RefEmployedWhileEnrolledId]) REFERENCES [dbo].[RefEmployedWhileEnrolled] ([RefEmployedWhileEnrolledId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Employment information for a K12 Student.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEmployment';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEmployment';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key - Foreign key: OrganizationPersonRole', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEmployment', @level2type = N'COLUMN', @level2name = N'OrganizationPersonRoleId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The North American Industry Classification System (NAICS) code associated with an individual''s employment.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEmployment', @level2type = N'COLUMN', @level2name = N'EmploymentNaicsCode';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Employment NAICS Code', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEmployment', @level2type = N'COLUMN', @level2name = N'EmploymentNaicsCode';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001064', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEmployment', @level2type = N'COLUMN', @level2name = N'EmploymentNaicsCode';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20070', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEmployment', @level2type = N'COLUMN', @level2name = N'EmploymentNaicsCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEmployment', @level2type = N'COLUMN', @level2name = N'EmploymentNaicsCode';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An individual who is a paid employee or works in his or her own business, profession, or farm, as reported through the State Unemployment Insurance Wage Report, FEDES, or WRIS, and at the same time is enrolled in secondary, postsecondary, or adult education or workforce programs.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEmployment', @level2type = N'COLUMN', @level2name = N'RefEmployedWhileEnrolledId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Employed While Enrolled', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEmployment', @level2type = N'COLUMN', @level2name = N'RefEmployedWhileEnrolledId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000987', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEmployment', @level2type = N'COLUMN', @level2name = N'RefEmployedWhileEnrolledId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19989', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEmployment', @level2type = N'COLUMN', @level2name = N'RefEmployedWhileEnrolledId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEmployment', @level2type = N'COLUMN', @level2name = N'RefEmployedWhileEnrolledId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An individual who is a paid employee or works in his or her own business, profession, or farm, as reported through the State Unemployment Insurance Wage Report, FEDES, or WRIS, after exiting secondary, postsecondary, or adult education or workforce programs.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEmployment', @level2type = N'COLUMN', @level2name = N'RefEmployedAfterExitId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Employed After Exit', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEmployment', @level2type = N'COLUMN', @level2name = N'RefEmployedAfterExitId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000988', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEmployment', @level2type = N'COLUMN', @level2name = N'RefEmployedAfterExitId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19990', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEmployment', @level2type = N'COLUMN', @level2name = N'RefEmployedAfterExitId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEmployment', @level2type = N'COLUMN', @level2name = N'RefEmployedAfterExitId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEmployment', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEmployment', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEmployment', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEmployment', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEmployment', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEmployment', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEmployment', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEmployment', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEmployment', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

