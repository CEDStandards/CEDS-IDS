CREATE TABLE [dbo].[ELOrganizationStudentResponsibility] (
    [ELOrganizationStudentResponsibilityId] INT      IDENTITY (1, 1) NOT NULL,
    [OrganizationPersonRoleId]              INT      NOT NULL,
    [RefK12ResponsibilityTypeId]            INT      NULL,
    [RecordStartDateTime]                   DATETIME NULL,
    [RecordEndDateTime]                     DATETIME NULL,
    [RecordStatusId]                        INT      NULL,
    [DataCollectionId]                      INT      NULL,
    CONSTRAINT [PK_ELOrganizationStudentResponsibility] PRIMARY KEY CLUSTERED ([ELOrganizationStudentResponsibilityId] ASC),
    CONSTRAINT [FK_ELOrganizationStudentResponsibility_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_ELOrganizationStudentResponsibility_OrganizationPersonRole] FOREIGN KEY ([OrganizationPersonRoleId]) REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]),
    CONSTRAINT [FK_ELOrganizationStudentResponsibility_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_ELOrganizationStudentResponsibility_RefK12ResponsibilityType] FOREIGN KEY ([RefK12ResponsibilityTypeId]) REFERENCES [dbo].[RefK12ResponsibilityType] ([RefK12ResponsibilityTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The responsibility of an early learning organization to a student.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationStudentResponsibility';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationStudentResponsibility';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of services/instruction the school is responsible for providing to the student.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationStudentResponsibility', @level2type = N'COLUMN', @level2name = N'RefK12ResponsibilityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Responsible School Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationStudentResponsibility', @level2type = N'COLUMN', @level2name = N'RefK12ResponsibilityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000595', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationStudentResponsibility', @level2type = N'COLUMN', @level2name = N'RefK12ResponsibilityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=21588', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationStudentResponsibility', @level2type = N'COLUMN', @level2name = N'RefK12ResponsibilityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationStudentResponsibility', @level2type = N'COLUMN', @level2name = N'RefK12ResponsibilityTypeId';

