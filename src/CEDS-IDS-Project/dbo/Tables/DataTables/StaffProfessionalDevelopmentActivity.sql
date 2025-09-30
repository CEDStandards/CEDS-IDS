CREATE TABLE [dbo].[StaffProfessionalDevelopmentActivity] (
    [StaffProfessionalDevelopmentActivityId]       INT             IDENTITY (1, 1) NOT NULL,
    [ProfessionalDevelopmentRequirementId]         INT             NOT NULL,
    [ActivityTitle]                                NVARCHAR (60)   NULL,
    [ActivityIdentifier]                           NVARCHAR (40)   NULL,
    [ActivityStartDate]                            DATE            NULL,
    [ActivityCompletionDate]                       DATE            NULL,
    [ScholarshipStatus]                            BIT             NULL,
    [RefProfessionalDevelopmentFinancialSupportId] INT             NULL,
    [NumberOfCreditsEarned]                        DECIMAL (10, 2) NULL,
    [RefCourseCreditUnitId]                        INT             NULL,
    [ProfessionalDevelopmentActivityId]            INT             NOT NULL,
    [OrganizationPersonRoleId]                     INT             NOT NULL,
    [ProfessionalDevelopmentSessionId]             INT             NOT NULL,
    [RecordStartDateTime]                          DATETIME        NULL,
    [RecordEndDateTime]                            DATETIME        NULL,
    [RecordStatusId]                               INT             NULL,
    [DataCollectionId]                             INT             NULL,
    CONSTRAINT [PK_StaffProfessionalDevelopmentActivity] PRIMARY KEY CLUSTERED ([StaffProfessionalDevelopmentActivityId] ASC),
    CONSTRAINT [FK_PDActivity_PDRequirement] FOREIGN KEY ([ProfessionalDevelopmentRequirementId]) REFERENCES [dbo].[ProfessionalDevelopmentRequirement] ([ProfessionalDevelopmentRequirementId]),
    CONSTRAINT [FK_PDActivity_RefCourseCreditUnit] FOREIGN KEY ([RefCourseCreditUnitId]) REFERENCES [dbo].[RefCourseCreditUnit] ([RefCourseCreditUnitId]),
    CONSTRAINT [FK_PDActivity_RefProfDevFinancialSupport] FOREIGN KEY ([RefProfessionalDevelopmentFinancialSupportId]) REFERENCES [dbo].[RefProfessionalDevelopmentFinancialSupport] ([RefProfessionalDevelopmentFinancialSupportId]),
    CONSTRAINT [FK_StaffPDActivity_OrgPersonRole] FOREIGN KEY ([OrganizationPersonRoleId]) REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]),
    CONSTRAINT [FK_StaffPDActivity_PDActivity] FOREIGN KEY ([ProfessionalDevelopmentActivityId]) REFERENCES [dbo].[ProfessionalDevelopmentActivity] ([ProfessionalDevelopmentActivityId]),
    CONSTRAINT [FK_StaffPDActivity_PDSession] FOREIGN KEY ([ProfessionalDevelopmentSessionId]) REFERENCES [dbo].[ProfessionalDevelopmentSession] ([ProfessionalDevelopmentSessionId]),
    CONSTRAINT [FK_StaffProfessionalDevelopmentActivity_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_StaffProfessionalDevelopmentActivity_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information about a person''s participation in a professional development activity and outcomes from that participation that may be related to a Professional Development Requirement and one or more Professional Development Sessions. ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffProfessionalDevelopmentActivity';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffProfessionalDevelopmentActivity';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'StaffProfessionalDevelopmentActivityId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - ProfessionaDevelopment.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'ProfessionalDevelopmentRequirementId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The title of an activity designed for the purpose of developing someone professionally.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'ActivityTitle';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Professional Development Activity Title', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'ActivityTitle';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000810', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'ActivityTitle';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19809', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'ActivityTitle';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'ActivityTitle';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A unique number or alphanumeric code assigned to the Professional Development Activity as assigned by the organization offering the training.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'ActivityIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Professional Development Activity Identifier', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'ActivityIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000809', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'ActivityIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19808', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'ActivityIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'ActivityIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The year, month and day on which an individual begins a course, an education program or a staff development activity.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'ActivityStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Staff Professional Development Activity Start Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'ActivityStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001061', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'ActivityStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20067', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'ActivityStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'ActivityStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The year, month and day on which an individual completed a course, an education program or a staff development activity.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'ActivityCompletionDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Staff Professional Development Activity Completion Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'ActivityCompletionDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001062', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'ActivityCompletionDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20068', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'ActivityCompletionDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'ActivityCompletionDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether a scholarship was received for the person to participate in the professional development.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'ScholarshipStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Professional Development Scholarship Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'ScholarshipStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000811', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'ScholarshipStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19810', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'ScholarshipStatus';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'ScholarshipStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of financial assistance received in support of non-credit professional development activities.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'RefProfessionalDevelopmentFinancialSupportId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Professional Development Financial Support Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'RefProfessionalDevelopmentFinancialSupportId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000812', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'RefProfessionalDevelopmentFinancialSupportId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19811', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'RefProfessionalDevelopmentFinancialSupportId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'RefProfessionalDevelopmentFinancialSupportId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The number of credits an individual earns by the successful completion of a course.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'NumberOfCreditsEarned';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Number of Credits Earned', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'NumberOfCreditsEarned';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000200', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'NumberOfCreditsEarned';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19200', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'NumberOfCreditsEarned';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'NumberOfCreditsEarned';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of credit (unit, semester, or quarter) associated with the credit hours earned for the course. ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'RefCourseCreditUnitId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Course Credit Units', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'RefCourseCreditUnitId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000057', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'RefCourseCreditUnitId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19057', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'RefCourseCreditUnitId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'RefCourseCreditUnitId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - Professional Development Session', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'ProfessionalDevelopmentSessionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

