CREATE TABLE [dbo].[ELStaffEmployment] (
    [ELStaffEmploymentId]                           INT            IDENTITY (1, 1) NOT NULL,
    [StaffEmploymentId]                             INT            NOT NULL,
    [HoursWorkedPerWeek]                            DECIMAL (5, 2) NULL,
    [HourlyWage]                                    DECIMAL (5, 2) NULL,
    [UnionMembershipStatus]                         BIT            NULL,
    [StaffApprovalIndicator]                        BIT            NULL,
    [RefEmploymentStatusId]                         INT            NULL,
    [RefWageCollectionMethodId]                     INT            NULL,
    [RefWageVerificationId]                         INT            NULL,
    [RefELEducationStaffClassificationId]           INT            NULL,
    [RefEmploymentSeparationReasonId]             INT            NULL,
    [RefELServiceProfessionalStaffClassificationId] INT            NULL,
    [RecordStartDateTime]                           DATETIME       NULL,
    [RecordEndDateTime]                             DATETIME       NULL,
    [RecordStatusId]                                INT            NULL,
    [DataCollectionId]                              INT            NULL,
    [AnnualBaseContractualSalary]                   DECIMAL (9, 2) NULL,
    [ContractDaysOfServicePerYear]                  DECIMAL (5, 2) NULL,
    [RefEmploymentContractTypeId]                   INT            NULL,
    [RefFullTimeStatusId]                           INT            NULL,
    [RefInstructionalStaffContractLengthId]         INT            NULL,
    [RefIpedsOccupationalCategoryId]                INT            NULL,
    [MepPersonnelIndicator]                         BIT            NULL,
    [TitleITargetedAssistanceStaffFunded]           BIT            NULL,
    CONSTRAINT [PK_ELStaffEmployment] PRIMARY KEY CLUSTERED ([ELStaffEmploymentId] ASC),
    CONSTRAINT [FK_ELStaffEmployment_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_ELStaffEmployment_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_ELStaffEmployment_RefELEducationStaffClassification] FOREIGN KEY ([RefELEducationStaffClassificationId]) REFERENCES [dbo].[RefELEducationStaffClassification] ([RefELEducationStaffClassificationId]),
    CONSTRAINT [FK_ELStaffEmployment_RefEmploymentSeparationReason] FOREIGN KEY ([RefEmploymentSeparationReasonId]) REFERENCES [dbo].[RefEmploymentSeparationReason] ([RefEmploymentSeparationReasonId]),
    CONSTRAINT [FK_ELStaffEmployment_RefELServiceProfessionalStaffClassification] FOREIGN KEY ([RefELServiceProfessionalStaffClassificationId]) REFERENCES [dbo].[RefELServiceProfessionalStaffClassification] ([RefELServiceProfessionalStaffClassificationId]),
    CONSTRAINT [FK_ELStaffEmployment_RefEmploymentContractType] FOREIGN KEY ([RefEmploymentContractTypeId]) REFERENCES [dbo].[RefEmploymentContractType] ([RefEmploymentContractTypeId]),
    CONSTRAINT [FK_ELStaffEmployment_RefEmploymentStatus] FOREIGN KEY ([RefEmploymentStatusId]) REFERENCES [dbo].[RefEmploymentStatus] ([RefEmploymentStatusId]),
    CONSTRAINT [FK_ELStaffEmployment_RefFullTimeStatus] FOREIGN KEY ([RefFullTimeStatusId]) REFERENCES [dbo].[RefFullTimeStatus] ([RefFullTimeStatusId]),
    CONSTRAINT [FK_ELStaffEmployment_RefInstructionalStaffContractLength] FOREIGN KEY ([RefInstructionalStaffContractLengthId]) REFERENCES [dbo].[RefInstructionalStaffContractLength] ([RefInstructionalStaffContractLengthId]),
    CONSTRAINT [FK_ELStaffEmployment_RefIpedsOccupationalCategory] FOREIGN KEY ([RefIpedsOccupationalCategoryId]) REFERENCES [dbo].[RefIpedsOccupationalCategory] ([RefIpedsOccupationalCategoryId]),
    CONSTRAINT [FK_ELStaffEmployment_RefWageCollectionMethod] FOREIGN KEY ([RefWageCollectionMethodId]) REFERENCES [dbo].[RefWageCollectionMethod] ([RefWageCollectionMethodId]),
    CONSTRAINT [FK_ELStaffEmployment_RefWageVerification] FOREIGN KEY ([RefWageVerificationId]) REFERENCES [dbo].[RefWageVerification] ([RefWageVerificationId]),
    CONSTRAINT [FK_ELStaffEmployment_StaffEmployment] FOREIGN KEY ([StaffEmploymentId]) REFERENCES [dbo].[StaffEmployment] ([StaffEmploymentId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Attributes for early learning staff employment.  Extends from Staff.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Inherited surrogate key from StaffEmployment.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'StaffEmploymentId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'StaffEmploymentId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The number of hours worked per week in employment.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'HoursWorkedPerWeek';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Hours Worked Per Week', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'HoursWorkedPerWeek';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000796', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'HoursWorkedPerWeek';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19795', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'HoursWorkedPerWeek';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'HoursWorkedPerWeek';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Hourly wage associated with the employment position being reported.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'HourlyWage';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Hourly Wage', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'HourlyWage';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000797', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'HourlyWage';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19796', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'HourlyWage';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'HourlyWage';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether the person is a member of a union.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'UnionMembershipStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Union Membership Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'UnionMembershipStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000799', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'UnionMembershipStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19798', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'UnionMembershipStatus';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'UnionMembershipStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Individual is approved to Work with Children', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'StaffApprovalIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Staff Approval Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'StaffApprovalIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001581', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'StaffApprovalIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20560', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'StaffApprovalIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'StaffApprovalIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The condition under which a person has agreed to serve as an employee.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefEmploymentStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Employment Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefEmploymentStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000347', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefEmploymentStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19346', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefEmploymentStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefEmploymentStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Method used for the collection of wage data for an employment record.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefWageCollectionMethodId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Wage Collection Code', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefWageCollectionMethodId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000798', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefWageCollectionMethodId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19797', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefWageCollectionMethodId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefWageCollectionMethodId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether the wage information has been verified.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefWageVerificationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Wage Verification Code', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefWageVerificationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000819', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefWageVerificationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19818', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefWageVerificationId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefWageVerificationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The title/role of employment, official status, or rank of education staff', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefELEducationStaffClassificationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Early Learning Education Staff Classification', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefELEducationStaffClassificationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001602', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefELEducationStaffClassificationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20581', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefELEducationStaffClassificationId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefELEducationStaffClassificationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The primary reason for the termination of the employment relationship.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefEmploymentSeparationReasonId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Employment Separation Reason', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefEmploymentSeparationReasonId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000620', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefEmploymentSeparationReasonId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/element/000620', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefEmploymentSeparationReasonId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefEmploymentSeparationReasonId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The title/role of employment, official status, or rank of early learning service professionals', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefELServiceProfessionalStaffClassificationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Early Learning Service Professional Staff Classification', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefELServiceProfessionalStaffClassificationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001636', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefELServiceProfessionalStaffClassificationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20617', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefELServiceProfessionalStaffClassificationId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefELServiceProfessionalStaffClassificationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The total annual base contractual salary of a person.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'AnnualBaseContractualSalary';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Annual Base Contractual Salary', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'AnnualBaseContractualSalary';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000744', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'AnnualBaseContractualSalary';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=21722', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'AnnualBaseContractualSalary';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'AnnualBaseContractualSalary';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The number of days per year that a person is expected to work as outlined specifically in his or her employment agreement.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'ContractDaysOfServicePerYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Contract Days of Service Per Year', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'ContractDaysOfServicePerYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000047', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'ContractDaysOfServicePerYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=21047', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'ContractDaysOfServicePerYear';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'ContractDaysOfServicePerYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of employment contract used by an institution.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefEmploymentContractTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Contract Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefEmploymentContractTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000737', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefEmploymentContractTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=21714', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefEmploymentContractTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefEmploymentContractTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether an individual is employed for a standard number of hours (as determined by civil or organizational policies) in a week, month, or other period of time.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefFullTimeStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Full-time Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefFullTimeStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000736', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefFullTimeStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=21713', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefFullTimeStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefFullTimeStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The contracted teaching period for faculty.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefInstructionalStaffContractLengthId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Instructional Staff Contract Length', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefInstructionalStaffContractLengthId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000735', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefInstructionalStaffContractLengthId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=21712', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefInstructionalStaffContractLengthId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefInstructionalStaffContractLengthId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The Integrated Postsecondary Education Data System (IPEDS) occupational categories used to report employees.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefIpedsOccupationalCategoryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'IPEDS Occupational Category', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefIpedsOccupationalCategoryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000731', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefIpedsOccupationalCategoryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=21708', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefIpedsOccupationalCategoryId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefIpedsOccupationalCategoryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication that a staff member''s salary is paid by the Title I, Part C Migrant Education Program (MEP) of ESEA as amended.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'MepPersonnelIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Migrant Education Program Personnel Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'MepPersonnelIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000543', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'MepPersonnelIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=21534', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'MepPersonnelIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'MepPersonnelIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication that a staff member is targeted assistance (TAS) program staff funded by Title I, Part A, Section 1115 of ESEA as amended.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'TitleITargetedAssistanceStaffFunded';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Title I Targeted Assistance Staff Funded', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'TitleITargetedAssistanceStaffFunded';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000552', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'TitleITargetedAssistanceStaffFunded';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=21543', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'TitleITargetedAssistanceStaffFunded';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffEmployment', @level2type = N'COLUMN', @level2name = N'TitleITargetedAssistanceStaffFunded';

