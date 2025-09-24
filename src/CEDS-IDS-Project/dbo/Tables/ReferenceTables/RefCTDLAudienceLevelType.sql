CREATE TABLE [dbo].[RefCTDLAudienceLevelType] (
    [RefCTDLAudienceLevelTypeId] INT             IDENTITY (1, 1) NOT NULL,
    [Description]                NVARCHAR (150)  NOT NULL,
    [Code]                       NVARCHAR (50)   NULL,
    [Definition]                 NVARCHAR (4000) NULL,
    [RefJurisdictionId]          INT             NULL,
    [SortOrder]                  DECIMAL (5, 2)  NULL,
    [RecordStartDateTime]        DATETIME        NULL,
    [RecordEndDateTime]          DATETIME        NULL,
    CONSTRAINT [PK_RefCTDLAudienceLevelType] PRIMARY KEY CLUSTERED ([RefCTDLAudienceLevelTypeId] ASC),
    CONSTRAINT [FK_RefCTDLAudienceLevelType_Organization] FOREIGN KEY ([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Type of level indicating a point in a progression through an educational or training context, for which the credential is intended; select from an existing enumeration of such types.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefCTDLAudienceLevelType';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'CTDL Audience Level Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefCTDLAudienceLevelType';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001913', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefCTDLAudienceLevelType';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20894', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefCTDLAudienceLevelType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefCTDLAudienceLevelType';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A description for the options in this option set.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefCTDLAudienceLevelType', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefCTDLAudienceLevelType', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A code or abbreviation for the options in this option set.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefCTDLAudienceLevelType', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefCTDLAudienceLevelType', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The defintion for the options in this option set.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefCTDLAudienceLevelType', @level2type = N'COLUMN', @level2name = N'Definition';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefCTDLAudienceLevelType', @level2type = N'COLUMN', @level2name = N'Definition';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The sequence the options in this option set should be ordered.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefCTDLAudienceLevelType', @level2type = N'COLUMN', @level2name = N'SortOrder';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefCTDLAudienceLevelType', @level2type = N'COLUMN', @level2name = N'SortOrder';

