CREATE TABLE [dbo].[CredentialDefCriteria] (
    [CredentialDefCriteriaId]            INT            IDENTITY (1, 1) NOT NULL,
    [CredentialDefinitionId]             INT            NOT NULL,
    [CompetencySetId]                    INT            NULL,
    [Criteria]                           NVARCHAR (300) NULL,
    [CriteriaUrl]                        NVARCHAR (512) NULL,
    [EstimatedDuration]                  CHAR (5)       NULL,
    [MaximumDuration]                    CHAR (5)       NULL,
    [MinimumAge]                         INT            NULL,
    [MinimumDuration]                    CHAR (5)       NULL,
    [RefCredentialDefAssessMethodTypeId] INT            NULL,
    [RecordStartDateTime]                DATETIME       NULL,
    [RecordEndDateTime]                  DATETIME       NULL,
    [RecordStatusId]                     INT            NULL,
    [DataCollectionId]                   INT            NULL,
    CONSTRAINT [PK_CredentialDefCriteria] PRIMARY KEY CLUSTERED ([CredentialDefCriteriaId] ASC),
    CONSTRAINT [FK_CredentialDefCriteria_CompetencySet] FOREIGN KEY ([CompetencySetId]) REFERENCES [dbo].[CompetencySet] ([CompetencySetId]),
    CONSTRAINT [FK_CredentialDefCriteria_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_CredentialDefCriteria_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_CredentialDefCriteria_RefCredentialDefAssessMethodType] FOREIGN KEY ([RefCredentialDefAssessMethodTypeId]) REFERENCES [dbo].[RefCredentialDefAssessMethodType] ([RefCredentialDefAssessMethodTypeId]),
    CONSTRAINT [FK_CredentialDefinitionDefCriteria_CredentialDefinition] FOREIGN KEY ([CredentialDefinitionId]) REFERENCES [dbo].[CredentialDefinition] ([CredentialDefinitionId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Defines the criteria by which a credential may be issued.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefCriteria';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefCriteria';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The criteria for competency-based completion of the achievement/award.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefCriteria', @level2type = N'COLUMN', @level2name = N'Criteria';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Credential Definition Criteria', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefCriteria', @level2type = N'COLUMN', @level2name = N'Criteria';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000896', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefCriteria', @level2type = N'COLUMN', @level2name = N'Criteria';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19896', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefCriteria', @level2type = N'COLUMN', @level2name = N'Criteria';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefCriteria', @level2type = N'COLUMN', @level2name = N'Criteria';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The Uniform Resource Locator (URL) for the unique address of a web page describing the competency-based completion criteria for the achievement/award.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefCriteria', @level2type = N'COLUMN', @level2name = N'CriteriaUrl';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Credential Definition Criteria URL', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefCriteria', @level2type = N'COLUMN', @level2name = N'CriteriaUrl';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001153', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefCriteria', @level2type = N'COLUMN', @level2name = N'CriteriaUrl';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20113', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefCriteria', @level2type = N'COLUMN', @level2name = N'CriteriaUrl';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefCriteria', @level2type = N'COLUMN', @level2name = N'CriteriaUrl';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The estimated amount of time in minutes it will take to earn the credential.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefCriteria', @level2type = N'COLUMN', @level2name = N'EstimatedDuration';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Credential Definition Estimated Duration', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefCriteria', @level2type = N'COLUMN', @level2name = N'EstimatedDuration';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001741', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefCriteria', @level2type = N'COLUMN', @level2name = N'EstimatedDuration';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20722', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefCriteria', @level2type = N'COLUMN', @level2name = N'EstimatedDuration';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefCriteria', @level2type = N'COLUMN', @level2name = N'EstimatedDuration';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The maximum amount of time in minutes it will take to earn the described credential.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefCriteria', @level2type = N'COLUMN', @level2name = N'MaximumDuration';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Credential Definition Maximum Duration', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefCriteria', @level2type = N'COLUMN', @level2name = N'MaximumDuration';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001746', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefCriteria', @level2type = N'COLUMN', @level2name = N'MaximumDuration';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20727', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefCriteria', @level2type = N'COLUMN', @level2name = N'MaximumDuration';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefCriteria', @level2type = N'COLUMN', @level2name = N'MaximumDuration';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The minimum allowed age in years at which a person is eligible for the credential.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefCriteria', @level2type = N'COLUMN', @level2name = N'MinimumAge';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Credential Definition Minimum Age', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefCriteria', @level2type = N'COLUMN', @level2name = N'MinimumAge';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001747', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefCriteria', @level2type = N'COLUMN', @level2name = N'MinimumAge';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20728', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefCriteria', @level2type = N'COLUMN', @level2name = N'MinimumAge';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefCriteria', @level2type = N'COLUMN', @level2name = N'MinimumAge';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The minimum amount of time in minutes it will take to earn the described credential.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefCriteria', @level2type = N'COLUMN', @level2name = N'MinimumDuration';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Credential Definition Minimum Duration', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefCriteria', @level2type = N'COLUMN', @level2name = N'MinimumDuration';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001748', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefCriteria', @level2type = N'COLUMN', @level2name = N'MinimumDuration';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20729', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefCriteria', @level2type = N'COLUMN', @level2name = N'MinimumDuration';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefCriteria', @level2type = N'COLUMN', @level2name = N'MinimumDuration';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The method used to conduct the assessment being referenced.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefCriteria', @level2type = N'COLUMN', @level2name = N'RefCredentialDefAssessMethodTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Credential Definition Assessment Method Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefCriteria', @level2type = N'COLUMN', @level2name = N'RefCredentialDefAssessMethodTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001738', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefCriteria', @level2type = N'COLUMN', @level2name = N'RefCredentialDefAssessMethodTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20719', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefCriteria', @level2type = N'COLUMN', @level2name = N'RefCredentialDefAssessMethodTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefCriteria', @level2type = N'COLUMN', @level2name = N'RefCredentialDefAssessMethodTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefCriteria', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefCriteria', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefCriteria', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefCriteria', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefCriteria', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefCriteria', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefCriteria', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefCriteria', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefCriteria', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialDefCriteria', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

