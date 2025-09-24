CREATE TABLE [dbo].[StaffCompensation] (
    [StaffCompensationId]                          INT            IDENTITY (1, 1) NOT NULL,
    [StaffEmploymentId]                            INT            NOT NULL,
    [StaffCompensationAnnualSupplement]            DECIMAL (9, 2) NULL,
    [StaffCompensationBaseSalary]                  DECIMAL (9, 2) NULL,
    [StaffCompensationHealthBenefits]              DECIMAL (9, 2) NULL,
    [StaffCompensationLongevity]                   DECIMAL (9, 2) NULL,
    [StaffCompensationOtherBenefits]               DECIMAL (9, 2) NULL,
    [StaffCompensationRetirementBenefits]          DECIMAL (9, 2) NULL,
    [StaffCompensationTotalBenefits]               DECIMAL (9, 2) NULL,
    [StaffCompensationTotalSalary]                 DECIMAL (9, 2) NULL,
    [RefStaffCompensationSourceTypeId]             INT            NULL,
    [RecordStartDateTime]                          DATETIME       NULL,
    [RecordEndDateTime]                            DATETIME       NULL,
    [RecordStatusId]                               INT            NULL,
    [DataCollectionId]                             INT            NULL,
    [StaffCompensationAnnualSupplementDescription] NVARCHAR (300) NULL,
    CONSTRAINT [PK_StaffCompensation] PRIMARY KEY CLUSTERED ([StaffCompensationId] ASC),
    CONSTRAINT [FK_StaffCompensation_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_StaffCompensation_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_StaffCompensation_RefStaffCompensationSourceType] FOREIGN KEY ([RefStaffCompensationSourceTypeId]) REFERENCES [dbo].[RefStaffCompensationSourceType] ([RefStaffCompensationSourceTypeId]),
    CONSTRAINT [FK_StaffCompensation_StaffEmployment] FOREIGN KEY ([StaffEmploymentId]) REFERENCES [dbo].[StaffEmployment] ([StaffEmploymentId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information related to the compensation of staff members.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCompensation';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCompensation';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The annual sum of payments given to staff in addition to their regular wages.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCompensation', @level2type = N'COLUMN', @level2name = N'StaffCompensationAnnualSupplement';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Staff Compensation Annual Supplement', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCompensation', @level2type = N'COLUMN', @level2name = N'StaffCompensationAnnualSupplement';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001959', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCompensation', @level2type = N'COLUMN', @level2name = N'StaffCompensationAnnualSupplement';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20962', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCompensation', @level2type = N'COLUMN', @level2name = N'StaffCompensationAnnualSupplement';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCompensation', @level2type = N'COLUMN', @level2name = N'StaffCompensationAnnualSupplement';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The salary or wage a person is paid before deductions (excluding differentials) but including annuities.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCompensation', @level2type = N'COLUMN', @level2name = N'StaffCompensationBaseSalary';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Staff Compensation Base Salary', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCompensation', @level2type = N'COLUMN', @level2name = N'StaffCompensationBaseSalary';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000032', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCompensation', @level2type = N'COLUMN', @level2name = N'StaffCompensationBaseSalary';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19032', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCompensation', @level2type = N'COLUMN', @level2name = N'StaffCompensationBaseSalary';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCompensation', @level2type = N'COLUMN', @level2name = N'StaffCompensationBaseSalary';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Contributions made by the school district, municipal, state, federal and other government agencies for the teacher''s or early learning provider''s health insurance, prorated to the specific school or local provider agency indicated on the record, not including contributions made by the teacher or early learning provider.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCompensation', @level2type = N'COLUMN', @level2name = N'StaffCompensationHealthBenefits';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Staff Compensation Health Benefits', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCompensation', @level2type = N'COLUMN', @level2name = N'StaffCompensationHealthBenefits';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000136', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCompensation', @level2type = N'COLUMN', @level2name = N'StaffCompensationHealthBenefits';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19136', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCompensation', @level2type = N'COLUMN', @level2name = N'StaffCompensationHealthBenefits';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCompensation', @level2type = N'COLUMN', @level2name = N'StaffCompensationHealthBenefits';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Compensation paid to a staff member based on their years of service.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCompensation', @level2type = N'COLUMN', @level2name = N'StaffCompensationLongevity';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Staff Compensation Longevity', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCompensation', @level2type = N'COLUMN', @level2name = N'StaffCompensationLongevity';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001960', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCompensation', @level2type = N'COLUMN', @level2name = N'StaffCompensationLongevity';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20963', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCompensation', @level2type = N'COLUMN', @level2name = N'StaffCompensationLongevity';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCompensation', @level2type = N'COLUMN', @level2name = N'StaffCompensationLongevity';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'All other benefits paid by the school district, municipal, state, federal, and other government agencies for the teacher or early learning provider, prorated to the specific school or local provider agency indicated on the record, not including retirement and health insurance benefits or contributions made by the teacher or early learning provider.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCompensation', @level2type = N'COLUMN', @level2name = N'StaffCompensationOtherBenefits';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Staff Compensation Other Benefits', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCompensation', @level2type = N'COLUMN', @level2name = N'StaffCompensationOtherBenefits';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000205', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCompensation', @level2type = N'COLUMN', @level2name = N'StaffCompensationOtherBenefits';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19205', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCompensation', @level2type = N'COLUMN', @level2name = N'StaffCompensationOtherBenefits';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCompensation', @level2type = N'COLUMN', @level2name = N'StaffCompensationOtherBenefits';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Contributions made by the school district, municipal, state, federal and other government agencies for the teacher''s or early learning provider’s health insurance, prorated to the specific school or local provider agency indicated on the record, not including contributions made by the teacher or early learning provider.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCompensation', @level2type = N'COLUMN', @level2name = N'StaffCompensationRetirementBenefits';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Staff Compensation Retirement Benefits', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCompensation', @level2type = N'COLUMN', @level2name = N'StaffCompensationRetirementBenefits';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000233', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCompensation', @level2type = N'COLUMN', @level2name = N'StaffCompensationRetirementBenefits';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19233', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCompensation', @level2type = N'COLUMN', @level2name = N'StaffCompensationRetirementBenefits';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCompensation', @level2type = N'COLUMN', @level2name = N'StaffCompensationRetirementBenefits';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Sum of retirement, health, and all other benefits, or total benefits paid by the school district, municipal, state, federal and other government agencies for the teacher''s or early learning provider’s health insurance, prorated to the specific school or local provider agency indicated on the record, not including contributions made by the teacher or early learning provider.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCompensation', @level2type = N'COLUMN', @level2name = N'StaffCompensationTotalBenefits';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Staff Compensation Total Benefits', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCompensation', @level2type = N'COLUMN', @level2name = N'StaffCompensationTotalBenefits';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000293', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCompensation', @level2type = N'COLUMN', @level2name = N'StaffCompensationTotalBenefits';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19293', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCompensation', @level2type = N'COLUMN', @level2name = N'StaffCompensationTotalBenefits';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCompensation', @level2type = N'COLUMN', @level2name = N'StaffCompensationTotalBenefits';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Total annualized salary of staff at the specific school/program indicated on the record in the school/program year  specified on the record.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCompensation', @level2type = N'COLUMN', @level2name = N'StaffCompensationTotalSalary';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Staff Compensation Total Salary', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCompensation', @level2type = N'COLUMN', @level2name = N'StaffCompensationTotalSalary';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000295', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCompensation', @level2type = N'COLUMN', @level2name = N'StaffCompensationTotalSalary';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19295', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCompensation', @level2type = N'COLUMN', @level2name = N'StaffCompensationTotalSalary';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCompensation', @level2type = N'COLUMN', @level2name = N'StaffCompensationTotalSalary';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The source for the staff compensation a person receives.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCompensation', @level2type = N'COLUMN', @level2name = N'RefStaffCompensationSourceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Staff Compensation Source Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCompensation', @level2type = N'COLUMN', @level2name = N'RefStaffCompensationSourceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001958', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCompensation', @level2type = N'COLUMN', @level2name = N'RefStaffCompensationSourceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20964', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCompensation', @level2type = N'COLUMN', @level2name = N'RefStaffCompensationSourceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCompensation', @level2type = N'COLUMN', @level2name = N'RefStaffCompensationSourceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCompensation', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCompensation', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCompensation', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCompensation', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCompensation', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCompensation', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCompensation', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCompensation', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCompensation', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCompensation', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A description of the annual supplement awarded to a staff member.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCompensation', @level2type = N'COLUMN', @level2name = N'StaffCompensationAnnualSupplementDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Staff Compensation Annual Supplement Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCompensation', @level2type = N'COLUMN', @level2name = N'StaffCompensationAnnualSupplementDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002064', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCompensation', @level2type = N'COLUMN', @level2name = N'StaffCompensationAnnualSupplementDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25087', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCompensation', @level2type = N'COLUMN', @level2name = N'StaffCompensationAnnualSupplementDescription';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCompensation', @level2type = N'COLUMN', @level2name = N'StaffCompensationAnnualSupplementDescription';

