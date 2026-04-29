CREATE TABLE [dbo].[K12StudentCohort] (
    [K12StudentCohortId]             INT           IDENTITY (1, 1) NOT NULL,
    [OrganizationPersonRoleId]       INT           NOT NULL,
    [CohortYear]                     NCHAR (4)     NULL,
    [CohortGraduationYear]           NCHAR (4)     NULL,
    [GraduationRateSurveyCohortYear] NCHAR (4)     NULL,
    [GraduationRateSurveyIndicator]  BIT           NULL,
    [CohortDescription]              NVARCHAR (30) NULL,
    [RecordStartDateTime]            DATETIME      NULL,
    [RecordEndDateTime]              DATETIME      NULL,
    [RecordStatusId]                 INT           NULL,
    [DataCollectionId]               INT           NULL,
    [RefEdFactsCohortGraduationStatusId] INT           NULL,
    CONSTRAINT [PK_K12StudentCohort] PRIMARY KEY CLUSTERED ([K12StudentCohortId] ASC),
    CONSTRAINT [FK_K12StudentCohort_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_K12StudentCohort_OrganizationPersonRole] FOREIGN KEY ([OrganizationPersonRoleId]) REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]),
    CONSTRAINT [FK_K12StudentCohort_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_K12StudentCohort_RefEdFactsCohortGraduationStatus] FOREIGN KEY ([RefEdFactsCohortGraduationStatusId]) REFERENCES [dbo].[RefEdFactsCohortGraduationStatus] ([RefEdFactsCohortGraduationStatusId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information on the cohort for a K12 student.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCohort';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCohort';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate key from OrganizationPersonRole.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCohort', @level2type = N'COLUMN', @level2name = N'OrganizationPersonRoleId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The school year in which the student entered the baseline group used for computing completion rates (e.g., high school, program).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCohort', @level2type = N'COLUMN', @level2name = N'CohortYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Cohort Year', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCohort', @level2type = N'COLUMN', @level2name = N'CohortYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000046', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCohort', @level2type = N'COLUMN', @level2name = N'CohortYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19046', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCohort', @level2type = N'COLUMN', @level2name = N'CohortYear';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCohort', @level2type = N'COLUMN', @level2name = N'CohortYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The year the cohort graduated with a regular high school diploma.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCohort', @level2type = N'COLUMN', @level2name = N'CohortGraduationYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Cohort Graduation Year', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCohort', @level2type = N'COLUMN', @level2name = N'CohortGraduationYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000584', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCohort', @level2type = N'COLUMN', @level2name = N'CohortGraduationYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19577', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCohort', @level2type = N'COLUMN', @level2name = N'CohortGraduationYear';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCohort', @level2type = N'COLUMN', @level2name = N'CohortGraduationYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The academic year in which a student entered as part of the GRS cohort.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCohort', @level2type = N'COLUMN', @level2name = N'GraduationRateSurveyCohortYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Graduation Rate Survey Cohort Year', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCohort', @level2type = N'COLUMN', @level2name = N'GraduationRateSurveyCohortYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000132', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCohort', @level2type = N'COLUMN', @level2name = N'GraduationRateSurveyCohortYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19132', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCohort', @level2type = N'COLUMN', @level2name = N'GraduationRateSurveyCohortYear';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCohort', @level2type = N'COLUMN', @level2name = N'GraduationRateSurveyCohortYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether or not the student is in a GRS cohort; meaning the student began as a first-time, full-time, degree seeking student in the fall of a given year.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCohort', @level2type = N'COLUMN', @level2name = N'GraduationRateSurveyIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Graduation Rate Survey Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCohort', @level2type = N'COLUMN', @level2name = N'GraduationRateSurveyIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000133', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCohort', @level2type = N'COLUMN', @level2name = N'GraduationRateSurveyIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19133', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCohort', @level2type = N'COLUMN', @level2name = N'GraduationRateSurveyIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCohort', @level2type = N'COLUMN', @level2name = N'GraduationRateSurveyIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A description of the student cohort.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCohort', @level2type = N'COLUMN', @level2name = N'CohortDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Cohort Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCohort', @level2type = N'COLUMN', @level2name = N'CohortDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000711', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCohort', @level2type = N'COLUMN', @level2name = N'CohortDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19687', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCohort', @level2type = N'COLUMN', @level2name = N'CohortDescription';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCohort', @level2type = N'COLUMN', @level2name = N'CohortDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCohort', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCohort', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCohort', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCohort', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCohort', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCohort', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCohort', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCohort', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCohort', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether students in a cohort graduated with a high school diploma within the allowable timeframe.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCohort', @level2type = N'COLUMN', @level2name = N'RefEdFactsCohortGraduationStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'EDFacts Cohort Graduation Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCohort', @level2type = N'COLUMN', @level2name = N'RefEdFactsCohortGraduationStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'C002179', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCohort', @level2type = N'COLUMN', @level2name = N'RefEdFactsCohortGraduationStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://w3id.org/CEDStandards/terms/C002179', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCohort', @level2type = N'COLUMN', @level2name = N'RefEdFactsCohortGraduationStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentCohort', @level2type = N'COLUMN', @level2name = N'RefEdFactsCohortGraduationStatusId';
