CREATE TABLE [dbo].[RefOrganizationIndicator] (
    [RefOrganizationIndicatorId] INT             IDENTITY (1, 1) NOT NULL,
    [Description]                NVARCHAR (150)  NOT NULL,
    [Code]                       NVARCHAR (50)   NULL,
    [Definition]                 NVARCHAR (4000) NULL,
    [RefJurisdictionId]          INT             NULL,
    [RefOrganizationTypeId]      INT             NULL,
    [SortOrder]                  DECIMAL (5, 2)  NULL,
    [RecordStartDateTime]        DATETIME        NULL,
    [RecordEndDateTime]          DATETIME        NULL,
    CONSTRAINT [PK_RefOrganizationIndicator] PRIMARY KEY CLUSTERED ([RefOrganizationIndicatorId] ASC),
    CONSTRAINT [FK_RefOrganizationIndicator_Organization] FOREIGN KEY ([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId]),
    CONSTRAINT [FK_RefOrganizationIndicator_RefOrganizationType] FOREIGN KEY ([RefOrganizationTypeId]) REFERENCES [dbo].[RefOrganizationType] ([RefOrganizationTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The types of indicators for an organization.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefOrganizationIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Ability Grouping Status, Advanced Placement Course Self Selection, Persistently Lowest Achieving School Status, Shared Time Indicator, Program Provides Translated Materials, Early Learning Program Developmental Screening Status, Program Provides Written Handbook, Program Collects Parental Feedback, Program Provides Parent Involvement Opportunity, Program Provides Parent Education, Assessment Shared With Parents, Program Follows Salary Scale, Differential Shift Pay Indicator, Virtual Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefOrganizationIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000328, 000017, 000211, 000257, 000845, 000848, 000853, 000854, 000855, 000856, 000858, 000863, 000868, 001160', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefOrganizationIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19000, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19017, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19211, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19257, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19845, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19848, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19853, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19854, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19855, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19856, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19858, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19863, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19868, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20167', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefOrganizationIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefOrganizationIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefOrganizationIndicator', @level2type = N'COLUMN', @level2name = N'RefOrganizationIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A description for the options in this option set.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefOrganizationIndicator', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefOrganizationIndicator', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A code or abbreviation for the options in this option set.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefOrganizationIndicator', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefOrganizationIndicator', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The defintion for the options in this option set.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefOrganizationIndicator', @level2type = N'COLUMN', @level2name = N'Definition';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate key from Organization identifying the publisher of the reference value.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefOrganizationIndicator', @level2type = N'COLUMN', @level2name = N'RefJurisdictionId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Indicators may only apply to some types of organizations.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefOrganizationIndicator', @level2type = N'COLUMN', @level2name = N'RefOrganizationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The sequence the options in this option set should be ordered.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefOrganizationIndicator', @level2type = N'COLUMN', @level2name = N'SortOrder';

