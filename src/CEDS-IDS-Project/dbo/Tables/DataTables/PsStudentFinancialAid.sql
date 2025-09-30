CREATE TABLE [dbo].[PsStudentFinancialAid] (
    [PsStudentFinancialAidId]                INT            IDENTITY (1, 1) NOT NULL,
    [OrganizationPersonRoleId]               INT            NOT NULL,
    [FinancialAidApplicant]                  BIT            NULL,
    [FinancialNeed]                          DECIMAL (9, 2) NULL,
    [TitleIVParticipantAndRecipient]         BIT            NULL,
    [FinancialAidIncomeLevel]                DECIMAL (9, 2) NULL,
    [RefNeedDeterminationMethodId]           INT            NULL,
    [RefFinancialAidVeteransBenefitStatusId] INT            NULL,
    [RefFinancialAidVeteransBenefitTypeId]   INT            NULL,
    [RecordStartDateTime]                    DATETIME       NULL,
    [RecordEndDateTime]                      DATETIME       NULL,
    [RecordStatusId]                         INT            NULL,
    [DataCollectionId]                       INT            NULL,
    CONSTRAINT [PK_PsStudentFinancialAid] PRIMARY KEY CLUSTERED ([PsStudentFinancialAidId] ASC),
    CONSTRAINT [FK_PsStudentFinancialAid_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_PsStudentFinancialAid_OrganizationPersonRole] FOREIGN KEY ([OrganizationPersonRoleId]) REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]),
    CONSTRAINT [FK_PsStudentFinancialAid_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_PsStudentFinancialAid_RefFinancialAidVeteransBenefitStatus] FOREIGN KEY ([RefFinancialAidVeteransBenefitStatusId]) REFERENCES [dbo].[RefFinancialAidVeteransBenefitStatus] ([RefFinancialAidVeteransBenefitStatusId]),
    CONSTRAINT [FK_PsStudentFinancialAid_RefFinancialAidVeteransBenefitType] FOREIGN KEY ([RefFinancialAidVeteransBenefitTypeId]) REFERENCES [dbo].[RefFinancialAidVeteransBenefitType] ([RefFinancialAidVeteransBenefitTypeId]),
    CONSTRAINT [FK_PsStudentFinancialAid_RefNeedDeterminationMethod] FOREIGN KEY ([RefNeedDeterminationMethodId]) REFERENCES [dbo].[RefNeedDeterminationMethod] ([RefNeedDeterminationMethodId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information on a person who applies for financial aid to participate in postsecondary education.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentFinancialAid';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentFinancialAid';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate key from OrganizationPersonRole', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentFinancialAid', @level2type = N'COLUMN', @level2name = N'OrganizationPersonRoleId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Any applicant who submits any one of the institutionally required financial aid applications/forms, such as the  Free Application for Federal Student Aid (FAFSA).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentFinancialAid', @level2type = N'COLUMN', @level2name = N'FinancialAidApplicant';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Financial Aid Applicant', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentFinancialAid', @level2type = N'COLUMN', @level2name = N'FinancialAidApplicant';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000763', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentFinancialAid', @level2type = N'COLUMN', @level2name = N'FinancialAidApplicant';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19745', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentFinancialAid', @level2type = N'COLUMN', @level2name = N'FinancialAidApplicant';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentFinancialAid', @level2type = N'COLUMN', @level2name = N'FinancialAidApplicant';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The amount of financial need as determined by an institution using the federal methodology and/or your institution''s own standards.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentFinancialAid', @level2type = N'COLUMN', @level2name = N'FinancialNeed';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Financial Need', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentFinancialAid', @level2type = N'COLUMN', @level2name = N'FinancialNeed';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000765', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentFinancialAid', @level2type = N'COLUMN', @level2name = N'FinancialNeed';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19747', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentFinancialAid', @level2type = N'COLUMN', @level2name = N'FinancialNeed';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentFinancialAid', @level2type = N'COLUMN', @level2name = N'FinancialNeed';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A person who receives Title IV aid.  Title IV aid includes grant aid, work study aid, and loan aid such as: Federal Pell Grant, Federal Supplemental Educational Opportunity Grant (FSEOG), Teacher Education Assistance for College and Higher Education (TEACH) Grant, Federal Work-Study, Federal Perkins Loan, Subsidized Direct or FFEL Stafford Loan, and Unsubsidized Direct or FFEL Stafford Loan.  Title IV aid specifications are defined by the instructions for the IPEDS Student Financial Aid survey.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentFinancialAid', @level2type = N'COLUMN', @level2name = N'TitleIVParticipantAndRecipient';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Title IV Participant and Recipient', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentFinancialAid', @level2type = N'COLUMN', @level2name = N'TitleIVParticipantAndRecipient';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000292', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentFinancialAid', @level2type = N'COLUMN', @level2name = N'TitleIVParticipantAndRecipient';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19292', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentFinancialAid', @level2type = N'COLUMN', @level2name = N'TitleIVParticipantAndRecipient';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentFinancialAid', @level2type = N'COLUMN', @level2name = N'TitleIVParticipantAndRecipient';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The income level of an individual that is used by an institution''s financial aid office to determine an individual''s Expected Family Contribution (EFC).  For dependent students this will include the parents'' adjusted gross income and the student''s adjusted gross income.  For independent students this will include the student''s adjusted gross income.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentFinancialAid', @level2type = N'COLUMN', @level2name = N'FinancialAidIncomeLevel';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Financial Aid Income Level', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentFinancialAid', @level2type = N'COLUMN', @level2name = N'FinancialAidIncomeLevel';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001352', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentFinancialAid', @level2type = N'COLUMN', @level2name = N'FinancialAidIncomeLevel';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20319', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentFinancialAid', @level2type = N'COLUMN', @level2name = N'FinancialAidIncomeLevel';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentFinancialAid', @level2type = N'COLUMN', @level2name = N'FinancialAidIncomeLevel';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The methodology used to determine an individual''s financial need.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentFinancialAid', @level2type = N'COLUMN', @level2name = N'RefNeedDeterminationMethodId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Financial Need Determination Methodology', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentFinancialAid', @level2type = N'COLUMN', @level2name = N'RefNeedDeterminationMethodId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001224', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentFinancialAid', @level2type = N'COLUMN', @level2name = N'RefNeedDeterminationMethodId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20188', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentFinancialAid', @level2type = N'COLUMN', @level2name = N'RefNeedDeterminationMethodId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentFinancialAid', @level2type = N'COLUMN', @level2name = N'RefNeedDeterminationMethodId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether a person is receiving Veteran''s benefits.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentFinancialAid', @level2type = N'COLUMN', @level2name = N'RefFinancialAidVeteransBenefitStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Financial Aid Veteran’s Benefit Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentFinancialAid', @level2type = N'COLUMN', @level2name = N'RefFinancialAidVeteransBenefitStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001609', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentFinancialAid', @level2type = N'COLUMN', @level2name = N'RefFinancialAidVeteransBenefitStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20588', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentFinancialAid', @level2type = N'COLUMN', @level2name = N'RefFinancialAidVeteransBenefitStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentFinancialAid', @level2type = N'COLUMN', @level2name = N'RefFinancialAidVeteransBenefitStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of Veteran''s benefits a person is receiving.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentFinancialAid', @level2type = N'COLUMN', @level2name = N'RefFinancialAidVeteransBenefitTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Financial Aid Veteran’s Benefit Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentFinancialAid', @level2type = N'COLUMN', @level2name = N'RefFinancialAidVeteransBenefitTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001610', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentFinancialAid', @level2type = N'COLUMN', @level2name = N'RefFinancialAidVeteransBenefitTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20589', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentFinancialAid', @level2type = N'COLUMN', @level2name = N'RefFinancialAidVeteransBenefitTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentFinancialAid', @level2type = N'COLUMN', @level2name = N'RefFinancialAidVeteransBenefitTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentFinancialAid', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentFinancialAid', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentFinancialAid', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentFinancialAid', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentFinancialAid', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentFinancialAid', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentFinancialAid', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentFinancialAid', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentFinancialAid', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

