CREATE TABLE [dbo].[ProgramParticipationCte] (
    [PersonProgramParticipationId]                INT      NOT NULL,
    [CteParticipant]                              BIT      NULL,
    [CteConcentrator]                             BIT      NULL,
    [CteCompleter]                                BIT      NULL,
    [SingleParentOrSinglePregnantWoman]           BIT      NULL,
    [DisplacedHomemakerIndicator]                 BIT      NULL,
    [CteNonTraditionalCompletion]                 BIT      NULL,
    [RefNonTraditionalGenderStatusId]             INT      NULL,
    [RefWorkbasedLearningOpportunityTypeId]       INT      NULL,
    [CareerPathwaysProgramParticipationExitDate]  DATE     NULL,
    [CareerPathwaysProgramParticipationStartDate] DATE     NULL,
    [RecordStartDateTime]                         DATETIME NULL,
    [RecordEndDateTime]                           DATETIME NULL,
    [ProgramParticipationCteId]                   INT      IDENTITY (1, 1) NOT NULL,
    [OutOfWorkforceIndicator]                     BIT      NULL,
    [RecordStatusId]                              INT      NULL,
    [DataCollectionId]                            INT      NULL,
    [RefPerkinsPostProgramPlacementIndicatorId]   INT      NULL,
    CONSTRAINT [PK_ProgramParticipationCte] PRIMARY KEY CLUSTERED ([ProgramParticipationCteId] ASC),
    CONSTRAINT [FK_ProgramParticipationCte_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_ProgramParticipationCte_PersonProgramParticipation] FOREIGN KEY ([PersonProgramParticipationId]) REFERENCES [dbo].[PersonProgramParticipation] ([PersonProgramParticipationId]),
    CONSTRAINT [FK_ProgramParticipationCte_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_ProgramParticipationCte_RefNonTraditionalGenderStatus] FOREIGN KEY ([RefNonTraditionalGenderStatusId]) REFERENCES [dbo].[RefNonTraditionalGenderStatus] ([RefNonTraditionalGenderStatusId]),
    CONSTRAINT [FK_ProgramParticipationCte_RefPerkinsPostProgramPlacementIndicator] FOREIGN KEY ([RefPerkinsPostProgramPlacementIndicatorId]) REFERENCES [dbo].[RefPerkinsPostProgramPlacementIndicator] ([RefPerkinsPostProgramPlacementIndicatorId]),
    CONSTRAINT [FK_ProgramParticipationCte_RefWorkbasedLearningOpportunityType] FOREIGN KEY ([RefWorkbasedLearningOpportunityTypeId]) REFERENCES [dbo].[RefWorkbasedLearningOpportunityType] ([RefWorkbasedLearningOpportunityTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information on a person participating in a career and technical education program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication a student has met the state-defined threshold of Career and Technical Education participation as defined in the State''s approved Perkins IV State Plan.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'CteParticipant';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Career and Technical Education Participant', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'CteParticipant';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000592', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'CteParticipant';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19585', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'CteParticipant';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of a student who has met the state-defined threshold of career and technical education concentrators, as defined in the State''s approved Perkins IV State Plan.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'CteConcentrator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Career and Technical Education Concentrator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'CteConcentrator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000037', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'CteConcentrator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19037', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'CteConcentrator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of a student who reached a state-defined threshold of a career and technical education program/pathway.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'CteCompleter';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Career and Technical Education Completer', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'CteCompleter';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000036', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'CteCompleter';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19036', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'CteCompleter';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A student who, at some time during the school year, is either a pregnant female student who is unmarried; or a male or female student who is unmarried or legally separated from a spouse and has a minor child or children.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'SingleParentOrSinglePregnantWoman';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Single Parent Or Single Pregnant Woman Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'SingleParentOrSinglePregnantWoman';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000580', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'SingleParentOrSinglePregnantWoman';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19573', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'SingleParentOrSinglePregnantWoman';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A person who ; (A) (i) has worked primarily without remuneration to care for a home and family, and for that reason has diminished marketable skills;    (ii) has been dependent on the income of another family member but is no longer supported by that income; or    (iii) is a parent whose youngest dependent child will become ineligible to receive assistance under part A of title IV of the Social Security Act (42 U.S.C. 601 et seq.) not later than 2 years after the date on which the parent applies for assistance under such title; and (B)   is unemployed or underemployed and is experiencing difficulty in obtaining or upgrading employment.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'DisplacedHomemakerIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Career-Technical-Adult Education Displaced Homemaker Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'DisplacedHomemakerIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000084', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'DisplacedHomemakerIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19084', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'DisplacedHomemakerIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication that the CTE student has completed a CTE program in a nontraditional field (where one gender comprises less than 25 percent of the persons employed in those occupations or fields of work).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'CteNonTraditionalCompletion';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Career and Technical Education Nontraditional Completion', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'CteNonTraditionalCompletion';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000593', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'CteNonTraditionalCompletion';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19586', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'CteNonTraditionalCompletion';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether CTE participants were members of an underrepresented gender group (where one gender comprises less than 25 percent of the persons employed in those occupations or field of work).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'RefNonTraditionalGenderStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Career Technical Education Nontraditional Gender Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'RefNonTraditionalGenderStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000588', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'RefNonTraditionalGenderStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19581', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'RefNonTraditionalGenderStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of work-based learning opportunity a student participated in.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'RefWorkbasedLearningOpportunityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Work-based Learning Opportunity Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'RefWorkbasedLearningOpportunityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001499', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'RefWorkbasedLearningOpportunityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20471', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'RefWorkbasedLearningOpportunityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The year, month and day on which the person ceased to participate in a program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'CareerPathwaysProgramParticipationExitDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Career Pathways Program Participation Exit Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'CareerPathwaysProgramParticipationExitDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001583', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'CareerPathwaysProgramParticipationExitDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20562', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'CareerPathwaysProgramParticipationExitDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'CareerPathwaysProgramParticipationExitDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The year, month and day on which the person began to participate in a career pathway program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'CareerPathwaysProgramParticipationStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Career Pathways Program Participation Start Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'CareerPathwaysProgramParticipationStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001584', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'CareerPathwaysProgramParticipationStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20563', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'CareerPathwaysProgramParticipationStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An individual: (A) who is a displaced homemaker, as defined in section 3 of the Workforce Innovation and Opportunity Act (29 U.S.C. 3102); or (B) who (i)(I) has worked primarily without remuneration to care for a home and family, and for that reason has diminished marketable skills; or (II) is a parent whose youngest dependent child will become ineligible to receive assistance under part A of title IV of the Social Security Act (42 U.S.C. 601 et seq.) not later than 2 years after the date on which the parent applies for assistance under such title; and (ii) is unemployed or underemployed and is experiencing difficulty in obtaining or upgrading employment.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'OutOfWorkforceIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Out of Workforce Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'OutOfWorkforceIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001930', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'OutOfWorkforceIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20908', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'OutOfWorkforceIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'OutOfWorkforceIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of the post-program status of a CTE Concentrator in the second quarter after exiting from secondary education.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'RefPerkinsPostProgramPlacementIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Perkins Post-Program Placement Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'RefPerkinsPostProgramPlacementIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002087', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'RefPerkinsPostProgramPlacementIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25076', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'RefPerkinsPostProgramPlacementIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'RefPerkinsPostProgramPlacementIndicatorId';

