CREATE TABLE [dbo].[AssessmentParticipantSession] (
    [AssessmentParticipantSessionId]                INT            IDENTITY (1, 1) NOT NULL,
    [ActualStartDateTime]                           DATETIME       NULL,
    [ActualEndDateTime]                             DATETIME       NULL,
    [TimeAssessed]                                  NVARCHAR (30)  NULL,
    [RefAssessmentPlatformTypeId]                   INT            NULL,
    [DeliveryDeviceDetails]                         NVARCHAR (300) NULL,
    [SecurityIssue]                                 NVARCHAR (300) NULL,
    [RefAssessmentSessionSpecialCircumstanceTypeId] INT            NULL,
    [SpecialEventDescription]                       NVARCHAR (60)  NULL,
    [LocationId]                                    INT            NULL,
    [RefLanguageId]                                 INT            NULL,
    [AssessmentFormSectionId]                       INT            NULL,
    [AssessmentSessionId]                           INT            NOT NULL,
    [AssessmentRegistrationId]                      INT            NULL,
    [AssessmentParticipantSessionDatabaseName]      NVARCHAR (300) NULL,
    [AssessmentParticipantSessionGUID]              NVARCHAR (40)  NULL,
    [PlatformUserAgent]                             NVARCHAR (512) NULL,
    [RecordStartDateTime]                           DATETIME       NULL,
    [RecordEndDateTime]                             DATETIME       NULL,
    [RecordStatusId]                                INT            NULL,
    [DataCollectionId]                              INT            NULL,
    CONSTRAINT [PK_AssessmentParticipantSession] PRIMARY KEY CLUSTERED ([AssessmentParticipantSessionId] ASC),
    CONSTRAINT [FK_AssessmentParticipantSession_AssessmentFormSection] FOREIGN KEY ([AssessmentFormSectionId]) REFERENCES [dbo].[AssessmentFormSection] ([AssessmentFormSectionId]),
    CONSTRAINT [FK_AssessmentParticipantSession_AssessmentRegistration] FOREIGN KEY ([AssessmentRegistrationId]) REFERENCES [dbo].[AssessmentRegistration] ([AssessmentRegistrationId]),
    CONSTRAINT [FK_AssessmentParticipantSession_AssessmentSession] FOREIGN KEY ([AssessmentSessionId]) REFERENCES [dbo].[AssessmentSession] ([AssessmentSessionId]),
    CONSTRAINT [FK_AssessmentParticipantSession_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_AssessmentParticipantSession_Location] FOREIGN KEY ([LocationId]) REFERENCES [dbo].[Location] ([LocationId]),
    CONSTRAINT [FK_AssessmentParticipantSession_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_AssessmentParticipantSession_RefLanguage] FOREIGN KEY ([RefLanguageId]) REFERENCES [dbo].[RefLanguage] ([RefLanguageId]),
    CONSTRAINT [FK_AssessParticipantSession_RefAssessmentParticipantSessionPlat] FOREIGN KEY ([RefAssessmentPlatformTypeId]) REFERENCES [dbo].[RefAssessmentPlatformType] ([RefAssessmentPlatformTypeId]),
    CONSTRAINT [FK_AssessParticipantSession_RefAssessmentSessionSpecialCircumst] FOREIGN KEY ([RefAssessmentSessionSpecialCircumstanceTypeId]) REFERENCES [dbo].[RefAssessmentSessionSpecialCircumstanceType] ([RefAssessmentSessionSpecialCircumstanceTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information about a specific person''s participation in an Assessment Session.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'PK', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'AssessmentParticipantSessionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Date and time the assessment actually began.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'ActualStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Session Actual Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'ActualStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001021', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'ActualStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20023', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'ActualStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'ActualStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Date and time the assessment actually ended.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'ActualEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Session Actual End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'ActualEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001022', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'ActualEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20024', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'ActualEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'ActualEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The overall time a learner actually spent during the  assessment session.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'TimeAssessed';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Participant Session Time Assessed', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'TimeAssessed';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000407', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'TimeAssessed';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19398', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'TimeAssessed';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'TimeAssessed';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The platform with which the assessment was delivered to the student during the assessment session.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'RefAssessmentPlatformTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Participant Session Platform Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'RefAssessmentPlatformTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000386', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'RefAssessmentPlatformTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19377', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'RefAssessmentPlatformTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'RefAssessmentPlatformTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The details about the device or platform by with which the assessment was delivered to the learner.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'DeliveryDeviceDetails';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Participant Session Delivery Device Details', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'DeliveryDeviceDetails';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001003', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'DeliveryDeviceDetails';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20006', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'DeliveryDeviceDetails';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'DeliveryDeviceDetails';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Describes an issue related to the security of a testing instrument identified during a specific instance of delivering an assessment to a specific person during a specific time period.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'SecurityIssue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Participant Session Security Issue', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'SecurityIssue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001130', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'SecurityIssue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20102', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'SecurityIssue';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'SecurityIssue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An unusual event occurred during the administration of the assessment. This could include fire alarm, student became ill, etc.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'RefAssessmentSessionSpecialCircumstanceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Session Special Circumstance Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'RefAssessmentSessionSpecialCircumstanceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000389', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'RefAssessmentSessionSpecialCircumstanceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19380', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'RefAssessmentSessionSpecialCircumstanceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'RefAssessmentSessionSpecialCircumstanceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Describes special events that occur before during or after the assessment session that may impact use of results according to rules related to the Assessment Registration Testing Indicator.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'SpecialEventDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Session Special Event Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'SpecialEventDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001093', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'SpecialEventDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20077', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'SpecialEventDescription';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'SpecialEventDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N' The description of the place where an assessment is administered.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'LocationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Session Location', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'LocationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000597', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'LocationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19590', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'LocationId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'LocationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The language that the assessment is administered.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'RefLanguageId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Participant Session Language', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'RefLanguageId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000371', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'RefLanguageId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19370', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'RefLanguageId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'RefLanguageId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - AssessmentFormSection', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'AssessmentFormSectionId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - AssessmentSession', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'AssessmentSessionId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - AssessmentRegistration', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'AssessmentRegistrationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The name of the database that was used to administer the test.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'AssessmentParticipantSessionDatabaseName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Participant Session Database Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'AssessmentParticipantSessionDatabaseName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001539', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'AssessmentParticipantSessionDatabaseName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20514', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'AssessmentParticipantSessionDatabaseName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'AssessmentParticipantSessionDatabaseName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A globally unique identifier for an instance of a person taking an assessment.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'AssessmentParticipantSessionGUID';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Participant Session GUID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'AssessmentParticipantSessionGUID';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001540', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'AssessmentParticipantSessionGUID';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20515', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'AssessmentParticipantSessionGUID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'AssessmentParticipantSessionGUID';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N' A list of product tokens (keywords) with optional comments that identifies the client hardware and software with which the assessment was delivered to the student during the assessment session.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'PlatformUserAgent';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Participant Session Platform User Agent', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'PlatformUserAgent';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001152', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'PlatformUserAgent';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20112', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'PlatformUserAgent';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentParticipantSession', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

