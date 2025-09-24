CREATE TABLE [dbo].[IPEDSFinance] (
    [IPEDSFinanceId]                                  INT      IDENTITY (1, 1) NOT NULL,
    [OrganizationFinancialId]                         INT      NOT NULL,
    [RefIPEDSFASBFinancialPositionId]                 INT      NULL,
    [RefIPEDSFASBFunctionalExpenseId]                 INT      NULL,
    [RefIPEDSFASBPellGrantTransactionsId]             INT      NULL,
    [RefIPEDSFASBRevenueId]                           INT      NULL,
    [RefIPEDSFASBRevenueRestrictionId]                INT      NULL,
    [RefIPEDSFASBScholarshipsandFellowshipsRevenueId] INT      NULL,
    [RefIPEDSGASBFinancialPositionId]                 INT      NULL,
    [RefIPEDSGASBFunctionalExpenseId]                 INT      NULL,
    [RefIPEDSGASBRevenueId]                           INT      NULL,
    [RefIPEDSGASBScholarshipsandFellowshipsRevenueId] INT      NULL,
    [RefIPEDSIntercollegiateAthleticsExpensesId]      INT      NULL,
    [RefIPEDSNaturalExpenseId]                        INT      NULL,
    [RecordStartDateTime]                             DATETIME NULL,
    [RecordEndDateTime]                               DATETIME NULL,
    [RecordStatusId]                                  INT      NULL,
    [DataCollectionId]                                INT      NULL,
    CONSTRAINT [PK_IPEDSFinance] PRIMARY KEY CLUSTERED ([IPEDSFinanceId] ASC),
    CONSTRAINT [FK_IPEDSFinance_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_IPEDSFinance_OrganizationFinancial] FOREIGN KEY ([OrganizationFinancialId]) REFERENCES [dbo].[OrganizationFinancial] ([OrganizationFinancialId]),
    CONSTRAINT [FK_IPEDSFinance_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_IPEDSFinance_RefIPEDSFASBFinancialPosition] FOREIGN KEY ([RefIPEDSFASBFinancialPositionId]) REFERENCES [dbo].[RefIPEDSFASBFinancialPosition] ([RefIPEDSFASBFinancialPositionId]),
    CONSTRAINT [FK_IPEDSFinance_RefIPEDSFASBFunctionalExpense] FOREIGN KEY ([RefIPEDSFASBFunctionalExpenseId]) REFERENCES [dbo].[RefIPEDSFASBFunctionalExpense] ([RefIPEDSFASBFunctionalExpenseId]),
    CONSTRAINT [FK_IPEDSFinance_RefIPEDSFASBPellGrantTransactions] FOREIGN KEY ([RefIPEDSFASBPellGrantTransactionsId]) REFERENCES [dbo].[RefIPEDSFASBPellGrantTransactions] ([RefIPEDSFASBPellGrantTransactionsId]),
    CONSTRAINT [FK_IPEDSFinance_RefIPEDSFASBRevenue] FOREIGN KEY ([RefIPEDSFASBRevenueId]) REFERENCES [dbo].[RefIPEDSFASBRevenue] ([RefIPEDSFASBRevenueId]),
    CONSTRAINT [FK_IPEDSFinance_RefIPEDSFASBRevenueRestriction] FOREIGN KEY ([RefIPEDSFASBRevenueRestrictionId]) REFERENCES [dbo].[RefIPEDSFASBRevenueRestriction] ([RefIPEDSFASBRevenueRestrictionId]),
    CONSTRAINT [FK_IPEDSFinance_RefIPEDSFASBScholarshipsandFellowshipsRevenue] FOREIGN KEY ([RefIPEDSFASBScholarshipsandFellowshipsRevenueId]) REFERENCES [dbo].[RefIPEDSFASBScholarshipsandFellowshipsRevenue] ([RefIPEDSFASBScholarshipsandFellowshipsRevenueId]),
    CONSTRAINT [FK_IPEDSFinance_RefIPEDSGASBFinancialPosition] FOREIGN KEY ([RefIPEDSGASBFinancialPositionId]) REFERENCES [dbo].[RefIPEDSGASBFinancialPosition] ([RefIPEDSGASBFinancialPositionId]),
    CONSTRAINT [FK_IPEDSFinance_RefIPEDSGASBFunctionalExpense] FOREIGN KEY ([RefIPEDSGASBFunctionalExpenseId]) REFERENCES [dbo].[RefIPEDSGASBFunctionalExpense] ([RefIPEDSGASBFunctionalExpenseId]),
    CONSTRAINT [FK_IPEDSFinance_RefIPEDSGASBRevenue] FOREIGN KEY ([RefIPEDSGASBRevenueId]) REFERENCES [dbo].[RefIPEDSGASBRevenue] ([RefIPEDSGASBRevenueId]),
    CONSTRAINT [FK_IPEDSFinance_RefIPEDSGASBScholarshipsandFellowshipsRevenue] FOREIGN KEY ([RefIPEDSGASBScholarshipsandFellowshipsRevenueId]) REFERENCES [dbo].[RefIPEDSGASBScholarshipsandFellowshipsRevenue] ([RefIPEDSGASBScholarshipsandFellowshipsRevenueId]),
    CONSTRAINT [FK_IPEDSFinance_RefIPEDSIntercollegiateAthleticsExpenses] FOREIGN KEY ([RefIPEDSIntercollegiateAthleticsExpensesId]) REFERENCES [dbo].[RefIPEDSIntercollegiateAthleticsExpenses] ([RefIPEDSIntercollegiateAthleticsExpensesId]),
    CONSTRAINT [FK_IPEDSFinance_RefIPEDSNaturalExpense] FOREIGN KEY ([RefIPEDSNaturalExpenseId]) REFERENCES [dbo].[RefIPEDSNaturalExpense] ([RefIPEDSNaturalExpenseId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information related to the Integrated Postsecondary Education Data System requirements for postsecondary financial data reporting.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IPEDSFinance';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IPEDSFinance';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'IPEDS financial position classification used by degree-granting private, not-for-profit institutions and public institutions using FASB Reporting Standards for reporting the assets, liabilities, and net assets in a manner consistent with the Statement of Financial Position in the General Purpose Financial Statements (GPFS).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IPEDSFinance', @level2type = N'COLUMN', @level2name = N'RefIPEDSFASBFinancialPositionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'IPEDS Finance FASB Financial Position Category', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IPEDSFinance', @level2type = N'COLUMN', @level2name = N'RefIPEDSFASBFinancialPositionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001671', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IPEDSFinance', @level2type = N'COLUMN', @level2name = N'RefIPEDSFASBFinancialPositionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20652', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IPEDSFinance', @level2type = N'COLUMN', @level2name = N'RefIPEDSFASBFinancialPositionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A functional expense classification is a method of grouping expenses according to the purpose for which the costs are incurred. The classifications tell why an expense was incurred rather than what was purchased.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IPEDSFinance', @level2type = N'COLUMN', @level2name = N'RefIPEDSFASBFunctionalExpenseId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'IPEDS Finance FASB Functional Expense Category', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IPEDSFinance', @level2type = N'COLUMN', @level2name = N'RefIPEDSFASBFunctionalExpenseId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001659', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IPEDSFinance', @level2type = N'COLUMN', @level2name = N'RefIPEDSFASBFunctionalExpenseId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20640', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IPEDSFinance', @level2type = N'COLUMN', @level2name = N'RefIPEDSFASBFunctionalExpenseId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Method of reporting Pell Grants in IPEDS by degree-granting private, not-for-profit institutions and public institutions using FASB Reporting Standards.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IPEDSFinance', @level2type = N'COLUMN', @level2name = N'RefIPEDSFASBPellGrantTransactionsId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'IPEDS Finance FASB Pell Grant Transactions', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IPEDSFinance', @level2type = N'COLUMN', @level2name = N'RefIPEDSFASBPellGrantTransactionsId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001680', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IPEDSFinance', @level2type = N'COLUMN', @level2name = N'RefIPEDSFASBPellGrantTransactionsId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20661', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IPEDSFinance', @level2type = N'COLUMN', @level2name = N'RefIPEDSFASBPellGrantTransactionsId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'IPEDS revenue classification used by degree-granting private, not-for-profit institutions and public institutions using FASB Reporting Standards for reporting revenues and investment return by source in a manner consistent with the definitions from the National Association of College and University Business Officers (NACUBO) Financial Accounting and Reporting Manual for Higher Education (FARM).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IPEDSFinance', @level2type = N'COLUMN', @level2name = N'RefIPEDSFASBRevenueId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'IPEDS Finance FASB Revenue Category', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IPEDSFinance', @level2type = N'COLUMN', @level2name = N'RefIPEDSFASBRevenueId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001673', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IPEDSFinance', @level2type = N'COLUMN', @level2name = N'RefIPEDSFASBRevenueId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20654', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IPEDSFinance', @level2type = N'COLUMN', @level2name = N'RefIPEDSFASBRevenueId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'IPEDS revenue restriction classification used by degree-granting private, not-for-profit institutions and public institutions using FASB Reporting Standards for reporting revenues by restriction.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IPEDSFinance', @level2type = N'COLUMN', @level2name = N'RefIPEDSFASBRevenueRestrictionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'IPEDS Finance FASB Revenue Restriction Category', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IPEDSFinance', @level2type = N'COLUMN', @level2name = N'RefIPEDSFASBRevenueRestrictionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001674', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IPEDSFinance', @level2type = N'COLUMN', @level2name = N'RefIPEDSFASBRevenueRestrictionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20655', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IPEDSFinance', @level2type = N'COLUMN', @level2name = N'RefIPEDSFASBRevenueRestrictionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'IPEDS revenue category used by degree-granting private, not-for-profit institutions and public institutions using FASB Reporting Standards for the reporting of resources received for supporting student grant aid.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IPEDSFinance', @level2type = N'COLUMN', @level2name = N'RefIPEDSFASBScholarshipsandFellowshipsRevenueId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'IPEDS Finance FASB Scholarships and Fellowships Revenue Category', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IPEDSFinance', @level2type = N'COLUMN', @level2name = N'RefIPEDSFASBScholarshipsandFellowshipsRevenueId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001678', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IPEDSFinance', @level2type = N'COLUMN', @level2name = N'RefIPEDSFASBScholarshipsandFellowshipsRevenueId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20659', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IPEDSFinance', @level2type = N'COLUMN', @level2name = N'RefIPEDSFASBScholarshipsandFellowshipsRevenueId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'IPEDS financial position classification used by degree-granting public institutions using GASB Reporting Standards for reporting the assets, liabilities, and net position in a manner consistent with the Statement of Net Position in the General Purpose Financial Statements (GPFS).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IPEDSFinance', @level2type = N'COLUMN', @level2name = N'RefIPEDSGASBFinancialPositionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'IPEDS Finance GASB Financial Position Category', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IPEDSFinance', @level2type = N'COLUMN', @level2name = N'RefIPEDSGASBFinancialPositionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001670', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IPEDSFinance', @level2type = N'COLUMN', @level2name = N'RefIPEDSGASBFinancialPositionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20651', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IPEDSFinance', @level2type = N'COLUMN', @level2name = N'RefIPEDSGASBFinancialPositionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A functional expense classification is a method of grouping expenses according to the purpose for which the costs are incurred. The classifications tell why an expense was incurred rather than what was purchased.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IPEDSFinance', @level2type = N'COLUMN', @level2name = N'RefIPEDSGASBFunctionalExpenseId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'IPEDS Finance GASB Functional Expense Category', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IPEDSFinance', @level2type = N'COLUMN', @level2name = N'RefIPEDSGASBFunctionalExpenseId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001675', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IPEDSFinance', @level2type = N'COLUMN', @level2name = N'RefIPEDSGASBFunctionalExpenseId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20656', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IPEDSFinance', @level2type = N'COLUMN', @level2name = N'RefIPEDSGASBFunctionalExpenseId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'IPEDS revenue classification used by degree-granting public institutions using GASB Reporting Standards for reporting revenues and other additions by source including all operating revenues, nonoperating revenues, and other additions for the reporting period. This includes unrestricted and restricted revenues and additions, whether expendable or nonexpendable.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IPEDSFinance', @level2type = N'COLUMN', @level2name = N'RefIPEDSGASBRevenueId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'IPEDS Finance GASB Revenue Category', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IPEDSFinance', @level2type = N'COLUMN', @level2name = N'RefIPEDSGASBRevenueId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001672', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IPEDSFinance', @level2type = N'COLUMN', @level2name = N'RefIPEDSGASBRevenueId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20653', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IPEDSFinance', @level2type = N'COLUMN', @level2name = N'RefIPEDSGASBRevenueId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'IPEDS revenue category used by degree-granting public institutions using GASB Reporting Standards for the reporting of resources received for supporting student scholarships and fellowships.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IPEDSFinance', @level2type = N'COLUMN', @level2name = N'RefIPEDSGASBScholarshipsandFellowshipsRevenueId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'IPEDS Finance GASB Scholarships and Fellowships Revenue Category', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IPEDSFinance', @level2type = N'COLUMN', @level2name = N'RefIPEDSGASBScholarshipsandFellowshipsRevenueId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001677', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IPEDSFinance', @level2type = N'COLUMN', @level2name = N'RefIPEDSGASBScholarshipsandFellowshipsRevenueId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20658', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IPEDSFinance', @level2type = N'COLUMN', @level2name = N'RefIPEDSGASBScholarshipsandFellowshipsRevenueId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Identifies the functional expense category where the institution allocates its intercollegiate athletics expenses.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IPEDSFinance', @level2type = N'COLUMN', @level2name = N'RefIPEDSIntercollegiateAthleticsExpensesId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'IPEDS Finance Intercollegiate Athletics Expenses', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IPEDSFinance', @level2type = N'COLUMN', @level2name = N'RefIPEDSIntercollegiateAthleticsExpensesId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001679', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IPEDSFinance', @level2type = N'COLUMN', @level2name = N'RefIPEDSIntercollegiateAthleticsExpensesId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20660', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IPEDSFinance', @level2type = N'COLUMN', @level2name = N'RefIPEDSIntercollegiateAthleticsExpensesId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A natural expense classification is a method of grouping expenses according to the type of costs that are incurred. The classifications tell what was purchased rather than why an expense was incurred.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IPEDSFinance', @level2type = N'COLUMN', @level2name = N'RefIPEDSNaturalExpenseId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'IPEDS Finance Natural Expense Category', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IPEDSFinance', @level2type = N'COLUMN', @level2name = N'RefIPEDSNaturalExpenseId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001676', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IPEDSFinance', @level2type = N'COLUMN', @level2name = N'RefIPEDSNaturalExpenseId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20657', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IPEDSFinance', @level2type = N'COLUMN', @level2name = N'RefIPEDSNaturalExpenseId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IPEDSFinance', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IPEDSFinance', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IPEDSFinance', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IPEDSFinance', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IPEDSFinance', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IPEDSFinance', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IPEDSFinance', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IPEDSFinance', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IPEDSFinance', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

