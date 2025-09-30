CREATE TABLE [dbo].[K12StudentAcademicRecord] (
    [K12StudentAcademicRecordId]               INT            IDENTITY (1, 1) NOT NULL,
    [OrganizationPersonRoleId]                 INT            NOT NULL,
    [CreditsAttemptedCumulative]               DECIMAL (9, 2) NULL,
    [CreditsEarnedCumulative]                  DECIMAL (9, 2) NULL,
    [GradePointsEarnedCumulative]              DECIMAL (9, 2) NULL,
    [GradePointAverageCumulative]              DECIMAL (9, 4) NULL,
    [ProjectedGraduationDate]                  DATETIME       NULL,
    [HighSchoolStudentClassRank]               INT            NULL,
    [ClassRankingDate]                         DATETIME       NULL,
    [TotalNumberInClass]                       INT            NULL,
    [DiplomaOrCredentialAwardDate]             DATETIME       NULL,
    [RefGpaWeightedIndicatorId]                INT            NULL,
    [RefHighSchoolDiplomaTypeId]               INT            NULL,
    [RefHighSchoolDiplomaDistinctionTypeId]    INT            NULL,
    [RefTechnologyLiteracyStatusId]            INT            NULL,
    [RefPsEnrollmentActionId]                  INT            NULL,
    [RefPreAndPostTestIndicatorId]             INT            NULL,
    [RefProfessionalTechnicalCredentialTypeId] INT            NULL,
    [RefProgressLevelId]                       INT            NULL,
    [RecordStartDateTime]                      DATETIME       NULL,
    [RecordEndDateTime]                        DATETIME       NULL,
    [RecordStatusId]                           INT            NULL,
    [DataCollectionId]                         INT            NULL,
    [RefProjectedHighSchoolDiplomaTypeId]      INT            NULL,
    CONSTRAINT [PK_K12StudentAcademicRecord] PRIMARY KEY CLUSTERED ([K12StudentAcademicRecordId] ASC),
    CONSTRAINT [FK_K12StudentAcademicRecord_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_K12StudentAcademicRecord_OrganizationPerson] FOREIGN KEY ([OrganizationPersonRoleId]) REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_K12StudentAcademicRecord_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_K12StudentAcademicRecord_RefGpaWeightedIndicator] FOREIGN KEY ([RefGpaWeightedIndicatorId]) REFERENCES [dbo].[RefGpaWeightedIndicator] ([RefGpaWeightedIndicatorId]),
    CONSTRAINT [FK_K12StudentAcademicRecord_RefHighSchoolDiplomaType] FOREIGN KEY ([RefHighSchoolDiplomaTypeId]) REFERENCES [dbo].[RefHighSchoolDiplomaType] ([RefHighSchoolDiplomaTypeId]),
    CONSTRAINT [FK_K12StudentAcademicRecord_RefHSDiplomaDistinctionType] FOREIGN KEY ([RefHighSchoolDiplomaDistinctionTypeId]) REFERENCES [dbo].[RefHighSchoolDiplomaDistinctionType] ([RefHighSchoolDiplomaDistinctionTypeId]),
    CONSTRAINT [FK_K12StudentAcademicRecord_RefPreAndPostTestIndicator] FOREIGN KEY ([RefPreAndPostTestIndicatorId]) REFERENCES [dbo].[RefPreAndPostTestIndicator] ([RefPreAndPostTestIndicatorId]),
    CONSTRAINT [FK_K12StudentAcademicRecord_RefProfessionalTechnicalCredential] FOREIGN KEY ([RefProfessionalTechnicalCredentialTypeId]) REFERENCES [dbo].[RefProfessionalTechnicalCredentialType] ([RefProfessionalTechnicalCredentialTypeId]),
    CONSTRAINT [FK_K12StudentAcademicRecord_RefProgressLevel] FOREIGN KEY ([RefProgressLevelId]) REFERENCES [dbo].[RefProgressLevel] ([RefProgressLevelId]),
    CONSTRAINT [FK_K12StudentAcademicRecord_RefProjectedHighSchoolDiplomaType] FOREIGN KEY ([RefProjectedHighSchoolDiplomaTypeId]) REFERENCES [dbo].[RefProjectedHighSchoolDiplomaType] ([RefProjectedHighSchoolDiplomaTypeId]),
    CONSTRAINT [FK_K12StudentAcademicRecord_RefPsEnrollmentAction] FOREIGN KEY ([RefPsEnrollmentActionId]) REFERENCES [dbo].[RefPsEnrollmentAction] ([RefPsEnrollmentActionId]),
    CONSTRAINT [FK_K12StudentAcademicRecord_RefTechnologyLiteracyStatus] FOREIGN KEY ([RefTechnologyLiteracyStatusId]) REFERENCES [dbo].[RefTechnologyLiteracyStatus] ([RefTechnologyLiteracyStatusId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The summary level academic record for a K12 student including graduation information.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Inherited surrogate Key from OrganizationPersonRole.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'OrganizationPersonRoleId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'OrganizationPersonRoleId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The cumulative number of credits a person attempts to earn by taking courses during his or her enrollment in the current school as well as those credits transferred from schools in which the person had been previously enrolled.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'CreditsAttemptedCumulative';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Credits Attempted Cumulative', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'CreditsAttemptedCumulative';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000073', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'CreditsAttemptedCumulative';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19073', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'CreditsAttemptedCumulative';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'CreditsAttemptedCumulative';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The cumulative number of credits a person earns by completing courses or examinations during his or her enrollment in the current school as well as those credits transferred from schools in which the person had been previously enrolled.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'CreditsEarnedCumulative';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Credits Earned Cumulative', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'CreditsEarnedCumulative';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000074', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'CreditsEarnedCumulative';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19074', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'CreditsEarnedCumulative';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'CreditsEarnedCumulative';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The cumulative number of grade points a person earns by successfully completing courses or examinations during his or her enrollment in the current school as well as those transferred from schools in which the person had been previously enrolled.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'GradePointsEarnedCumulative';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Grade Points Earned Cumulative', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'GradePointsEarnedCumulative';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000130', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'GradePointsEarnedCumulative';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19130', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'GradePointsEarnedCumulative';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'GradePointsEarnedCumulative';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A measure of average performance in all courses taken by a person during his or her school career as determined for record-keeping purposes. This is obtained by dividing the total grade points received by the total number of credits attempted. This usually includes grade points received and credits attempted in his or her current school as well as those transferred from schools in which the person was previously enrolled.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'GradePointAverageCumulative';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Grade Point Average Cumulative', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'GradePointAverageCumulative';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000128', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'GradePointAverageCumulative';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19128', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'GradePointAverageCumulative';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'GradePointAverageCumulative';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The year and month the student is projected to graduate.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'ProjectedGraduationDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Projected Graduation Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'ProjectedGraduationDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000226', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'ProjectedGraduationDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19226', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'ProjectedGraduationDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'ProjectedGraduationDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The academic rank of a student in relation to his or her high school graduating class (e.g., 1, 2, 3) based on high school GPA.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'HighSchoolStudentClassRank';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'High School Student Class Rank', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'HighSchoolStudentClassRank';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000041', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'HighSchoolStudentClassRank';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19041', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'HighSchoolStudentClassRank';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'HighSchoolStudentClassRank';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The date class ranking was determined.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'ClassRankingDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Class Ranking Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'ClassRankingDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000042', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'ClassRankingDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19042', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'ClassRankingDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'ClassRankingDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The total number of students in the student''s high school graduating class.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'TotalNumberInClass';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Size of High School Graduating Class', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'TotalNumberInClass';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000294', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'TotalNumberInClass';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19294', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'TotalNumberInClass';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'TotalNumberInClass';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The month and year on which the diploma/credential is awarded to a student in recognition of his/her completion of the curricular requirements.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'DiplomaOrCredentialAwardDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Diploma or Credential Award Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'DiplomaOrCredentialAwardDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000081', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'DiplomaOrCredentialAwardDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19081', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'DiplomaOrCredentialAwardDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'DiplomaOrCredentialAwardDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether the reported GPA is weighted or unweighted.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RefGpaWeightedIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Grade Point Average Weighted Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RefGpaWeightedIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000123', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RefGpaWeightedIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19123', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RefGpaWeightedIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RefGpaWeightedIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of diploma/credential that is awarded to a person in recognition of his/her completion of the curricular requirements.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RefHighSchoolDiplomaTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'High School Diploma Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RefHighSchoolDiplomaTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000138', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RefHighSchoolDiplomaTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19138', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RefHighSchoolDiplomaTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RefHighSchoolDiplomaTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The distinction of the diploma or credential that is awarded to a student in recognition of their completion of the curricular requirements.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RefHighSchoolDiplomaDistinctionTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'High School Diploma Distinction Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RefHighSchoolDiplomaDistinctionTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000713', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RefHighSchoolDiplomaDistinctionTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19689', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RefHighSchoolDiplomaDistinctionTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RefHighSchoolDiplomaDistinctionTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of the technology literacy of 8th graders.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RefTechnologyLiteracyStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Technology Literacy Status in 8th Grade', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RefTechnologyLiteracyStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000566', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RefTechnologyLiteracyStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19558', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RefTechnologyLiteracyStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RefTechnologyLiteracyStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The action taken with respect to postsecondary enrollment by the student who graduated from the school, LEA or state in the past two years.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RefPsEnrollmentActionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Postsecondary Enrollment Action', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RefPsEnrollmentActionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000586', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RefPsEnrollmentActionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19579', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RefPsEnrollmentActionId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RefPsEnrollmentActionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether students took both a pre-test and a post-test to measure academic improvement.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RefPreAndPostTestIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Pre and Post Test Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RefPreAndPostTestIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000571', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RefPreAndPostTestIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19563', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RefPreAndPostTestIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RefPreAndPostTestIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indicator of the category of credential conferred by a state occupational licensing entity or industry organization for competency in a specific area measured by a set of pre-established standards.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RefProfessionalTechnicalCredentialTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Professional or Technical Credential Conferred', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RefProfessionalTechnicalCredentialTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000783', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RefProfessionalTechnicalCredentialTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19780', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RefProfessionalTechnicalCredentialTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RefProfessionalTechnicalCredentialTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The amount of progress shown in academic subjects.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RefProgressLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Progress Level', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RefProgressLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000561', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RefProgressLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19553', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RefProgressLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RefProgressLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of projected diploma/credential a person would be awarded in recognition of his/her completion of the curricular requirements.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RefProjectedHighSchoolDiplomaTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Projected High School Diploma Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RefProjectedHighSchoolDiplomaTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002026', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RefProjectedHighSchoolDiplomaTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25077', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RefProjectedHighSchoolDiplomaTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentAcademicRecord', @level2type = N'COLUMN', @level2name = N'RefProjectedHighSchoolDiplomaTypeId';

