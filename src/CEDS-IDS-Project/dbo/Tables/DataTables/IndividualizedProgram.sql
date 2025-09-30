CREATE TABLE [dbo].[IndividualizedProgram] (
    [IndividualizedProgramId]                  INT             IDENTITY (1, 1) NOT NULL,
    [OrganizationPersonRoleId]                 INT             NOT NULL,
    [RefIndividualizedProgramDateType]         INT             NULL,
    [IndividualizedProgramDate]                DATE            NULL,
    [NonInclusionMinutesPerWeek]               INT             NULL,
    [InclusionMinutesPerWeek]                  INT             NULL,
    [RefIndividualizedProgramTransitionTypeId] INT             NULL,
    [RefIndividualizedProgramTypeId]           INT             NULL,
    [ServicePlanDate]                          DATE            NULL,
    [RefIndividualizedProgramLocationId]       INT             NULL,
    [ServicePlanMeetingParticipants]           NVARCHAR (4000) NULL,
    [ServicePlanSignedBy]                      NVARCHAR (4000) NULL,
    [ServicePlanSignatureDate]                 DATE            NULL,
    [ServicePlanReevaluationDate]              DATE            NULL,
    [RefStudentSupportServiceTypeId]           INT             NULL,
    [InclusiveSettingIndicator]                BIT             NULL,
    [ServicePlanEndDate]                       DATE            NULL,
    [TransferOfRightsStatement]                NVARCHAR (MAX)  NULL,
    [RecordStartDateTime]                      DATETIME        NULL,
    [RecordEndDateTime]                        DATETIME        NULL,
    [RecordStatusId]                           INT             NULL,
    [DataCollectionId]                         INT             NULL,
    [FunctionalBehavioralAssessmentDate]       DATE            NULL,
    [RefProceduralSafeguardsNoticeIndicatorId] INT             NULL,
    [RefStudentInvitationforTransitionPlanningIndicatorId] INT          NULL,
    [RefIndicator11ChildFindTimelinessReasonId] INT             NULL,
    [RefAgencyInvitationForTransitionPlanningIndicatorId] INT             NULL,
    CONSTRAINT [XPKIndividualizedProgram] PRIMARY KEY CLUSTERED ([IndividualizedProgramId] ASC),
    CONSTRAINT [FK_IndividualizedProgram_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_IndividualizedProgram_OrganizationPersonRole] FOREIGN KEY ([OrganizationPersonRoleId]) REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]),
    CONSTRAINT [FK_IndividualizedProgram_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_IndividualizedProgram_RefIndividualizedProgramType] FOREIGN KEY ([RefIndividualizedProgramTypeId]) REFERENCES [dbo].[RefIndividualizedProgramType] ([RefIndividualizedProgramTypeId]),
    CONSTRAINT [FK_IndividualizedProgram_RefIndivProgramDateType] FOREIGN KEY ([RefIndividualizedProgramDateType]) REFERENCES [dbo].[RefIndividualizedProgramDateType] ([RefIndividualizedProgramDateTypeId]),
    CONSTRAINT [FK_IndividualizedProgram_RefIndivProgramLocation] FOREIGN KEY ([RefIndividualizedProgramLocationId]) REFERENCES [dbo].[RefIndividualizedProgramLocation] ([RefIndividualizedProgramLocationId]),
    CONSTRAINT [FK_IndividualizedProgram_RefStudentInvitationforTransitionPlanningIndicator] FOREIGN KEY ([RefStudentInvitationforTransitionPlanningIndicatorId]) REFERENCES [dbo].[RefStudentInvitationforTransitionPlanningIndicator] ([RefStudentInvitationforTransitionPlanningIndicatorId]),
    CONSTRAINT [FK_IndividualizedProgram_RefIndivProgramTransitionType] FOREIGN KEY ([RefIndividualizedProgramTransitionTypeId]) REFERENCES [dbo].[RefIndividualizedProgramTransitionType] ([RefIndividualizedProgramTransitionTypeId]),
    CONSTRAINT [FK_IndividualizedProgram_RefProceduralSafeguardsNoticeIndicator] FOREIGN KEY ([RefProceduralSafeguardsNoticeIndicatorId]) REFERENCES [dbo].[RefProceduralSafeguardsNoticeIndicator] ([RefProceduralSafeguardsNoticeIndicatorId]),
    CONSTRAINT [FK_IndividualizedProgram_RefStudentSupportServiceType] FOREIGN KEY ([RefStudentSupportServiceTypeId]) REFERENCES [dbo].[RefStudentSupportServiceType] ([RefStudentSupportServiceTypeId]),
    CONSTRAINT [FK_IndividualizedProgram_RefIndicator11ChildFindTimelinessReason] FOREIGN KEY ([RefIndicator11ChildFindTimelinessReasonId]) REFERENCES [dbo].[RefIndicator11ChildFindTimelinessReason] ([RefIndicator11ChildFindTimelinessReasonId]),
    CONSTRAINT [FK_IndividualizedProgram_RefAgencyInvitationForTransitionPlanningIndicator] FOREIGN KEY ([RefAgencyInvitationForTransitionPlanningIndicatorId]) REFERENCES [dbo].[RefAgencyInvitationForTransitionPlanningIndicator] ([RefAgencyInvitationForTransitionPlanningIndicatorId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information on the type, design, dates, and participation of a student in an individualized program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'IndividualizedProgramId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate key from OrganizationPersonRole.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'OrganizationPersonRoleId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of the significance of a date to an individualized program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'RefIndividualizedProgramDateType';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Individualized Program Service Plan Date Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'RefIndividualizedProgramDateType';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001231', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'RefIndividualizedProgramDateType';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20196', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'RefIndividualizedProgramDateType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'RefIndividualizedProgramDateType';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The date on which the status of an individualized program for a student is significantly altered.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'IndividualizedProgramDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Individualized Program Date, Individualized Program Service Plan Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'IndividualizedProgramDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001232, 001236', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'IndividualizedProgramDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20197, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20201', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'IndividualizedProgramDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'IndividualizedProgramDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The number of minutes per week that a student with disabilities is served in a regular classroom with his or her non-disabled peers.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'NonInclusionMinutesPerWeek';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Individualized Program NonInclusion Minutes Per Week', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'NonInclusionMinutesPerWeek';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001233', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'NonInclusionMinutesPerWeek';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20198', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'NonInclusionMinutesPerWeek';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'NonInclusionMinutesPerWeek';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The number of minutes per week that a student with disabilities is served in a special education setting separate from his or her non-disabled peers.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'InclusionMinutesPerWeek';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Individualized Program Inclusion Minutes Per Week', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'InclusionMinutesPerWeek';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001234', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'InclusionMinutesPerWeek';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20199', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'InclusionMinutesPerWeek';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'InclusionMinutesPerWeek';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The post-school transition plan for the student recorded on their Individualized Education Program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'RefIndividualizedProgramTransitionTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Individualized Program Transition Plan Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'RefIndividualizedProgramTransitionTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001235', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'RefIndividualizedProgramTransitionTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20200', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'RefIndividualizedProgramTransitionTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'RefIndividualizedProgramTransitionTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A designation of the type of program developed for a student.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'RefIndividualizedProgramTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Individualized Program Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'RefIndividualizedProgramTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000320', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'RefIndividualizedProgramTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19320', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'RefIndividualizedProgramTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'RefIndividualizedProgramTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The year, month and day on which the status of the service plan for a child is established or significantly altered.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'ServicePlanDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Individualized Program Service Plan Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'ServicePlanDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001236', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'ServicePlanDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20201', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'ServicePlanDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'ServicePlanDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The place in which a child''s service plan meeting is held.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'RefIndividualizedProgramLocationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Individualized Program Service Plan Meeting Location', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'RefIndividualizedProgramLocationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001237', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'RefIndividualizedProgramLocationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20202', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'RefIndividualizedProgramLocationId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'RefIndividualizedProgramLocationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The position titles of individuals who attend the service plan meeting.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'ServicePlanMeetingParticipants';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Individualized Program Service Plan Meeting Participants', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'ServicePlanMeetingParticipants';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001238', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'ServicePlanMeetingParticipants';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20203', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'ServicePlanMeetingParticipants';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'ServicePlanMeetingParticipants';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The position titles of individuals who sign a written service plan.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'ServicePlanSignedBy';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Individualized Program Service Plan Signed By', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'ServicePlanSignedBy';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001239', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'ServicePlanSignedBy';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20204', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'ServicePlanSignedBy';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'ServicePlanSignedBy';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The year, month and day on which the service plan document is signed.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'ServicePlanSignatureDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Individualized Program Service Plan Signature Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'ServicePlanSignatureDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001240', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'ServicePlanSignatureDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20205', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'ServicePlanSignatureDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'ServicePlanSignatureDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Date student will be reevaluated for continued placement in a support program(s).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'ServicePlanReevaluationDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Individualized Program Service Plan Reevaluation Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'ServicePlanReevaluationDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001241', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'ServicePlanReevaluationDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20207', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'ServicePlanReevaluationDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'ServicePlanReevaluationDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Type of related or ancillary services provided to a person or a group of persons within the formal educational system or offered by an outside agency which provides non-instructional services to support the general welfare of students. This includes physical and emotional health, the ability to select an appropriate course of study, admission to appropriate educational programs, and the ability to adjust to and remain in school through the completion of programs. In serving a student with an identified disability, related services include developmental, corrective, or supportive services required to ensure that the person benefits from special education.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'RefStudentSupportServiceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Student Support Service Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'RefStudentSupportServiceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000273', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'RefStudentSupportServiceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19273', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'RefStudentSupportServiceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'RefStudentSupportServiceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Indicates that services are provided to the child in a place where children of all abilities learn together.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'InclusiveSettingIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Inclusive Setting Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'InclusiveSettingIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001634', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'InclusiveSettingIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20615', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'InclusiveSettingIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The year, month and day on which the status of the service plan for a child effectively ends.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'ServicePlanEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Individualized Program Service Plan End Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'ServicePlanEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001683', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'ServicePlanEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20664', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'ServicePlanEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'ServicePlanEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Beginning not later than one year before the child reaches the age of majority under State law, the IEP must include a statement that the child has been informed of the child''s rights under Part B of the Individuals with Disabilities Education Act, if any, that will transfer to the child on reaching the age of majority under §300.520.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'TransferOfRightsStatement';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'IEP Transfer of Rights Statement', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'TransferOfRightsStatement';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001682', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'TransferOfRightsStatement';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20663', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'TransferOfRightsStatement';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgram', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

