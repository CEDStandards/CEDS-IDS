-- ============================================================
-- CEDS Integrated Data Store V14
-- New Reference Table: [RefCredentialAwardIdentificationSystem]
-- CEDS Global ID  : C002199
-- CEDS Element    : Credential Award Identification System
-- w3id URL        : https://w3id.org/CEDStandards/terms/C002199
-- Generated for   : V14.0.0.0
-- ============================================================

CREATE TABLE [dbo].[RefCredentialAwardIdentificationSystem] (
    [RefCredentialAwardIdentificationSystemId]  INT             IDENTITY (1, 1) NOT NULL,
    [Description]                               NVARCHAR (150)  NOT NULL,
    [Code]                                      NVARCHAR (50)   NULL,
    [Definition]                                NVARCHAR (4000) NULL,
    [RefJurisdictionId]                         INT             NULL,
    [SortOrder]                                 DECIMAL (5, 2)  NULL,
    [RecordStartDateTime]                       DATETIME        NULL,
    [RecordEndDateTime]                         DATETIME        NULL,
    CONSTRAINT [PK_RefCredentialAwardIdentificationSystem] PRIMARY KEY CLUSTERED ([RefCredentialAwardIdentificationSystemId] ASC),
    CONSTRAINT [FK_RefCredentialAwardIdentificationSystem_Organization] FOREIGN KEY ([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A coding scheme that is used for identification and record-keeping purposes by a program, school, school system, state, or other organization to refer to the award of a credential.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefCredentialAwardIdentificationSystem';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Credential Award Identification System', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefCredentialAwardIdentificationSystem';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'C002199', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefCredentialAwardIdentificationSystem';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://w3id.org/CEDStandards/terms/C002199', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefCredentialAwardIdentificationSystem';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefCredentialAwardIdentificationSystem';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefCredentialAwardIdentificationSystem', @level2type = N'COLUMN', @level2name = N'RefCredentialAwardIdentificationSystemId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A description for the options in this option set.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefCredentialAwardIdentificationSystem', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefCredentialAwardIdentificationSystem', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A code or abbreviation for the options in this option set.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefCredentialAwardIdentificationSystem', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefCredentialAwardIdentificationSystem', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The definition for the options in this option set.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefCredentialAwardIdentificationSystem', @level2type = N'COLUMN', @level2name = N'Definition';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefCredentialAwardIdentificationSystem', @level2type = N'COLUMN', @level2name = N'Definition';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate key from Organization identifying the publisher of the reference value.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefCredentialAwardIdentificationSystem', @level2type = N'COLUMN', @level2name = N'RefJurisdictionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The sequence the options in this option set should be ordered.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefCredentialAwardIdentificationSystem', @level2type = N'COLUMN', @level2name = N'SortOrder';
