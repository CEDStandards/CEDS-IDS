CREATE TABLE [dbo].[AssessmentRegistration] (
    [AssessmentRegistrationId]                       INT            IDENTITY (1, 1) NOT NULL,
    [PersonId]                                       INT            NOT NULL,
    [AssessmentFormId]                               INT            NOT NULL,
    [CreationDate]                                   DATETIME       NULL,
    [DaysOfInstructionPriorToAssessment]             INT            NULL,
    [ScorePublishDate]                               DATE           NULL,
    [TestAttemptIdentifier]                          NVARCHAR (40)  NULL,
    [RetestIndicator]                                BIT            NULL,
    [CourseSectionId]                                INT            NULL,
    [TestingIndicator]                               NVARCHAR (300) NULL,
    [OrganizationId]                                 INT            NULL,
    [SchoolOrganizationId]                           INT            NULL,
    [LeaOrganizationId]                              INT            NULL,
    [AssessmentAdministrationId]                     INT            NULL,
    [AssignedByPersonId]                             INT            NULL,
    [AssessmentRegistrationCompletionStatusDateTime] DATETIME       NULL,
    [StateFullAcademicYear]                          BIT            NULL,
    [LEAFullAcademicYear]                            BIT            NULL,
    [SchoolFullAcademicYear]                         BIT            NULL,
    [RefAssessmentParticipationIndicatorId]          INT            NULL,
    [RefAssessmentPurposeId]                         INT            NULL,
    [RefAssessmentReasonNotTestedId]                 INT            NULL,
    [RefAssessmentReasonNotCompletingId]             INT            NULL,
    [RefGradeLevelToBeAssessedId]                    INT            NULL,
    [RefGradeLevelWhenAssessedId]                    INT            NULL,
    [RefAssessmentRegistrationCompletionStatusId]    INT            NULL,
    [RecordStartDateTime]                            DATETIME       NULL,
    [RecordEndDateTime]                              DATETIME       NULL,
    [RecordStatusId]                                 INT            NULL,
    [DataCollectionId]                               INT            NULL,
    CONSTRAINT [PK_AssessmentRegistration] PRIMARY KEY CLUSTERED ([AssessmentRegistrationId] ASC),
    CONSTRAINT [FK_AssessmentRegirstration_RefAssessmentForm] FOREIGN KEY ([AssessmentFormId]) REFERENCES [dbo].[AssessmentForm] ([AssessmentFormId]),
    CONSTRAINT [FK_AssessmentRegistration_AssessmentAdministration] FOREIGN KEY ([AssessmentAdministrationId]) REFERENCES [dbo].[AssessmentAdministration] ([AssessmentAdministrationId]),
    CONSTRAINT [FK_AssessmentRegistration_CourseSection] FOREIGN KEY ([CourseSectionId]) REFERENCES [dbo].[CourseSection] ([CourseSectionId]),
    CONSTRAINT [FK_AssessmentRegistration_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_AssessmentRegistration_Organization] FOREIGN KEY ([OrganizationId]) REFERENCES [dbo].[Organization] ([OrganizationId]),
    CONSTRAINT [FK_AssessmentRegistration_Person] FOREIGN KEY ([AssignedByPersonId]) REFERENCES [dbo].[Person] ([PersonId]),
    CONSTRAINT [FK_AssessmentRegistration_Person2] FOREIGN KEY ([PersonId]) REFERENCES [dbo].[Person] ([PersonId]),
    CONSTRAINT [FK_AssessmentRegistration_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_AssessmentRegistration_RefAssessmentParticipationIndicator] FOREIGN KEY ([RefAssessmentParticipationIndicatorId]) REFERENCES [dbo].[RefAssessmentParticipationIndicator] ([RefAssessmentParticipationIndicatorId]),
    CONSTRAINT [FK_AssessmentRegistration_RefAssessmentPurpose] FOREIGN KEY ([RefAssessmentPurposeId]) REFERENCES [dbo].[RefAssessmentPurpose] ([RefAssessmentPurposeId]),
    CONSTRAINT [FK_AssessmentRegistration_RefAssessmentReasonNotCompleting] FOREIGN KEY ([RefAssessmentReasonNotCompletingId]) REFERENCES [dbo].[RefAssessmentReasonNotCompleting] ([RefAssessmentReasonNotCompletingId]),
    CONSTRAINT [FK_AssessmentRegistration_RefAssessmentReasonNotTested] FOREIGN KEY ([RefAssessmentReasonNotTestedId]) REFERENCES [dbo].[RefAssessmentReasonNotTested] ([RefAssessmentReasonNotTestedId]),
    CONSTRAINT [FK_AssessmentRegistration_RefAssessmentRegistrationCompletionStatus] FOREIGN KEY ([RefAssessmentRegistrationCompletionStatusId]) REFERENCES [dbo].[RefAssessmentRegistrationCompletionStatus] ([RefAssessmentRegistrationCompletionStatusId]),
    CONSTRAINT [FK_AssessmentRegistration_RefGradeLevel] FOREIGN KEY ([RefGradeLevelWhenAssessedId]) REFERENCES [dbo].[RefGradeLevel] ([RefGradeLevelId]),
    CONSTRAINT [FK_AssessmentRegistration_RefGradeLevel1] FOREIGN KEY ([RefGradeLevelToBeAssessedId]) REFERENCES [dbo].[RefGradeLevel] ([RefGradeLevelId]),
    CONSTRAINT [FK_AssessmentRegistration_RefOrganization1] FOREIGN KEY ([SchoolOrganizationId]) REFERENCES [dbo].[Organization] ([OrganizationId]),
    CONSTRAINT [FK_AssessmentRegistration_RefOrganization2] FOREIGN KEY ([LeaOrganizationId]) REFERENCES [dbo].[Organization] ([OrganizationId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information related to a specific person registered for an Assessment Administration, assigned a specific  Assessment Form for participation in one or more Assessment Sessions.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Person registering for the Assessment.  (Foreign Key - Person)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'PersonId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Date/time assignment is made.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'CreationDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Registration Creation Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'CreationDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001017', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'CreationDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20019', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'CreationDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The number of days of instruction the student has taken prior to testing.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'DaysOfInstructionPriorToAssessment';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Registration Days of Instruction', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'DaysOfInstructionPriorToAssessment';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001015', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'DaysOfInstructionPriorToAssessment';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20017', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'DaysOfInstructionPriorToAssessment';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The date set by the testing program when the test scores are published.  For formative or classroom assessments, this will likely be the date when the scored the individual test.  For summative assessments, this date is likely set for a group of assessments when the processing system releases the scores.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'ScorePublishDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Registration Score Publish Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'ScorePublishDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001056', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'ScorePublishDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20062', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'ScorePublishDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A unique identifier for the test attempt assigned by the delivery system.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'TestAttemptIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Registration Test Attempt Identifier', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'TestAttemptIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001162', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'TestAttemptIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20119', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'TestAttemptIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Indicates if this registration is for a retest (retake). Retest can occur if a student failed a prior attempt and is eligible to retake. Other retest scenarios also can occur.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RetestIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Registration Retest Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RetestIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001016', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RetestIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20018', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RetestIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Indicates rules about use of results based on Special Events before, during or after the test. The option set values are determined by the testing program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'TestingIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Registration Testing Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'TestingIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001055', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'TestingIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20061', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'TestingIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'TestingIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The unique identifier of the person who assigned the assessment to the learner.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'AssignedByPersonId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Registration Assignor Identifier', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'AssignedByPersonId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000889', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'AssignedByPersonId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19889', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'AssignedByPersonId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The date and time the completion and scoring status was changed for an instance of a person taking an assessment.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'AssessmentRegistrationCompletionStatusDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Registration Completion Status Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'AssessmentRegistrationCompletionStatusDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001542', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'AssessmentRegistrationCompletionStatusDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20517', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'AssessmentRegistrationCompletionStatusDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether a student was in membership in the state education unit for a full academic year, according to the state’s definition of Full Academic Year.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'StateFullAcademicYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'State Full Academic Year', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'StateFullAcademicYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001761', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'StateFullAcademicYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20742', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'StateFullAcademicYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether a student was in membership in the LEA education unit for a full academic year, according to the state’s definition of Full Academic Year.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'LEAFullAcademicYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'LEA Full Academic Year', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'LEAFullAcademicYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001762', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'LEAFullAcademicYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20743', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'LEAFullAcademicYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether a student was in membership in the school education unit for a full academic year, according to the state’s definition of Full Academic Year.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'SchoolFullAcademicYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'School Full Academic Year', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'SchoolFullAcademicYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001763', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'SchoolFullAcademicYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20744', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'SchoolFullAcademicYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether a student participated in an assessment.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RefAssessmentParticipationIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Registration Participation Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RefAssessmentParticipationIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000025', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RefAssessmentParticipationIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19025', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RefAssessmentParticipationIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The reason for which an assessment is designed or delivered.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RefAssessmentPurposeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Purpose', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RefAssessmentPurposeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000026', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RefAssessmentPurposeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19026', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RefAssessmentPurposeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The primary reason a student is not tested.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RefAssessmentReasonNotTestedId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Reason Not Tested', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RefAssessmentReasonNotTestedId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000228', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RefAssessmentReasonNotTestedId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19228', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RefAssessmentReasonNotTestedId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The primary reason a participant did not complete an assessment.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RefAssessmentReasonNotCompletingId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Registration Reason Not Completing', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RefAssessmentReasonNotCompletingId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000540', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RefAssessmentReasonNotCompletingId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19531', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RefAssessmentReasonNotCompletingId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The grade or developmental level of a student when registering for an assessment, when taking the assessment, or for which an assessment is design.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RefGradeLevelToBeAssessedId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Grade Level When Assessed, Assessment Registration Grade Level to Be Assessed', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RefGradeLevelToBeAssessedId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000126, 001057', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RefGradeLevelToBeAssessedId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19126, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20063', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RefGradeLevelToBeAssessedId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RefGradeLevelToBeAssessedId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The grade or developmental level of a student when registering for an assessment, when taking the assessment, or for which an assessment is design.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RefGradeLevelWhenAssessedId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Grade Level When Assessed, Assessment Registration Grade Level to Be Assessed', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RefGradeLevelWhenAssessedId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000126, 001057', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RefGradeLevelWhenAssessedId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19126, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20063', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RefGradeLevelWhenAssessedId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RefGradeLevelWhenAssessedId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The completion and scoring status for an instance of a person taking an assessment.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RefAssessmentRegistrationCompletionStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Registration Completion Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RefAssessmentRegistrationCompletionStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001541', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RefAssessmentRegistrationCompletionStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20516', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RefAssessmentRegistrationCompletionStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

