-- ============================================================
-- CEDS Integrated Data Store V14
-- New Reference Table: [RefHarassmentOrBullyingReligionType]
-- CEDS Global ID  : C002202
-- CEDS Element    : Harassment or Bullying Religion Type
-- w3id URL        : https://w3id.org/CEDStandards/terms/C002202
-- Generated for   : V14.0.0.0
-- ============================================================

CREATE TABLE [dbo].[RefHarassmentOrBullyingReligionType] (
    [RefHarassmentOrBullyingReligionTypeId]  INT             IDENTITY (1, 1) NOT NULL,
    [Description]                            NVARCHAR (150)  NOT NULL,
    [Code]                                   NVARCHAR (50)   NULL,
    [Definition]                             NVARCHAR (4000) NULL,
    [RefJurisdictionId]                      INT             NULL,
    [SortOrder]                              DECIMAL (5, 2)  NULL,
    [RecordStartDateTime]                    DATETIME        NULL,
    [RecordEndDateTime]                      DATETIME        NULL,
    CONSTRAINT [PK_RefHarassmentOrBullyingReligionType] PRIMARY KEY CLUSTERED ([RefHarassmentOrBullyingReligionTypeId] ASC),
    CONSTRAINT [FK_RefHarassmentOrBullyingReligionType_Organization] FOREIGN KEY ([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The actual or perceived religious affiliation of a student that is the basis of an allegation of harassment or bullying.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefHarassmentOrBullyingReligionType';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Harassment or Bullying Religion Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefHarassmentOrBullyingReligionType';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'C002202', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefHarassmentOrBullyingReligionType';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://w3id.org/CEDStandards/terms/C002202', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefHarassmentOrBullyingReligionType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefHarassmentOrBullyingReligionType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefHarassmentOrBullyingReligionType', @level2type = N'COLUMN', @level2name = N'RefHarassmentOrBullyingReligionTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A description for the options in this option set.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefHarassmentOrBullyingReligionType', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefHarassmentOrBullyingReligionType', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A code or abbreviation for the options in this option set.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefHarassmentOrBullyingReligionType', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefHarassmentOrBullyingReligionType', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The definition for the options in this option set.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefHarassmentOrBullyingReligionType', @level2type = N'COLUMN', @level2name = N'Definition';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefHarassmentOrBullyingReligionType', @level2type = N'COLUMN', @level2name = N'Definition';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate key from Organization identifying the publisher of the reference value.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefHarassmentOrBullyingReligionType', @level2type = N'COLUMN', @level2name = N'RefJurisdictionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The sequence the options in this option set should be ordered.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefHarassmentOrBullyingReligionType', @level2type = N'COLUMN', @level2name = N'SortOrder';
