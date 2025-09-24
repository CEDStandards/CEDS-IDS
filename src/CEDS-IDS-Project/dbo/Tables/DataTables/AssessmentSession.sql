CREATE TABLE [dbo].[AssessmentSession] (
    [AssessmentSessionId]                           INT            IDENTITY (1, 1) NOT NULL,
    [AssessmentAdministrationId]                    INT            NULL,
    [ScheduledStartDateTime]                        DATETIME       NULL,
    [ScheduledEndDateTime]                          DATETIME       NULL,
    [ActualStartDateTime]                           DATETIME       NULL,
    [ActualEndDateTime]                             DATETIME       NULL,
    [AllottedTime]                                  TIME (7)       NULL,
    [RefAssessmentSessionTypeId]                    INT            NULL,
    [SecurityIssue]                                 NVARCHAR (300) NULL,
    [RefAssessmentSessionSpecialCircumstanceTypeId] INT            NULL,
    [SpecialEventDescription]                       NVARCHAR (60)  NULL,
    [Location]                                      NVARCHAR (45)  NULL,
    [OrganizationId]                                INT            NULL,
    [Lea_OrganizationId]                            INT            NULL,
    [School_OrganizationId]                         INT            NULL,
    [RecordStartDateTime]                           DATETIME       NULL,
    [RecordEndDateTime]                             DATETIME       NULL,
    [RecordStatusId]                                INT            NULL,
    [DataCollectionId]                              INT            NULL,
    CONSTRAINT [PK_AssessmentSession] PRIMARY KEY CLUSTERED ([AssessmentSessionId] ASC),
    CONSTRAINT [FK_AssessmentSession_AssessmentAdministration] FOREIGN KEY ([AssessmentAdministrationId]) REFERENCES [dbo].[AssessmentAdministration] ([AssessmentAdministrationId]),
    CONSTRAINT [FK_AssessmentSession_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_AssessmentSession_Organization] FOREIGN KEY ([Lea_OrganizationId]) REFERENCES [dbo].[Organization] ([OrganizationId]),
    CONSTRAINT [FK_AssessmentSession_Organization1] FOREIGN KEY ([School_OrganizationId]) REFERENCES [dbo].[Organization] ([OrganizationId]),
    CONSTRAINT [FK_AssessmentSession_Organization2] FOREIGN KEY ([OrganizationId]) REFERENCES [dbo].[Organization] ([OrganizationId]),
    CONSTRAINT [FK_AssessmentSession_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_AssessmentSession_RefAssessmentSessionSpecialCircumstance] FOREIGN KEY ([RefAssessmentSessionSpecialCircumstanceTypeId]) REFERENCES [dbo].[RefAssessmentSessionSpecialCircumstanceType] ([RefAssessmentSessionSpecialCircumstanceTypeId]),
    CONSTRAINT [FK_AssessmentSession_RefAssessmentSessionType] FOREIGN KEY ([RefAssessmentSessionTypeId]) REFERENCES [dbo].[RefAssessmentSessionType] ([RefAssessmentSessionTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information related to an instance of delivering an assessment during a specific period of time.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSession';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSession';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSession', @level2type = N'COLUMN', @level2name = N'AssessmentSessionId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - AssessmentAdministration.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSession', @level2type = N'COLUMN', @level2name = N'AssessmentAdministrationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Date and time the assessment is scheduled to begin.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSession', @level2type = N'COLUMN', @level2name = N'ScheduledStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Session Scheduled Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSession', @level2type = N'COLUMN', @level2name = N'ScheduledStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001019', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSession', @level2type = N'COLUMN', @level2name = N'ScheduledStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20021', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSession', @level2type = N'COLUMN', @level2name = N'ScheduledStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSession', @level2type = N'COLUMN', @level2name = N'ScheduledStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Date and time the assessment is scheduled to end.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSession', @level2type = N'COLUMN', @level2name = N'ScheduledEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Session Scheduled End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSession', @level2type = N'COLUMN', @level2name = N'ScheduledEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001020', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSession', @level2type = N'COLUMN', @level2name = N'ScheduledEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20022', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSession', @level2type = N'COLUMN', @level2name = N'ScheduledEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSession', @level2type = N'COLUMN', @level2name = N'ScheduledEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Date and time the assessment actually began.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSession', @level2type = N'COLUMN', @level2name = N'ActualStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Session Actual Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSession', @level2type = N'COLUMN', @level2name = N'ActualStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001021', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSession', @level2type = N'COLUMN', @level2name = N'ActualStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20023', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSession', @level2type = N'COLUMN', @level2name = N'ActualStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSession', @level2type = N'COLUMN', @level2name = N'ActualStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Date and time the assessment actually ended.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSession', @level2type = N'COLUMN', @level2name = N'ActualEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Session Actual End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSession', @level2type = N'COLUMN', @level2name = N'ActualEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001022', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSession', @level2type = N'COLUMN', @level2name = N'ActualEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20024', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSession', @level2type = N'COLUMN', @level2name = N'ActualEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSession', @level2type = N'COLUMN', @level2name = N'ActualEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The duration of time allotted for the assessment session.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSession', @level2type = N'COLUMN', @level2name = N'AllottedTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Session Allotted Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSession', @level2type = N'COLUMN', @level2name = N'AllottedTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000408', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSession', @level2type = N'COLUMN', @level2name = N'AllottedTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19399', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSession', @level2type = N'COLUMN', @level2name = N'AllottedTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSession', @level2type = N'COLUMN', @level2name = N'AllottedTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of session that is scheduled.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSession', @level2type = N'COLUMN', @level2name = N'RefAssessmentSessionTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Session Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSession', @level2type = N'COLUMN', @level2name = N'RefAssessmentSessionTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001018', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSession', @level2type = N'COLUMN', @level2name = N'RefAssessmentSessionTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20020', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSession', @level2type = N'COLUMN', @level2name = N'RefAssessmentSessionTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSession', @level2type = N'COLUMN', @level2name = N'RefAssessmentSessionTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The description of a security issue, if any, discovered for an administration of an assessment, such as suspected cheating by a student or a teacher changing answers after a student takes the test.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSession', @level2type = N'COLUMN', @level2name = N'SecurityIssue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Session Security Issue', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSession', @level2type = N'COLUMN', @level2name = N'SecurityIssue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000968', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSession', @level2type = N'COLUMN', @level2name = N'SecurityIssue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19969', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSession', @level2type = N'COLUMN', @level2name = N'SecurityIssue';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSession', @level2type = N'COLUMN', @level2name = N'SecurityIssue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An unusual event occurred during the administration of the assessment. This could include fire alarm, student became ill, etc.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSession', @level2type = N'COLUMN', @level2name = N'RefAssessmentSessionSpecialCircumstanceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Session Special Circumstance Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSession', @level2type = N'COLUMN', @level2name = N'RefAssessmentSessionSpecialCircumstanceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000389', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSession', @level2type = N'COLUMN', @level2name = N'RefAssessmentSessionSpecialCircumstanceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19380', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSession', @level2type = N'COLUMN', @level2name = N'RefAssessmentSessionSpecialCircumstanceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSession', @level2type = N'COLUMN', @level2name = N'RefAssessmentSessionSpecialCircumstanceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Describes special events that occur before during or after the assessment session that may impact use of results according to rules related to the Assessment Registration Testing Indicator.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSession', @level2type = N'COLUMN', @level2name = N'SpecialEventDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Session Special Event Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSession', @level2type = N'COLUMN', @level2name = N'SpecialEventDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001093', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSession', @level2type = N'COLUMN', @level2name = N'SpecialEventDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20077', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSession', @level2type = N'COLUMN', @level2name = N'SpecialEventDescription';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSession', @level2type = N'COLUMN', @level2name = N'SpecialEventDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N' The description of the place where an assessment is administered.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSession', @level2type = N'COLUMN', @level2name = N'Location';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Session Location', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSession', @level2type = N'COLUMN', @level2name = N'Location';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000597', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSession', @level2type = N'COLUMN', @level2name = N'Location';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19590', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSession', @level2type = N'COLUMN', @level2name = N'Location';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSession', @level2type = N'COLUMN', @level2name = N'Location';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - Organization', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSession', @level2type = N'COLUMN', @level2name = N'OrganizationId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - Organization : Local Education Agency', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSession', @level2type = N'COLUMN', @level2name = N'Lea_OrganizationId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - Organization : School', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSession', @level2type = N'COLUMN', @level2name = N'School_OrganizationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSession', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSession', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSession', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSession', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSession', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSession', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSession', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSession', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSession', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSession', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

