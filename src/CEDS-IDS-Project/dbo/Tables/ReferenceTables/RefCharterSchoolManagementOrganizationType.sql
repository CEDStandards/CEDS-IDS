CREATE TABLE [dbo].[RefCharterSchoolManagementOrganizationType] (
    [RefCharterSchoolManagementOrganizationTypeId] INT             IDENTITY (1, 1) NOT NULL,
    [Description]                                  NVARCHAR (150)  NOT NULL,
    [Code]                                         NVARCHAR (60)   NULL,
    [Definition]                                   NVARCHAR (4000) NULL,
    [RefJurisdictionId]                            INT             NULL,
    [SortOrder]                                    DECIMAL (6, 2)  NULL,
    [RecordStartDateTime]                          DATETIME        NULL,
    [RecordEndDateTime]                            DATETIME        NULL,
    CONSTRAINT [PK_RefCharterSchoolManagementOrganizationType] PRIMARY KEY CLUSTERED ([RefCharterSchoolManagementOrganizationTypeId] ASC),
    CONSTRAINT [FK_RefCharterSchoolManagementOrganizationType_Organization] FOREIGN KEY ([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of organization that is a separate legal entity that 1) contracts with one or more charter schools to manage, operate, and oversee the charter schools; or 2) holds a charter, or charters, to operate multiple charter schools.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefCharterSchoolManagementOrganizationType';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Charter School Management Organization Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefCharterSchoolManagementOrganizationType';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001650', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefCharterSchoolManagementOrganizationType';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20631', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefCharterSchoolManagementOrganizationType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefCharterSchoolManagementOrganizationType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefCharterSchoolManagementOrganizationType', @level2type = N'COLUMN', @level2name = N'RefCharterSchoolManagementOrganizationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A description for the options in this option set.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefCharterSchoolManagementOrganizationType', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefCharterSchoolManagementOrganizationType', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A code or abbreviation for the options in this option set.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefCharterSchoolManagementOrganizationType', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefCharterSchoolManagementOrganizationType', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The defintion for the options in this option set.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefCharterSchoolManagementOrganizationType', @level2type = N'COLUMN', @level2name = N'Definition';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate key from Organization identifying the publisher of the reference value.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefCharterSchoolManagementOrganizationType', @level2type = N'COLUMN', @level2name = N'RefJurisdictionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The sequence the options in this option set should be ordered.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefCharterSchoolManagementOrganizationType', @level2type = N'COLUMN', @level2name = N'SortOrder';

