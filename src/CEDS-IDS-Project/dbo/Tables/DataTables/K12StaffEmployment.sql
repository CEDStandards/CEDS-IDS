CREATE TABLE [dbo].[K12StaffEmployment] (
    [K12StaffEmploymentId]                     INT            IDENTITY (1, 1) NOT NULL,
    [StaffEmploymentId]                        INT            NOT NULL,
    [ContractDaysOfServicePerYear]             DECIMAL (5, 2) NULL,
    [MepPersonnelIndicator]                    BIT            NULL,
    [TitleITargetedAssistanceStaffFunded]      BIT            NULL,
    [SalaryForTeachingAssignmentOnlyIndicator] BIT            NULL,
    [RefK12StaffClassificationId]              INT            NULL,
    [RefEmploymentStatusId]                    INT            NULL,
    [RecordStartDateTime]                      DATETIME       NULL,
    [RecordEndDateTime]                        DATETIME       NULL,
    [RecordStatusId]                           INT            NULL,
    [DataCollectionId]                         INT            NULL,
    CONSTRAINT [PK_K12StaffEmployment] PRIMARY KEY CLUSTERED ([K12StaffEmploymentId] ASC),
    CONSTRAINT [FK_K12StaffEmployment_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_K12StaffEmployment_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_K12StaffEmployment_RefEduStaffClassification] FOREIGN KEY ([RefK12StaffClassificationId]) REFERENCES [dbo].[RefK12StaffClassification] ([RefK12StaffClassificationId]),
    CONSTRAINT [FK_K12StaffEmployment_RefEmploymentStatus] FOREIGN KEY ([RefEmploymentStatusId]) REFERENCES [dbo].[RefEmploymentStatus] ([RefEmploymentStatusId]),
    CONSTRAINT [FK_K12StaffEmployment_StaffEmployment] FOREIGN KEY ([StaffEmploymentId]) REFERENCES [dbo].[StaffEmployment] ([StaffEmploymentId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Employment attributes for a K12 Staff Member.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffEmployment';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffEmployment';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - StaffEmployment', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffEmployment', @level2type = N'COLUMN', @level2name = N'StaffEmploymentId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The number of days per year that a person is expected to work as outlined specifically in his or her employment agreement.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffEmployment', @level2type = N'COLUMN', @level2name = N'ContractDaysOfServicePerYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Contract Days of Service per Year', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffEmployment', @level2type = N'COLUMN', @level2name = N'ContractDaysOfServicePerYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000047', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffEmployment', @level2type = N'COLUMN', @level2name = N'ContractDaysOfServicePerYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19047', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffEmployment', @level2type = N'COLUMN', @level2name = N'ContractDaysOfServicePerYear';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffEmployment', @level2type = N'COLUMN', @level2name = N'ContractDaysOfServicePerYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication that a staff member''s salary is paid by the Title I, Part C Migrant Education Program (MEP) of ESEA as amended.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffEmployment', @level2type = N'COLUMN', @level2name = N'MepPersonnelIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Migrant Education Program Personnel Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffEmployment', @level2type = N'COLUMN', @level2name = N'MepPersonnelIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000543', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffEmployment', @level2type = N'COLUMN', @level2name = N'MepPersonnelIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19534', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffEmployment', @level2type = N'COLUMN', @level2name = N'MepPersonnelIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffEmployment', @level2type = N'COLUMN', @level2name = N'MepPersonnelIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication that a staff member is targeted assistance (TAS) program staff funded by Title I, Part A, Section 1115 of ESEA as amended.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffEmployment', @level2type = N'COLUMN', @level2name = N'TitleITargetedAssistanceStaffFunded';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Title I Targeted Assistance Staff Funded', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffEmployment', @level2type = N'COLUMN', @level2name = N'TitleITargetedAssistanceStaffFunded';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000552', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffEmployment', @level2type = N'COLUMN', @level2name = N'TitleITargetedAssistanceStaffFunded';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19543', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffEmployment', @level2type = N'COLUMN', @level2name = N'TitleITargetedAssistanceStaffFunded';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffEmployment', @level2type = N'COLUMN', @level2name = N'TitleITargetedAssistanceStaffFunded';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Indicator to determine whether the teacher''s base salary includes pay for teaching assignments alone.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffEmployment', @level2type = N'COLUMN', @level2name = N'SalaryForTeachingAssignmentOnlyIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Salary For Teaching Assignment Only Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffEmployment', @level2type = N'COLUMN', @level2name = N'SalaryForTeachingAssignmentOnlyIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000234', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffEmployment', @level2type = N'COLUMN', @level2name = N'SalaryForTeachingAssignmentOnlyIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19234', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffEmployment', @level2type = N'COLUMN', @level2name = N'SalaryForTeachingAssignmentOnlyIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffEmployment', @level2type = N'COLUMN', @level2name = N'SalaryForTeachingAssignmentOnlyIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The titles of employment, official status, or rank of education staff.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffEmployment', @level2type = N'COLUMN', @level2name = N'RefK12StaffClassificationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'K12 Staff Classification', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffEmployment', @level2type = N'COLUMN', @level2name = N'RefK12StaffClassificationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000087', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffEmployment', @level2type = N'COLUMN', @level2name = N'RefK12StaffClassificationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19087', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffEmployment', @level2type = N'COLUMN', @level2name = N'RefK12StaffClassificationId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffEmployment', @level2type = N'COLUMN', @level2name = N'RefK12StaffClassificationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The condition under which a person has agreed to serve as an employee.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffEmployment', @level2type = N'COLUMN', @level2name = N'RefEmploymentStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Employment Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffEmployment', @level2type = N'COLUMN', @level2name = N'RefEmploymentStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000347', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffEmployment', @level2type = N'COLUMN', @level2name = N'RefEmploymentStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19346', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffEmployment', @level2type = N'COLUMN', @level2name = N'RefEmploymentStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffEmployment', @level2type = N'COLUMN', @level2name = N'RefEmploymentStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffEmployment', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffEmployment', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffEmployment', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffEmployment', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffEmployment', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffEmployment', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffEmployment', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffEmployment', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

