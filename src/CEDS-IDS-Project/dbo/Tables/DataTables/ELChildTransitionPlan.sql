CREATE TABLE [dbo].[ELChildTransitionPlan] (
    [ELChildTransitionPlanId]                     INT      IDENTITY (1, 1) NOT NULL,
    [PersonId]                                    INT      NOT NULL,
    [PartB619PotentialEligibilityInd]             BIT      NULL,
    [IDEAPartCToPartBNotificationDate]            DATE     NULL,
    [TransitionConferenceDate]                    DATE     NULL,
    [TransitionConferenceDeclineDate]             DATE     NULL,
    [DateOfTransitionPlan]                        DATE     NULL,
    [IDEAPartCToPartBNotificationOptOutDate]      DATE     NULL,
    [IDEAPartCToPartBNotificationOptOutIndicator] BIT      NULL,
    [IndividualizedProgramId]                     INT      NULL,
    [RefReasonDelayTransitionConfId]              INT      NULL,
    [RecordStartDateTime]                         DATETIME NULL,
    [RecordEndDateTime]                           DATETIME NULL,
    [RecordStatusId]                              INT      NULL,
    [DataCollectionId]                            INT      NULL,
    [AnticipatedDateOfTransition]                 DATE     NULL,
    [RefIDEAPartCToPartBTransitionDelayReasonId] INT      NULL,
    CONSTRAINT [PK_ELChildIDEA] PRIMARY KEY CLUSTERED ([ELChildTransitionPlanId] ASC),
    CONSTRAINT [FK_ELChildIDEA_IndividualizedProgram] FOREIGN KEY ([IndividualizedProgramId]) REFERENCES [dbo].[IndividualizedProgram] ([IndividualizedProgramId]),
    CONSTRAINT [FK_ELChildIDEA_Person] FOREIGN KEY ([PersonId]) REFERENCES [dbo].[Person] ([PersonId]),
    CONSTRAINT [FK_ELChildIDEA_RefReasonDelayTransitionConf] FOREIGN KEY ([RefReasonDelayTransitionConfId]) REFERENCES [dbo].[RefReasonDelayTransitionConf] ([RefReasonDelayTransitionConfId]),
    CONSTRAINT [FK_ELChildTransitionPlan_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_ELChildTransitionPlan_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_ELChildTransitionPlan_RefIDEAPartCToPartBTransitionDelayReason] FOREIGN KEY ([RefIDEAPartCToPartBTransitionDelayReasonId]) REFERENCES [dbo].[RefIDEAPartCToPartBTransitionDelayReason] ([RefIDEAPartCToPartBTransitionDelayReasonId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information about transitions plans and compliance events for children transitioning from IDEA part C to IDEA part B.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildTransitionPlan';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildTransitionPlan';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate key from Person.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildTransitionPlan', @level2type = N'COLUMN', @level2name = N'PersonId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The determination of whether a child is potentially eligible for Part B 619 services', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildTransitionPlan', @level2type = N'COLUMN', @level2name = N'PartB619PotentialEligibilityInd';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'IDEA Part B 619 Potential Eligibility Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildTransitionPlan', @level2type = N'COLUMN', @level2name = N'PartB619PotentialEligibilityInd';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001360', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildTransitionPlan', @level2type = N'COLUMN', @level2name = N'PartB619PotentialEligibilityInd';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20327', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildTransitionPlan', @level2type = N'COLUMN', @level2name = N'PartB619PotentialEligibilityInd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildTransitionPlan', @level2type = N'COLUMN', @level2name = N'PartB619PotentialEligibilityInd';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The date that notification is provided to the State Education Agency (SEA) and local education agency (LEA) of residence for a child potentially eligible for Part B (619) preschool services.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildTransitionPlan', @level2type = N'COLUMN', @level2name = N'IDEAPartCToPartBNotificationDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'IDEA Part C to Part B Notification Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildTransitionPlan', @level2type = N'COLUMN', @level2name = N'IDEAPartCToPartBNotificationDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001500', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildTransitionPlan', @level2type = N'COLUMN', @level2name = N'IDEAPartCToPartBNotificationDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20472', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildTransitionPlan', @level2type = N'COLUMN', @level2name = N'IDEAPartCToPartBNotificationDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildTransitionPlan', @level2type = N'COLUMN', @level2name = N'IDEAPartCToPartBNotificationDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The date of the transition conference from IDEA Part C to Part B 619 or another early learning program or service.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildTransitionPlan', @level2type = N'COLUMN', @level2name = N'TransitionConferenceDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Transition Conference Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildTransitionPlan', @level2type = N'COLUMN', @level2name = N'TransitionConferenceDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001365', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildTransitionPlan', @level2type = N'COLUMN', @level2name = N'TransitionConferenceDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20333', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildTransitionPlan', @level2type = N'COLUMN', @level2name = N'TransitionConferenceDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildTransitionPlan', @level2type = N'COLUMN', @level2name = N'TransitionConferenceDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The date the parents declined approval for the transition conference from IDEA Part C to Part B 619 or another early learning program or service.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildTransitionPlan', @level2type = N'COLUMN', @level2name = N'TransitionConferenceDeclineDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Transition Conference Decline Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildTransitionPlan', @level2type = N'COLUMN', @level2name = N'TransitionConferenceDeclineDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001366', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildTransitionPlan', @level2type = N'COLUMN', @level2name = N'TransitionConferenceDeclineDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20334', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildTransitionPlan', @level2type = N'COLUMN', @level2name = N'TransitionConferenceDeclineDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildTransitionPlan', @level2type = N'COLUMN', @level2name = N'TransitionConferenceDeclineDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The date transition steps and services were added to the individualized service plan.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildTransitionPlan', @level2type = N'COLUMN', @level2name = N'DateOfTransitionPlan';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Date of Transition Plan', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildTransitionPlan', @level2type = N'COLUMN', @level2name = N'DateOfTransitionPlan';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001367', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildTransitionPlan', @level2type = N'COLUMN', @level2name = N'DateOfTransitionPlan';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20335', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildTransitionPlan', @level2type = N'COLUMN', @level2name = N'DateOfTransitionPlan';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildTransitionPlan', @level2type = N'COLUMN', @level2name = N'DateOfTransitionPlan';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The date that parents of a child potentially eligible for Part B preschool services opt out of the impending notification to the local education agency.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildTransitionPlan', @level2type = N'COLUMN', @level2name = N'IDEAPartCToPartBNotificationOptOutDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'IDEA Part C to Part B Notification Opt Out Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildTransitionPlan', @level2type = N'COLUMN', @level2name = N'IDEAPartCToPartBNotificationOptOutDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001364', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildTransitionPlan', @level2type = N'COLUMN', @level2name = N'IDEAPartCToPartBNotificationOptOutDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20331', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildTransitionPlan', @level2type = N'COLUMN', @level2name = N'IDEAPartCToPartBNotificationOptOutDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildTransitionPlan', @level2type = N'COLUMN', @level2name = N'IDEAPartCToPartBNotificationOptOutDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Indicates whether parents of a child potentially eligible for Part B preschool services have opted out of the impending notification to the local education agency.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildTransitionPlan', @level2type = N'COLUMN', @level2name = N'IDEAPartCToPartBNotificationOptOutIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'IDEA Part C to Part B Notification Opt Out Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildTransitionPlan', @level2type = N'COLUMN', @level2name = N'IDEAPartCToPartBNotificationOptOutIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001363', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildTransitionPlan', @level2type = N'COLUMN', @level2name = N'IDEAPartCToPartBNotificationOptOutIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20330', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildTransitionPlan', @level2type = N'COLUMN', @level2name = N'IDEAPartCToPartBNotificationOptOutIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildTransitionPlan', @level2type = N'COLUMN', @level2name = N'IDEAPartCToPartBNotificationOptOutIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - IndividualizedProgram', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildTransitionPlan', @level2type = N'COLUMN', @level2name = N'IndividualizedProgramId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The reasons for the delay of a transition conference.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildTransitionPlan', @level2type = N'COLUMN', @level2name = N'RefReasonDelayTransitionConfId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Reason for Delay of Transition Conference', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildTransitionPlan', @level2type = N'COLUMN', @level2name = N'RefReasonDelayTransitionConfId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001521', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildTransitionPlan', @level2type = N'COLUMN', @level2name = N'RefReasonDelayTransitionConfId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20494', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildTransitionPlan', @level2type = N'COLUMN', @level2name = N'RefReasonDelayTransitionConfId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildTransitionPlan', @level2type = N'COLUMN', @level2name = N'RefReasonDelayTransitionConfId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildTransitionPlan', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildTransitionPlan', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildTransitionPlan', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildTransitionPlan', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildTransitionPlan', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildTransitionPlan', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildTransitionPlan', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildTransitionPlan', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildTransitionPlan', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

