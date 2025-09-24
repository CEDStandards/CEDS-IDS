CREATE TABLE [dbo].[RefK12ResponsibilityType] (
    [RefK12ResponsibilityTypeId] INT             IDENTITY (1, 1) NOT NULL,
    [Description]                NVARCHAR (150)  NOT NULL,
    [Code]                       NVARCHAR (50)   NULL,
    [Definition]                 NVARCHAR (4000) NULL,
    [RefJurisdictionId]          INT             NULL,
    [SortOrder]                  DECIMAL (5, 2)  NULL,
    [RecordStartDateTime]        DATETIME        NULL,
    [RecordEndDateTime]          DATETIME        NULL,
    CONSTRAINT [PK_RefK12ResponsibilityType] PRIMARY KEY CLUSTERED ([RefK12ResponsibilityTypeId] ASC),
    CONSTRAINT [FK_RefK12ResponsibilityType_Organization] FOREIGN KEY ([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of services/instruction the organization is responsible for the student.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefK12ResponsibilityType';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Responsible District Type, Responsible School Type, Responsible District Identifier, Responsible School Identifier, Responsible Organization Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefK12ResponsibilityType';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000594, 000595, 000637, 000638, 001467', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefK12ResponsibilityType';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19587, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19588, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19639, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19640, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20439', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefK12ResponsibilityType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefK12ResponsibilityType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefK12ResponsibilityType', @level2type = N'COLUMN', @level2name = N'RefK12ResponsibilityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A description for the options in this option set.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefK12ResponsibilityType', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefK12ResponsibilityType', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A code or abbreviation for the options in this option set.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefK12ResponsibilityType', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefK12ResponsibilityType', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The defintion for the options in this option set.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefK12ResponsibilityType', @level2type = N'COLUMN', @level2name = N'Definition';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate key from Organization identifying the publisher of the reference value.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefK12ResponsibilityType', @level2type = N'COLUMN', @level2name = N'RefJurisdictionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The sequence the options in this option set should be ordered.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefK12ResponsibilityType', @level2type = N'COLUMN', @level2name = N'SortOrder';

