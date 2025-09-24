CREATE TABLE [dbo].[PersonFamily] (
    [PersonFamilyId]                      INT             IDENTITY (1, 1) NOT NULL,
    [PersonId]                            INT             NOT NULL,
    [FamilyIdentifier]                    NVARCHAR (40)   NULL,
    [NumberOfPeopleInFamily]              INT             NULL,
    [NumberOfPeopleInHousehold]           INT             NULL,
    [FamilyIncome]                        DECIMAL (10, 2) NULL,
    [RefFamilyIncomeSourceId]             INT             NULL,
    [RefIncomeCalculationMethodId]        INT             NULL,
    [RefProofOfResidencyTypeId]           INT             NULL,
    [RefELProgramEligibilityId]           INT             NULL,
    [RefHighestEducationLevelCompletedId] INT             NULL,
    [RefCommunicationMethodId]            INT             NULL,
    [IncludedInCountedFamilySize]         BIT             NULL,
    [RecordStartDateTime]                 DATETIME        NULL,
    [RecordEndDateTime]                   DATETIME        NULL,
    [NumberOfHouseholdCollegeStudents]    INT             NULL,
    [RecordStatusId]                      INT             NULL,
    [DataCollectionId]                    INT             NULL,
    [RefTeenParentIndicatorId]            INT             NULL,
    CONSTRAINT [XPKPersonFamily] PRIMARY KEY CLUSTERED ([PersonFamilyId] ASC),
    CONSTRAINT [FK_PersonFamily_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_PersonFamily_Person] FOREIGN KEY ([PersonId]) REFERENCES [dbo].[Person] ([PersonId]),
    CONSTRAINT [FK_PersonFamily_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_PersonFamily_RefCommunicationMethod] FOREIGN KEY ([RefCommunicationMethodId]) REFERENCES [dbo].[RefCommunicationMethod] ([RefCommunicationMethodId]),
    CONSTRAINT [FK_PersonFamily_RefEducationLevel] FOREIGN KEY ([RefHighestEducationLevelCompletedId]) REFERENCES [dbo].[RefEducationLevel] ([RefEducationLevelId]),
    CONSTRAINT [FK_PersonFamily_RefELProgramEligibility] FOREIGN KEY ([RefELProgramEligibilityId]) REFERENCES [dbo].[RefELProgramEligibility] ([RefELProgramEligibilityId]),
    CONSTRAINT [FK_PersonFamily_RefFamilyIncomeSource] FOREIGN KEY ([RefFamilyIncomeSourceId]) REFERENCES [dbo].[RefFamilyIncomeSource] ([RefFamilyIncomeSourceId]),
    CONSTRAINT [FK_PersonFamily_RefIncomeCalculation] FOREIGN KEY ([RefIncomeCalculationMethodId]) REFERENCES [dbo].[RefIncomeCalculationMethod] ([RefIncomeCalculationMethodId]),
    CONSTRAINT [FK_PersonFamily_RefProofOfResidencyType] FOREIGN KEY ([RefProofOfResidencyTypeId]) REFERENCES [dbo].[RefProofOfResidencyType] ([RefProofOfResidencyTypeId]),
    CONSTRAINT [FK_PersonFamily_RefTeenParentIndicator] FOREIGN KEY ([RefTeenParentIndicatorId]) REFERENCES [dbo].[RefTeenParentIndicator] ([RefTeenParentIndicatorId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The attributes of a person''s family.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'PersonFamilyId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - Person', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'PersonId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A unique number or alphanumeric code assigned to a family by a school, school system, a state, or other agency or entity.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'FamilyIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Family Identifier', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'FamilyIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000787', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'FamilyIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19784', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'FamilyIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'FamilyIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Total number of persons in immediate family. Family means for the purposes of the regulations in this part all persons: (i) Living in the same household who are: (A) Supported by the income of the parent(s) or guardian(s) of the child enrolling or participating in the program; or (B) Related to the child by blood, marriage, or adoption; or 
(ii) Related to the child enrolling or participating in the program as parents or siblings, by blood, marriage, or adoption.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'NumberOfPeopleInFamily';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Number of People in Family', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'NumberOfPeopleInFamily';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000330', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'NumberOfPeopleInFamily';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19329', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'NumberOfPeopleInFamily';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'NumberOfPeopleInFamily';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Total number of persons residing in the same household.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'NumberOfPeopleInHousehold';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Number of People in Household', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'NumberOfPeopleInHousehold';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000331', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'NumberOfPeopleInHousehold';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19330', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'NumberOfPeopleInHousehold';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'NumberOfPeopleInHousehold';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Total income of family from all sources. Income includes money, wages or salary before deductions; net income from non-farm self-employment; net income from farm self-employment; regular payments from Social Security or railroad retirement; payments from unemployment compensation, strike benefits from union funds, workers’ compensation, veterans benefits (with the exception noted below), public assistance (including Temporary Assistance for Needy Families, Supplemental Security Income, Emergency Assistance money payments, and non-Federally funded General Assistance or General Relief money payments); training stipends; alimony, child support, and military family allotments or other regular support from an absent family member or someone not living in the household; private pensions, government employee pensions (including military retirement pay), and regular insurance or annuity payments; college or university scholarships, grants, fellowships, and assistantships; and dividends, intere', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'FamilyIncome';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Family Income', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'FamilyIncome';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000332', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'FamilyIncome';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19331', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'FamilyIncome';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'FamilyIncome';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Sources of total family income.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'RefFamilyIncomeSourceId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Source of Family Income', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'RefFamilyIncomeSourceId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000333', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'RefFamilyIncomeSourceId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19332', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'RefFamilyIncomeSourceId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'RefFamilyIncomeSourceId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The calculation method used by a program to determine total family income.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'RefIncomeCalculationMethodId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Income Calculation Method', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'RefIncomeCalculationMethodId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000334', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'RefIncomeCalculationMethodId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19333', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'RefIncomeCalculationMethodId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'RefIncomeCalculationMethodId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An accepted form of proof of residency in the district/county/other locality.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'RefProofOfResidencyTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Proof of Residency Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'RefProofOfResidencyTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000305', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'RefProofOfResidencyTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19305', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'RefProofOfResidencyTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'RefProofOfResidencyTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Category under which the person is eligible for an early childhood program or service.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'RefELProgramEligibilityId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Early Learning Program Eligibility Category', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'RefELProgramEligibilityId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000304', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'RefELProgramEligibilityId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19304', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'RefELProgramEligibilityId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'RefELProgramEligibilityId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The extent of formal instruction a person has received (e.g., the highest grade in school completed or its equivalent or the highest degree received).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'RefHighestEducationLevelCompletedId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Highest Level of Education Completed', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'RefHighestEducationLevelCompletedId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000141', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'RefHighestEducationLevelCompletedId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19141', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'RefHighestEducationLevelCompletedId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'RefHighestEducationLevelCompletedId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The types of communication methods with parents.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'RefCommunicationMethodId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Parent Communication Method', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'RefCommunicationMethodId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000857', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'RefCommunicationMethodId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19857', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'RefCommunicationMethodId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'RefCommunicationMethodId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Denotes whether this family member is counted in the family size as it pertains to the federal poverty level', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'IncludedInCountedFamilySize';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Included in Counted Family Size', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'IncludedInCountedFamilySize';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001612', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'IncludedInCountedFamilySize';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20591', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'IncludedInCountedFamilySize';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'IncludedInCountedFamilySize';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Number of people, including the student, who will attend at least half-time in the current academic year, a program that leads to a college degree or certificate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'NumberOfHouseholdCollegeStudents';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Number of Household College Students', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'NumberOfHouseholdCollegeStudents';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001982', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'NumberOfHouseholdCollegeStudents';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20950', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'NumberOfHouseholdCollegeStudents';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'NumberOfHouseholdCollegeStudents';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The child''s parent or guardian is a teen parent between ages 10 to 19 years.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'RefTeenParentIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Teen Parent Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'RefTeenParentIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002062', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'RefTeenParentIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25089', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'RefTeenParentIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonFamily', @level2type = N'COLUMN', @level2name = N'RefTeenParentIndicatorId';

