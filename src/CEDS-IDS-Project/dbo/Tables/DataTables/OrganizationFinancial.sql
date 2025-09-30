CREATE TABLE [dbo].[OrganizationFinancial] (
    [OrganizationFinancialId]       INT             IDENTITY (1, 1) NOT NULL,
    [FinancialAccountId]            INT             NOT NULL,
    [OrganizationCalendarSessionId] INT             NOT NULL,
    [ActualValue]                   DECIMAL (12, 2) NULL,
    [BudgetedValue]                 DECIMAL (12, 1) NULL,
    [Date]                          DATE            NULL,
    [EncumberedValue]               DECIMAL (9, 2)  NULL,
    [Value]                         DECIMAL (9, 2)  NULL,
    [FiscalPeriodBeginDate]         DATE            NULL,
    [FiscalPeriodEndDate]           DATE            NULL,
    [FiscalYear]                    NCHAR (4)       NULL,
    [FinancialAccountProgramId]     INT             NULL,
    [RecordStartDateTime]           DATETIME        NULL,
    [RecordEndDateTime]             DATETIME        NULL,
    [RecordStatusId]                INT             NULL,
    [DataCollectionId]              INT             NULL,
    CONSTRAINT [PK_OrganizationFinancial] PRIMARY KEY CLUSTERED ([OrganizationFinancialId] ASC),
    CONSTRAINT [FK_OrganizationFinancial_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_OrganizationFinancial_FinancialAccount] FOREIGN KEY ([FinancialAccountId]) REFERENCES [dbo].[FinancialAccount] ([FinancialAccountId]),
    CONSTRAINT [FK_OrganizationFinancial_FinancialAccountProgram] FOREIGN KEY ([FinancialAccountProgramId]) REFERENCES [dbo].[FinancialAccountProgram] ([FinancialAccountProgramId]),
    CONSTRAINT [FK_OrganizationFinancial_OrgCalendarSession] FOREIGN KEY ([OrganizationCalendarSessionId]) REFERENCES [dbo].[OrganizationCalendarSession] ([OrganizationCalendarSessionId]),
    CONSTRAINT [FK_OrganizationFinancial_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The intersection of FinancialAccount and OrganizationCalendarSession (representing an AccountingPeriod) and containing the values for that accounting period.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFinancial';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFinancial';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFinancial', @level2type = N'COLUMN', @level2name = N'OrganizationFinancialId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key to FinancialAccount', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFinancial', @level2type = N'COLUMN', @level2name = N'FinancialAccountId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key to OrganizationCalendarSession', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFinancial', @level2type = N'COLUMN', @level2name = N'OrganizationCalendarSessionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The actual value of a financial account for the specified accounting period or fiscal year.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFinancial', @level2type = N'COLUMN', @level2name = N'ActualValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Financial Accounting Period Actual Value', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFinancial', @level2type = N'COLUMN', @level2name = N'ActualValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001350', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFinancial', @level2type = N'COLUMN', @level2name = N'ActualValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20317', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFinancial', @level2type = N'COLUMN', @level2name = N'ActualValue';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFinancial', @level2type = N'COLUMN', @level2name = N'ActualValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The budgeted value of a financial account for the specified accounting period or fiscal year.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFinancial', @level2type = N'COLUMN', @level2name = N'BudgetedValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Financial Accounting Period Budgeted Value', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFinancial', @level2type = N'COLUMN', @level2name = N'BudgetedValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001351', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFinancial', @level2type = N'COLUMN', @level2name = N'BudgetedValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20318', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFinancial', @level2type = N'COLUMN', @level2name = N'BudgetedValue';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFinancial', @level2type = N'COLUMN', @level2name = N'BudgetedValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The date of a financial transaction or when an account balance is reported.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFinancial', @level2type = N'COLUMN', @level2name = N'Date';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Financial Accounting Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFinancial', @level2type = N'COLUMN', @level2name = N'Date';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001648', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFinancial', @level2type = N'COLUMN', @level2name = N'Date';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20629', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFinancial', @level2type = N'COLUMN', @level2name = N'Date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFinancial', @level2type = N'COLUMN', @level2name = N'Date';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The planned or obligated expense value of a financial account for the specified accounting period or fiscal year.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFinancial', @level2type = N'COLUMN', @level2name = N'EncumberedValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Financial Accounting Period Encumbered Value', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFinancial', @level2type = N'COLUMN', @level2name = N'EncumberedValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001644', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFinancial', @level2type = N'COLUMN', @level2name = N'EncumberedValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20625', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFinancial', @level2type = N'COLUMN', @level2name = N'EncumberedValue';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFinancial', @level2type = N'COLUMN', @level2name = N'EncumberedValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The value of a financial account balance or transaction.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFinancial', @level2type = N'COLUMN', @level2name = N'Value';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Financial Accounting Value', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFinancial', @level2type = N'COLUMN', @level2name = N'Value';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001647', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFinancial', @level2type = N'COLUMN', @level2name = N'Value';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20628', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFinancial', @level2type = N'COLUMN', @level2name = N'Value';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFinancial', @level2type = N'COLUMN', @level2name = N'Value';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The year, month and day on which an accounting period begins.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFinancial', @level2type = N'COLUMN', @level2name = N'FiscalPeriodBeginDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Fiscal Period Begin Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFinancial', @level2type = N'COLUMN', @level2name = N'FiscalPeriodBeginDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001642', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFinancial', @level2type = N'COLUMN', @level2name = N'FiscalPeriodBeginDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20623', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFinancial', @level2type = N'COLUMN', @level2name = N'FiscalPeriodBeginDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFinancial', @level2type = N'COLUMN', @level2name = N'FiscalPeriodBeginDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The year, month and day on which an accounting period ends.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFinancial', @level2type = N'COLUMN', @level2name = N'FiscalPeriodEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Fiscal Period End Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFinancial', @level2type = N'COLUMN', @level2name = N'FiscalPeriodEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001643', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFinancial', @level2type = N'COLUMN', @level2name = N'FiscalPeriodEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20624', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFinancial', @level2type = N'COLUMN', @level2name = N'FiscalPeriodEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFinancial', @level2type = N'COLUMN', @level2name = N'FiscalPeriodEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The year a school uses for budgeting, accounting, and reporting financials.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFinancial', @level2type = N'COLUMN', @level2name = N'FiscalYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Fiscal Year', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFinancial', @level2type = N'COLUMN', @level2name = N'FiscalYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001639', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFinancial', @level2type = N'COLUMN', @level2name = N'FiscalYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20620', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFinancial', @level2type = N'COLUMN', @level2name = N'FiscalYear';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFinancial', @level2type = N'COLUMN', @level2name = N'FiscalYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A name and number given to a program area within an educational institution''s accounting system.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFinancial', @level2type = N'COLUMN', @level2name = N'FinancialAccountProgramId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFinancial', @level2type = N'COLUMN', @level2name = N'FinancialAccountProgramId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFinancial', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFinancial', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFinancial', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFinancial', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFinancial', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFinancial', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFinancial', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFinancial', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFinancial', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFinancial', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

