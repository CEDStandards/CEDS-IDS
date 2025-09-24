CREATE TABLE [dbo].[OrganizationSalaryScheduleSalary] (
    [OrganizationSalaryScheduleSalaryId]      INT            IDENTITY (1, 1) NOT NULL,
    [OrganizationId]                          INT            NOT NULL,
    [SalaryScheduleSalaryValue]               DECIMAL (9, 2) NOT NULL,
    [RefStandardOccupationalClassificationId] INT            NULL,
    [RefONETSOCOccupationTypeId]              INT            NULL,
    [RecordStartDateTime]                     DATETIME       NULL,
    [RecordEndDateTime]                       DATETIME       NULL,
    [RecordStatusId]                          INT            NULL,
    [DataCollectionId]                        INT            NULL,
    CONSTRAINT [PK_OrganizationSalaryScheduleSalary] PRIMARY KEY CLUSTERED ([OrganizationSalaryScheduleSalaryId] ASC),
    CONSTRAINT [FK_OrganizationSalaryScheduleSalary_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_OrganizationSalaryScheduleSalary_Organization] FOREIGN KEY ([OrganizationId]) REFERENCES [dbo].[Organization] ([OrganizationId]),
    CONSTRAINT [FK_OrganizationSalaryScheduleSalary_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_OrganizationSalaryScheduleSalary_RefONETSOCOccupationType] FOREIGN KEY ([RefONETSOCOccupationTypeId]) REFERENCES [dbo].[RefONETSOCOccupationType] ([RefONETSOCOccupationTypeId]),
    CONSTRAINT [FK_OrganizationSalaryScheduleSalary_RefStandardOccupationalClassification] FOREIGN KEY ([RefStandardOccupationalClassificationId]) REFERENCES [dbo].[RefStandardOccupationalClassification] ([RefStandardOccupationalClassificationId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The salary for the salary schedule and if relevant any occupation related classifications.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationSalaryScheduleSalary';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationSalaryScheduleSalary';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The salary or wage determined by the salary schedule criteria.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationSalaryScheduleSalary', @level2type = N'COLUMN', @level2name = N'SalaryScheduleSalaryValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Salary Schedule Salary Value', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationSalaryScheduleSalary', @level2type = N'COLUMN', @level2name = N'SalaryScheduleSalaryValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationSalaryScheduleSalary', @level2type = N'COLUMN', @level2name = N'SalaryScheduleSalaryValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25084', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationSalaryScheduleSalary', @level2type = N'COLUMN', @level2name = N'SalaryScheduleSalaryValue';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationSalaryScheduleSalary', @level2type = N'COLUMN', @level2name = N'SalaryScheduleSalaryValue';

