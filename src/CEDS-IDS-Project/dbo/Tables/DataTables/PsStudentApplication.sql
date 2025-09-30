CREATE TABLE [dbo].[PsStudentApplication] (
    [PsStudentApplicationId]        INT            IDENTITY (1, 1) NOT NULL,
    [OrganizationPersonRoleId]      INT            NOT NULL,
    [PostsecondaryApplicant]        BIT            NULL,
    [GradePointAverageCumulative]   DECIMAL (9, 4) NULL,
    [HighSchoolPercentile]          DECIMAL (5, 4) NULL,
    [HighSchoolStudentClassRank]    INT            NULL,
    [HighSchoolGraduatingClassSize] INT            NULL,
    [WaitListedStudent]             BIT            NULL,
    [RefGradePointAverageDomainId]  INT            NULL,
    [RefGpaWeightedIndicatorId]     INT            NULL,
    [RefAdmittedStudentId]          INT            NULL,
    [RecordStartDateTime]           DATETIME       NULL,
    [RecordEndDateTime]             DATETIME       NULL,
    [RecordStatusId]                INT            NULL,
    [DataCollectionId]              INT            NULL,
    CONSTRAINT [PK_PsStudentApplication] PRIMARY KEY CLUSTERED ([PsStudentApplicationId] ASC),
    CONSTRAINT [FK_PsStudentApplication_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_PsStudentApplication_OrganizationPersonRole] FOREIGN KEY ([OrganizationPersonRoleId]) REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]),
    CONSTRAINT [FK_PsStudentApplication_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_PsStudentApplication_RefAdmittedStudent] FOREIGN KEY ([RefAdmittedStudentId]) REFERENCES [dbo].[RefAdmittedStudent] ([RefAdmittedStudentId]),
    CONSTRAINT [FK_PsStudentApplication_RefGpaWeightedIndicator] FOREIGN KEY ([RefGpaWeightedIndicatorId]) REFERENCES [dbo].[RefGpaWeightedIndicator] ([RefGpaWeightedIndicatorId]),
    CONSTRAINT [FK_PsStudentApplication_RefGradePointAverageDomain] FOREIGN KEY ([RefGradePointAverageDomainId]) REFERENCES [dbo].[RefGradePointAverageDomain] ([RefGradePointAverageDomainId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information on an individual who submits an application for admission to a postsecondary institution.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentApplication';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentApplication';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Inherited surrogate key from OrganizationPersonRole.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentApplication', @level2type = N'COLUMN', @level2name = N'OrganizationPersonRoleId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentApplication', @level2type = N'COLUMN', @level2name = N'OrganizationPersonRoleId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An individual who has fulfilled the institution’s requirements to be considered for admission (including payment or waiving of the application fee, if any) and who has been notified of one of the following actions: admission, nonadmission, placement on waiting list, or application withdrawn (by applicant or institution). Include early decision, early action, and students who began studies during summer in this cohort.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentApplication', @level2type = N'COLUMN', @level2name = N'PostsecondaryApplicant';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Postsecondary Applicant', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentApplication', @level2type = N'COLUMN', @level2name = N'PostsecondaryApplicant';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000755', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentApplication', @level2type = N'COLUMN', @level2name = N'PostsecondaryApplicant';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19735', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentApplication', @level2type = N'COLUMN', @level2name = N'PostsecondaryApplicant';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentApplication', @level2type = N'COLUMN', @level2name = N'PostsecondaryApplicant';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A measure of average performance in all courses taken by a person during his or her school career as determined for record-keeping purposes. This is obtained by dividing the total grade points received by the total number of credits attempted. This usually includes grade points received and credits attempted in his or her current school as well as those transferred from schools in which the person was previously enrolled.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentApplication', @level2type = N'COLUMN', @level2name = N'GradePointAverageCumulative';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Grade Point Average Cumulative', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentApplication', @level2type = N'COLUMN', @level2name = N'GradePointAverageCumulative';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000128', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentApplication', @level2type = N'COLUMN', @level2name = N'GradePointAverageCumulative';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19128', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentApplication', @level2type = N'COLUMN', @level2name = N'GradePointAverageCumulative';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentApplication', @level2type = N'COLUMN', @level2name = N'GradePointAverageCumulative';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The High School Rank divided by the Size of High School Graduating Class expressed as a percentage.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentApplication', @level2type = N'COLUMN', @level2name = N'HighSchoolPercentile';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'High School Percentile', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentApplication', @level2type = N'COLUMN', @level2name = N'HighSchoolPercentile';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000759', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentApplication', @level2type = N'COLUMN', @level2name = N'HighSchoolPercentile';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19740', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentApplication', @level2type = N'COLUMN', @level2name = N'HighSchoolPercentile';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentApplication', @level2type = N'COLUMN', @level2name = N'HighSchoolPercentile';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The academic rank of a student in relation to his or her high school graduating class (e.g., 1, 2, 3) based on high school GPA.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentApplication', @level2type = N'COLUMN', @level2name = N'HighSchoolStudentClassRank';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'High School Student Class Rank', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentApplication', @level2type = N'COLUMN', @level2name = N'HighSchoolStudentClassRank';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000041', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentApplication', @level2type = N'COLUMN', @level2name = N'HighSchoolStudentClassRank';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19041', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentApplication', @level2type = N'COLUMN', @level2name = N'HighSchoolStudentClassRank';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentApplication', @level2type = N'COLUMN', @level2name = N'HighSchoolStudentClassRank';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The total number of students in the student''s high school graduating class.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentApplication', @level2type = N'COLUMN', @level2name = N'HighSchoolGraduatingClassSize';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Size of High School Graduating Class', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentApplication', @level2type = N'COLUMN', @level2name = N'HighSchoolGraduatingClassSize';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000294', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentApplication', @level2type = N'COLUMN', @level2name = N'HighSchoolGraduatingClassSize';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19294', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentApplication', @level2type = N'COLUMN', @level2name = N'HighSchoolGraduatingClassSize';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentApplication', @level2type = N'COLUMN', @level2name = N'HighSchoolGraduatingClassSize';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A person who meets the admission requirements but will only be offered a place in the class if space becomes available.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentApplication', @level2type = N'COLUMN', @level2name = N'WaitListedStudent';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Wait Listed Student', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentApplication', @level2type = N'COLUMN', @level2name = N'WaitListedStudent';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000757', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentApplication', @level2type = N'COLUMN', @level2name = N'WaitListedStudent';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19738', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentApplication', @level2type = N'COLUMN', @level2name = N'WaitListedStudent';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentApplication', @level2type = N'COLUMN', @level2name = N'WaitListedStudent';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The domain to which the Grade Point Average is referencing.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentApplication', @level2type = N'COLUMN', @level2name = N'RefGradePointAverageDomainId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Grade Point Average Domain', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentApplication', @level2type = N'COLUMN', @level2name = N'RefGradePointAverageDomainId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000758', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentApplication', @level2type = N'COLUMN', @level2name = N'RefGradePointAverageDomainId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19739', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentApplication', @level2type = N'COLUMN', @level2name = N'RefGradePointAverageDomainId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentApplication', @level2type = N'COLUMN', @level2name = N'RefGradePointAverageDomainId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether the reported GPA is weighted or unweighted.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentApplication', @level2type = N'COLUMN', @level2name = N'RefGpaWeightedIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Grade Point Average Weighted Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentApplication', @level2type = N'COLUMN', @level2name = N'RefGpaWeightedIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000123', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentApplication', @level2type = N'COLUMN', @level2name = N'RefGpaWeightedIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19123', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentApplication', @level2type = N'COLUMN', @level2name = N'RefGpaWeightedIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentApplication', @level2type = N'COLUMN', @level2name = N'RefGpaWeightedIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Applicant who has been granted an official offer to enroll in a postsecondary institution. Admitted applicants should include wait-listed students who were subsequently offered admission.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentApplication', @level2type = N'COLUMN', @level2name = N'RefAdmittedStudentId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Admitted Student', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentApplication', @level2type = N'COLUMN', @level2name = N'RefAdmittedStudentId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000756', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentApplication', @level2type = N'COLUMN', @level2name = N'RefAdmittedStudentId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19736', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentApplication', @level2type = N'COLUMN', @level2name = N'RefAdmittedStudentId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentApplication', @level2type = N'COLUMN', @level2name = N'RefAdmittedStudentId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentApplication', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentApplication', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentApplication', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentApplication', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentApplication', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentApplication', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentApplication', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentApplication', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentApplication', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

