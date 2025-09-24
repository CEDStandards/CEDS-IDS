CREATE TABLE [dbo].[CredentialAwardEvidence] (
    [CredentialAwardEvidenceId] INT            IDENTITY (1, 1) NOT NULL,
    [CredentialAwardId]         INT            NOT NULL,
    [Statement]                 NVARCHAR (300) NULL,
    [AssessmentResultId]        INT            NULL,
    [RecordStartDateTime]       DATETIME       NULL,
    [RecordEndDateTime]         DATETIME       NULL,
    [RecordStatusId]            INT            NULL,
    [DataCollectionId]          INT            NULL,
    CONSTRAINT [PK_CredentialAwardEvidence] PRIMARY KEY CLUSTERED ([CredentialAwardEvidenceId] ASC),
    CONSTRAINT [FK_CredentialAwardEvidence_AssessmentResult] FOREIGN KEY ([AssessmentResultId]) REFERENCES [dbo].[AssessmentResult] ([AssessmentResultId]),
    CONSTRAINT [FK_CredentialAwardEvidence_CredentialAward] FOREIGN KEY ([CredentialAwardId]) REFERENCES [dbo].[CredentialAward] ([CredentialAwardId]),
    CONSTRAINT [FK_CredentialAwardEvidence_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_CredentialAwardEvidence_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'CredentialAwardEvidence includes a statement or reference describing the evidence that the learner met the criteria for attainment of the achievement and may be related to an AssessmentResult.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAwardEvidence';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAwardEvidence';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A statement or reference describing the evidence that the learner met the criteria for attainment  of the achievement.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAwardEvidence', @level2type = N'COLUMN', @level2name = N'Statement';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Credential Evidence Statement', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAwardEvidence', @level2type = N'COLUMN', @level2name = N'Statement';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000901', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAwardEvidence', @level2type = N'COLUMN', @level2name = N'Statement';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19901', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAwardEvidence', @level2type = N'COLUMN', @level2name = N'Statement';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAwardEvidence', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAwardEvidence', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAwardEvidence', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAwardEvidence', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAwardEvidence', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAwardEvidence', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAwardEvidence', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAwardEvidence', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAwardEvidence', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAwardEvidence', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

