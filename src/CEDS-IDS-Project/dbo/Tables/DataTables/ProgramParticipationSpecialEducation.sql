CREATE TABLE [dbo].[ProgramParticipationSpecialEducation] (
    [ProgramParticipationSpecialEducationId]   INT            IDENTITY (1, 1) NOT NULL,
    [PersonProgramParticipationId]             INT            NOT NULL,
    [AwaitingInitialIDEAEvaluationStatus]      BIT            NULL,
    [SpecialEducationFTE]                      DECIMAL (5, 4) NULL,
    [SpecialEducationServicesExitDate]         DATE           NULL,
    [IDEAPlacementRationale]                   NVARCHAR (MAX) NULL,
    [RefIDEAEducationalEnvironmentECId]        INT            NULL,
    [RefIDEAEducationalEnvironmentSchoolAgeId] INT            NULL,
    [RefSpecialEducationExitReasonId]          INT            NULL,
    [RecordStartDateTime]                      DATETIME       NULL,
    [RecordEndDateTime]                        DATETIME       NULL,
    [RecordStatusId]                           INT            NULL,
    [DataCollectionId]                         INT            NULL,
    [RefPartBPostsecondaryOutcomesIndicatorId] INT            NULL,
    CONSTRAINT [PK_ProgramParticipationSpecialEducation] PRIMARY KEY CLUSTERED ([ProgramParticipationSpecialEducationId] ASC),
    CONSTRAINT [FK_ProgramParticipationSpecialEd_RefIDEAEdEnvironmentForEC] FOREIGN KEY ([RefIDEAEducationalEnvironmentECId]) REFERENCES [dbo].[RefIDEAEducationalEnvironmentEC] ([RefIDEAEducationalEnvironmentECId]),
    CONSTRAINT [FK_ProgramParticipationSpecialEd_RefIDEAEdEnvironmentSchoolAge] FOREIGN KEY ([RefIDEAEducationalEnvironmentSchoolAgeId]) REFERENCES [dbo].[RefIDEAEducationalEnvironmentSchoolAge] ([RefIDEAEducationalEnvironmentSchoolAgeId]),
    CONSTRAINT [FK_ProgramParticipationSpecialEd_RefSpecialEducationExitReason] FOREIGN KEY ([RefSpecialEducationExitReasonId]) REFERENCES [dbo].[RefSpecialEducationExitReason] ([RefSpecialEducationExitReasonId]),
    CONSTRAINT [FK_ProgramParticipationSpecialEducation_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_ProgramParticipationSpecialEducation_PersonProgramParticipat] FOREIGN KEY ([PersonProgramParticipationId]) REFERENCES [dbo].[PersonProgramParticipation] ([PersonProgramParticipationId]),
    CONSTRAINT [FK_ProgramParticipationSpecialEducation_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information on a person participating in a special education program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Awaiting initial evaluation for special education programs and related services under the Individuals with Disabilities Education Act (IDEA). ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation', @level2type = N'COLUMN', @level2name = N'AwaitingInitialIDEAEvaluationStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Awaiting Initial IDEA Evaluation Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation', @level2type = N'COLUMN', @level2name = N'AwaitingInitialIDEAEvaluationStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000031', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation', @level2type = N'COLUMN', @level2name = N'AwaitingInitialIDEAEvaluationStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19031', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation', @level2type = N'COLUMN', @level2name = N'AwaitingInitialIDEAEvaluationStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Calculated ratio of time the student is in a special education setting. Values range from 0.00 to 1.00. If the student is in a special education setting 25% of the time, the value is .25; if 100% of the time, the value is 1.00.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation', @level2type = N'COLUMN', @level2name = N'SpecialEducationFTE';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Special Education Full Time Equivalency', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation', @level2type = N'COLUMN', @level2name = N'SpecialEducationFTE';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001242', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation', @level2type = N'COLUMN', @level2name = N'SpecialEducationFTE';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20208', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation', @level2type = N'COLUMN', @level2name = N'SpecialEducationFTE';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The year, month and day a child with disabilities (IDEA) ages 14 through 21 exited special education.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation', @level2type = N'COLUMN', @level2name = N'SpecialEducationServicesExitDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Special Education Services Exit Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation', @level2type = N'COLUMN', @level2name = N'SpecialEducationServicesExitDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000263', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation', @level2type = N'COLUMN', @level2name = N'SpecialEducationServicesExitDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19263', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation', @level2type = N'COLUMN', @level2name = N'SpecialEducationServicesExitDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation', @level2type = N'COLUMN', @level2name = N'SpecialEducationServicesExitDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The rationale for the placement decision and if applicable, an explanation of the extent, if any, to which the child will not participate with nondisabled children in the regular class and in the activities described in paragraph (a)(4) of CFR. §300.320.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation', @level2type = N'COLUMN', @level2name = N'IDEAPlacementRationale';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'IDEA Placement Rationale', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation', @level2type = N'COLUMN', @level2name = N'IDEAPlacementRationale';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001704', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation', @level2type = N'COLUMN', @level2name = N'IDEAPlacementRationale';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20685', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation', @level2type = N'COLUMN', @level2name = N'IDEAPlacementRationale';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The program in which children ages 3 through 5 attend and in which these children receive special education and related services.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation', @level2type = N'COLUMN', @level2name = N'RefIDEAEducationalEnvironmentECId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'IDEA Educational Environment for Early Childhood', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation', @level2type = N'COLUMN', @level2name = N'RefIDEAEducationalEnvironmentECId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000559', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation', @level2type = N'COLUMN', @level2name = N'RefIDEAEducationalEnvironmentECId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19550', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation', @level2type = N'COLUMN', @level2name = N'RefIDEAEducationalEnvironmentECId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The setting in which children ages 6 through 21, receive special education and related services.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation', @level2type = N'COLUMN', @level2name = N'RefIDEAEducationalEnvironmentSchoolAgeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'IDEA Educational Environment for School Age', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation', @level2type = N'COLUMN', @level2name = N'RefIDEAEducationalEnvironmentSchoolAgeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000535', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation', @level2type = N'COLUMN', @level2name = N'RefIDEAEducationalEnvironmentSchoolAgeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19526', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation', @level2type = N'COLUMN', @level2name = N'RefIDEAEducationalEnvironmentSchoolAgeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation', @level2type = N'COLUMN', @level2name = N'RefIDEAEducationalEnvironmentSchoolAgeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The reason children who were in special education at the start of the reporting period were not in special education at the end of the reporting period.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation', @level2type = N'COLUMN', @level2name = N'RefSpecialEducationExitReasonId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Special Education Exit Reason', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation', @level2type = N'COLUMN', @level2name = N'RefSpecialEducationExitReasonId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000260', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation', @level2type = N'COLUMN', @level2name = N'RefSpecialEducationExitReasonId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19260', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation', @level2type = N'COLUMN', @level2name = N'RefSpecialEducationExitReasonId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation', @level2type = N'COLUMN', @level2name = N'RefSpecialEducationExitReasonId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of the status of a person within one year of leaving secondary school and who had an individualized education program in effect at the time they left secondary school.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation', @level2type = N'COLUMN', @level2name = N'RefPartBPostsecondaryOutcomesIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Part B Postsecondary Outcomes Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation', @level2type = N'COLUMN', @level2name = N'RefPartBPostsecondaryOutcomesIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002086', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation', @level2type = N'COLUMN', @level2name = N'RefPartBPostsecondaryOutcomesIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25075', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation', @level2type = N'COLUMN', @level2name = N'RefPartBPostsecondaryOutcomesIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation', @level2type = N'COLUMN', @level2name = N'RefPartBPostsecondaryOutcomesIndicatorId';

