CREATE TABLE [dbo].[IEPPresentLevel] (
    [IEPPresentLevelId]           INT            IDENTITY (1, 1) NOT NULL,
    [IndividualizedProgramId]     INT            NOT NULL,
    [AcademicDescription]         NVARCHAR (MAX) NULL,
    [FunctionalDescription]       NVARCHAR (MAX) NULL,
    [GeneralEducationDescription] NVARCHAR (MAX) NULL,
    [ParentConcernDescription]    NVARCHAR (MAX) NULL,
    [PreschoolDescription]        NVARCHAR (MAX) NULL,
    [StudentConcernDescription]   NVARCHAR (MAX) NULL,
    [StudentStrengthsDescription] NVARCHAR (MAX) NULL,
    [RecordStartDateTime]         DATETIME       NULL,
    [RecordEndDateTime]           DATETIME       NULL,
    [RecordStatusId]              INT            NULL,
    [DataCollectionId]            INT            NULL,
    CONSTRAINT [PK_IEPPresentLevel] PRIMARY KEY CLUSTERED ([IEPPresentLevelId] ASC),
    CONSTRAINT [FK_IEPPresentLevel_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_IEPPresentLevel_IndividualizedProgram] FOREIGN KEY ([IndividualizedProgramId]) REFERENCES [dbo].[IndividualizedProgram] ([IndividualizedProgramId]),
    CONSTRAINT [FK_IEPPresentLevel_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A level of ability or performance used as a baseline in an IEP. These detailed records may be included in a progress report, such as a progress report for an IEP.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IEPPresentLevel';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IEPPresentLevel';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'How the child''s disability affects the child''s academic achievement.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IEPPresentLevel', @level2type = N'COLUMN', @level2name = N'AcademicDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'IEP Present Level Academic Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IEPPresentLevel', @level2type = N'COLUMN', @level2name = N'AcademicDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001705', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IEPPresentLevel', @level2type = N'COLUMN', @level2name = N'AcademicDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20686', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IEPPresentLevel', @level2type = N'COLUMN', @level2name = N'AcademicDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'How the child''s disability affects the child''s functional performance.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IEPPresentLevel', @level2type = N'COLUMN', @level2name = N'FunctionalDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'IEP Present Level Functional Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IEPPresentLevel', @level2type = N'COLUMN', @level2name = N'FunctionalDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001706', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IEPPresentLevel', @level2type = N'COLUMN', @level2name = N'FunctionalDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20687', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IEPPresentLevel', @level2type = N'COLUMN', @level2name = N'FunctionalDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'How the child''s disability affects the child''s involvement and progress in the general education curriculum.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IEPPresentLevel', @level2type = N'COLUMN', @level2name = N'GeneralEducationDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'IEP Present Level General Education Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IEPPresentLevel', @level2type = N'COLUMN', @level2name = N'GeneralEducationDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001707', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IEPPresentLevel', @level2type = N'COLUMN', @level2name = N'GeneralEducationDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20688', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IEPPresentLevel', @level2type = N'COLUMN', @level2name = N'GeneralEducationDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Parent’s explanation of their interest in or concerns about the student’s participation in special education.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IEPPresentLevel', @level2type = N'COLUMN', @level2name = N'ParentConcernDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'IEP Present Level Parent Concern Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IEPPresentLevel', @level2type = N'COLUMN', @level2name = N'ParentConcernDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001710', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IEPPresentLevel', @level2type = N'COLUMN', @level2name = N'ParentConcernDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20691', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IEPPresentLevel', @level2type = N'COLUMN', @level2name = N'ParentConcernDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'For preschool children, as appropriate, how the disability affects the child''s participation in appropriate activities.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IEPPresentLevel', @level2type = N'COLUMN', @level2name = N'PreschoolDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'IEP Present Level Preschool Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IEPPresentLevel', @level2type = N'COLUMN', @level2name = N'PreschoolDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001708', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IEPPresentLevel', @level2type = N'COLUMN', @level2name = N'PreschoolDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20689', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IEPPresentLevel', @level2type = N'COLUMN', @level2name = N'PreschoolDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Student’s explanation of his or her interest in or concerns about participation in special education.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IEPPresentLevel', @level2type = N'COLUMN', @level2name = N'StudentConcernDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'IEP Present Level Student Concern Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IEPPresentLevel', @level2type = N'COLUMN', @level2name = N'StudentConcernDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001711', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IEPPresentLevel', @level2type = N'COLUMN', @level2name = N'StudentConcernDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20692', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IEPPresentLevel', @level2type = N'COLUMN', @level2name = N'StudentConcernDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Explanation of perceived strengths and abilities of the student.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IEPPresentLevel', @level2type = N'COLUMN', @level2name = N'StudentStrengthsDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'IEP Present Level Student Strengths Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IEPPresentLevel', @level2type = N'COLUMN', @level2name = N'StudentStrengthsDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001709', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IEPPresentLevel', @level2type = N'COLUMN', @level2name = N'StudentStrengthsDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20690', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IEPPresentLevel', @level2type = N'COLUMN', @level2name = N'StudentStrengthsDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IEPPresentLevel', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IEPPresentLevel', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IEPPresentLevel', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IEPPresentLevel', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IEPPresentLevel', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IEPPresentLevel', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IEPPresentLevel', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IEPPresentLevel', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IEPPresentLevel', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

