CREATE TABLE [dbo].[K12LeaFederalReporting] (
    [K12LeaFederalReportingId]               INT            IDENTITY (1, 1) NOT NULL,
    [K12LeaId]                               INT            NOT NULL,
    [DesegregationOrderOrPlan]               BIT            NULL,
    [HarassmentOrBullyingPolicy]             BIT            NULL,
    [StateAssessmentAdminFunding]            NUMERIC (5, 2) NULL,
    [StateAssessStandardsFunding]            NUMERIC (5, 2) NULL,
    [TerminatedTitleIIIProgramFailure]       BIT            NULL,
    [InterscholasticSportsMaleOnly]          INT            NULL,
    [InterscholasticSportsFemaleOnly]        INT            NULL,
    [InterscholasticTeamsMaleOnly]           INT            NULL,
    [InterscholasticTeamsFemaleOnly]         INT            NULL,
    [InterscholasticSportParticipantsMale]   INT            NULL,
    [InterscholasticSportParticipantsFemale] INT            NULL,
    [RefBarrierToEducatingHomelessId]        INT            NULL,
    [RefIntegratedTechnologyStatusId]        INT            NULL,
    [RecordStartDateTime]                    DATETIME       NULL,
    [RecordEndDateTime]                      DATETIME       NULL,
    [RecordStatusId]                         INT            NULL,
    [DataCollectionId]                       INT            NULL,
    CONSTRAINT [PK_K12LEAFederalReporting] PRIMARY KEY CLUSTERED ([K12LeaFederalReportingId] ASC),
    CONSTRAINT [FK_K12LeaFederalReporting_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_K12LeaFederalReporting_K12Lea] FOREIGN KEY ([K12LeaId]) REFERENCES [dbo].[K12Lea] ([K12LeaId]),
    CONSTRAINT [FK_K12LeaFederalReporting_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_K12LeaFederalReporting_RefBarrierToEducatingHomeless] FOREIGN KEY ([RefBarrierToEducatingHomelessId]) REFERENCES [dbo].[RefBarrierToEducatingHomeless] ([RefBarrierToEducatingHomelessId]),
    CONSTRAINT [FK_K12LeaFederalReporting_RefIntegratedTechnologyStatus] FOREIGN KEY ([RefIntegratedTechnologyStatusId]) REFERENCES [dbo].[RefIntegratedTechnologyStatus] ([RefIntegratedTechnologyStatusId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Federal reporting status values and counts for an LEA.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication whether the LEA is covered by a desegregation plan either ordered by a court or entered into with the Office for Civil Rights under Title VI of the Civil Rights Act of 1964.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting', @level2type = N'COLUMN', @level2name = N'DesegregationOrderOrPlan';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Desegregation Order or Plan', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting', @level2type = N'COLUMN', @level2name = N'DesegregationOrderOrPlan';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000080', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting', @level2type = N'COLUMN', @level2name = N'DesegregationOrderOrPlan';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19080', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting', @level2type = N'COLUMN', @level2name = N'DesegregationOrderOrPlan';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting', @level2type = N'COLUMN', @level2name = N'DesegregationOrderOrPlan';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether the education unit has adopted written policy prohibiting harassment and bullying on the basis of a civil rights law.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting', @level2type = N'COLUMN', @level2name = N'HarassmentOrBullyingPolicy';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Harassment or Bullying Policy Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting', @level2type = N'COLUMN', @level2name = N'HarassmentOrBullyingPolicy';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000135', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting', @level2type = N'COLUMN', @level2name = N'HarassmentOrBullyingPolicy';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19135', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting', @level2type = N'COLUMN', @level2name = N'HarassmentOrBullyingPolicy';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting', @level2type = N'COLUMN', @level2name = N'HarassmentOrBullyingPolicy';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The percentage of funds used to administer assessments required by section 1111(b) or to carry out other activities described in section 6111 and other activities related to ensuring that the State’s schools and local educational agencies are held accountable for results.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting', @level2type = N'COLUMN', @level2name = N'StateAssessmentAdminFunding';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'State Assessment Administration Funding', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting', @level2type = N'COLUMN', @level2name = N'StateAssessmentAdminFunding';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000454', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting', @level2type = N'COLUMN', @level2name = N'StateAssessmentAdminFunding';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19444', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting', @level2type = N'COLUMN', @level2name = N'StateAssessmentAdminFunding';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting', @level2type = N'COLUMN', @level2name = N'StateAssessmentAdminFunding';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The percentage of funds used to pay the costs of the development of the State assessments and standards required by section 1111(b).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting', @level2type = N'COLUMN', @level2name = N'StateAssessStandardsFunding';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'State Assessment Standards Funding', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting', @level2type = N'COLUMN', @level2name = N'StateAssessStandardsFunding';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000453', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting', @level2type = N'COLUMN', @level2name = N'StateAssessStandardsFunding';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19443', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting', @level2type = N'COLUMN', @level2name = N'StateAssessStandardsFunding';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting', @level2type = N'COLUMN', @level2name = N'StateAssessStandardsFunding';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether a Title III program or activity was terminated due to failure to meet goals.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting', @level2type = N'COLUMN', @level2name = N'TerminatedTitleIIIProgramFailure';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Terminated Title III Programs Due to Failure', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting', @level2type = N'COLUMN', @level2name = N'TerminatedTitleIIIProgramFailure';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000482', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting', @level2type = N'COLUMN', @level2name = N'TerminatedTitleIIIProgramFailure';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19473', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting', @level2type = N'COLUMN', @level2name = N'TerminatedTitleIIIProgramFailure';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting', @level2type = N'COLUMN', @level2name = N'TerminatedTitleIIIProgramFailure';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The number of interscholastic sports in which only male students participate.  Sports include distinct sports such as football, basketball, soccer but not intramural sports or cheerleading.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting', @level2type = N'COLUMN', @level2name = N'InterscholasticSportsMaleOnly';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Interscholastic Sports - Male Only', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting', @level2type = N'COLUMN', @level2name = N'InterscholasticSportsMaleOnly';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000653', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting', @level2type = N'COLUMN', @level2name = N'InterscholasticSportsMaleOnly';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19660', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting', @level2type = N'COLUMN', @level2name = N'InterscholasticSportsMaleOnly';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting', @level2type = N'COLUMN', @level2name = N'InterscholasticSportsMaleOnly';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The number of interscholastic sports in which only female students participate.  Sports include distinct sports such as football, basketball, soccer but not intramural sports or cheerleading.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting', @level2type = N'COLUMN', @level2name = N'InterscholasticSportsFemaleOnly';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Interscholastic Sports - Female Only', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting', @level2type = N'COLUMN', @level2name = N'InterscholasticSportsFemaleOnly';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000654', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting', @level2type = N'COLUMN', @level2name = N'InterscholasticSportsFemaleOnly';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19661', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting', @level2type = N'COLUMN', @level2name = N'InterscholasticSportsFemaleOnly';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting', @level2type = N'COLUMN', @level2name = N'InterscholasticSportsFemaleOnly';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The number of interscholastic teams in which only male students participate.  Teams include each competitive level team in each sport, such as freshman team, junior varsity team, and varsity team but not intramural sports or cheerleading.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting', @level2type = N'COLUMN', @level2name = N'InterscholasticTeamsMaleOnly';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Interscholastic Teams - Male Only', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting', @level2type = N'COLUMN', @level2name = N'InterscholasticTeamsMaleOnly';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000655', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting', @level2type = N'COLUMN', @level2name = N'InterscholasticTeamsMaleOnly';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19662', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting', @level2type = N'COLUMN', @level2name = N'InterscholasticTeamsMaleOnly';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting', @level2type = N'COLUMN', @level2name = N'InterscholasticTeamsMaleOnly';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The number of interscholastic teams in which only female students participate.  Teams include each competitive level team in each sport, such as freshman team, junior varsity team, and varsity team but not intramural sports or cheerleading.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting', @level2type = N'COLUMN', @level2name = N'InterscholasticTeamsFemaleOnly';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Interscholastic Teams - Female Only', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting', @level2type = N'COLUMN', @level2name = N'InterscholasticTeamsFemaleOnly';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000656', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting', @level2type = N'COLUMN', @level2name = N'InterscholasticTeamsFemaleOnly';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19663', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting', @level2type = N'COLUMN', @level2name = N'InterscholasticTeamsFemaleOnly';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting', @level2type = N'COLUMN', @level2name = N'InterscholasticTeamsFemaleOnly';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The number of male students who participated on an interscholastic team.  A student should be counted once for each team he was on.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting', @level2type = N'COLUMN', @level2name = N'InterscholasticSportParticipantsMale';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Interscholastic Sport Participants - Male Only', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting', @level2type = N'COLUMN', @level2name = N'InterscholasticSportParticipantsMale';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000657', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting', @level2type = N'COLUMN', @level2name = N'InterscholasticSportParticipantsMale';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19664', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting', @level2type = N'COLUMN', @level2name = N'InterscholasticSportParticipantsMale';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting', @level2type = N'COLUMN', @level2name = N'InterscholasticSportParticipantsMale';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The number of female students who participated on an interscholastic team.  A student should be counted once for each team she was on.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting', @level2type = N'COLUMN', @level2name = N'InterscholasticSportParticipantsFemale';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Interscholastic Sport Participants - Female Only', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting', @level2type = N'COLUMN', @level2name = N'InterscholasticSportParticipantsFemale';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000658', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting', @level2type = N'COLUMN', @level2name = N'InterscholasticSportParticipantsFemale';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19665', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting', @level2type = N'COLUMN', @level2name = N'InterscholasticSportParticipantsFemale';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting', @level2type = N'COLUMN', @level2name = N'InterscholasticSportParticipantsFemale';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Barriers to the enrollment and success of homeless children and youths.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting', @level2type = N'COLUMN', @level2name = N'RefBarrierToEducatingHomelessId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Barrier to Educating Homeless', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting', @level2type = N'COLUMN', @level2name = N'RefBarrierToEducatingHomelessId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000449', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting', @level2type = N'COLUMN', @level2name = N'RefBarrierToEducatingHomelessId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19439', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting', @level2type = N'COLUMN', @level2name = N'RefBarrierToEducatingHomelessId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting', @level2type = N'COLUMN', @level2name = N'RefBarrierToEducatingHomelessId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of the extent to which the district has effectively and fully integrated technology, as defined by the state.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting', @level2type = N'COLUMN', @level2name = N'RefIntegratedTechnologyStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Integrated Technology Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting', @level2type = N'COLUMN', @level2name = N'RefIntegratedTechnologyStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000170', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting', @level2type = N'COLUMN', @level2name = N'RefIntegratedTechnologyStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19170', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting', @level2type = N'COLUMN', @level2name = N'RefIntegratedTechnologyStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting', @level2type = N'COLUMN', @level2name = N'RefIntegratedTechnologyStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalReporting', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

