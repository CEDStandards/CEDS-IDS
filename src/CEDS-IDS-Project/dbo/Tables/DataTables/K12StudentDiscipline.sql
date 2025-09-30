CREATE TABLE [dbo].[K12StudentDiscipline] (
    [K12StudentDisciplineId]                INT            IDENTITY (1, 1) NOT NULL,
    [OrganizationPersonRoleId]              INT            NOT NULL,
    [RefDisciplineReasonId]                 INT            NULL,
    [RefDisciplinaryActionTakenId]          INT            NULL,
    [DisciplinaryActionStartDate]           DATE           NULL,
    [DisciplinaryActionEndDate]             DATE           NULL,
    [DurationOfDisciplinaryAction]          DECIMAL (9, 2) NULL,
    [RefDisciplineLengthDifferenceReasonId] INT            NULL,
    [FullYearExpulsion]                     BIT            NULL,
    [ShortenedExpulsion]                    BIT            NULL,
    [EducationalServicesAfterRemoval]       BIT            NULL,
    [RefIdeaInterimRemovalId]               INT            NULL,
    [RefIdeaInterimRemovalReasonId]         INT            NULL,
    [RelatedToZeroTolerancePolicy]          BIT            NULL,
    [IncidentId]                            INT            NULL,
    [IEPPlacementMeetingIndicator]          BIT            NULL,
    [RefDisciplineMethodFirearmsId]         INT            NULL,
    [RefDisciplineMethodOfCwdId]            INT            NULL,
    [RefIDEADisciplineMethodFirearmId]      INT            NULL,
    [RecordStartDateTime]                   DATETIME       NULL,
    [RecordEndDateTime]                     DATETIME       NULL,
    [RecordStatusId]                        INT            NULL,
    [DataCollectionId]                      INT            NULL,
    CONSTRAINT [PK_K12StudentDiscipline] PRIMARY KEY CLUSTERED ([K12StudentDisciplineId] ASC),
    CONSTRAINT [FK_K12StudentDiscipline_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_K12StudentDiscipline_K12Incident] FOREIGN KEY ([IncidentId]) REFERENCES [dbo].[Incident] ([IncidentId]),
    CONSTRAINT [FK_K12StudentDiscipline_OrganizationPerson] FOREIGN KEY ([OrganizationPersonRoleId]) REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_K12StudentDiscipline_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_K12StudentDiscipline_RefDisciplinaryActionTaken] FOREIGN KEY ([RefDisciplinaryActionTakenId]) REFERENCES [dbo].[RefDisciplinaryActionTaken] ([RefDisciplinaryActionTakenId]),
    CONSTRAINT [FK_K12StudentDiscipline_RefDisciplineLengthDifference] FOREIGN KEY ([RefDisciplineLengthDifferenceReasonId]) REFERENCES [dbo].[RefDisciplineLengthDifferenceReason] ([RefDisciplineLengthDifferenceReasonId]),
    CONSTRAINT [FK_K12StudentDiscipline_RefDisciplineMethodFirearms] FOREIGN KEY ([RefDisciplineMethodFirearmsId]) REFERENCES [dbo].[RefDisciplineMethodFirearms] ([RefDisciplineMethodFirearmsId]),
    CONSTRAINT [FK_K12StudentDiscipline_RefDisciplineMethodOfCwd] FOREIGN KEY ([RefDisciplineMethodOfCwdId]) REFERENCES [dbo].[RefDisciplineMethodOfCwd] ([RefDisciplineMethodOfCwdId]),
    CONSTRAINT [FK_K12StudentDiscipline_RefDisciplineReason1] FOREIGN KEY ([RefDisciplineReasonId]) REFERENCES [dbo].[RefDisciplineReason] ([RefDisciplineReasonId]),
    CONSTRAINT [FK_K12StudentDiscipline_RefIDEADisciplineMethodFirearm] FOREIGN KEY ([RefIDEADisciplineMethodFirearmId]) REFERENCES [dbo].[RefIDEADisciplineMethodFirearm] ([RefIDEADisciplineMethodFirearmId]),
    CONSTRAINT [FK_K12StudentDiscipline_RefIDEAInterimRemovalId] FOREIGN KEY ([RefIdeaInterimRemovalId]) REFERENCES [dbo].[RefIDEAInterimRemoval] ([RefIDEAInterimRemovalId]),
    CONSTRAINT [FK_K12StudentDiscipline_RefIDESInterimRemovalReason] FOREIGN KEY ([RefIdeaInterimRemovalReasonId]) REFERENCES [dbo].[RefIDEAInterimRemovalReason] ([RefIDEAInterimRemovalReasonId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The detail information for the reason and action taken for a discipline event of a K12 student.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'K12StudentDisciplineId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate key from OrganizationPersonRole', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'OrganizationPersonRoleId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The reason why the student was disciplined.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'RefDisciplineReasonId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Discipline Reason', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'RefDisciplineReasonId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000545', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'RefDisciplineReasonId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19536', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'RefDisciplineReasonId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'RefDisciplineReasonId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Identifies the consequences of an incident for the student(s) involved in an incident as perpetrator(s).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'RefDisciplinaryActionTakenId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Disciplinary Action Taken', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'RefDisciplinaryActionTakenId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000488', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'RefDisciplinaryActionTakenId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19479', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'RefDisciplinaryActionTakenId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'RefDisciplinaryActionTakenId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The year, month and day on which a discipline action begins.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'DisciplinaryActionStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Disciplinary Action Start Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'DisciplinaryActionStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000083', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'DisciplinaryActionStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19083', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'DisciplinaryActionStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'DisciplinaryActionStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The year, month and day on which a discipline action ends.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'DisciplinaryActionEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Disciplinary Action End Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'DisciplinaryActionEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000082', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'DisciplinaryActionEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19082', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'DisciplinaryActionEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'DisciplinaryActionEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The length, in school days, of the disciplinary action.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'DurationOfDisciplinaryAction';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Duration of Disciplinary Action', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'DurationOfDisciplinaryAction';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000511', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'DurationOfDisciplinaryAction';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19502', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'DurationOfDisciplinaryAction';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'DurationOfDisciplinaryAction';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The reason for the difference, if any, between the official and actual lengths of a student’s disciplinary assignment.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'RefDisciplineLengthDifferenceReasonId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Discipline Action Length Difference Reason', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'RefDisciplineLengthDifferenceReasonId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000609', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'RefDisciplineLengthDifferenceReasonId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19602', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'RefDisciplineLengthDifferenceReasonId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'RefDisciplineLengthDifferenceReasonId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An expulsion with or without services for a period of one full year (i.e., 365 days).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'FullYearExpulsion';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Full Year Expulsion', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'FullYearExpulsion';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000513', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'FullYearExpulsion';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19504', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'FullYearExpulsion';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'FullYearExpulsion';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An expulsion with or without services that is shortened to a term of less than one year by the superintendent or chief administrator of a school district.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'ShortenedExpulsion';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Shortened Expulsion', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'ShortenedExpulsion';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000514', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'ShortenedExpulsion';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19505', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'ShortenedExpulsion';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'ShortenedExpulsion';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether children (students) were provided educational services when removed from the regular school program for disciplinary reasons.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'EducationalServicesAfterRemoval';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Educational Services After Removal', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'EducationalServicesAfterRemoval';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000578', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'EducationalServicesAfterRemoval';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19570', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'EducationalServicesAfterRemoval';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'EducationalServicesAfterRemoval';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of interim removal from current educational setting experienced by children with disabilities (IDEA).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'RefIdeaInterimRemovalId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'IDEA Interim Removal', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'RefIdeaInterimRemovalId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000541', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'RefIdeaInterimRemovalId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19532', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'RefIdeaInterimRemovalId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'RefIdeaInterimRemovalId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The reasons why children with disabilities were unilaterally removed from their current educational placement to an interim alternative educational setting.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'RefIdeaInterimRemovalReasonId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'IDEA Interim Removal Reason', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'RefIdeaInterimRemovalReasonId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000539', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'RefIdeaInterimRemovalReasonId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19530', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'RefIdeaInterimRemovalReasonId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'RefIdeaInterimRemovalReasonId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether or not any of the disciplinary actions taken against a student were imposed as a consequence of state or local zero tolerance policies.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'RelatedToZeroTolerancePolicy';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Related to Zero Tolerance Policy', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'RelatedToZeroTolerancePolicy';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000512', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'RelatedToZeroTolerancePolicy';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19503', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'RelatedToZeroTolerancePolicy';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'RelatedToZeroTolerancePolicy';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'IncidentId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication as to whether an offense and/or disciplinary action resulted in a meeting of a student’s Individualized Education Program (IEP) team to determine appropriate placement.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'IEPPlacementMeetingIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Disciplinary Action IEP Placement Meeting Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'IEPPlacementMeetingIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001322', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'IEPPlacementMeetingIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20288', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'IEPPlacementMeetingIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'IEPPlacementMeetingIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The method used to discipline students who are not children with disabilities (IDEA) involved in firearms and other outcomes of firearms incidents.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'RefDisciplineMethodFirearmsId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Discipline Method for Firearms Incidents', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'RefDisciplineMethodFirearmsId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000555', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'RefDisciplineMethodFirearmsId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19546', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'RefDisciplineMethodFirearmsId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'RefDisciplineMethodFirearmsId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of suspension or expulsion used for the discipline of children with disabilities.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'RefDisciplineMethodOfCwdId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Discipline Method of Children with Disabilities', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'RefDisciplineMethodOfCwdId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000538', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'RefDisciplineMethodOfCwdId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19529', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'RefDisciplineMethodOfCwdId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'RefDisciplineMethodOfCwdId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The methods used to discipline students who are children with disabilities (IDEA) involved in firearms and other outcomes of firearms incidents.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'RefIDEADisciplineMethodFirearmId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'IDEA Discipline Method for Firearms Incidents', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'RefIDEADisciplineMethodFirearmId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000556', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'RefIDEADisciplineMethodFirearmId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19547', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'RefIDEADisciplineMethodFirearmId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'RefIDEADisciplineMethodFirearmId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDiscipline', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

