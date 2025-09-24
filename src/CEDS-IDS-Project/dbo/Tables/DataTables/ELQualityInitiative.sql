CREATE TABLE [dbo].[ELQualityInitiative] (
    [ELQualityInitiativeId]                INT           IDENTITY (1, 1) NOT NULL,
    [OrganizationId]                       INT           NOT NULL,
    [MaximumScore]                         NVARCHAR (30) NULL,
    [MinimumScore]                         NVARCHAR (30) NULL,
    [ScoreLevel]                           NVARCHAR (30) NULL,
    [ParticipationIndicator]               BIT           NULL,
    [ParticipationStartDate]               DATE          NULL,
    [ParticipationEndDate]                 DATE          NULL,
    [ProgramHeathSafetyChecklistUseStatus] BIT           NULL,
    [RecordStartDateTime]                  DATETIME      NULL,
    [RecordEndDateTime]                    DATETIME      NULL,
    [RecordStatusId]                       INT           NULL,
    [DataCollectionId]                     INT           NULL,
    CONSTRAINT [PK_ELQualityInitiative] PRIMARY KEY CLUSTERED ([ELQualityInitiativeId] ASC),
    CONSTRAINT [FK_ELQualityInitiative_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_ELQualityInitiative_Organization] FOREIGN KEY ([OrganizationId]) REFERENCES [dbo].[Organization] ([OrganizationId]),
    CONSTRAINT [FK_ELQualityInitiative_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information about participation and scoring of quality retings for an early learning organization.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityInitiative';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityInitiative';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityInitiative', @level2type = N'COLUMN', @level2name = N'ELQualityInitiativeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate key from Organization.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityInitiative', @level2type = N'COLUMN', @level2name = N'OrganizationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The maximum score option for the QRIS or other quality initiative.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityInitiative', @level2type = N'COLUMN', @level2name = N'MaximumScore';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Quality Initiative Maximum Score', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityInitiative', @level2type = N'COLUMN', @level2name = N'MaximumScore';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001460', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityInitiative', @level2type = N'COLUMN', @level2name = N'MaximumScore';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20432', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityInitiative', @level2type = N'COLUMN', @level2name = N'MaximumScore';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityInitiative', @level2type = N'COLUMN', @level2name = N'MaximumScore';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The minimum score option for the QRIS or other quality initiative.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityInitiative', @level2type = N'COLUMN', @level2name = N'MinimumScore';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Quality Initiative Minimum Score', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityInitiative', @level2type = N'COLUMN', @level2name = N'MinimumScore';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001461', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityInitiative', @level2type = N'COLUMN', @level2name = N'MinimumScore';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20433', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityInitiative', @level2type = N'COLUMN', @level2name = N'MinimumScore';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityInitiative', @level2type = N'COLUMN', @level2name = N'MinimumScore';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The score, rating or level received by a program for its Quality Rating and Improvement System (QRIS) or other quality initiative.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityInitiative', @level2type = N'COLUMN', @level2name = N'ScoreLevel';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Quality Initiative Score Level', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityInitiative', @level2type = N'COLUMN', @level2name = N'ScoreLevel';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001462', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityInitiative', @level2type = N'COLUMN', @level2name = N'ScoreLevel';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20434', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityInitiative', @level2type = N'COLUMN', @level2name = N'ScoreLevel';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityInitiative', @level2type = N'COLUMN', @level2name = N'ScoreLevel';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Site participates in a quality improvement initiative component other than QRIS.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityInitiative', @level2type = N'COLUMN', @level2name = N'ParticipationIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Quality Initiative Participation Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityInitiative', @level2type = N'COLUMN', @level2name = N'ParticipationIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001463', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityInitiative', @level2type = N'COLUMN', @level2name = N'ParticipationIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20435', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityInitiative', @level2type = N'COLUMN', @level2name = N'ParticipationIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityInitiative', @level2type = N'COLUMN', @level2name = N'ParticipationIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The quality initiative start date.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityInitiative', @level2type = N'COLUMN', @level2name = N'ParticipationStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Quality Initiative Participation Start Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityInitiative', @level2type = N'COLUMN', @level2name = N'ParticipationStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001465', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityInitiative', @level2type = N'COLUMN', @level2name = N'ParticipationStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20437', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityInitiative', @level2type = N'COLUMN', @level2name = N'ParticipationStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityInitiative', @level2type = N'COLUMN', @level2name = N'ParticipationStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The quality initiative end date.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityInitiative', @level2type = N'COLUMN', @level2name = N'ParticipationEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Quality Initiative Participation End Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityInitiative', @level2type = N'COLUMN', @level2name = N'ParticipationEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001464', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityInitiative', @level2type = N'COLUMN', @level2name = N'ParticipationEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20436', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityInitiative', @level2type = N'COLUMN', @level2name = N'ParticipationEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityInitiative', @level2type = N'COLUMN', @level2name = N'ParticipationEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether a program uses a health or safety checklist or documentation.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityInitiative', @level2type = N'COLUMN', @level2name = N'ProgramHeathSafetyChecklistUseStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Program Health Safety Checklist Use Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityInitiative', @level2type = N'COLUMN', @level2name = N'ProgramHeathSafetyChecklistUseStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000851', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityInitiative', @level2type = N'COLUMN', @level2name = N'ProgramHeathSafetyChecklistUseStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19851', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityInitiative', @level2type = N'COLUMN', @level2name = N'ProgramHeathSafetyChecklistUseStatus';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityInitiative', @level2type = N'COLUMN', @level2name = N'ProgramHeathSafetyChecklistUseStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityInitiative', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityInitiative', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityInitiative', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityInitiative', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityInitiative', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityInitiative', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityInitiative', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityInitiative', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityInitiative', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELQualityInitiative', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

