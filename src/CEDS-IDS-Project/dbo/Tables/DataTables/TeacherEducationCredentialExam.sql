CREATE TABLE [dbo].[TeacherEducationCredentialExam] (
    [RefTeacherEducationCredentialExamId] INT      NULL,
    [RefTeacherEducationExamScoreTypeId]  INT      NULL,
    [RefTeacherEducationTestCompanyId]    INT      NULL,
    [ProgramParticipationTeacherPrepId]   INT      NOT NULL,
    [TeacherEducationCredentialExamId]    INT      IDENTITY (1, 1) NOT NULL,
    [RecordStartDateTime]                 DATETIME NULL,
    [RecordEndDateTime]                   DATETIME NULL,
    [RecordStatusId]                      INT      NULL,
    [DataCollectionId]                    INT      NULL,
    [AssessmentResultId]                  INT      NULL,
    CONSTRAINT [PK_TeacherEduCredentialExam] PRIMARY KEY CLUSTERED ([TeacherEducationCredentialExamId] ASC),
    CONSTRAINT [FK_TeacherEducationCredentialExam_AssessmentResult] FOREIGN KEY ([AssessmentResultId]) REFERENCES [dbo].[AssessmentResult] ([AssessmentResultId]),
    CONSTRAINT [FK_TeacherEducationCredentialExam_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_TeacherEducationCredentialExam_PrgmParticipationTeacherPrep] FOREIGN KEY ([ProgramParticipationTeacherPrepId]) REFERENCES [dbo].[ProgramParticipationTeacherPrep] ([ProgramParticipationTeacherPrepId]),
    CONSTRAINT [FK_TeacherEducationCredentialExam_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_TeacherEducationCredentialExam_RefTeacherEducationTestCompny] FOREIGN KEY ([RefTeacherEducationTestCompanyId]) REFERENCES [dbo].[RefTeacherEducationTestCompany] ([RefTeacherEducationTestCompanyId]),
    CONSTRAINT [FK_TeacherEduCredentialExam_RefTeacherEduCredentialExam] FOREIGN KEY ([RefTeacherEducationCredentialExamId]) REFERENCES [dbo].[RefTeacherEducationCredentialExam] ([RefTeacherEducationCredentialExamId]),
    CONSTRAINT [FK_TeacherEduCredentialExam_RefTeacherEduExamScoreType] FOREIGN KEY ([RefTeacherEducationExamScoreTypeId]) REFERENCES [dbo].[RefTeacherEducationExamScoreType] ([RefTeacherEducationExamScoreTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The exam and score of a person on a teaching credential exam.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TeacherEducationCredentialExam';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TeacherEducationCredentialExam';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of examination used to assess teacher candidate''s knowledge and skills.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TeacherEducationCredentialExam', @level2type = N'COLUMN', @level2name = N'RefTeacherEducationCredentialExamId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Teacher Education Credential Exam Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TeacherEducationCredentialExam', @level2type = N'COLUMN', @level2name = N'RefTeacherEducationCredentialExamId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000773', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TeacherEducationCredentialExam', @level2type = N'COLUMN', @level2name = N'RefTeacherEducationCredentialExamId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19756', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TeacherEducationCredentialExam', @level2type = N'COLUMN', @level2name = N'RefTeacherEducationCredentialExamId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of the type of credential exam associated with a given exam score.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TeacherEducationCredentialExam', @level2type = N'COLUMN', @level2name = N'RefTeacherEducationExamScoreTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Teacher Education Credential Exam Score Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TeacherEducationCredentialExam', @level2type = N'COLUMN', @level2name = N'RefTeacherEducationExamScoreTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000774', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TeacherEducationCredentialExam', @level2type = N'COLUMN', @level2name = N'RefTeacherEducationExamScoreTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19757', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TeacherEducationCredentialExam', @level2type = N'COLUMN', @level2name = N'RefTeacherEducationExamScoreTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The name of the company that provides the examination used in the teacher education program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TeacherEducationCredentialExam', @level2type = N'COLUMN', @level2name = N'RefTeacherEducationTestCompanyId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Teacher Education Test Company', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TeacherEducationCredentialExam', @level2type = N'COLUMN', @level2name = N'RefTeacherEducationTestCompanyId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000766', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TeacherEducationCredentialExam', @level2type = N'COLUMN', @level2name = N'RefTeacherEducationTestCompanyId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19748', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TeacherEducationCredentialExam', @level2type = N'COLUMN', @level2name = N'RefTeacherEducationTestCompanyId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TeacherEducationCredentialExam', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TeacherEducationCredentialExam', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TeacherEducationCredentialExam', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TeacherEducationCredentialExam', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TeacherEducationCredentialExam', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TeacherEducationCredentialExam', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TeacherEducationCredentialExam', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TeacherEducationCredentialExam', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TeacherEducationCredentialExam', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TeacherEducationCredentialExam', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

