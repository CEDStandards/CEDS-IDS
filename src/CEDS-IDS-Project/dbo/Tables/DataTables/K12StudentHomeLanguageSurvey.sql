CREATE TABLE [dbo].[K12StudentHomeLanguageSurvey] (
    [K12StudentHomeLanguageSurveyId]            INT      IDENTITY (1, 1) NOT NULL,
    [OrganizationPersonRoleId]                  INT      NOT NULL,
    [HomeLanguageSurveyAdministrationDate]      DATETIME NULL,
    [HomeLanguageSurveyAdministrationIndicator] BIT      NULL,
    [RecordStartDateTime]                       DATETIME NULL,
    [RecordEndDateTime]                         DATETIME NULL,
    [RecordStatusId]                            INT      NULL,
    [DataCollectionId]                          INT      NULL,
    CONSTRAINT [PK_K12StudentHomeLanguageSurvey] PRIMARY KEY CLUSTERED ([K12StudentHomeLanguageSurveyId] ASC),
    CONSTRAINT [FK_K12StudentHomeLanguageSurvey_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_K12StudentHomeLanguageSurvey_OrganizationPersonRole] FOREIGN KEY ([OrganizationPersonRoleId]) REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]),
    CONSTRAINT [FK_K12StudentHomeLanguageSurvey_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information captured on an English learner home language survey.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentHomeLanguageSurvey';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentHomeLanguageSurvey';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The year, month, and day on which the Home Language Survey is known to have been administered to the parent or guardian of this student.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentHomeLanguageSurvey', @level2type = N'COLUMN', @level2name = N'HomeLanguageSurveyAdministrationDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Home Language Survey Administration Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentHomeLanguageSurvey', @level2type = N'COLUMN', @level2name = N'HomeLanguageSurveyAdministrationDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001989', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentHomeLanguageSurvey', @level2type = N'COLUMN', @level2name = N'HomeLanguageSurveyAdministrationDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20934', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentHomeLanguageSurvey', @level2type = N'COLUMN', @level2name = N'HomeLanguageSurveyAdministrationDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentHomeLanguageSurvey', @level2type = N'COLUMN', @level2name = N'HomeLanguageSurveyAdministrationDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication that the parent or guardian of this student was administered the Home Language Survey - a questionnaire given to parents or guardians that helps schools and local education agencies identify which students are potential English Learners and who will require assessment of their English language proficiency to determine whether they are eligible for language assistance services.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentHomeLanguageSurvey', @level2type = N'COLUMN', @level2name = N'HomeLanguageSurveyAdministrationIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Home Language Survey Administration Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentHomeLanguageSurvey', @level2type = N'COLUMN', @level2name = N'HomeLanguageSurveyAdministrationIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001988', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentHomeLanguageSurvey', @level2type = N'COLUMN', @level2name = N'HomeLanguageSurveyAdministrationIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20935', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentHomeLanguageSurvey', @level2type = N'COLUMN', @level2name = N'HomeLanguageSurveyAdministrationIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentHomeLanguageSurvey', @level2type = N'COLUMN', @level2name = N'HomeLanguageSurveyAdministrationIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentHomeLanguageSurvey', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentHomeLanguageSurvey', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentHomeLanguageSurvey', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentHomeLanguageSurvey', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentHomeLanguageSurvey', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentHomeLanguageSurvey', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentHomeLanguageSurvey', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentHomeLanguageSurvey', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentHomeLanguageSurvey', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentHomeLanguageSurvey', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

