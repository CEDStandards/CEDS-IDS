CREATE TABLE [dbo].[CredentialDefGradeLevel] (
    [CredentialDefGradeLevelId] INT      IDENTITY (1, 1) NOT NULL,
    [RefGradeLevelId]           INT      NULL,
    [RefLowGradeLevelId]        INT      NULL,
    [CredentialDefinitionId]    INT      NOT NULL,
    [RefHighGradeLevelId]       INT      NULL,
    [RecordStartDateTime]       DATETIME NULL,
    [RecordEndDateTime]         DATETIME NULL,
    [RecordStatusId]            INT      NULL,
    [DataCollectionId]          INT      NULL,
    CONSTRAINT [PK_CredentialDefGradeLevel] PRIMARY KEY CLUSTERED ([CredentialDefGradeLevelId] ASC),
    CONSTRAINT [FK_CredentialDefGradeLevel_CredentialDefinition] FOREIGN KEY ([CredentialDefinitionId]) REFERENCES [dbo].[CredentialDefinition] ([CredentialDefinitionId]),
    CONSTRAINT [FK_CredentialDefGradeLevel_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_CredentialDefGradeLevel_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_CredentialDefGradeLevel_RefGradeLevel] FOREIGN KEY ([RefGradeLevelId]) REFERENCES [dbo].[RefGradeLevel] ([RefGradeLevelId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The relationship between a credential and an applicable grade level or grade levels.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefGradeLevel';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefGradeLevel';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The lowest grade level when referring to grade levels as a range.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefGradeLevel', @level2type = N'COLUMN', @level2name = N'RefLowGradeLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Low Grade Level', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefGradeLevel', @level2type = N'COLUMN', @level2name = N'RefLowGradeLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002082', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefGradeLevel', @level2type = N'COLUMN', @level2name = N'RefLowGradeLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25045', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefGradeLevel', @level2type = N'COLUMN', @level2name = N'RefLowGradeLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefGradeLevel', @level2type = N'COLUMN', @level2name = N'RefLowGradeLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The highest grade level when referring to grade levels as a range.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefGradeLevel', @level2type = N'COLUMN', @level2name = N'RefHighGradeLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'High Grade Level', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefGradeLevel', @level2type = N'COLUMN', @level2name = N'RefHighGradeLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002083', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefGradeLevel', @level2type = N'COLUMN', @level2name = N'RefHighGradeLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25022', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefGradeLevel', @level2type = N'COLUMN', @level2name = N'RefHighGradeLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefGradeLevel', @level2type = N'COLUMN', @level2name = N'RefHighGradeLevelId';

