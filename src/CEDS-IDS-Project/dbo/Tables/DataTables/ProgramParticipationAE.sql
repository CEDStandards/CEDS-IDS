CREATE TABLE [dbo].[ProgramParticipationAE] (
    [PersonProgramParticipationId]           INT            NOT NULL,
    [RefAeInstructionalProgramTypeId]        INT            NULL,
    [RefAePostsecondaryTransitionActionId]   INT            NULL,
    [PostsecondaryTransitionDate]            DATE           NULL,
    [RefAeSpecialProgramTypeId]              INT            NULL,
    [RefAeFunctioningLevelAtIntakeId]        INT            NULL,
    [RefAeFunctioningLevelAtPosttestId]      INT            NULL,
    [RefGoalsForAttendingAdultEducationId]   INT            NULL,
    [DisplacedHomemakerIndicator]            BIT            NULL,
    [ProxyContactHours]                      DECIMAL (5, 1) NULL,
    [InstructionalActivityHoursCompleted]    DECIMAL (9, 2) NULL,
    [RefCorrectionalEducationFacilityTypeId] INT            NULL,
    [RefWorkbasedLearningOpportunityTypeId]  INT            NULL,
    [ProgramParticipationAEId]               INT            IDENTITY (1, 1) NOT NULL,
    [RecordStartDateTime]                    DATETIME       NULL,
    [RecordEndDateTime]                      DATETIME       NULL,
    [OutOfWorkforceIndicator]                BIT            NULL,
    [RefAdultEducationProgramExitReasonId]   INT            NULL,
    [RecordStatusId]                         INT            NULL,
    [DataCollectionId]                       INT            NULL,
    CONSTRAINT [PK_ProgramParticipationAE] PRIMARY KEY CLUSTERED ([ProgramParticipationAEId] ASC),
    CONSTRAINT [FK_ProgramParticipation_RefAeSpecialProgramType] FOREIGN KEY ([RefAeSpecialProgramTypeId]) REFERENCES [dbo].[RefAeSpecialProgramType] ([RefAeSpecialProgramTypeId]),
    CONSTRAINT [FK_ProgramParticipationAE_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_ProgramParticipationAE_PersonProgramParticipation] FOREIGN KEY ([PersonProgramParticipationId]) REFERENCES [dbo].[PersonProgramParticipation] ([PersonProgramParticipationId]),
    CONSTRAINT [FK_ProgramParticipationAE_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_ProgramParticipationAE_RefAdultEducationProgramExitReason] FOREIGN KEY ([RefAdultEducationProgramExitReasonId]) REFERENCES [dbo].[RefAdultEducationProgramExitReason] ([RefAdultEducationProgramExitReasonId]),
    CONSTRAINT [FK_ProgramParticipationAE_RefAeFunctioningLevelAtIntake] FOREIGN KEY ([RefAeFunctioningLevelAtIntakeId]) REFERENCES [dbo].[RefAeFunctioningLevelAtIntake] ([RefAeFunctioningLevelAtIntakeId]),
    CONSTRAINT [FK_ProgramParticipationAE_RefAeFunctioningLevelAtPosttest] FOREIGN KEY ([RefAeFunctioningLevelAtPosttestId]) REFERENCES [dbo].[RefAeFunctioningLevelAtPosttest] ([RefAeFunctioningLevelAtPosttestId]),
    CONSTRAINT [FK_ProgramParticipationAE_RefAeInstructionalProgramType] FOREIGN KEY ([RefAeInstructionalProgramTypeId]) REFERENCES [dbo].[RefAeInstructionalProgramType] ([RefAeInstructionalProgramTypeId]),
    CONSTRAINT [FK_ProgramParticipationAE_RefAePostsecondaryTransitionAction] FOREIGN KEY ([RefAePostsecondaryTransitionActionId]) REFERENCES [dbo].[RefAePostsecondaryTransitionAction] ([RefAePostsecondaryTransitionActionId]),
    CONSTRAINT [FK_ProgramParticipationAE_RefCorrectionalEducationFacilityType] FOREIGN KEY ([RefCorrectionalEducationFacilityTypeId]) REFERENCES [dbo].[RefCorrectionalEducationFacilityType] ([RefCorrectionalEducationFacilityTypeId]),
    CONSTRAINT [FK_ProgramParticipationAE_RefGoalsForAttendingAdultEducation] FOREIGN KEY ([RefGoalsForAttendingAdultEducationId]) REFERENCES [dbo].[RefGoalsForAttendingAdultEducation] ([RefGoalsForAttendingAdultEducationId]),
    CONSTRAINT [FK_ProgramParticipationAE_RefWorkbasedLearningOpportunityType] FOREIGN KEY ([RefWorkbasedLearningOpportunityTypeId]) REFERENCES [dbo].[RefWorkbasedLearningOpportunityType] ([RefWorkbasedLearningOpportunityTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information on a person participating in an adult education program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of instructional program in which an adult is enrolled.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RefAeInstructionalProgramTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Adult Education Instructional Program Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RefAeInstructionalProgramTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001077', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RefAeInstructionalProgramTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19765', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RefAeInstructionalProgramTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The action taken with respect to postsecondary enrollment by the learner after program exit or when co-enrolled in ABE and postsecondary with respect to enrollment in a postsecondary educational or occupational skills program building on prior services or training received.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RefAePostsecondaryTransitionActionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Adult Education Postsecondary Transition Action', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RefAePostsecondaryTransitionActionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000784', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RefAePostsecondaryTransitionActionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19768', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RefAePostsecondaryTransitionActionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The year, month and day on which a person previously enrolled in adult education entered and began to receive instructional services or training at a postsecondary institution.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'PostsecondaryTransitionDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Adult Education Postsecondary Transition Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'PostsecondaryTransitionDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001081', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'PostsecondaryTransitionDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19769', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'PostsecondaryTransitionDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type, by location or delivery mode, of adult education instruction program in which an adult participates.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RefAeSpecialProgramTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Adult Education Special Program Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RefAeSpecialProgramTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000782', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RefAeSpecialProgramTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19766', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RefAeSpecialProgramTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An individual''s entering skill level, as defined by the National Reporting System for Adult Education and determined by an approved standardized assessment at program intake.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RefAeFunctioningLevelAtIntakeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Adult Educational Functioning Level at Intake', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RefAeFunctioningLevelAtIntakeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000779', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RefAeFunctioningLevelAtIntakeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19763', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RefAeFunctioningLevelAtIntakeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An individual''s skill level, as defined by the National Reporting System for Adult Education and determined by an approved standardized assessment after a set time period or number of instructional hours.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RefAeFunctioningLevelAtPosttestId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Adult Educational Functioning Level at Posttest', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RefAeFunctioningLevelAtPosttestId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000780', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RefAeFunctioningLevelAtPosttestId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19764', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RefAeFunctioningLevelAtPosttestId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A person''s reasons for attending an adult education class or program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RefGoalsForAttendingAdultEducationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Goals for Attending Adult Education', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RefGoalsForAttendingAdultEducationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001079', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RefGoalsForAttendingAdultEducationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19767', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RefGoalsForAttendingAdultEducationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A person who ; (A) (i) has worked primarily without remuneration to care for a home and family, and for that reason has diminished marketable skills;    (ii) has been dependent on the income of another family member but is no longer supported by that income; or    (iii) is a parent whose youngest dependent child will become ineligible to receive assistance under part A of title IV of the Social Security Act (42 U.S.C. 601 et seq.) not later than 2 years after the date on which the parent applies for assistance under such title; and (B)   is unemployed or underemployed and is experiencing difficulty in obtaining or upgrading employment.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'DisplacedHomemakerIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Career-Technical-Adult Education Displaced Homemaker Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'DisplacedHomemakerIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000084', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'DisplacedHomemakerIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19084', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'DisplacedHomemakerIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The number of instructional hours completed by an adult enrolled in a distance learning program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'ProxyContactHours';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Proxy Contact Hours', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'ProxyContactHours';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000790', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'ProxyContactHours';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19776', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'ProxyContactHours';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The number of credit hours and/or contact hours successfully completed by a person during a term.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'InstructionalActivityHoursCompleted';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Instructional Activity Hours Completed', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'InstructionalActivityHoursCompleted';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000362', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'InstructionalActivityHoursCompleted';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19361', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'InstructionalActivityHoursCompleted';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of facility in which an inmate receives correctional education services.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RefCorrectionalEducationFacilityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Correctional Education Facility Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RefCorrectionalEducationFacilityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001296', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RefCorrectionalEducationFacilityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20262', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RefCorrectionalEducationFacilityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of work-based learning opportunity a student participated in.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RefWorkbasedLearningOpportunityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Work-based Learning Opportunity Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RefWorkbasedLearningOpportunityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001499', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RefWorkbasedLearningOpportunityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20471', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RefWorkbasedLearningOpportunityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An individual: (A) who is a displaced homemaker, as defined in section 3 of the Workforce Innovation and Opportunity Act (29 U.S.C. 3102); or (B) who (i)(I) has worked primarily without remuneration to care for a home and family, and for that reason has diminished marketable skills; or (II) is a parent whose youngest dependent child will become ineligible to receive assistance under part A of title IV of the Social Security Act (42 U.S.C. 601 et seq.) not later than 2 years after the date on which the parent applies for assistance under such title; and (ii) is unemployed or underemployed and is experiencing difficulty in obtaining or upgrading employment.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'OutOfWorkforceIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Out of Workforce Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'OutOfWorkforceIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001930', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'OutOfWorkforceIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20908', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'OutOfWorkforceIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'OutOfWorkforceIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The documented or assumed reason the person is no longer being served by the adult education program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RefAdultEducationProgramExitReasonId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Adult Education Program Exit Reason', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RefAdultEducationProgramExitReasonId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001939', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RefAdultEducationProgramExitReasonId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20915', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RefAdultEducationProgramExitReasonId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RefAdultEducationProgramExitReasonId';

