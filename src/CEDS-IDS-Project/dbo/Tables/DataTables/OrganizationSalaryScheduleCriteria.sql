CREATE TABLE [dbo].[OrganizationSalaryScheduleCriteria] (
    [OrganizationSalaryScheduleCriteriaId] INT             IDENTITY (1, 1) NOT NULL,
    [OrganizationId]                       INT             NOT NULL,
    [SalaryScheduleCriterionName]          NVARCHAR (100)  NULL,
    [SalaryScheduleCriterionDescription]   NVARCHAR (4000) NULL,
    [RecordStartDateTime]                  DATETIME        NULL,
    [RecordEndDateTime]                    DATETIME        NULL,
    [RecordStatusId]                       INT             NULL,
    [DataCollectionId]                     INT             NULL,
    CONSTRAINT [PK_OrganizationSalaryScheduleCriteria] PRIMARY KEY CLUSTERED ([OrganizationSalaryScheduleCriteriaId] ASC),
    CONSTRAINT [FK_OrganizationSalaryScheduleCriteria_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_OrganizationSalaryScheduleCriteria_Organization] FOREIGN KEY ([OrganizationId]) REFERENCES [dbo].[Organization] ([OrganizationId]),
    CONSTRAINT [FK_OrganizationSalaryScheduleCriteria_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Criteria defined by an organization used to determine a salary schedule.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationSalaryScheduleCriteria';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationSalaryScheduleCriteria';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A name given to a specific criterion used to determine a salary provided or offered.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationSalaryScheduleCriteria', @level2type = N'COLUMN', @level2name = N'SalaryScheduleCriterionName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Salary Schedule Criterion Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationSalaryScheduleCriteria', @level2type = N'COLUMN', @level2name = N'SalaryScheduleCriterionName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002106', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationSalaryScheduleCriteria', @level2type = N'COLUMN', @level2name = N'SalaryScheduleCriterionName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25082', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationSalaryScheduleCriteria', @level2type = N'COLUMN', @level2name = N'SalaryScheduleCriterionName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationSalaryScheduleCriteria', @level2type = N'COLUMN', @level2name = N'SalaryScheduleCriterionName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A description given to a specific criterion used to determine a salary provided or offered.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationSalaryScheduleCriteria', @level2type = N'COLUMN', @level2name = N'SalaryScheduleCriterionDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Salary Schedule Criterion Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationSalaryScheduleCriteria', @level2type = N'COLUMN', @level2name = N'SalaryScheduleCriterionDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002107', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationSalaryScheduleCriteria', @level2type = N'COLUMN', @level2name = N'SalaryScheduleCriterionDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25081', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationSalaryScheduleCriteria', @level2type = N'COLUMN', @level2name = N'SalaryScheduleCriterionDescription';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationSalaryScheduleCriteria', @level2type = N'COLUMN', @level2name = N'SalaryScheduleCriterionDescription';

