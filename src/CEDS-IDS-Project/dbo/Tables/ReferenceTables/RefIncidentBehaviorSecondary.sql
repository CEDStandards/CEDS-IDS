CREATE TABLE [dbo].[RefIncidentBehaviorSecondary] (
    [RefIncidentBehaviorSecondaryId] INT             IDENTITY (1, 1) NOT NULL,
    [Description]                    NVARCHAR (150)  NOT NULL,
    [Code]                           NVARCHAR (50)   NULL,
    [Definition]                     NVARCHAR (4000) NULL,
    [RefJurisdictionId]              INT             NULL,
    [SortOrder]                      DECIMAL (5, 2)  NULL,
    [RecordStartDateTime]            DATETIME        NULL,
    [RecordEndDateTime]              DATETIME        NULL,
    CONSTRAINT [PK_IncidentBehaviorSecondary] PRIMARY KEY CLUSTERED ([RefIncidentBehaviorSecondaryId] ASC),
    CONSTRAINT [FK_RefIncidentBehaviorSecondary_Organization] FOREIGN KEY ([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Supplemental information about an incident when the primary offense is more serious in nature than alcohol or drug, etc. offenses.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefIncidentBehaviorSecondary';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Secondary Incident Behavior', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefIncidentBehaviorSecondary';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000627', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefIncidentBehaviorSecondary';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19620', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefIncidentBehaviorSecondary';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefIncidentBehaviorSecondary';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefIncidentBehaviorSecondary', @level2type = N'COLUMN', @level2name = N'RefIncidentBehaviorSecondaryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A description for the options in this option set.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefIncidentBehaviorSecondary', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefIncidentBehaviorSecondary', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A code or abbreviation for the options in this option set.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefIncidentBehaviorSecondary', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefIncidentBehaviorSecondary', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The defintion for the options in this option set.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefIncidentBehaviorSecondary', @level2type = N'COLUMN', @level2name = N'Definition';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate key from Organization identifying the publisher of the reference value.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefIncidentBehaviorSecondary', @level2type = N'COLUMN', @level2name = N'RefJurisdictionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The sequence the options in this option set should be ordered.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefIncidentBehaviorSecondary', @level2type = N'COLUMN', @level2name = N'SortOrder';

