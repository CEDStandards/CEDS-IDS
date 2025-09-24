CREATE TABLE [dbo].[RefFinancialAccountLocalProgramCode] (
    [RefFinancialAccountLocalProgramCodeId]             INT             IDENTITY (1, 1) NOT NULL,
    [Description]                                       NVARCHAR (150)  NOT NULL,
    [Code]                                              NVARCHAR (150)  NOT NULL,
    [Definition]                                        NVARCHAR (4000) NULL,
    [RefJurisdictionId]                                 INT             NULL,
    [RefFinancialAccountCodingSystemOrganizationTypeId] INT             NULL,
    [SortOrder]                                         DECIMAL (5, 2)  NULL,
    [RecordStartDateTime]                               DATETIME        NULL,
    [RecordEndDateTime]                                 DATETIME        NULL,
    CONSTRAINT [PK_RefFinancialAccountLocalProgramCode] PRIMARY KEY CLUSTERED ([RefFinancialAccountLocalProgramCodeId] ASC),
    CONSTRAINT [FK_RefFinancialAccountLocalProgramCode_Organization] FOREIGN KEY ([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId]),
    CONSTRAINT [FK_RefFinancialAccountLocalProgramCode_RefFinancialAccountCodingSystemOrganizationType] FOREIGN KEY ([RefFinancialAccountCodingSystemOrganizationTypeId]) REFERENCES [dbo].[RefFinancialAccountCodingSystemOrganizationType] ([RefFinancialAccountCodingSystemOrganizationTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A local code used to describe a plan of activities and procedures designed to accomplish a predetermined objective or set of objectives.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalProgramCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalProgramCode';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A local code used to describe a plan of activities and procedures designed to accomplish a predetermined objective or set of objectives.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalProgramCode', @level2type = N'COLUMN', @level2name = N'RefFinancialAccountLocalProgramCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Financial Account Local Program Code', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalProgramCode', @level2type = N'COLUMN', @level2name = N'RefFinancialAccountLocalProgramCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002009', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalProgramCode', @level2type = N'COLUMN', @level2name = N'RefFinancialAccountLocalProgramCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=22984', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalProgramCode', @level2type = N'COLUMN', @level2name = N'RefFinancialAccountLocalProgramCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalProgramCode', @level2type = N'COLUMN', @level2name = N'RefFinancialAccountLocalProgramCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A local code used to describe a plan of activities and procedures designed to accomplish a predetermined objective or set of objectives.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalProgramCode', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Financial Account Local Program Code', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalProgramCode', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002009', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalProgramCode', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=22984', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalProgramCode', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalProgramCode', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A local code used to describe a plan of activities and procedures designed to accomplish a predetermined objective or set of objectives.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalProgramCode', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Financial Account Local Program Code', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalProgramCode', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002009', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalProgramCode', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=22984', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalProgramCode', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalProgramCode', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A local code used to describe a plan of activities and procedures designed to accomplish a predetermined objective or set of objectives.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalProgramCode', @level2type = N'COLUMN', @level2name = N'Definition';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Financial Account Local Program Code', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalProgramCode', @level2type = N'COLUMN', @level2name = N'Definition';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002009', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalProgramCode', @level2type = N'COLUMN', @level2name = N'Definition';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=22984', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalProgramCode', @level2type = N'COLUMN', @level2name = N'Definition';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalProgramCode', @level2type = N'COLUMN', @level2name = N'Definition';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A local code used to describe a plan of activities and procedures designed to accomplish a predetermined objective or set of objectives.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalProgramCode', @level2type = N'COLUMN', @level2name = N'RefJurisdictionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Financial Account Local Program Code', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalProgramCode', @level2type = N'COLUMN', @level2name = N'RefJurisdictionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002009', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalProgramCode', @level2type = N'COLUMN', @level2name = N'RefJurisdictionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=22984', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalProgramCode', @level2type = N'COLUMN', @level2name = N'RefJurisdictionId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalProgramCode', @level2type = N'COLUMN', @level2name = N'RefJurisdictionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A local code used to describe a plan of activities and procedures designed to accomplish a predetermined objective or set of objectives.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalProgramCode', @level2type = N'COLUMN', @level2name = N'RefFinancialAccountCodingSystemOrganizationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Financial Account Local Program Code', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalProgramCode', @level2type = N'COLUMN', @level2name = N'RefFinancialAccountCodingSystemOrganizationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002009', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalProgramCode', @level2type = N'COLUMN', @level2name = N'RefFinancialAccountCodingSystemOrganizationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=22984', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalProgramCode', @level2type = N'COLUMN', @level2name = N'RefFinancialAccountCodingSystemOrganizationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalProgramCode', @level2type = N'COLUMN', @level2name = N'RefFinancialAccountCodingSystemOrganizationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A local code used to describe a plan of activities and procedures designed to accomplish a predetermined objective or set of objectives.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalProgramCode', @level2type = N'COLUMN', @level2name = N'SortOrder';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Financial Account Local Program Code', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalProgramCode', @level2type = N'COLUMN', @level2name = N'SortOrder';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002009', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalProgramCode', @level2type = N'COLUMN', @level2name = N'SortOrder';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=22984', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalProgramCode', @level2type = N'COLUMN', @level2name = N'SortOrder';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalProgramCode', @level2type = N'COLUMN', @level2name = N'SortOrder';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A local code used to describe a plan of activities and procedures designed to accomplish a predetermined objective or set of objectives.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalProgramCode', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Financial Account Local Program Code', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalProgramCode', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002009', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalProgramCode', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=22984', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalProgramCode', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalProgramCode', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A local code used to describe a plan of activities and procedures designed to accomplish a predetermined objective or set of objectives.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalProgramCode', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Financial Account Local Program Code', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalProgramCode', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002009', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalProgramCode', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=22984', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalProgramCode', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefFinancialAccountLocalProgramCode', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

