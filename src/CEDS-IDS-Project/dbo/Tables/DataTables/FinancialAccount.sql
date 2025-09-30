CREATE TABLE [dbo].[FinancialAccount] (
    [FinancialAccountId]                              INT            IDENTITY (1, 1) NOT NULL,
    [Name]                                            NVARCHAR (100) NOT NULL,
    [Description]                                     NVARCHAR (300) NULL,
    [AccountNumber]                                   NVARCHAR (30)  NULL,
    [RefFinancialAccountCategoryId]                   INT            NULL,
    [RefFinancialAccountFundClassificationId]         INT            NULL,
    [RefFinancialAccountProgramCodeId]                INT            NULL,
    [RefFinancialAccountBalanceSheetCodeId]           INT            NULL,
    [RefFinancialExpenditureFunctionCodeId]           INT            NULL,
    [RefFinancialExpenditureObjectCodeId]             INT            NULL,
    [FinancialAccountNumber]                          NVARCHAR (30)  NULL,
    [FinancialExpenditureProjectReportingCode]        DECIMAL (3)    NULL,
    [RefFinancialExpenditureLevelOfInstructionCodeId] INT            NULL,
    [RefFinancialAccountRevenueCodeId]                INT            NULL,
    [FederalProgramCode]                              NVARCHAR (10)  NULL,
    [RecordStartDateTime]                             DATETIME       NULL,
    [RecordEndDateTime]                               DATETIME       NULL,
    [RecordStatusId]                                  INT            NULL,
    [DataCollectionId]                                INT            NULL,
    [RefFederalProgramCodeId]                         INT            NULL,
    [RefFederalProgramSubgrantCodeId]                 INT            NULL,
    [RefFinancialAccountGASBRevenueClassificationId]  INT            NULL,
    CONSTRAINT [PK_FinancialAccount] PRIMARY KEY CLUSTERED ([FinancialAccountId] ASC),
    CONSTRAINT [FK_FinancialAccount_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_FinancialAccount_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_FinancialAccount_RefFederalProgramCode] FOREIGN KEY ([RefFederalProgramCodeId]) REFERENCES [dbo].[RefFederalProgramCode] ([RefFederalProgramCodeId]),
    CONSTRAINT [FK_FinancialAccount_RefFederalProgramSubgrantCode] FOREIGN KEY ([RefFederalProgramSubgrantCodeId]) REFERENCES [dbo].[RefFederalProgramSubgrantCode] ([RefFederalProgramSubgrantCodeId]),
    CONSTRAINT [FK_FinancialAccount_RefFinancialAccountCategory] FOREIGN KEY ([RefFinancialAccountCategoryId]) REFERENCES [dbo].[RefFinancialAccountCategory] ([RefFinancialAccountCategoryId]),
    CONSTRAINT [FK_FinancialAccount_RefFinancialAccountFundClassification] FOREIGN KEY ([RefFinancialAccountFundClassificationId]) REFERENCES [dbo].[RefFinancialAccountFundClassification] ([RefFinancialAccountFundClassificationId]),
    CONSTRAINT [FK_FinancialAccount_RefFinancialAccountGASBRevenueClassification] FOREIGN KEY ([RefFinancialAccountGASBRevenueClassificationId]) REFERENCES [dbo].[RefFinancialAccountGASBRevenueClassification] ([RefFinancialAccountGASBRevenueClassificationId]),
    CONSTRAINT [FK_FinancialAccount_RefFinancialAccountProgramCode] FOREIGN KEY ([RefFinancialAccountProgramCodeId]) REFERENCES [dbo].[RefFinancialAccountProgramCode] ([RefFinancialAccountProgramCodeId]),
    CONSTRAINT [FK_FinancialAccount_RefFinancialAccountRevenueCode] FOREIGN KEY ([RefFinancialAccountRevenueCodeId]) REFERENCES [dbo].[RefFinancialAccountRevenueCode] ([RefFinancialAccountRevenueCodeId]),
    CONSTRAINT [FK_FinancialAccount_RefFinancialBalanceSheetAccountCode] FOREIGN KEY ([RefFinancialAccountBalanceSheetCodeId]) REFERENCES [dbo].[RefFinancialAccountBalanceSheetCode] ([RefFinancialBalanceSheetAccountCodeId]),
    CONSTRAINT [FK_FinancialAccount_RefFinancialExpenditureFunctionCode] FOREIGN KEY ([RefFinancialExpenditureFunctionCodeId]) REFERENCES [dbo].[RefFinancialExpenditureFunctionCode] ([RefFinancialExpenditureFunctionCodeId]),
    CONSTRAINT [FK_FinancialAccount_RefFinancialExpenditureLevelOfInstructionCode] FOREIGN KEY ([RefFinancialExpenditureLevelOfInstructionCodeId]) REFERENCES [dbo].[RefFinancialExpenditureLevelOfInstructionCode] ([RefFinancialExpenditureLevelOfInstructionCodeId]),
    CONSTRAINT [FK_FinancialAccount_RefFinancialExpenditureObjectCode] FOREIGN KEY ([RefFinancialExpenditureObjectCodeId]) REFERENCES [dbo].[RefFinancialExpenditureObjectCode] ([RefFinancialExpenditureObjectCodeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Summary of financial transations that provides information to external financial statement users.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The name given to the financial account in an educational institution’s accounting system.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Financial Account Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001348', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20315', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The description for the financial account in an educational institution’s accounting system.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Financial Account Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001346', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20313', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A number given to a financial account within a local source accounting system. The number may be a concatenation of a standard  prefix for the type of account with digits added that have specific meaning within the local system.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'AccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Financial Account Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'AccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001554', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'AccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20530', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'AccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A label for a grouping of financial accounts, based on type and purpose.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'RefFinancialAccountCategoryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Financial Account Category', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'RefFinancialAccountCategoryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001345', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'RefFinancialAccountCategoryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20312', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'RefFinancialAccountCategoryId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'RefFinancialAccountCategoryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A fund is a separate fiscal and accounting entity with a self-balancing set of accounts recording cash and other financial resources, together with all related liabilities and residual equities or balances or changes therein.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'RefFinancialAccountFundClassificationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Financial Account K12 Fund Classification', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'RefFinancialAccountFundClassificationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001347', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'RefFinancialAccountFundClassificationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20314', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'RefFinancialAccountFundClassificationId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'RefFinancialAccountFundClassificationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A program is a plan of activities and procedures designed to accomplish a predetermined objective or set of objectives.  The program classification provides the school district with a framework to classify instructional and other expenditures by program to determine cost.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'RefFinancialAccountProgramCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Financial Account K12 Program Code', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'RefFinancialAccountProgramCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001349', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'RefFinancialAccountProgramCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20316', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'RefFinancialAccountProgramCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'RefFinancialAccountProgramCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Balance sheet accounts and statement of net position accounts are used to track financial transactions for each fund. Such financial statements only report assets, deferred outflows of resources, liabilities, deferred inflows of resources, and equity accounts and are considered "snapshots" of how these accounts stand as of a certain point in time.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'RefFinancialAccountBalanceSheetCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Financial Account K12 Balance Sheet Code', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'RefFinancialAccountBalanceSheetCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001353', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'RefFinancialAccountBalanceSheetCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20320', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'RefFinancialAccountBalanceSheetCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'RefFinancialAccountBalanceSheetCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The function describes the activity for which a service or material object is acquired. The functions of a school district are classified into five broad areas: instruction, support services, operation of noninstructional services, facilities acquisition and construction, and debt service. Functions are further classified into sub functions.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'RefFinancialExpenditureFunctionCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Financial Expenditure K12 Function Code', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'RefFinancialExpenditureFunctionCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001354', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'RefFinancialExpenditureFunctionCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20321', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'RefFinancialExpenditureFunctionCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'RefFinancialExpenditureFunctionCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'This classification is used to describe the service or commodity obtained as the result of a specific expenditure.  Nine major object categories have codes ending in 00 and are further subdivided.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'RefFinancialExpenditureObjectCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Financial Expenditure K12 Object Code', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'RefFinancialExpenditureObjectCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001355', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'RefFinancialExpenditureObjectCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20322', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'RefFinancialExpenditureObjectCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'RefFinancialExpenditureObjectCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A number given to a financial account within a local source accounting system. The number may be a concatenation of a standard  prefix for the type of account with digits added that have specific meaning within the local system.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Financial Account Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001554', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20530', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The project/reporting code permits school districts to accumulate expenditures to meet a variety of specialized reporting requirements at the local, state, and federal levels. It is a three-digit code with the format 00X.   The first two digits identify the particular funding source, authority, or expenditure purpose for which a special record or report is required. The third digit is available to identify particular projects and the fiscal year of the appropriation within that funding source. Each classification is presented by a code range followed by a description.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialExpenditureProjectReportingCode';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Financial Expenditure K12 Project Reporting Code', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialExpenditureProjectReportingCode';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001556', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialExpenditureProjectReportingCode';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20532', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialExpenditureProjectReportingCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialExpenditureProjectReportingCode';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'This classification permits expenditures to be segregated by instructional level.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'RefFinancialExpenditureLevelOfInstructionCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Financial Expenditure K12 Level of Instruction Code', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'RefFinancialExpenditureLevelOfInstructionCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001555', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'RefFinancialExpenditureLevelOfInstructionCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20531', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'RefFinancialExpenditureLevelOfInstructionCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'RefFinancialExpenditureLevelOfInstructionCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'These codes are for recording revenue and other receivables by source.  Major revenue categories have codes ending in 00 and are further subdivided.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'RefFinancialAccountRevenueCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Financial Account K12 Revenue Code', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'RefFinancialAccountRevenueCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001468', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'RefFinancialAccountRevenueCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20440', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'RefFinancialAccountRevenueCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'RefFinancialAccountRevenueCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The unique five-digit number assigned to each federal program as listed in the Assistance Listings. See https://sam.gov/content/assistance-listings', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'RefFederalProgramCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Federal Program Code', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'RefFederalProgramCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000547', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'RefFederalProgramCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=21538', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'RefFederalProgramCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'RefFederalProgramCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An additional code appended to the Federal Program Code used to identify a subgrant of the grant identified by the Federal Program Code.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'RefFederalProgramSubgrantCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Federal Program Subgrant Code', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'RefFederalProgramSubgrantCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002010', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'RefFederalProgramSubgrantCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=22980', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'RefFederalProgramSubgrantCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'RefFederalProgramSubgrantCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The classification of Governmental Accounting Standards Board (GASB) revenues.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'RefFinancialAccountGASBRevenueClassificationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Financial Account GASB Revenue Classification', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'RefFinancialAccountGASBRevenueClassificationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002066', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'RefFinancialAccountGASBRevenueClassificationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25018', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'RefFinancialAccountGASBRevenueClassificationId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccount', @level2type = N'COLUMN', @level2name = N'RefFinancialAccountGASBRevenueClassificationId';

