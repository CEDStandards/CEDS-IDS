CREATE TABLE [dbo].[ProgramParticipationNeglected] (
    [PersonProgramParticipationId]          INT      NOT NULL,
    [RefNeglectedOrDelinquentProgramTypeId] INT      NULL,
    [AchievementIndicator]                  BIT      NULL,
    [OutcomeIndicator]                      BIT      NULL,
    [ObtainedEmployment]                    BIT      NULL,
    [RecordStartDateTime]                   DATETIME NULL,
    [RecordEndDateTime]                     DATETIME NULL,
    [ProgramParticipationNeglectedId]       INT      IDENTITY (1, 1) NOT NULL,
    [RecordStatusId]                        INT      NULL,
    [DataCollectionId]                      INT      NULL,
    [RefDelinquentProgramTypeId]            INT      NULL,
    [RefNeglectedProgramTypeId]             INT      NULL,
    CONSTRAINT [PK_ProgramParticipationNeglected] PRIMARY KEY CLUSTERED ([ProgramParticipationNeglectedId] ASC),
    CONSTRAINT [FK_ProgramParticipationNeglected_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_ProgramParticipationNeglected_PersonProgramParticipation] FOREIGN KEY ([PersonProgramParticipationId]) REFERENCES [dbo].[PersonProgramParticipation] ([PersonProgramParticipationId]),
    CONSTRAINT [FK_ProgramParticipationNeglected_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_ProgramParticipationNeglected_RefDelinquentProgramType] FOREIGN KEY ([RefDelinquentProgramTypeId]) REFERENCES [dbo].[RefDelinquentProgramType] ([RefDelinquentProgramTypeId]),
    CONSTRAINT [FK_ProgramParticipationNeglected_RefNeglectedProgramType] FOREIGN KEY ([RefNeglectedProgramTypeId]) REFERENCES [dbo].[RefNeglectedProgramType] ([RefNeglectedProgramTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information on a person participating in a neglected or delinquent student education program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationNeglected';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationNeglected';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of program under ESEA Title I, Part D, Subpart 1 (state programs) or Subpart 2 (LEA).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationNeglected', @level2type = N'COLUMN', @level2name = N'RefNeglectedOrDelinquentProgramTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Neglected or Delinquent Program Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationNeglected', @level2type = N'COLUMN', @level2name = N'RefNeglectedOrDelinquentProgramTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000194', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationNeglected', @level2type = N'COLUMN', @level2name = N'RefNeglectedOrDelinquentProgramTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19194', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationNeglected', @level2type = N'COLUMN', @level2name = N'RefNeglectedOrDelinquentProgramTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Student was served by Title I, Part D, Subpart 1 of ESEA as amended for at least 90 consecutive days during the reporting period who took both a pre- and post-test.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationNeglected', @level2type = N'COLUMN', @level2name = N'AchievementIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Neglected or Delinquent Academic Achievement Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationNeglected', @level2type = N'COLUMN', @level2name = N'AchievementIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000635', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationNeglected', @level2type = N'COLUMN', @level2name = N'AchievementIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19636', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationNeglected', @level2type = N'COLUMN', @level2name = N'AchievementIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Student was served by Title I, Part D, Subpart 2 of ESEA as amended for at least 90 consecutive days during the reporting period who took both a pre- and post-test.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationNeglected', @level2type = N'COLUMN', @level2name = N'OutcomeIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Neglected or Delinquent Academic Outcome Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationNeglected', @level2type = N'COLUMN', @level2name = N'OutcomeIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000636', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationNeglected', @level2type = N'COLUMN', @level2name = N'OutcomeIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19638', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationNeglected', @level2type = N'COLUMN', @level2name = N'OutcomeIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication that a Neglected or Delinquent student obtained employment.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationNeglected', @level2type = N'COLUMN', @level2name = N'ObtainedEmployment';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Neglected or Delinquent Obtained Employment', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationNeglected', @level2type = N'COLUMN', @level2name = N'ObtainedEmployment';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000484', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationNeglected', @level2type = N'COLUMN', @level2name = N'ObtainedEmployment';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19475', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationNeglected', @level2type = N'COLUMN', @level2name = N'ObtainedEmployment';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationNeglected', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationNeglected', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationNeglected', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationNeglected', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationNeglected', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationNeglected', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationNeglected', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationNeglected', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationNeglected', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of delinquent programs under Title I, Part D, Subpart 1 (State Agency) of ESEA as amended or under Title I, Part D, Subpart 2 (LEA) of ESEA, as amended.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationNeglected', @level2type = N'COLUMN', @level2name = N'RefDelinquentProgramTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Delinquent Program Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationNeglected', @level2type = N'COLUMN', @level2name = N'RefDelinquentProgramTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002085', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationNeglected', @level2type = N'COLUMN', @level2name = N'RefDelinquentProgramTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25012', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationNeglected', @level2type = N'COLUMN', @level2name = N'RefDelinquentProgramTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationNeglected', @level2type = N'COLUMN', @level2name = N'RefDelinquentProgramTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of neglected programs under Title I, Part D, Subpart 1 (State Agency) of ESEA as amended.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationNeglected', @level2type = N'COLUMN', @level2name = N'RefNeglectedProgramTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Neglected Program Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationNeglected', @level2type = N'COLUMN', @level2name = N'RefNeglectedProgramTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002084', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationNeglected', @level2type = N'COLUMN', @level2name = N'RefNeglectedProgramTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25073', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationNeglected', @level2type = N'COLUMN', @level2name = N'RefNeglectedProgramTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationNeglected', @level2type = N'COLUMN', @level2name = N'RefNeglectedProgramTypeId';

