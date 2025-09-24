CREATE TABLE [dbo].[RefAssessmentFormSectionIdentificationSystem] (
    [RefAssessmentFormSectionIdentificationSystemId] INT             IDENTITY (1, 1) NOT NULL,
    [Description]                                    NVARCHAR (150)  NOT NULL,
    [Code]                                           NVARCHAR (50)   NULL,
    [Definition]                                     NVARCHAR (4000) NULL,
    [RefJurisdictionId]                              INT             NULL,
    [SortOrder]                                      DECIMAL (5, 2)  NULL,
    [RecordStartDateTime]                            DATETIME        NULL,
    [RecordEndDateTime]                              DATETIME        NULL,
    CONSTRAINT [PK__RefAssessmentFormSectionIdentificationSystem] PRIMARY KEY CLUSTERED ([RefAssessmentFormSectionIdentificationSystemId] ASC),
    CONSTRAINT [FK_RefAssessmentFormSectionIDType_Organization] FOREIGN KEY ([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A coding scheme that is used for identification of an Assessment Form Section.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefAssessmentFormSectionIdentificationSystem';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Identification System for Assessment Form Section', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefAssessmentFormSectionIdentificationSystem';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001190', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefAssessmentFormSectionIdentificationSystem';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20141', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefAssessmentFormSectionIdentificationSystem';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefAssessmentFormSectionIdentificationSystem';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefAssessmentFormSectionIdentificationSystem', @level2type = N'COLUMN', @level2name = N'RefAssessmentFormSectionIdentificationSystemId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A description for the options in this option set.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefAssessmentFormSectionIdentificationSystem', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefAssessmentFormSectionIdentificationSystem', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A code or abbreviation for the options in this option set.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefAssessmentFormSectionIdentificationSystem', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefAssessmentFormSectionIdentificationSystem', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The defintion for the options in this option set.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefAssessmentFormSectionIdentificationSystem', @level2type = N'COLUMN', @level2name = N'Definition';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate key from Organization identifying the publisher of the reference value.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefAssessmentFormSectionIdentificationSystem', @level2type = N'COLUMN', @level2name = N'RefJurisdictionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The sequence the options in this option set should be ordered.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefAssessmentFormSectionIdentificationSystem', @level2type = N'COLUMN', @level2name = N'SortOrder';

