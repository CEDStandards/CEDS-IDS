CREATE TABLE [dbo].[ProgramParticipationAttainment] (
    [ProgramParticipationAttainmentId]                        INT      IDENTITY (1, 1) NOT NULL,
    [PersonProgramParticipationId]                            INT      NOT NULL,
    [AECredentialAttainmentEmployedIndicator]                 BIT      NULL,
    [AECredentialAttainmentPSCredentialIndicator]             BIT      NULL,
    [AECredentialAttainmentPSEnrollmentIndicator]             BIT      NULL,
    [RefEdFactsAcademicOrCareerAndTechnicalOutcomeExitTypeId] INT      NULL,
    [RefEdFactsAcademicOrCareerAndTechnicalOutcomeTypeId]     INT      NULL,
    [RecordStartDateTime]                                     DATETIME NULL,
    [RecordEndDateTime]                                       DATETIME NULL,
    [RecordStatusId]                                          INT      NULL,
    [DataCollectionId]                                        INT      NULL,
    CONSTRAINT [PK_ProgramParticipationAttainment] PRIMARY KEY CLUSTERED ([ProgramParticipationAttainmentId] ASC),
    CONSTRAINT [FK_ProgramParticipationAttainment_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_ProgramParticipationAttainment_PersonProgramParticipation] FOREIGN KEY ([PersonProgramParticipationId]) REFERENCES [dbo].[PersonProgramParticipation] ([PersonProgramParticipationId]),
    CONSTRAINT [FK_ProgramParticipationAttainment_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_ProgramParticipationAttainment_RefEdFactsAcademicOrCareerAndTechnicalOutcomeExitType] FOREIGN KEY ([RefEdFactsAcademicOrCareerAndTechnicalOutcomeExitTypeId]) REFERENCES [dbo].[RefEdFactsAcademicOrCareerAndTechnicalOutcomeExitType] ([RefEdFactsAcademicOrCareerAndTechnicalOutcomeExitTypeId]),
    CONSTRAINT [FK_ProgramParticipationAttainment_RefEdFactsAcademicOrCareerAndTechnicalOutcomeType] FOREIGN KEY ([RefEdFactsAcademicOrCareerAndTechnicalOutcomeTypeId]) REFERENCES [dbo].[RefEdFactsAcademicOrCareerAndTechnicalOutcomeType] ([RefEdFactsAcademicOrCareerAndTechnicalOutcomeTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information related to outcomes in a program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAttainment';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAttainment';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether the adult education participant received a secondary school diploma or its recognized equivalent while enrolled in the adult education program or within one year of exiting the adult education program and was employed within one year of exiting the adult education program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAttainment', @level2type = N'COLUMN', @level2name = N'AECredentialAttainmentEmployedIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Adult Education Credential Attainment Employed Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAttainment', @level2type = N'COLUMN', @level2name = N'AECredentialAttainmentEmployedIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001955', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAttainment', @level2type = N'COLUMN', @level2name = N'AECredentialAttainmentEmployedIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20912', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAttainment', @level2type = N'COLUMN', @level2name = N'AECredentialAttainmentEmployedIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAttainment', @level2type = N'COLUMN', @level2name = N'AECredentialAttainmentEmployedIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether the adult education participant received a postsecondary credential while enrolled in the adult education program or within one year of exiting the adult education program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAttainment', @level2type = N'COLUMN', @level2name = N'AECredentialAttainmentPSCredentialIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Adult Education Credential Attainment Postsecondary Credential Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAttainment', @level2type = N'COLUMN', @level2name = N'AECredentialAttainmentPSCredentialIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001956', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAttainment', @level2type = N'COLUMN', @level2name = N'AECredentialAttainmentPSCredentialIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20913', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAttainment', @level2type = N'COLUMN', @level2name = N'AECredentialAttainmentPSCredentialIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAttainment', @level2type = N'COLUMN', @level2name = N'AECredentialAttainmentPSCredentialIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether the adult education participant received a secondary school diploma or its recognized equivalent while enrolled in the adult education program or within one year of exiting the adult education program and entered into postsecondary education within one year of exiting the adult education program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAttainment', @level2type = N'COLUMN', @level2name = N'AECredentialAttainmentPSEnrollmentIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Adult Education Credential Attainment Postsecondary Enrollment Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAttainment', @level2type = N'COLUMN', @level2name = N'AECredentialAttainmentPSEnrollmentIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001954', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAttainment', @level2type = N'COLUMN', @level2name = N'AECredentialAttainmentPSEnrollmentIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20914', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAttainment', @level2type = N'COLUMN', @level2name = N'AECredentialAttainmentPSEnrollmentIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAttainment', @level2type = N'COLUMN', @level2name = N'AECredentialAttainmentPSEnrollmentIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of academic or career and technical outcome attained up to 90 days after exiting the facility or program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAttainment', @level2type = N'COLUMN', @level2name = N'RefEdFactsAcademicOrCareerAndTechnicalOutcomeExitTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'EDFacts Academic or Career and Technical Outcome Exit Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAttainment', @level2type = N'COLUMN', @level2name = N'RefEdFactsAcademicOrCareerAndTechnicalOutcomeExitTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001979', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAttainment', @level2type = N'COLUMN', @level2name = N'RefEdFactsAcademicOrCareerAndTechnicalOutcomeExitTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20927', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAttainment', @level2type = N'COLUMN', @level2name = N'RefEdFactsAcademicOrCareerAndTechnicalOutcomeExitTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAttainment', @level2type = N'COLUMN', @level2name = N'RefEdFactsAcademicOrCareerAndTechnicalOutcomeExitTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of academic or career and technical outcome attained while enrolled in the program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAttainment', @level2type = N'COLUMN', @level2name = N'RefEdFactsAcademicOrCareerAndTechnicalOutcomeTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'EDFacts Academic or Career and Technical Outcome Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAttainment', @level2type = N'COLUMN', @level2name = N'RefEdFactsAcademicOrCareerAndTechnicalOutcomeTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001978', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAttainment', @level2type = N'COLUMN', @level2name = N'RefEdFactsAcademicOrCareerAndTechnicalOutcomeTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20928', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAttainment', @level2type = N'COLUMN', @level2name = N'RefEdFactsAcademicOrCareerAndTechnicalOutcomeTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAttainment', @level2type = N'COLUMN', @level2name = N'RefEdFactsAcademicOrCareerAndTechnicalOutcomeTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAttainment', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAttainment', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAttainment', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAttainment', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAttainment', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAttainment', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAttainment', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAttainment', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAttainment', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAttainment', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

