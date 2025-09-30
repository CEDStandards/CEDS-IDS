CREATE TABLE [dbo].[QuarterlyEmploymentRecord] (
    [QuarterlyEmploymentRecordId]     INT            IDENTITY (1, 1) NOT NULL,
    [PersonId]                        INT            NOT NULL,
    [Earnings]                        DECIMAL (9, 2) NULL,
    [EmploymentNAICSCode]             NVARCHAR (50)  NULL,
    [ReferencePeriodStartDate]        DATE           NULL,
    [ReferencePeriodEndDate]          DATE           NULL,
    [RefERAdministrativeDataSourceId] INT            NULL,
    [RefEmploymentLocationId]         INT            NULL,
    [RefEmployedPriorToEnrollmentId]  INT            NULL,
    [RecordStartDateTime]             DATETIME       NULL,
    [RecordEndDateTime]               DATETIME       NULL,
    [RecordStatusId]                  INT            NULL,
    [DataCollectionId]                INT            NULL,
    CONSTRAINT [PK_WorkforceEmploymentRecord] PRIMARY KEY CLUSTERED ([QuarterlyEmploymentRecordId] ASC),
    CONSTRAINT [FK_QuarterlyEmploymentRecord_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_QuarterlyEmploymentRecord_Person] FOREIGN KEY ([PersonId]) REFERENCES [dbo].[Person] ([PersonId]),
    CONSTRAINT [FK_QuarterlyEmploymentRecord_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_QuarterlyEmploymentRecord_RefEmployedPriorToEnrollment] FOREIGN KEY ([RefEmployedPriorToEnrollmentId]) REFERENCES [dbo].[RefEmployedPriorToEnrollment] ([RefEmployedPriorToEnrollmentId]),
    CONSTRAINT [FK_QuarterlyEmploymentRecord_RefEmploymentLocation] FOREIGN KEY ([RefEmploymentLocationId]) REFERENCES [dbo].[RefEmploymentLocation] ([RefEmploymentLocationId]),
    CONSTRAINT [FK_QuarterlyEmploymentRecord_RefERAdministrativeDataSource] FOREIGN KEY ([RefERAdministrativeDataSourceId]) REFERENCES [dbo].[RefERAdministrativeDataSource] ([RefERAdministrativeDataSourceId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Person-level employment and earnings information from quarterly employment and earnings-related data from sources such as State UI Wage Records, the Wage Record Interchange System, or the Federal Employment Data Exchange System (FEDES).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'QuarterlyEmploymentRecord';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'QuarterlyEmploymentRecord';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'QuarterlyEmploymentRecord', @level2type = N'COLUMN', @level2name = N'QuarterlyEmploymentRecordId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - Person', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'QuarterlyEmploymentRecord', @level2type = N'COLUMN', @level2name = N'PersonId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The quarterly amount paid to individuals found employed during the reference period.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'QuarterlyEmploymentRecord', @level2type = N'COLUMN', @level2name = N'Earnings';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Quarterly Earnings', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'QuarterlyEmploymentRecord', @level2type = N'COLUMN', @level2name = N'Earnings';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000989', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'QuarterlyEmploymentRecord', @level2type = N'COLUMN', @level2name = N'Earnings';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19991', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'QuarterlyEmploymentRecord', @level2type = N'COLUMN', @level2name = N'Earnings';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'QuarterlyEmploymentRecord', @level2type = N'COLUMN', @level2name = N'Earnings';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The North American Industry Classification System (NAICS) code associated with an individual''s employment.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'QuarterlyEmploymentRecord', @level2type = N'COLUMN', @level2name = N'EmploymentNAICSCode';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Employment NAICS Code', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'QuarterlyEmploymentRecord', @level2type = N'COLUMN', @level2name = N'EmploymentNAICSCode';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001064', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'QuarterlyEmploymentRecord', @level2type = N'COLUMN', @level2name = N'EmploymentNAICSCode';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20070', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'QuarterlyEmploymentRecord', @level2type = N'COLUMN', @level2name = N'EmploymentNAICSCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'QuarterlyEmploymentRecord', @level2type = N'COLUMN', @level2name = N'EmploymentNAICSCode';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The year, month, and day of the first day of the employment record reference period.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'QuarterlyEmploymentRecord', @level2type = N'COLUMN', @level2name = N'ReferencePeriodStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Employment Record Reference Period Start Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'QuarterlyEmploymentRecord', @level2type = N'COLUMN', @level2name = N'ReferencePeriodStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000992', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'QuarterlyEmploymentRecord', @level2type = N'COLUMN', @level2name = N'ReferencePeriodStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19994', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'QuarterlyEmploymentRecord', @level2type = N'COLUMN', @level2name = N'ReferencePeriodStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'QuarterlyEmploymentRecord', @level2type = N'COLUMN', @level2name = N'ReferencePeriodStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The year, month, and day of the last day of the employment record reference period.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'QuarterlyEmploymentRecord', @level2type = N'COLUMN', @level2name = N'ReferencePeriodEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Employment Record Reference Period End Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'QuarterlyEmploymentRecord', @level2type = N'COLUMN', @level2name = N'ReferencePeriodEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000993', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'QuarterlyEmploymentRecord', @level2type = N'COLUMN', @level2name = N'ReferencePeriodEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19995', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'QuarterlyEmploymentRecord', @level2type = N'COLUMN', @level2name = N'ReferencePeriodEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'QuarterlyEmploymentRecord', @level2type = N'COLUMN', @level2name = N'ReferencePeriodEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Administrative data source of information used to collect employment and earnings-related data.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'QuarterlyEmploymentRecord', @level2type = N'COLUMN', @level2name = N'RefERAdministrativeDataSourceId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Employment Record Administrative Data Source', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'QuarterlyEmploymentRecord', @level2type = N'COLUMN', @level2name = N'RefERAdministrativeDataSourceId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000994', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'QuarterlyEmploymentRecord', @level2type = N'COLUMN', @level2name = N'RefERAdministrativeDataSourceId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19996', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'QuarterlyEmploymentRecord', @level2type = N'COLUMN', @level2name = N'RefERAdministrativeDataSourceId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'QuarterlyEmploymentRecord', @level2type = N'COLUMN', @level2name = N'RefERAdministrativeDataSourceId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The state or other location in which an individual is found employed.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'QuarterlyEmploymentRecord', @level2type = N'COLUMN', @level2name = N'RefEmploymentLocationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Employment Location', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'QuarterlyEmploymentRecord', @level2type = N'COLUMN', @level2name = N'RefEmploymentLocationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000990', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'QuarterlyEmploymentRecord', @level2type = N'COLUMN', @level2name = N'RefEmploymentLocationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19992', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'QuarterlyEmploymentRecord', @level2type = N'COLUMN', @level2name = N'RefEmploymentLocationId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'QuarterlyEmploymentRecord', @level2type = N'COLUMN', @level2name = N'RefEmploymentLocationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An individual who is a paid employee or works in his or her own business, profession, or farm, as reported through the State Unemployment Insurance Wage Report, FEDES, or WRIS, before enrolling in secondary, postsecondary, or adult education or workforce programs.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'QuarterlyEmploymentRecord', @level2type = N'COLUMN', @level2name = N'RefEmployedPriorToEnrollmentId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Employed Prior to Enrollment', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'QuarterlyEmploymentRecord', @level2type = N'COLUMN', @level2name = N'RefEmployedPriorToEnrollmentId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001342', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'QuarterlyEmploymentRecord', @level2type = N'COLUMN', @level2name = N'RefEmployedPriorToEnrollmentId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20309', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'QuarterlyEmploymentRecord', @level2type = N'COLUMN', @level2name = N'RefEmployedPriorToEnrollmentId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'QuarterlyEmploymentRecord', @level2type = N'COLUMN', @level2name = N'RefEmployedPriorToEnrollmentId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'QuarterlyEmploymentRecord', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'QuarterlyEmploymentRecord', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'QuarterlyEmploymentRecord', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'QuarterlyEmploymentRecord', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'QuarterlyEmploymentRecord', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'QuarterlyEmploymentRecord', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'QuarterlyEmploymentRecord', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'QuarterlyEmploymentRecord', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'QuarterlyEmploymentRecord', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'QuarterlyEmploymentRecord', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

