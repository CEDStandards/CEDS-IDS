CREATE TABLE [dbo].[RefFinancialAccountLocalBalanceSheetCode] (
    [RefFinancialAccountLocalBalanceSheetCodeId]        INT             IDENTITY (1, 1) NOT NULL,
    [Description]                                       NVARCHAR (150)  NOT NULL,
    [Code]                                              NVARCHAR (150)  NOT NULL,
    [Definition]                                        NVARCHAR (4000) NULL,
    [RefJurisdictionId]                                 INT             NULL,
    [RefFinancialAccountCodingSystemOrganizationTypeId] INT             NULL,
    [SortOrder]                                         DECIMAL (5, 2)  NULL,
    [RecordStartDateTime]                               DATETIME        NULL,
    [RecordEndDateTime]                                 DATETIME        NULL,
    CONSTRAINT [PK_RefFinancialAccountLocalBalanceSheetCode] PRIMARY KEY CLUSTERED ([RefFinancialAccountLocalBalanceSheetCodeId] ASC),
    CONSTRAINT [FK_RefFinancialAccountLocalBalanceSheetCode_Organization] FOREIGN KEY ([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId]),
    CONSTRAINT [FK_RefFinancialAccountLocalBalanceSheetCode_RefFinancialAccountCodingSystemOrganizationType] FOREIGN KEY ([RefFinancialAccountCodingSystemOrganizationTypeId]) REFERENCES [dbo].[RefFinancialAccountCodingSystemOrganizationType] ([RefFinancialAccountCodingSystemOrganizationTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A local code used to describe balance sheet accounts and statement of net position accounts which are used to track financial transactions for each fund. Such financial statements only report assets, deferred outflows of resources, liabilities, deferred inflows of resources, and equity accounts and are considered "snapshots" of how these accounts stand as of a certain point in time.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalBalanceSheetCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalBalanceSheetCode';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A local code used to describe balance sheet accounts and statement of net position accounts which are used to track financial transactions for each fund. Such financial statements only report assets, deferred outflows of resources, liabilities, deferred inflows of resources, and equity accounts and are considered "snapshots" of how these accounts stand as of a certain point in time.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalBalanceSheetCode', @level2type = N'COLUMN', @level2name = N'RefFinancialAccountLocalBalanceSheetCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Financial Account Local Balance Sheet Code', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalBalanceSheetCode', @level2type = N'COLUMN', @level2name = N'RefFinancialAccountLocalBalanceSheetCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002007', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalBalanceSheetCode', @level2type = N'COLUMN', @level2name = N'RefFinancialAccountLocalBalanceSheetCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=22982', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalBalanceSheetCode', @level2type = N'COLUMN', @level2name = N'RefFinancialAccountLocalBalanceSheetCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalBalanceSheetCode', @level2type = N'COLUMN', @level2name = N'RefFinancialAccountLocalBalanceSheetCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A local code used to describe balance sheet accounts and statement of net position accounts which are used to track financial transactions for each fund. Such financial statements only report assets, deferred outflows of resources, liabilities, deferred inflows of resources, and equity accounts and are considered "snapshots" of how these accounts stand as of a certain point in time.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalBalanceSheetCode', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Financial Account Local Balance Sheet Code', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalBalanceSheetCode', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002007', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalBalanceSheetCode', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=22982', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalBalanceSheetCode', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalBalanceSheetCode', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A local code used to describe balance sheet accounts and statement of net position accounts which are used to track financial transactions for each fund. Such financial statements only report assets, deferred outflows of resources, liabilities, deferred inflows of resources, and equity accounts and are considered "snapshots" of how these accounts stand as of a certain point in time.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalBalanceSheetCode', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Financial Account Local Balance Sheet Code', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalBalanceSheetCode', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002007', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalBalanceSheetCode', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=22982', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalBalanceSheetCode', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalBalanceSheetCode', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A local code used to describe balance sheet accounts and statement of net position accounts which are used to track financial transactions for each fund. Such financial statements only report assets, deferred outflows of resources, liabilities, deferred inflows of resources, and equity accounts and are considered "snapshots" of how these accounts stand as of a certain point in time.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalBalanceSheetCode', @level2type = N'COLUMN', @level2name = N'Definition';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Financial Account Local Balance Sheet Code', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalBalanceSheetCode', @level2type = N'COLUMN', @level2name = N'Definition';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002007', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalBalanceSheetCode', @level2type = N'COLUMN', @level2name = N'Definition';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=22982', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalBalanceSheetCode', @level2type = N'COLUMN', @level2name = N'Definition';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalBalanceSheetCode', @level2type = N'COLUMN', @level2name = N'Definition';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A local code used to describe balance sheet accounts and statement of net position accounts which are used to track financial transactions for each fund. Such financial statements only report assets, deferred outflows of resources, liabilities, deferred inflows of resources, and equity accounts and are considered "snapshots" of how these accounts stand as of a certain point in time.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalBalanceSheetCode', @level2type = N'COLUMN', @level2name = N'RefJurisdictionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Financial Account Local Balance Sheet Code', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalBalanceSheetCode', @level2type = N'COLUMN', @level2name = N'RefJurisdictionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002007', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalBalanceSheetCode', @level2type = N'COLUMN', @level2name = N'RefJurisdictionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=22982', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalBalanceSheetCode', @level2type = N'COLUMN', @level2name = N'RefJurisdictionId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalBalanceSheetCode', @level2type = N'COLUMN', @level2name = N'RefJurisdictionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A local code used to describe balance sheet accounts and statement of net position accounts which are used to track financial transactions for each fund. Such financial statements only report assets, deferred outflows of resources, liabilities, deferred inflows of resources, and equity accounts and are considered "snapshots" of how these accounts stand as of a certain point in time.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalBalanceSheetCode', @level2type = N'COLUMN', @level2name = N'RefFinancialAccountCodingSystemOrganizationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Financial Account Local Balance Sheet Code', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalBalanceSheetCode', @level2type = N'COLUMN', @level2name = N'RefFinancialAccountCodingSystemOrganizationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002007', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalBalanceSheetCode', @level2type = N'COLUMN', @level2name = N'RefFinancialAccountCodingSystemOrganizationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=22982', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalBalanceSheetCode', @level2type = N'COLUMN', @level2name = N'RefFinancialAccountCodingSystemOrganizationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalBalanceSheetCode', @level2type = N'COLUMN', @level2name = N'RefFinancialAccountCodingSystemOrganizationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A local code used to describe balance sheet accounts and statement of net position accounts which are used to track financial transactions for each fund. Such financial statements only report assets, deferred outflows of resources, liabilities, deferred inflows of resources, and equity accounts and are considered "snapshots" of how these accounts stand as of a certain point in time.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalBalanceSheetCode', @level2type = N'COLUMN', @level2name = N'SortOrder';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Financial Account Local Balance Sheet Code', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalBalanceSheetCode', @level2type = N'COLUMN', @level2name = N'SortOrder';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002007', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalBalanceSheetCode', @level2type = N'COLUMN', @level2name = N'SortOrder';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=22982', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalBalanceSheetCode', @level2type = N'COLUMN', @level2name = N'SortOrder';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalBalanceSheetCode', @level2type = N'COLUMN', @level2name = N'SortOrder';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A local code used to describe balance sheet accounts and statement of net position accounts which are used to track financial transactions for each fund. Such financial statements only report assets, deferred outflows of resources, liabilities, deferred inflows of resources, and equity accounts and are considered "snapshots" of how these accounts stand as of a certain point in time.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalBalanceSheetCode', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Financial Account Local Balance Sheet Code', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalBalanceSheetCode', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002007', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalBalanceSheetCode', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=22982', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalBalanceSheetCode', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalBalanceSheetCode', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A local code used to describe balance sheet accounts and statement of net position accounts which are used to track financial transactions for each fund. Such financial statements only report assets, deferred outflows of resources, liabilities, deferred inflows of resources, and equity accounts and are considered "snapshots" of how these accounts stand as of a certain point in time.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalBalanceSheetCode', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Financial Account Local Balance Sheet Code', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalBalanceSheetCode', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002007', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalBalanceSheetCode', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=22982', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalBalanceSheetCode', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalBalanceSheetCode', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

