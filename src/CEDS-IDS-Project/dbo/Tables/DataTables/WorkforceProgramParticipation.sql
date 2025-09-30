CREATE TABLE [dbo].[WorkforceProgramParticipation] (
    [WorkforceProgramParticipationId]          INT       IDENTITY (1, 1) NOT NULL,
    [PersonProgramParticipationId]             INT       NOT NULL,
    [DiplomaOrCredentialAwardDate]             NCHAR (7) NULL,
    [RefWfProgramParticipationId]              INT       NULL,
    [RefProfessionalTechnicalCredentialTypeId] INT       NULL,
    [RecordStartDateTime]                      DATETIME  NULL,
    [RecordEndDateTime]                        DATETIME  NULL,
    [RecordStatusId]                           INT       NULL,
    [DataCollectionId]                         INT       NULL,
    CONSTRAINT [PK_WorkforceProgramParticipation] PRIMARY KEY CLUSTERED ([WorkforceProgramParticipationId] ASC),
    CONSTRAINT [FK_WorkforceProgramPartic_RefProfessionalTechnicalCredential] FOREIGN KEY ([RefProfessionalTechnicalCredentialTypeId]) REFERENCES [dbo].[RefProfessionalTechnicalCredentialType] ([RefProfessionalTechnicalCredentialTypeId]),
    CONSTRAINT [FK_WorkforceProgramPartic_RefWfProgramParticipation] FOREIGN KEY ([RefWfProgramParticipationId]) REFERENCES [dbo].[RefWfProgramParticipation] ([RefWfProgramParticipationId]),
    CONSTRAINT [FK_WorkforceProgramParticipation_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_WorkforceProgramParticipation_PersonProgramParticipation] FOREIGN KEY ([PersonProgramParticipationId]) REFERENCES [dbo].[PersonProgramParticipation] ([PersonProgramParticipationId]),
    CONSTRAINT [FK_WorkforceProgramParticipation_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information about instruction and/or services provided to a person through a workforce and/or an employment development program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkforceProgramParticipation';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkforceProgramParticipation';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The month and year on which the diploma/credential is awarded to a student in recognition of his/her completion of the curricular requirements.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkforceProgramParticipation', @level2type = N'COLUMN', @level2name = N'DiplomaOrCredentialAwardDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Diploma or Credential Award Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkforceProgramParticipation', @level2type = N'COLUMN', @level2name = N'DiplomaOrCredentialAwardDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000081', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkforceProgramParticipation', @level2type = N'COLUMN', @level2name = N'DiplomaOrCredentialAwardDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19081', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkforceProgramParticipation', @level2type = N'COLUMN', @level2name = N'DiplomaOrCredentialAwardDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of workforce and employment development program that an individual is participating in.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkforceProgramParticipation', @level2type = N'COLUMN', @level2name = N'RefWfProgramParticipationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Workforce Program Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkforceProgramParticipation', @level2type = N'COLUMN', @level2name = N'RefWfProgramParticipationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000997', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkforceProgramParticipation', @level2type = N'COLUMN', @level2name = N'RefWfProgramParticipationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20000', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkforceProgramParticipation', @level2type = N'COLUMN', @level2name = N'RefWfProgramParticipationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indicator of the category of credential conferred by a state occupational licensing entity or industry organization for competency in a specific area measured by a set of pre-established standards.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkforceProgramParticipation', @level2type = N'COLUMN', @level2name = N'RefProfessionalTechnicalCredentialTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Professional or Technical Credential Conferred', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkforceProgramParticipation', @level2type = N'COLUMN', @level2name = N'RefProfessionalTechnicalCredentialTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000783', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkforceProgramParticipation', @level2type = N'COLUMN', @level2name = N'RefProfessionalTechnicalCredentialTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19780', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkforceProgramParticipation', @level2type = N'COLUMN', @level2name = N'RefProfessionalTechnicalCredentialTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkforceProgramParticipation', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkforceProgramParticipation', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkforceProgramParticipation', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkforceProgramParticipation', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkforceProgramParticipation', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkforceProgramParticipation', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkforceProgramParticipation', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkforceProgramParticipation', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkforceProgramParticipation', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

