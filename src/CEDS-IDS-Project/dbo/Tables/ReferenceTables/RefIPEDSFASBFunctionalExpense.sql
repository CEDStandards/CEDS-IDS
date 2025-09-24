CREATE TABLE [dbo].[RefIPEDSFASBFunctionalExpense] (
    [RefIPEDSFASBFunctionalExpenseId] INT             IDENTITY (1, 1) NOT NULL,
    [Description]                     NVARCHAR (150)  NOT NULL,
    [Code]                            NVARCHAR (60)   NULL,
    [Definition]                      NVARCHAR (4000) NULL,
    [RefJurisdictionId]               INT             NULL,
    [SortOrder]                       DECIMAL (6, 2)  NULL,
    [RecordStartDateTime]             DATETIME        NULL,
    [RecordEndDateTime]               DATETIME        NULL,
    CONSTRAINT [PK_RefIPEDSFASBFunctionalExpense] PRIMARY KEY CLUSTERED ([RefIPEDSFASBFunctionalExpenseId] ASC),
    CONSTRAINT [FK_RefIPEDSFASBFunctionalExpense_Organization] FOREIGN KEY ([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A functional expense classification is a method of grouping expenses according to the purpose for which the costs are incurred. The classifications tell why an expense was incurred rather than what was purchased.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefIPEDSFASBFunctionalExpense';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'IPEDS Finance FASB Functional Expense Category', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefIPEDSFASBFunctionalExpense';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001659', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefIPEDSFASBFunctionalExpense';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20640', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefIPEDSFASBFunctionalExpense';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The surrogate key for the options in this option set.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefIPEDSFASBFunctionalExpense', @level2type = N'COLUMN', @level2name = N'RefIPEDSFASBFunctionalExpenseId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A description for the options in this option set.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefIPEDSFASBFunctionalExpense', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefIPEDSFASBFunctionalExpense', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A code or abbreviation for the options in this option set.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefIPEDSFASBFunctionalExpense', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefIPEDSFASBFunctionalExpense', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The defintion for the options in this option set.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefIPEDSFASBFunctionalExpense', @level2type = N'COLUMN', @level2name = N'Definition';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefIPEDSFASBFunctionalExpense', @level2type = N'COLUMN', @level2name = N'Definition';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate key from Organization identifying the publisher of the reference value.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefIPEDSFASBFunctionalExpense', @level2type = N'COLUMN', @level2name = N'RefJurisdictionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The sequence the options in this option set should be ordered.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefIPEDSFASBFunctionalExpense', @level2type = N'COLUMN', @level2name = N'SortOrder';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefIPEDSFASBFunctionalExpense', @level2type = N'COLUMN', @level2name = N'SortOrder';

