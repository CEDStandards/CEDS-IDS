CREATE TABLE [dbo].[Assessment] (
    [AssessmentId]                                     INT            IDENTITY (1, 1) NOT NULL,
    [Identifier]                                       NVARCHAR (100) NULL,
    [IdentificationSystem]                             INT            NULL,
    [GUID]                                             NVARCHAR (40)  NULL,
    [Title]                                            NVARCHAR (60)  NULL,
    [ShortName]                                        NVARCHAR (30)  NULL,
    [RefAcademicSubjectId]                             INT            NOT NULL,
    [Objective]                                        NVARCHAR (100) NULL,
    [Provider]                                         NVARCHAR (30)  NULL,
    [RefAssessmentPurposeId]                           INT            NULL,
    [RefAssessmentTypeId]                              INT            NULL,
    [RefAssessmentTypeAdministeredId]                  INT            NULL,
    [AssessmentRevisionDate]                           DATE           NULL,
    [AssessmentFamilyTitle]                            NVARCHAR (60)  NOT NULL,
    [AssessmentFamilyShortName]                        NVARCHAR (30)  NULL,
    [RecordStartDateTime]                              DATETIME       NULL,
    [RecordEndDateTime]                                DATETIME       NULL,
    [RecordStatusId]                                   INT            NULL,
    [DataCollectionId]                                 INT            NULL,
    [RefAssessmentTypeAdministeredToEnglishLearnersId] INT            NULL,
    CONSTRAINT [PK_Assessment] PRIMARY KEY CLUSTERED ([AssessmentId] ASC),
    CONSTRAINT [FK_Assessment_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_Assessment_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_Assessment_RefAssessmentPurpose] FOREIGN KEY ([RefAssessmentPurposeId]) REFERENCES [dbo].[RefAssessmentPurpose] ([RefAssessmentPurposeId]),
    CONSTRAINT [FK_Assessment_RefAssessmentType] FOREIGN KEY ([RefAssessmentTypeId]) REFERENCES [dbo].[RefAssessmentType] ([RefAssessmentTypeId]),
    CONSTRAINT [FK_Assessment_RefAssessmentTypeAdministered] FOREIGN KEY ([RefAssessmentTypeAdministeredId]) REFERENCES [dbo].[RefAssessmentTypeAdministered] ([RefAssessmentTypeAdministeredId]),
    CONSTRAINT [FK_Assessment_RefAssessmentTypeAdministeredToEnglishLearners] FOREIGN KEY ([RefAssessmentTypeAdministeredToEnglishLearnersId]) REFERENCES [dbo].[RefAssessmentTypeAdministeredToEnglishLearners] ([RefAssessmentTypeAdministeredToEnglishLearnersId]),
    CONSTRAINT [FK_Assessment_RefRefAcademicSubject] FOREIGN KEY ([RefAcademicSubjectId]) REFERENCES [dbo].[RefAcademicSubject] ([RefAcademicSubjectId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An instrument used to evaluate a person typically having at-least one AssessmentForm, AssessmentSection, and AssessmentItem.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'PK', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'AssessmentId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A unique number or alphanumeric code assigned to an assessment by a school, school system, a state, or other agency or entity.  This may be the publisher identifier.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'Identifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Identifier', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'Identifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001067', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'Identifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19152', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'Identifier';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'Identifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A coding scheme that is used for identification and record-keeping purposes by schools, social services, or other agencies to refer to an assessment.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'IdentificationSystem';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Identification System', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'IdentificationSystem';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000365', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'IdentificationSystem';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19158', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'IdentificationSystem';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'IdentificationSystem';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The globally unique identifier of an Assessment using a RFC 4122 compliant hexadecimal string.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'GUID';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment GUID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'GUID';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000981', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'GUID';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19982', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'GUID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'GUID';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The title or name of the assessment.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'Title';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Title', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'Title';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000028', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'Title';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19028', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'Title';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'Title';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An abbreviated title for an assessment.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'ShortName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Short Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'ShortName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000931', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'ShortName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19932', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'ShortName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'ShortName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The description of the academic content or subject area (e.g., arts, mathematics, reading, or a foreign language) being evaluated.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'RefAcademicSubjectId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Academic Subject', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'RefAcademicSubjectId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000021', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'RefAcademicSubjectId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19021', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'RefAcademicSubjectId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'RefAcademicSubjectId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'This is the objective that the assessment is measuring.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'Objective';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Objective', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'Objective';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000382', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'Objective';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19373', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'Objective';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'Objective';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Identifies the provider or publisher of the assessment.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'Provider';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Provider', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'Provider';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001006', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'Provider';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20009', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'Provider';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'Provider';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The reason for which an assessment is designed or delivered.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'RefAssessmentPurposeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Purpose', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'RefAssessmentPurposeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000026', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'RefAssessmentPurposeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19026', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'RefAssessmentPurposeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'RefAssessmentPurposeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The category of an assessment based on format and content.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'RefAssessmentTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'RefAssessmentTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000029', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'RefAssessmentTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19029', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'RefAssessmentTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'RefAssessmentTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The types of assessments administered to children with disabilities.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'RefAssessmentTypeAdministeredId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Type Administered to Children With Disabilities', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'RefAssessmentTypeAdministeredId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000415', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'RefAssessmentTypeAdministeredId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19405', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'RefAssessmentTypeAdministeredId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'RefAssessmentTypeAdministeredId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The month, day, and year that the conceptual design for the assessment was most recently revised substantially.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'AssessmentRevisionDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Revision Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'AssessmentRevisionDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001544', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'AssessmentRevisionDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20519', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'AssessmentRevisionDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'AssessmentRevisionDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The full title of the Assessment Family. An Assessment Family is a set of assessments with a common name, jurisdiction, or focus, such as Graduate Record Exam or National Assessment of Educational Progress.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'AssessmentFamilyTitle';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Family Title, Assessment Administration Assessment Family', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'AssessmentFamilyTitle';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000932, 000967', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'AssessmentFamilyTitle';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19933, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19968', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'AssessmentFamilyTitle';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'AssessmentFamilyTitle';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The abbreviated title of the Assessment Family. An Assessment Family is a set of assessments with a common name, jurisdiction, or focus.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'AssessmentFamilyShortName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Family Short Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'AssessmentFamilyShortName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000933', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'AssessmentFamilyShortName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19934', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'AssessmentFamilyShortName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'AssessmentFamilyShortName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The types of assessments administered to English Learners.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'RefAssessmentTypeAdministeredToEnglishLearnersId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Type Administered to English Learners', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'RefAssessmentTypeAdministeredToEnglishLearnersId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001995', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'RefAssessmentTypeAdministeredToEnglishLearnersId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=22974', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'RefAssessmentTypeAdministeredToEnglishLearnersId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Assessment', @level2type = N'COLUMN', @level2name = N'RefAssessmentTypeAdministeredToEnglishLearnersId';

