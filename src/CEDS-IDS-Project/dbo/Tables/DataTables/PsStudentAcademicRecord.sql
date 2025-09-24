CREATE TABLE [dbo].[PsStudentAcademicRecord] (
    [PsStudentAcademicRecordId]           INT            IDENTITY (1, 1) NOT NULL,
    [OrganizationPersonRoleId]            INT            NOT NULL,
    [AcademicYearDesignator]              NCHAR (9)      NULL,
    [RefAcademicTermDesignatorId]         INT            NULL,
    [GradePointAverage]                   DECIMAL (9, 4) NULL,
    [GradePointAverageCumulative]         DECIMAL (9, 4) NULL,
    [DualCreditDualEnrollmentCredits]     DECIMAL (9, 4) NULL,
    [AdvancedPlacementCreditsAwarded]     INT            NULL,
    [RefProfessionalTechCredentialTypeId] INT            NULL,
    [DiplomaOrCredentialAwardDate]        NCHAR (7)      NULL,
    [EnteringTerm]                        NVARCHAR (30)  NULL,
    [CourseTotal]                         INT            NULL,
    [RefCreditHoursAppliedOtherProgramId] INT            NULL,
    [RecordStartDateTime]                 DATETIME       NULL,
    [RecordEndDateTime]                   DATETIME       NULL,
    [CreditsAttemptedCumulative]          DECIMAL (9, 2) NULL,
    [CreditsEarnedCumulative]             DECIMAL (9, 2) NULL,
    [NumberOfCreditsAttempted]            DECIMAL (9, 2) NULL,
    [RecordStatusId]                      INT            NULL,
    [DataCollectionId]                    INT            NULL,
    CONSTRAINT [PK_PsStudentAcademicRecord] PRIMARY KEY CLUSTERED ([PsStudentAcademicRecordId] ASC),
    CONSTRAINT [FK_PsStudentAcademicRecord_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_PsStudentAcademicRecord_OrganizationPersonRole] FOREIGN KEY ([OrganizationPersonRoleId]) REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]),
    CONSTRAINT [FK_PsStudentAcademicRecord_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_PsStudentAcademicRecord_RefAcademicTermDesignator] FOREIGN KEY ([RefAcademicTermDesignatorId]) REFERENCES [dbo].[RefAcademicTermDesignator] ([RefAcademicTermDesignatorId]),
    CONSTRAINT [FK_PsStudentAcademicRecord_RefCreditHours] FOREIGN KEY ([RefCreditHoursAppliedOtherProgramId]) REFERENCES [dbo].[RefCreditHoursAppliedOtherProgram] ([RefCreditHoursAppliedOtherProgramId]),
    CONSTRAINT [FK_PsStudentAcademicRecord_RefProfTechCredentialType] FOREIGN KEY ([RefProfessionalTechCredentialTypeId]) REFERENCES [dbo].[RefProfessionalTechnicalCredentialType] ([RefProfessionalTechnicalCredentialTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The summary level academic record for a postsecondary student including graduation information.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'PsStudentAcademicRecordId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - OrganizationPersonRole', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'OrganizationPersonRoleId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The academic year for which the data apply.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'AcademicYearDesignator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Academic Year Designator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'AcademicYearDesignator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000726', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'AcademicYearDesignator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19702', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'AcademicYearDesignator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'AcademicYearDesignator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The academic term for which the data apply.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RefAcademicTermDesignatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Academic Term Designator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RefAcademicTermDesignatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000727', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RefAcademicTermDesignatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19703', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RefAcademicTermDesignatorId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RefAcademicTermDesignatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The value of the total quality points divided by the Credit Hours for Grade Point Average. ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'GradePointAverage';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Grade Point Average', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'GradePointAverage';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000127', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'GradePointAverage';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19127', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'GradePointAverage';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'GradePointAverage';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A measure of average performance in all courses taken by a person during his or her school career as determined for record-keeping purposes. This is obtained by dividing the total grade points received by the total number of credits attempted. This usually includes grade points received and credits attempted in his or her current school as well as those transferred from schools in which the person was previously enrolled.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'GradePointAverageCumulative';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Grade Point Average Cumulative', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'GradePointAverageCumulative';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000128', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'GradePointAverageCumulative';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19128', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'GradePointAverageCumulative';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'GradePointAverageCumulative';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The number of credits awarded a student by the postsecondary institution based on successful completion of dual credit/dual enrollment courses. ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'DualCreditDualEnrollmentCredits';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Dual Credit Dual Enrollment Credits Awarded', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'DualCreditDualEnrollmentCredits';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000085', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'DualCreditDualEnrollmentCredits';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19085', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'DualCreditDualEnrollmentCredits';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'DualCreditDualEnrollmentCredits';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The number of credits awarded a student by the postsecondary institution based on successful completion of advanced placement courses and/or advanced placement tests. ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'AdvancedPlacementCreditsAwarded';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Advanced Placement Credits Awarded', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'AdvancedPlacementCreditsAwarded';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000018', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'AdvancedPlacementCreditsAwarded';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19018', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'AdvancedPlacementCreditsAwarded';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'AdvancedPlacementCreditsAwarded';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indicator of the category of credential conferred by a state occupational licensing entity or industry organization for competency in a specific area measured by a set of pre-established standards.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RefProfessionalTechCredentialTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Professional or Technical Credential Conferred', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RefProfessionalTechCredentialTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000783', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RefProfessionalTechCredentialTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19780', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RefProfessionalTechCredentialTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RefProfessionalTechCredentialTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The month and year on which the diploma/credential is awarded to a student in recognition of his/her completion of the curricular requirements.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'DiplomaOrCredentialAwardDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Diploma or Credential Award Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'DiplomaOrCredentialAwardDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000081', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'DiplomaOrCredentialAwardDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19081', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'DiplomaOrCredentialAwardDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'DiplomaOrCredentialAwardDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The term and year of the initial enrollment of an individual in credit bearing courses or developmental/remedial courses at an institution after completing high school or a high school equivalency program (e.g., GED, Adult High School Diploma).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'EnteringTerm';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Postsecondary Student Entering Term', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'EnteringTerm';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001427', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'EnteringTerm';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20396', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'EnteringTerm';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'EnteringTerm';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The total number of courses listed on a transcript. Used as a check digit for integrity purposes.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'CourseTotal';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Course Total', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'CourseTotal';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001316', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'CourseTotal';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20282', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'CourseTotal';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'CourseTotal';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Codes identifying the set of credit hours taken in other programs or degrees that were applied to the individual''s degree.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RefCreditHoursAppliedOtherProgramId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Credit Hours Applied Other Program', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RefCreditHoursAppliedOtherProgramId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001317', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RefCreditHoursAppliedOtherProgramId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20283', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RefCreditHoursAppliedOtherProgramId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RefCreditHoursAppliedOtherProgramId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The cumulative number of credits a person attempts to earn by taking courses during their enrollment in their current education institution as well as those credits transferred from an education institution in which the person had been previously enrolled.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'CreditsAttemptedCumulative';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Credits Attempted Cumulative', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'CreditsAttemptedCumulative';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000073', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'CreditsAttemptedCumulative';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19073', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'CreditsAttemptedCumulative';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'CreditsAttemptedCumulative';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The cumulative number of credits a person earns by completing courses or examinations during their enrollment in the current education institution as well as those credits transferred from an education institution in which the person had been previously enrolled.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'CreditsEarnedCumulative';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Credits Earned Cumulative', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'CreditsEarnedCumulative';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000074', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'CreditsEarnedCumulative';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19074', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'CreditsEarnedCumulative';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'CreditsEarnedCumulative';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The number of credits that a student can earn for enrolling in and completing a given course.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'NumberOfCreditsAttempted';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Number of Credits Attempted', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'NumberOfCreditsAttempted';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000199', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'NumberOfCreditsAttempted';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19199', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'NumberOfCreditsAttempted';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'NumberOfCreditsAttempted';

