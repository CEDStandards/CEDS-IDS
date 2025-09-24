CREATE TABLE [dbo].[PsStudentDemographic] (
    [PsStudentDemographicId]          INT      IDENTITY (1, 1) NOT NULL,
    [OrganizationPersonRoleId]        INT      NOT NULL,
    [NumberOfDependents]              INT      NULL,
    [RefDependencyStatusId]           INT      NULL,
    [RefTuitionResidencyTypeId]       INT      NULL,
    [RefCampusResidencyTypeId]        INT      NULL,
    [RefPaternalEducationLevelId]     INT      NULL,
    [RefMaternalEducationLevelId]     INT      NULL,
    [RefCohortExclusionId]            INT      NULL,
    [RecordStartDateTime]             DATETIME NULL,
    [RecordEndDateTime]               DATETIME NULL,
    [ChildrenOfFallenHeroesIndicator] BIT      NULL,
    [EmancipatedMinor]                BIT      NULL,
    [FirstGenerationCollegeStudent]   BIT      NULL,
    [RefNumberOfDependentsTypeId]     INT      NULL,
    [RecordStatusId]                  INT      NULL,
    [DataCollectionId]                INT      NULL,
    CONSTRAINT [PK_PsStudentDemographic] PRIMARY KEY CLUSTERED ([PsStudentDemographicId] ASC),
    CONSTRAINT [FK_PsStudentDemographic_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_PsStudentDemographic_OrganizationPersonRole] FOREIGN KEY ([OrganizationPersonRoleId]) REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]),
    CONSTRAINT [FK_PsStudentDemographic_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_PsStudentDemographic_RefCampusResidencyType] FOREIGN KEY ([RefCampusResidencyTypeId]) REFERENCES [dbo].[RefCampusResidencyType] ([RefCampusResidencyTypeId]),
    CONSTRAINT [FK_PsStudentDemographic_RefCohortExclusion] FOREIGN KEY ([RefCohortExclusionId]) REFERENCES [dbo].[RefCohortExclusion] ([RefCohortExclusionId]),
    CONSTRAINT [FK_PsStudentDemographic_RefDependencyStatus] FOREIGN KEY ([RefDependencyStatusId]) REFERENCES [dbo].[RefDependencyStatus] ([RefDependencyStatusId]),
    CONSTRAINT [FK_PsStudentDemographic_RefEducationLevel] FOREIGN KEY ([RefPaternalEducationLevelId]) REFERENCES [dbo].[RefEducationLevel] ([RefEducationLevelId]),
    CONSTRAINT [FK_PsStudentDemographic_RefEducationLevel1] FOREIGN KEY ([RefMaternalEducationLevelId]) REFERENCES [dbo].[RefEducationLevel] ([RefEducationLevelId]),
    CONSTRAINT [FK_PsStudentDemographic_RefNumberOfDependentsType] FOREIGN KEY ([RefNumberOfDependentsTypeId]) REFERENCES [dbo].[RefNumberOfDependentsType] ([RefNumberOfDependentsTypeId]),
    CONSTRAINT [FK_PsStudentDemographic_RefTuitionResidencyType] FOREIGN KEY ([RefTuitionResidencyTypeId]) REFERENCES [dbo].[RefTuitionResidencyType] ([RefTuitionResidencyTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Additional attributes for a postsecondary student (beyond those demographic attributes stored in PersonDemographic)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentDemographic';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentDemographic';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate key from OrganizationPersonRole', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentDemographic', @level2type = N'COLUMN', @level2name = N'OrganizationPersonRoleId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The number of children or other dependents who live with the student and receive more than half their support from them.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentDemographic', @level2type = N'COLUMN', @level2name = N'NumberOfDependents';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Number of Dependents', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentDemographic', @level2type = N'COLUMN', @level2name = N'NumberOfDependents';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001415', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentDemographic', @level2type = N'COLUMN', @level2name = N'NumberOfDependents';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20384', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentDemographic', @level2type = N'COLUMN', @level2name = N'NumberOfDependents';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentDemographic', @level2type = N'COLUMN', @level2name = N'NumberOfDependents';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A person''s classification as dependent or independent with regards to eligibility for Title IV Federal Student aid.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentDemographic', @level2type = N'COLUMN', @level2name = N'RefDependencyStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Dependency Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentDemographic', @level2type = N'COLUMN', @level2name = N'RefDependencyStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000079', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentDemographic', @level2type = N'COLUMN', @level2name = N'RefDependencyStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19079', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentDemographic', @level2type = N'COLUMN', @level2name = N'RefDependencyStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentDemographic', @level2type = N'COLUMN', @level2name = N'RefDependencyStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A person''s residency status for tuition purposes.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentDemographic', @level2type = N'COLUMN', @level2name = N'RefTuitionResidencyTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Tuition Residency Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentDemographic', @level2type = N'COLUMN', @level2name = N'RefTuitionResidencyTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000297', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentDemographic', @level2type = N'COLUMN', @level2name = N'RefTuitionResidencyTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19297', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentDemographic', @level2type = N'COLUMN', @level2name = N'RefTuitionResidencyTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentDemographic', @level2type = N'COLUMN', @level2name = N'RefTuitionResidencyTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A person''s residency arrangement as defined in the Free Application for Federal Student Aid (FAFSA).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentDemographic', @level2type = N'COLUMN', @level2name = N'RefCampusResidencyTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Campus Residency Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentDemographic', @level2type = N'COLUMN', @level2name = N'RefCampusResidencyTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000035', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentDemographic', @level2type = N'COLUMN', @level2name = N'RefCampusResidencyTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19035', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentDemographic', @level2type = N'COLUMN', @level2name = N'RefCampusResidencyTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentDemographic', @level2type = N'COLUMN', @level2name = N'RefCampusResidencyTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The highest level of education attained by a person''s father or paternal guardian', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentDemographic', @level2type = N'COLUMN', @level2name = N'RefPaternalEducationLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Paternal Guardian Education', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentDemographic', @level2type = N'COLUMN', @level2name = N'RefPaternalEducationLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001230', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentDemographic', @level2type = N'COLUMN', @level2name = N'RefPaternalEducationLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20195', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentDemographic', @level2type = N'COLUMN', @level2name = N'RefPaternalEducationLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentDemographic', @level2type = N'COLUMN', @level2name = N'RefPaternalEducationLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The highest level of education attained by a person''s mother or maternal guardian', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentDemographic', @level2type = N'COLUMN', @level2name = N'RefMaternalEducationLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Maternal Guardian Education', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentDemographic', @level2type = N'COLUMN', @level2name = N'RefMaternalEducationLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001229', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentDemographic', @level2type = N'COLUMN', @level2name = N'RefMaternalEducationLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20194', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentDemographic', @level2type = N'COLUMN', @level2name = N'RefMaternalEducationLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentDemographic', @level2type = N'COLUMN', @level2name = N'RefMaternalEducationLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Those persons who may be removed (deleted) from a cohort (or subcohort). For the Graduation Rates and Fall Enrollment retention rate reporting, persons may be removed from a cohort if they left the institution for one of the following reasons: death or total and permanent disability; service in the armed forces (including those called to active duty); service with a foreign aid service of the federal government, such as the Peace Corps; or service on official church missions.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentDemographic', @level2type = N'COLUMN', @level2name = N'RefCohortExclusionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Cohort Exclusion', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentDemographic', @level2type = N'COLUMN', @level2name = N'RefCohortExclusionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000106', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentDemographic', @level2type = N'COLUMN', @level2name = N'RefCohortExclusionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19106', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentDemographic', @level2type = N'COLUMN', @level2name = N'RefCohortExclusionId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentDemographic', @level2type = N'COLUMN', @level2name = N'RefCohortExclusionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentDemographic', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentDemographic', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentDemographic', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentDemographic', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentDemographic', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentDemographic', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentDemographic', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentDemographic', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentDemographic', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Pell-eligible students whose parent or guardian was a member of the U.S. armed forces and died as a result of military service performed in Iraq or Afghanistan after the events of 9/11 or a public safety officer and died as a result of active service in the line of duty. At the time of the parent''s or guardian''s death, the student must be less than 24 years of age or enrolled in college or career school at least part-time.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentDemographic', @level2type = N'COLUMN', @level2name = N'ChildrenOfFallenHeroesIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Children of Fallen Heroes Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentDemographic', @level2type = N'COLUMN', @level2name = N'ChildrenOfFallenHeroesIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001984', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentDemographic', @level2type = N'COLUMN', @level2name = N'ChildrenOfFallenHeroesIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentDemographic', @level2type = N'COLUMN', @level2name = N'ChildrenOfFallenHeroesIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentDemographic', @level2type = N'COLUMN', @level2name = N'ChildrenOfFallenHeroesIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A minor student under the age of 18 who has been granted by legal action to have the power and capacity of an adult.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentDemographic', @level2type = N'COLUMN', @level2name = N'EmancipatedMinor';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Emancipated Minor', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentDemographic', @level2type = N'COLUMN', @level2name = N'EmancipatedMinor';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001981', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentDemographic', @level2type = N'COLUMN', @level2name = N'EmancipatedMinor';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20931', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentDemographic', @level2type = N'COLUMN', @level2name = N'EmancipatedMinor';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentDemographic', @level2type = N'COLUMN', @level2name = N'EmancipatedMinor';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The term First Generation College Student means an individual both of whose parents did not complete a baccalaureate degree or in the case of any individual who regularly resided with and received support from only one parent, an individual whose only such parent did not complete a baccalaureate degree.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentDemographic', @level2type = N'COLUMN', @level2name = N'FirstGenerationCollegeStudent';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'First Generation College Student', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentDemographic', @level2type = N'COLUMN', @level2name = N'FirstGenerationCollegeStudent';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001947', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentDemographic', @level2type = N'COLUMN', @level2name = N'FirstGenerationCollegeStudent';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20933', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentDemographic', @level2type = N'COLUMN', @level2name = N'FirstGenerationCollegeStudent';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentDemographic', @level2type = N'COLUMN', @level2name = N'FirstGenerationCollegeStudent';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The student''s relationship to the dependents who live with the student or receive more than half of the student''s support', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentDemographic', @level2type = N'COLUMN', @level2name = N'RefNumberOfDependentsTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Number of Dependents Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentDemographic', @level2type = N'COLUMN', @level2name = N'RefNumberOfDependentsTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001983', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentDemographic', @level2type = N'COLUMN', @level2name = N'RefNumberOfDependentsTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20949', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentDemographic', @level2type = N'COLUMN', @level2name = N'RefNumberOfDependentsTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentDemographic', @level2type = N'COLUMN', @level2name = N'RefNumberOfDependentsTypeId';

