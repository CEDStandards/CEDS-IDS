CREATE TABLE [dbo].[PsProgram] (
    [PsProgramId]                   INT            IDENTITY (1, 1) NOT NULL,
    [OrganizationId]                INT            NOT NULL,
    [RefCipVersionId]               INT            NULL,
    [RefCipCodeId]                  INT            NULL,
    [ProgramLengthHours]            DECIMAL (9, 2) NULL,
    [RefProgramLengthHoursTypeId]   INT            NULL,
    [NormalLengthTimeForCompletion] NVARCHAR (60)  NULL,
    [RefTimeForCompletionUnitsId]   INT            NULL,
    [RefPSProgramLevelId]           INT            NULL,
    [RefDQPCategoriesOfLearningId]  INT            NULL,
    [RecordStartDateTime]           DATETIME       NULL,
    [RecordEndDateTime]             DATETIME       NULL,
    [RecordStatusId]                INT            NULL,
    [DataCollectionId]              INT            NULL,
    CONSTRAINT [PK_PsProgram] PRIMARY KEY CLUSTERED ([PsProgramId] ASC),
    CONSTRAINT [FK_PsProgram_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_PsProgram_Organization] FOREIGN KEY ([OrganizationId]) REFERENCES [dbo].[Organization] ([OrganizationId]),
    CONSTRAINT [FK_PsProgram_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_PsProgram_RefCipCode] FOREIGN KEY ([RefCipCodeId]) REFERENCES [dbo].[RefCipCode] ([RefCipCodeId]),
    CONSTRAINT [FK_PsProgram_RefCipVersion] FOREIGN KEY ([RefCipVersionId]) REFERENCES [dbo].[RefCipVersion] ([RefCipVersionId]),
    CONSTRAINT [FK_PsProgram_RefDQPCategoriesOfLearning] FOREIGN KEY ([RefDQPCategoriesOfLearningId]) REFERENCES [dbo].[RefDQPCategoriesOfLearning] ([RefDQPCategoriesOfLearningId]),
    CONSTRAINT [FK_PsProgram_RefProgramLengthHoursType] FOREIGN KEY ([RefProgramLengthHoursTypeId]) REFERENCES [dbo].[RefProgramLengthHoursType] ([RefProgramLengthHoursTypeId]),
    CONSTRAINT [FK_PSProgram_RefPSProgramLevel] FOREIGN KEY ([RefPSProgramLevelId]) REFERENCES [dbo].[RefPSProgramLevel] ([RefPSProgramLevelId]),
    CONSTRAINT [FK_PsProgram_RefTimeForCompletionUnits] FOREIGN KEY ([RefTimeForCompletionUnitsId]) REFERENCES [dbo].[RefTimeForCompletionUnits] ([RefTimeForCompletionUnitsId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The attributes for a postsecondary program that define the type program, the program length, and other requirements for a degree or certificate. ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsProgram';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsProgram';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsProgram', @level2type = N'COLUMN', @level2name = N'PsProgramId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - Organization', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsProgram', @level2type = N'COLUMN', @level2name = N'OrganizationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The version of CIP being reported.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsProgram', @level2type = N'COLUMN', @level2name = N'RefCipVersionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Classification of Instructional Program Version', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsProgram', @level2type = N'COLUMN', @level2name = N'RefCipVersionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000045', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsProgram', @level2type = N'COLUMN', @level2name = N'RefCipVersionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19045', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsProgram', @level2type = N'COLUMN', @level2name = N'RefCipVersionId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsProgram', @level2type = N'COLUMN', @level2name = N'RefCipVersionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A six-digit code in the form xx.xxxx that identifies instructional program specialties within educational institutions.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsProgram', @level2type = N'COLUMN', @level2name = N'RefCipCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Classification of Instructional Program Code', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsProgram', @level2type = N'COLUMN', @level2name = N'RefCipCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000043', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsProgram', @level2type = N'COLUMN', @level2name = N'RefCipCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19043', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsProgram', @level2type = N'COLUMN', @level2name = N'RefCipCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsProgram', @level2type = N'COLUMN', @level2name = N'RefCipCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The normal length in credit/contact hours of a person''s program as published in the institution''s catalogue, website, or other official documents.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsProgram', @level2type = N'COLUMN', @level2name = N'ProgramLengthHours';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Program Length Hours', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsProgram', @level2type = N'COLUMN', @level2name = N'ProgramLengthHours';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000223', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsProgram', @level2type = N'COLUMN', @level2name = N'ProgramLengthHours';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19223', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsProgram', @level2type = N'COLUMN', @level2name = N'ProgramLengthHours';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsProgram', @level2type = N'COLUMN', @level2name = N'ProgramLengthHours';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of hours (credit or contact) by which the normal length of a program of study is measured.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsProgram', @level2type = N'COLUMN', @level2name = N'RefProgramLengthHoursTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Program Length Hours Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsProgram', @level2type = N'COLUMN', @level2name = N'RefProgramLengthHoursTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000224', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsProgram', @level2type = N'COLUMN', @level2name = N'RefProgramLengthHoursTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19224', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsProgram', @level2type = N'COLUMN', @level2name = N'RefProgramLengthHoursTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsProgram', @level2type = N'COLUMN', @level2name = N'RefProgramLengthHoursTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The amount of time necessary for a person to complete all requirements for a degree or certificate according to the institution''s catalog. This is typically 4 years (8 semesters or trimesters, or 12 quarters, excluding summer terms) for a bachelor''s degree in a standard term-based institution; 2 years (4 semesters or trimesters, or 6 quarters, excluding summer terms) for an associate''s degree in a standard term-based institution; and the various scheduled times for certificate programs.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsProgram', @level2type = N'COLUMN', @level2name = N'NormalLengthTimeForCompletion';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Normal Length of Time for Completion', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsProgram', @level2type = N'COLUMN', @level2name = N'NormalLengthTimeForCompletion';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000197', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsProgram', @level2type = N'COLUMN', @level2name = N'NormalLengthTimeForCompletion';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19197', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsProgram', @level2type = N'COLUMN', @level2name = N'NormalLengthTimeForCompletion';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsProgram', @level2type = N'COLUMN', @level2name = N'NormalLengthTimeForCompletion';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The unit of measurement for length of time for completion.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsProgram', @level2type = N'COLUMN', @level2name = N'RefTimeForCompletionUnitsId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Normal Length of Time for Completion Units', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsProgram', @level2type = N'COLUMN', @level2name = N'RefTimeForCompletionUnitsId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000198', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsProgram', @level2type = N'COLUMN', @level2name = N'RefTimeForCompletionUnitsId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19198', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsProgram', @level2type = N'COLUMN', @level2name = N'RefTimeForCompletionUnitsId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsProgram', @level2type = N'COLUMN', @level2name = N'RefTimeForCompletionUnitsId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The level describing the concentration of study for a postsecondary program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsProgram', @level2type = N'COLUMN', @level2name = N'RefPSProgramLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Postsecondary Program Level', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsProgram', @level2type = N'COLUMN', @level2name = N'RefPSProgramLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001616', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsProgram', @level2type = N'COLUMN', @level2name = N'RefPSProgramLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20595', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsProgram', @level2type = N'COLUMN', @level2name = N'RefPSProgramLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsProgram', @level2type = N'COLUMN', @level2name = N'RefPSProgramLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The Lumina Foundation''s Degree Qualifications Profile offers reference points for what students should know and be able to do upon completion of associate, bachelor''s and master''s degrees – in any field of study. The DQP Categories of Learning provide a profile of what degrees mean within which specific proficiencies may be defined.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsProgram', @level2type = N'COLUMN', @level2name = N'RefDQPCategoriesOfLearningId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'DQP Categories of Learning', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsProgram', @level2type = N'COLUMN', @level2name = N'RefDQPCategoriesOfLearningId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001641', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsProgram', @level2type = N'COLUMN', @level2name = N'RefDQPCategoriesOfLearningId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20622', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsProgram', @level2type = N'COLUMN', @level2name = N'RefDQPCategoriesOfLearningId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsProgram', @level2type = N'COLUMN', @level2name = N'RefDQPCategoriesOfLearningId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsProgram', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsProgram', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsProgram', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsProgram', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsProgram', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsProgram', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsProgram', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsProgram', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsProgram', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsProgram', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

