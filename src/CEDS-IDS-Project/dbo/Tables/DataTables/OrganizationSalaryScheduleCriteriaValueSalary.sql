CREATE TABLE [dbo].[OrganizationSalaryScheduleCriteriaValueSalary] (
    [OrganizationSalaryScheduleCriteriaValueSalaryId] INT      IDENTITY (1, 1) NOT NULL,
    [OrganizationSalaryScheduleCriteriaValueId]       INT      NOT NULL,
    [OrganizationSalaryScheduleSalaryId]              INT      NOT NULL,
    [OrganizationId]                                  INT      NOT NULL,
    [RecordStartDateTime]                             DATETIME NULL,
    [RecordEndDateTime]                               DATETIME NULL,
    [RecordStatusId]                                  INT      NULL,
    [DataCollectionId]                                INT      NULL,
    CONSTRAINT [PK_OrganizationSalaryScheduleCriteriaValueSalary] PRIMARY KEY CLUSTERED ([OrganizationSalaryScheduleCriteriaValueSalaryId] ASC),
    CONSTRAINT [FK_OrganizationSalaryScheduleCriteriaValueSalary_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_OrganizationSalaryScheduleCriteriaValueSalary_Organization] FOREIGN KEY ([OrganizationId]) REFERENCES [dbo].[Organization] ([OrganizationId]),
    CONSTRAINT [FK_OrganizationSalaryScheduleCriteriaValueSalary_OrganizationSalaryScheduleCriteriaValue] FOREIGN KEY ([OrganizationSalaryScheduleCriteriaValueId]) REFERENCES [dbo].[OrganizationSalaryScheduleCriteriaValue] ([OrganizationSalaryScheduleCriteriaValueId]),
    CONSTRAINT [FK_OrganizationSalaryScheduleCriteriaValueSalary_OrganizationSalaryScheduleSalary] FOREIGN KEY ([OrganizationSalaryScheduleSalaryId]) REFERENCES [dbo].[OrganizationSalaryScheduleSalary] ([OrganizationSalaryScheduleSalaryId]),
    CONSTRAINT [FK_OrganizationSalaryScheduleCriteriaValueSalary_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The relationship between the salary schedule criteria value and the salary schedule salary value.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationSalaryScheduleCriteriaValueSalary';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationSalaryScheduleCriteriaValueSalary';

