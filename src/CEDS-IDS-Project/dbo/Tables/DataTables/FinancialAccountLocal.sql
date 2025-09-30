CREATE TABLE [dbo].[FinancialAccountLocal] (
    [FinancialAccountLocalId]                              INT            IDENTITY (1, 1) NOT NULL,
    [RefFinancialAccountLocalBalanceSheetCodeId]           INT            NULL,
    [RefFinancialAccountLocalFundClassificationId]         INT            NULL,
    [RefFinancialAccountLocalProgramCodeId]                INT            NULL,
    [RefFinancialAccountLocalRevenueCodeId]                INT            NULL,
    [RefFinancialExpenditureLocalFunctionCodeId]           INT            NULL,
    [RefFinancialExpenditureLocalLevelOfInstructionCodeId] INT            NULL,
    [RefFinancialExpenditureLocalObjectCodeId]             INT            NULL,
    [Name]                                                 NVARCHAR (100) NULL,
    [AccountNumber]                                        NVARCHAR (30)  NULL,
    [Description]                                          NVARCHAR (150) NULL,
    [RecordStartDateTime]                                  DATETIME       NULL,
    [RecordEndDateTime]                                    DATETIME       NULL,
    [RecordStatusId]                                       INT            NULL,
    [DataCollectionId]                                     INT            NULL,
    [RefFinancialAccountLocalGASBRevenueClassificationId]  INT            NULL,
    CONSTRAINT [PK_FinancialAccountLocal] PRIMARY KEY CLUSTERED ([FinancialAccountLocalId] ASC),
    CONSTRAINT [FK_FinancialAccountLocal_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_FinancialAccountLocal_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_FinancialAccountLocal_RefFinancialAccountLocalBalanceSheetCode] FOREIGN KEY ([RefFinancialAccountLocalBalanceSheetCodeId]) REFERENCES [dbo].[RefFinancialAccountLocalBalanceSheetCode] ([RefFinancialAccountLocalBalanceSheetCodeId]),
    CONSTRAINT [FK_FinancialAccountLocal_RefFinancialAccountLocalFundClassification] FOREIGN KEY ([RefFinancialAccountLocalFundClassificationId]) REFERENCES [dbo].[RefFinancialAccountLocalFundClassification] ([RefFinancialAccountLocalFundClassificationId]),
    CONSTRAINT [FK_FinancialAccountLocal_RefFinancialAccountLocalGASBRevenueClassification] FOREIGN KEY ([RefFinancialAccountLocalGASBRevenueClassificationId]) REFERENCES [dbo].[RefFinancialAccountLocalGASBRevenueClassification] ([RefFinancialAccountLocalGASBRevenueClassificationId]),
    CONSTRAINT [FK_FinancialAccountLocal_RefFinancialAccountLocalProgramCode] FOREIGN KEY ([RefFinancialAccountLocalProgramCodeId]) REFERENCES [dbo].[RefFinancialAccountLocalProgramCode] ([RefFinancialAccountLocalProgramCodeId]),
    CONSTRAINT [FK_FinancialAccountLocal_RefFinancialAccountLocalRevenueCode] FOREIGN KEY ([RefFinancialAccountLocalRevenueCodeId]) REFERENCES [dbo].[RefFinancialAccountLocalRevenueCode] ([RefFinancialAccountLocalRevenueCodeId]),
    CONSTRAINT [FK_FinancialAccountLocal_RefFinancialExpenditureLocalFunctionCode] FOREIGN KEY ([RefFinancialExpenditureLocalFunctionCodeId]) REFERENCES [dbo].[RefFinancialExpenditureLocalFunctionCode] ([RefFinancialExpenditureLocalFunctionCodeId]),
    CONSTRAINT [FK_FinancialAccountLocal_RefFinancialExpenditureLocalLevelOfInstructionCode] FOREIGN KEY ([RefFinancialExpenditureLocalLevelOfInstructionCodeId]) REFERENCES [dbo].[RefFinancialExpenditureLocalLevelOfInstructionCode] ([RefFinancialExpenditureLocalLevelOfInstructionCodeId]),
    CONSTRAINT [FK_FinancialAccountLocal_RefFinancialExpenditureLocalObjectCode] FOREIGN KEY ([RefFinancialExpenditureLocalObjectCodeId]) REFERENCES [dbo].[RefFinancialExpenditureLocalObjectCode] ([RefFinancialExpenditureLocalObjectCodeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Summary of financial transations, using a coding system local to the organization, that provides information to external financial statement users.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccountLocal';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccountLocal';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A local code used to describe balance sheet accounts and statement of net position accounts which are used to track financial transactions for each fund. Such financial statements only report assets, deferred outflows of resources, liabilities, deferred inflows of resources, and equity accounts and are considered "snapshots" of how these accounts stand as of a certain point in time.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccountLocal', @level2type = N'COLUMN', @level2name = N'RefFinancialAccountLocalBalanceSheetCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Financial Account Local Balance Sheet Code', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccountLocal', @level2type = N'COLUMN', @level2name = N'RefFinancialAccountLocalBalanceSheetCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002007', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccountLocal', @level2type = N'COLUMN', @level2name = N'RefFinancialAccountLocalBalanceSheetCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=22982', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccountLocal', @level2type = N'COLUMN', @level2name = N'RefFinancialAccountLocalBalanceSheetCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccountLocal', @level2type = N'COLUMN', @level2name = N'RefFinancialAccountLocalBalanceSheetCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A local code used to classify a fund which is a separate fiscal and accounting entity with a self-balancing set of accounts recording cash and other financial resources, together with all related liabilities and residual equities or balances or changes therein.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccountLocal', @level2type = N'COLUMN', @level2name = N'RefFinancialAccountLocalFundClassificationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Financial Account Local Fund Classification', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccountLocal', @level2type = N'COLUMN', @level2name = N'RefFinancialAccountLocalFundClassificationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002008', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccountLocal', @level2type = N'COLUMN', @level2name = N'RefFinancialAccountLocalFundClassificationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=22983', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccountLocal', @level2type = N'COLUMN', @level2name = N'RefFinancialAccountLocalFundClassificationId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccountLocal', @level2type = N'COLUMN', @level2name = N'RefFinancialAccountLocalFundClassificationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A local code used to describe a plan of activities and procedures designed to accomplish a predetermined objective or set of objectives.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccountLocal', @level2type = N'COLUMN', @level2name = N'RefFinancialAccountLocalProgramCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Financial Account Local Program Code', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccountLocal', @level2type = N'COLUMN', @level2name = N'RefFinancialAccountLocalProgramCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002009', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccountLocal', @level2type = N'COLUMN', @level2name = N'RefFinancialAccountLocalProgramCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=22984', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccountLocal', @level2type = N'COLUMN', @level2name = N'RefFinancialAccountLocalProgramCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccountLocal', @level2type = N'COLUMN', @level2name = N'RefFinancialAccountLocalProgramCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A local code used to record revenue and other receivables by source.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccountLocal', @level2type = N'COLUMN', @level2name = N'RefFinancialAccountLocalRevenueCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Financial Account Local Revenue Code', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccountLocal', @level2type = N'COLUMN', @level2name = N'RefFinancialAccountLocalRevenueCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002003', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccountLocal', @level2type = N'COLUMN', @level2name = N'RefFinancialAccountLocalRevenueCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=22985', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccountLocal', @level2type = N'COLUMN', @level2name = N'RefFinancialAccountLocalRevenueCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccountLocal', @level2type = N'COLUMN', @level2name = N'RefFinancialAccountLocalRevenueCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A local code used to describe the activity for which a service or material object is acquired.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccountLocal', @level2type = N'COLUMN', @level2name = N'RefFinancialExpenditureLocalFunctionCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Financial Expenditure Local Function Code', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccountLocal', @level2type = N'COLUMN', @level2name = N'RefFinancialExpenditureLocalFunctionCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002004', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccountLocal', @level2type = N'COLUMN', @level2name = N'RefFinancialExpenditureLocalFunctionCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=22986', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccountLocal', @level2type = N'COLUMN', @level2name = N'RefFinancialExpenditureLocalFunctionCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccountLocal', @level2type = N'COLUMN', @level2name = N'RefFinancialExpenditureLocalFunctionCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A local code used to classify the segregation of expenditures by instructional level.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccountLocal', @level2type = N'COLUMN', @level2name = N'RefFinancialExpenditureLocalLevelOfInstructionCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Financial Expenditure Local Level of Instruction Code', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccountLocal', @level2type = N'COLUMN', @level2name = N'RefFinancialExpenditureLocalLevelOfInstructionCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002006', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccountLocal', @level2type = N'COLUMN', @level2name = N'RefFinancialExpenditureLocalLevelOfInstructionCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=22987', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccountLocal', @level2type = N'COLUMN', @level2name = N'RefFinancialExpenditureLocalLevelOfInstructionCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccountLocal', @level2type = N'COLUMN', @level2name = N'RefFinancialExpenditureLocalLevelOfInstructionCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A local code used to describe the service or commodity obtained as the result of a specific expenditure.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccountLocal', @level2type = N'COLUMN', @level2name = N'RefFinancialExpenditureLocalObjectCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Financial Expenditure Local Object Code', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccountLocal', @level2type = N'COLUMN', @level2name = N'RefFinancialExpenditureLocalObjectCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002005', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccountLocal', @level2type = N'COLUMN', @level2name = N'RefFinancialExpenditureLocalObjectCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=22988', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccountLocal', @level2type = N'COLUMN', @level2name = N'RefFinancialExpenditureLocalObjectCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccountLocal', @level2type = N'COLUMN', @level2name = N'RefFinancialExpenditureLocalObjectCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A local code used to classify Governmental Accounting Standards Board (GASB) revenues.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccountLocal', @level2type = N'COLUMN', @level2name = N'RefFinancialAccountLocalGASBRevenueClassificationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Financial Account Local GASB Revenue Classification', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccountLocal', @level2type = N'COLUMN', @level2name = N'RefFinancialAccountLocalGASBRevenueClassificationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002067', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccountLocal', @level2type = N'COLUMN', @level2name = N'RefFinancialAccountLocalGASBRevenueClassificationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25019', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccountLocal', @level2type = N'COLUMN', @level2name = N'RefFinancialAccountLocalGASBRevenueClassificationId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAccountLocal', @level2type = N'COLUMN', @level2name = N'RefFinancialAccountLocalGASBRevenueClassificationId';

