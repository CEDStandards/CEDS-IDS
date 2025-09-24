CREATE TABLE [dbo].[RefELServiceProfessionalStaffClassification] (
    [RefELServiceProfessionalStaffClassificationId] INT             IDENTITY (1, 1) NOT NULL,
    [Description]                                   NVARCHAR (150)  NOT NULL,
    [Code]                                          NVARCHAR (50)   NULL,
    [Definition]                                    NVARCHAR (4000) NULL,
    [RefJurisdictionId]                             INT             NULL,
    [SortOrder]                                     DECIMAL (5, 2)  NULL,
    [RecordStartDateTime]                           DATETIME        NULL,
    [RecordEndDateTime]                             DATETIME        NULL,
    CONSTRAINT [PK_RefELServiceProfessionalStaffClassification] PRIMARY KEY CLUSTERED ([RefELServiceProfessionalStaffClassificationId] ASC),
    CONSTRAINT [FK_RefELServiceProfessionalStaffClassification_Organization] FOREIGN KEY ([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The title/role of employment, official status, or rank of early learning service professionals', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefELServiceProfessionalStaffClassification';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Early Learning Service Professional Staff Classification', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefELServiceProfessionalStaffClassification';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001636', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefELServiceProfessionalStaffClassification';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20617', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefELServiceProfessionalStaffClassification';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefELServiceProfessionalStaffClassification';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefELServiceProfessionalStaffClassification', @level2type = N'COLUMN', @level2name = N'RefELServiceProfessionalStaffClassificationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A description for the options in this option set.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefELServiceProfessionalStaffClassification', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefELServiceProfessionalStaffClassification', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A code or abbreviation for the options in this option set.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefELServiceProfessionalStaffClassification', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefELServiceProfessionalStaffClassification', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The defintion for the options in this option set.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefELServiceProfessionalStaffClassification', @level2type = N'COLUMN', @level2name = N'Definition';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate key from Organization identifying the publisher of the reference value.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefELServiceProfessionalStaffClassification', @level2type = N'COLUMN', @level2name = N'RefJurisdictionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The sequence the options in this option set should be ordered.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefELServiceProfessionalStaffClassification', @level2type = N'COLUMN', @level2name = N'SortOrder';

