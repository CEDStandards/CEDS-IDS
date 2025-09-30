CREATE TABLE [dbo].[ProfessionalDevelopmentSession] (
    [ProfessionalDevelopmentSessionId]    INT            IDENTITY (1, 1) NOT NULL,
    [ProfessionalDevelopmentActivityId]   INT            NOT NULL,
    [SessionIdentifier]                   NVARCHAR (40)  NULL,
    [RefPDDeliveryMethodId]               INT            NULL,
    [Capacity]                            INT            NULL,
    [StartDate]                           DATE           NULL,
    [StartTime]                           NVARCHAR (15)  NULL,
    [EndDate]                             DATE           NULL,
    [EndTime]                             NVARCHAR (15)  NULL,
    [LocationName]                        NVARCHAR (60)  NULL,
    [EvaluationMethod]                    NVARCHAR (30)  NULL,
    [EvaluationScore]                     NVARCHAR (30)  NULL,
    [ExpirationDate]                      DATE           NULL,
    [RefPDSessionStatusId]                INT            NULL,
    [RefPDInstructionalDeliveryModeId]    INT            NULL,
    [SponsoringAgencyName]                NVARCHAR (60)  NULL,
    [RefLanguageId]                       INT            NULL,
    [FundingSource]                       NVARCHAR (30)  NULL,
    [TrainingAndTechnicalAssistanceLevel] NVARCHAR (100) NULL,
    [RefELTrainerCoreKnowledgeAreaId]     INT            NULL,
    [RecordStartDateTime]                 DATETIME       NULL,
    [RecordEndDateTime]                   DATETIME       NULL,
    [RecordStatusId]                      INT            NULL,
    [DataCollectionId]                    INT            NULL,
    CONSTRAINT [PK_ProfessionalDevelopmentSession] PRIMARY KEY CLUSTERED ([ProfessionalDevelopmentSessionId] ASC),
    CONSTRAINT [FK_PDSession_PDActivity] FOREIGN KEY ([ProfessionalDevelopmentActivityId]) REFERENCES [dbo].[ProfessionalDevelopmentActivity] ([ProfessionalDevelopmentActivityId]),
    CONSTRAINT [FK_PDSession_RefLanguage] FOREIGN KEY ([RefLanguageId]) REFERENCES [dbo].[RefLanguage] ([RefLanguageId]),
    CONSTRAINT [FK_PDSession_RefPDInstructionalDeliveryMode] FOREIGN KEY ([RefPDInstructionalDeliveryModeId]) REFERENCES [dbo].[RefPDInstructionalDeliveryMode] ([RefPDInstructionalDeliveryModeId]),
    CONSTRAINT [FK_PDSession_RefPDSessionStatus] FOREIGN KEY ([RefPDSessionStatusId]) REFERENCES [dbo].[RefPDSessionStatus] ([RefPDSessionStatusId]),
    CONSTRAINT [FK_ProfessionalDevelopmentSession_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_ProfessionalDevelopmentSession_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_ProfessionalDevelopmentSession_RefELTrainerCoreKnowledgeArea] FOREIGN KEY ([RefELTrainerCoreKnowledgeAreaId]) REFERENCES [dbo].[RefELTrainerCoreKnowledgeArea] ([RefELTrainerCoreKnowledgeAreaId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information about part or all of a Professional Development Activity scheduled for delivery within a single day.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'ProfessionalDevelopmentSessionId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - Professional Development Activity', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'ProfessionalDevelopmentActivityId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The unique, non-duplicated,  identification number assigned by the registry data system for a session of a particular professional development activity.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'SessionIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Professional Development Session Identifier', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'SessionIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001452', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'SessionIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20422', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'SessionIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'SessionIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The method by which a session is delivered', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'RefPDDeliveryMethodId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Professional Development Delivery Method', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'RefPDDeliveryMethodId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001431', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'RefPDDeliveryMethodId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20401', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'RefPDDeliveryMethodId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'RefPDDeliveryMethodId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The total number of participants that can be accommodated by a professional development session.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'Capacity';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Professional Development Session Capacity', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'Capacity';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001446', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'Capacity';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20416', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'Capacity';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'Capacity';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The year, month, and day a professional development session begins.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Professional Development Session Start Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001455', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20426', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The time at which a professional development session begins.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'StartTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Professional Development Session Start Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'StartTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001456', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'StartTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20427', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'StartTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'StartTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The year, month and day a professional development session ends.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Professional Development Session End Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001447', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20417', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The time at which a professional development session ends.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'EndTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Professional Development Session End Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'EndTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001448', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'EndTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20418', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'EndTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'EndTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The name of a location where a professional development session will be held.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'LocationName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Professional Development Session Location Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'LocationName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001454', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'LocationName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20424', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'LocationName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'LocationName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The method used to evaluate a professional development session.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'EvaluationMethod';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Professional Development Session Evaluation Method', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'EvaluationMethod';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001449', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'EvaluationMethod';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20419', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'EvaluationMethod';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'EvaluationMethod';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The score or rating used to determine if a professional development session was successful.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'EvaluationScore';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Professional Development Session Evaluation Score', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'EvaluationScore';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001450', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'EvaluationScore';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20420', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'EvaluationScore';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'EvaluationScore';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The year, month, and day on which any certificate awarded as part of a professional development activity expires.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'ExpirationDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Professional Development Activity Expiration Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'ExpirationDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001451', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'ExpirationDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20421', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'ExpirationDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'ExpirationDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The current status of a professional development session', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'RefPDSessionStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Professional Development Session Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'RefPDSessionStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001457', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'RefPDSessionStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20428', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'RefPDSessionStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'RefPDSessionStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The primary setting or medium of professional development delivery.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'RefPDInstructionalDeliveryModeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Professional Development Instructional Delivery Mode', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'RefPDInstructionalDeliveryModeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001458', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'RefPDInstructionalDeliveryModeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20429', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'RefPDInstructionalDeliveryModeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'RefPDInstructionalDeliveryModeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The name of the sponsoring agency.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'SponsoringAgencyName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Sponsoring Agency Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'SponsoringAgencyName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001489', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'SponsoringAgencyName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20461', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'SponsoringAgencyName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'SponsoringAgencyName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The language in which the professional development session is delivered.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'RefLanguageId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Professional Development Session Language', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'RefLanguageId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001388', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'RefLanguageId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20357', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'RefLanguageId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'RefLanguageId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The primary source of funding for a professional development session.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'FundingSource';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Professional Development Funding Source', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'FundingSource';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001443', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'FundingSource';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20413', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'FundingSource';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'FundingSource';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The level of expertise an individual training and technical assistance specialist has based on a set of established criteria.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'TrainingAndTechnicalAssistanceLevel';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Training and Technical Assistance Level', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'TrainingAndTechnicalAssistanceLevel';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001628', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'TrainingAndTechnicalAssistanceLevel';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20609', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'TrainingAndTechnicalAssistanceLevel';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'TrainingAndTechnicalAssistanceLevel';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A description of the core knowledge expertise of a trainer of a professional development experience.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'RefELTrainerCoreKnowledgeAreaId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Early Learning Trainer Core Knowledge Area', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'RefELTrainerCoreKnowledgeAreaId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001606', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'RefELTrainerCoreKnowledgeAreaId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20585', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'RefELTrainerCoreKnowledgeAreaId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'RefELTrainerCoreKnowledgeAreaId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentSession', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

