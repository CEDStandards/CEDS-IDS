CREATE TABLE [dbo].[WorkforceEmploymentQuarterlyData] (
    [WorkforceEmploymentQuarterlyDataId] INT         IDENTITY (1, 1) NOT NULL,
    [OrganizationPersonRoleId]           INT         NOT NULL,
    [EmployedInMultipleJobsCount]        DECIMAL (2) NULL,
    [MilitaryEnlistmentAfterExit]        BIT         NULL,
    [RefEmployedWhileEnrolledId]         INT         NULL,
    [RefEmployedAfterExitId]             INT         NULL,
    [RecordStartDateTime]                DATETIME    NULL,
    [RecordEndDateTime]                  DATETIME    NULL,
    [RecordStatusId]                     INT         NULL,
    [DataCollectionId]                   INT         NULL,
    CONSTRAINT [PK_WorkforceEmploymentQuarterlyData] PRIMARY KEY CLUSTERED ([WorkforceEmploymentQuarterlyDataId] ASC),
    CONSTRAINT [FK_WorkforceEmploymentQuarterlyData_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_WorkforceEmploymentQuarterlyData_OrganizationPersonRole] FOREIGN KEY ([OrganizationPersonRoleId]) REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]),
    CONSTRAINT [FK_WorkforceEmploymentQuarterlyData_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Person-level employment and earnings information from quarterly employment and earnings-related data from sources such as State UI Wage Records, the Wage Record Interchange System, or the Federal Employment Data Exchange System (FEDES).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkforceEmploymentQuarterlyData';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkforceEmploymentQuarterlyData';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkforceEmploymentQuarterlyData', @level2type = N'COLUMN', @level2name = N'OrganizationPersonRoleId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The number of jobs held by a person during the reference period.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkforceEmploymentQuarterlyData', @level2type = N'COLUMN', @level2name = N'EmployedInMultipleJobsCount';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Person Employed in Multiple Jobs Count', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkforceEmploymentQuarterlyData', @level2type = N'COLUMN', @level2name = N'EmployedInMultipleJobsCount';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000991', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkforceEmploymentQuarterlyData', @level2type = N'COLUMN', @level2name = N'EmployedInMultipleJobsCount';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19993', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkforceEmploymentQuarterlyData', @level2type = N'COLUMN', @level2name = N'EmployedInMultipleJobsCount';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkforceEmploymentQuarterlyData', @level2type = N'COLUMN', @level2name = N'EmployedInMultipleJobsCount';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An individual who is a member of the uniformed armed forces of the United States as reported through FEDES after exiting secondary, postsecondary, or adult education or workforce programs.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkforceEmploymentQuarterlyData', @level2type = N'COLUMN', @level2name = N'MilitaryEnlistmentAfterExit';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Military Enlistment After Exit', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkforceEmploymentQuarterlyData', @level2type = N'COLUMN', @level2name = N'MilitaryEnlistmentAfterExit';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001412', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkforceEmploymentQuarterlyData', @level2type = N'COLUMN', @level2name = N'MilitaryEnlistmentAfterExit';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20381', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkforceEmploymentQuarterlyData', @level2type = N'COLUMN', @level2name = N'MilitaryEnlistmentAfterExit';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkforceEmploymentQuarterlyData', @level2type = N'COLUMN', @level2name = N'MilitaryEnlistmentAfterExit';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An individual who is a paid employee or works in his or her own business, profession, or farm, as reported through the State Unemployment Insurance Wage Report, FEDES, or WRIS, and at the same time is enrolled in secondary, postsecondary, or adult education or workforce programs.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkforceEmploymentQuarterlyData', @level2type = N'COLUMN', @level2name = N'RefEmployedWhileEnrolledId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Employed While Enrolled', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkforceEmploymentQuarterlyData', @level2type = N'COLUMN', @level2name = N'RefEmployedWhileEnrolledId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000987', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkforceEmploymentQuarterlyData', @level2type = N'COLUMN', @level2name = N'RefEmployedWhileEnrolledId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19989', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkforceEmploymentQuarterlyData', @level2type = N'COLUMN', @level2name = N'RefEmployedWhileEnrolledId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkforceEmploymentQuarterlyData', @level2type = N'COLUMN', @level2name = N'RefEmployedWhileEnrolledId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An individual who is a paid employee or works in his or her own business, profession, or farm, as reported through the State Unemployment Insurance Wage Report, FEDES, or WRIS, after exiting secondary, postsecondary, or adult education or workforce programs.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkforceEmploymentQuarterlyData', @level2type = N'COLUMN', @level2name = N'RefEmployedAfterExitId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Employed After Exit', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkforceEmploymentQuarterlyData', @level2type = N'COLUMN', @level2name = N'RefEmployedAfterExitId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000988', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkforceEmploymentQuarterlyData', @level2type = N'COLUMN', @level2name = N'RefEmployedAfterExitId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19990', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkforceEmploymentQuarterlyData', @level2type = N'COLUMN', @level2name = N'RefEmployedAfterExitId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkforceEmploymentQuarterlyData', @level2type = N'COLUMN', @level2name = N'RefEmployedAfterExitId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkforceEmploymentQuarterlyData', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkforceEmploymentQuarterlyData', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkforceEmploymentQuarterlyData', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkforceEmploymentQuarterlyData', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkforceEmploymentQuarterlyData', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkforceEmploymentQuarterlyData', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkforceEmploymentQuarterlyData', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkforceEmploymentQuarterlyData', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkforceEmploymentQuarterlyData', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

