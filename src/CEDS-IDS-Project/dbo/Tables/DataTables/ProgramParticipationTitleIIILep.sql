CREATE TABLE [dbo].[ProgramParticipationTitleIIILep] (
    [RefTitleIIIAccountabilityId]                 INT      NULL,
    [RefTitleIIILanguageInstructionProgramTypeId] INT      NULL,
    [PersonProgramParticipationId]                INT      NOT NULL,
    [RecordStartDateTime]                         DATETIME NULL,
    [RecordEndDateTime]                           DATETIME NULL,
    [ProgramParticipationTitleIiiLepId]           INT      IDENTITY (1, 1) NOT NULL,
    [RecordStatusId]                              INT      NULL,
    [DataCollectionId]                            INT      NULL,
    CONSTRAINT [PK_ProgramParticipationTitleIii] PRIMARY KEY CLUSTERED ([ProgramParticipationTitleIiiLepId] ASC),
    CONSTRAINT [FK_ProgramParticipationTitleIII_PersonProgramParticipation] FOREIGN KEY ([PersonProgramParticipationId]) REFERENCES [dbo].[PersonProgramParticipation] ([PersonProgramParticipationId]),
    CONSTRAINT [FK_ProgramParticipationTitleIIILep_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_ProgramParticipationTitleIIILep_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_ProgramParticipationTitleIIILep_RefTitleIIIAccountability] FOREIGN KEY ([RefTitleIIIAccountabilityId]) REFERENCES [dbo].[RefTitleIIIAccountability] ([RefTitleIIIAccountabilityId]),
    CONSTRAINT [FK_ProgramParticipationTitleIIILEP_RefTitleIIILangInstrPrgm] FOREIGN KEY ([RefTitleIIILanguageInstructionProgramTypeId]) REFERENCES [dbo].[RefTitleIIILanguageInstructionProgramType] ([RefTitleIIILanguageInstructionProgramTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information on a person participating in a Title III limited English proficiency education program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTitleIIILep';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTitleIIILep';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of the progress made by a student toward English proficiency.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTitleIIILep', @level2type = N'COLUMN', @level2name = N'RefTitleIIIAccountabilityId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Title III Accountability Progress Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTitleIIILep', @level2type = N'COLUMN', @level2name = N'RefTitleIIIAccountabilityId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000536', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTitleIIILep', @level2type = N'COLUMN', @level2name = N'RefTitleIIIAccountabilityId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19527', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTitleIIILep', @level2type = N'COLUMN', @level2name = N'RefTitleIIIAccountabilityId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of Title III language instructional education programs.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTitleIIILep', @level2type = N'COLUMN', @level2name = N'RefTitleIIILanguageInstructionProgramTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Title III Language Instruction Program Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTitleIIILep', @level2type = N'COLUMN', @level2name = N'RefTitleIIILanguageInstructionProgramTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000447', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTitleIIILep', @level2type = N'COLUMN', @level2name = N'RefTitleIIILanguageInstructionProgramTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19437', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTitleIIILep', @level2type = N'COLUMN', @level2name = N'RefTitleIIILanguageInstructionProgramTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTitleIIILep', @level2type = N'COLUMN', @level2name = N'RefTitleIIILanguageInstructionProgramTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTitleIIILep', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTitleIIILep', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTitleIIILep', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTitleIIILep', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTitleIIILep', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTitleIIILep', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTitleIIILep', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTitleIIILep', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTitleIIILep', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

