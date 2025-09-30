CREATE TABLE [dbo].[OrganizationSalaryScheduleCriteriaValue] (
    [OrganizationSalaryScheduleCriteriaValueId] INT            IDENTITY (1, 1) NOT NULL,
    [OrganizationSalaryScheduleCriteriaId]      INT            NOT NULL,
    [SalaryScheduleCriterionValue]              NVARCHAR (100) NOT NULL,
    [RecordStartDateTime]                       DATETIME       NULL,
    [RecordEndDateTime]                         DATETIME       NULL,
    [RecordStatusId]                            INT            NULL,
    [DataCollectionId]                          INT            NULL,
    CONSTRAINT [PK_OrganizationSalaryScheduleCriteriaValue] PRIMARY KEY CLUSTERED ([OrganizationSalaryScheduleCriteriaValueId] ASC),
    CONSTRAINT [FK_OrganizationSalaryScheduleCriteriaValue_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_OrganizationSalaryScheduleCriteriaValue_OrganizationSalaryScheduleCriteria] FOREIGN KEY ([OrganizationSalaryScheduleCriteriaId]) REFERENCES [dbo].[OrganizationSalaryScheduleCriteria] ([OrganizationSalaryScheduleCriteriaId]),
    CONSTRAINT [FK_OrganizationSalaryScheduleCriteriaValue_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The possible values associated with the criteria.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationSalaryScheduleCriteriaValue';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationSalaryScheduleCriteriaValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A unique value or code assigned to a salary schedule criterion used to differentiate between the achievable levels of the criterion.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationSalaryScheduleCriteriaValue', @level2type = N'COLUMN', @level2name = N'SalaryScheduleCriterionValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Salary Schedule Criterion Value', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationSalaryScheduleCriteriaValue', @level2type = N'COLUMN', @level2name = N'SalaryScheduleCriterionValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002108', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationSalaryScheduleCriteriaValue', @level2type = N'COLUMN', @level2name = N'SalaryScheduleCriterionValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25083', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationSalaryScheduleCriteriaValue', @level2type = N'COLUMN', @level2name = N'SalaryScheduleCriterionValue';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationSalaryScheduleCriteriaValue', @level2type = N'COLUMN', @level2name = N'SalaryScheduleCriterionValue';

