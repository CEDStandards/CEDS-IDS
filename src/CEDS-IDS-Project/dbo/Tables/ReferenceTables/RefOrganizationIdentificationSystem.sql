CREATE TABLE [dbo].[RefOrganizationIdentificationSystem] (
    [RefOrganizationIdentificationSystemId] INT             IDENTITY (1, 1) NOT NULL,
    [Description]                           NVARCHAR (150)  NOT NULL,
    [Code]                                  NVARCHAR (50)   NULL,
    [Definition]                            NVARCHAR (4000) NULL,
    [RefJurisdictionId]                     INT             NULL,
    [RefOrganizationIdentifierTypeId]       INT             NULL,
    [SortOrder]                             DECIMAL (5, 2)  NULL,
    [RecordStartDateTime]                   DATETIME        NULL,
    [RecordEndDateTime]                     DATETIME        NULL,
    CONSTRAINT [PK_OrganizationIdentificationSystem] PRIMARY KEY CLUSTERED ([RefOrganizationIdentificationSystemId] ASC),
    CONSTRAINT [FK_RefIdentifierOrg_Org] FOREIGN KEY ([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId]),
    CONSTRAINT [FK_RefOrgIdentificationSystem _RefOrganizationIdentifierType] FOREIGN KEY ([RefOrganizationIdentifierTypeId]) REFERENCES [dbo].[RefOrganizationIdentifierType] ([RefOrganizationIdentifierTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A coding scheme that is used for identification and record-keeping purposes by an organization.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefOrganizationIdentificationSystem';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Activity Identifier, Course Identifier, Course Code System, Federal School Code, Local Education Agency Identification System, School Identification System, Institution IPEDS UnitID, Local Education Agency Supervisory Union Identification Number, Office of Postsecondary Education Identifier, Program Identifier, Adult Education Service Provider Identification System, Organization Identification System, Course Section Identifier, Agency Course Identifier, Course Section Number, State Agency Identification System', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefOrganizationIdentificationSystem';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000006, 000055, 000056, 000111, 001072, 001073, 000166, 000175, 000203, 000625, 000781, 000827, 000978, 001280, 001315, 001491', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefOrganizationIdentificationSystem';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19006, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19055, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19056, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19111, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19159, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19161, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19166, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19175, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19203, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19618, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19778, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19827, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19979, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20246, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20281, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20463', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefOrganizationIdentificationSystem';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefOrganizationIdentificationSystem';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefOrganizationIdentificationSystem', @level2type = N'COLUMN', @level2name = N'RefOrganizationIdentificationSystemId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A description for the options in this option set.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefOrganizationIdentificationSystem', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefOrganizationIdentificationSystem', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A code or abbreviation for the options in this option set.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefOrganizationIdentificationSystem', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefOrganizationIdentificationSystem', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The defintion for the options in this option set.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefOrganizationIdentificationSystem', @level2type = N'COLUMN', @level2name = N'Definition';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefOrganizationIdentificationSystem', @level2type = N'COLUMN', @level2name = N'Definition';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate key from Organization identifying the publisher of the reference value.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefOrganizationIdentificationSystem', @level2type = N'COLUMN', @level2name = N'RefJurisdictionId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'List of identification system types.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefOrganizationIdentificationSystem', @level2type = N'COLUMN', @level2name = N'RefOrganizationIdentifierTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The sequence the options in this option set should be ordered.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefOrganizationIdentificationSystem', @level2type = N'COLUMN', @level2name = N'SortOrder';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefOrganizationIdentificationSystem', @level2type = N'COLUMN', @level2name = N'SortOrder';

