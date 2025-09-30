CREATE TABLE [dbo].[K12SchoolStatus] (
    [K12SchoolStatusId]                                               INT           IDENTITY (1, 1) NOT NULL,
    [K12SchoolId]                                                     INT           NOT NULL,
    [ConsolidatedMepFundsStatus]                                      BIT           NULL,
    [ProgressAcheivingEnglishLearnerProficiencyStateDefinedStatus]    NVARCHAR (50) NULL,
    [RefMagnetSpecialProgramId]                                       INT           NULL,
    [RefAlternativeSchoolFocusId]                                     INT           NULL,
    [RefInternetAccessId]                                             INT           NULL,
    [RefRestructuringActionId]                                        INT           NULL,
    [RefTitleISchoolStatusId]                                         INT           NULL,
    [RefNSLPStatusId]                                                 INT           NULL,
    [RefSchoolDangerousStatusId]                                      INT           NULL,
    [RefSchoolImprovementStatusId]                                    INT           NULL,
    [RefProgressAchievingEnglishLanguageProficiencyIndicatorStatusId] INT           NULL,
    [RefComprehensiveAndTargetedSupportId]                            INT           NULL,
    [RefComprehensiveSupportId]                                       INT           NULL,
    [RefTargetedSupportId]                                            INT           NULL,
    [RefNationalSchoolLunchProgramStatusId]                           INT           NULL,
    [RefVirtualSchoolStatusId]                                        INT           NULL,
    [RefBlendedLearningModelTypeId]                                   INT           NULL,
    [RecordStartDateTime]                                             DATETIME      NULL,
    [RecordEndDateTime]                                               DATETIME      NULL,
    [RecordStatusId]                                                  INT           NULL,
    [DataCollectionId]                                                INT           NULL,
    CONSTRAINT [PK_K12SchoolStatus] PRIMARY KEY CLUSTERED ([K12SchoolStatusId] ASC),
    CONSTRAINT [FK_K12SchoolStatus_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_K12SchoolStatus_K12School] FOREIGN KEY ([K12SchoolId]) REFERENCES [dbo].[K12School] ([K12SchoolId]),
    CONSTRAINT [FK_K12SchoolStatus_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_K12SchoolStatus_RefAlternativeSchoolFocus] FOREIGN KEY ([RefAlternativeSchoolFocusId]) REFERENCES [dbo].[RefAlternativeSchoolFocus] ([RefAlternativeSchoolFocusId]),
    CONSTRAINT [FK_K12SchoolStatus_RefBlendedLearningModelType] FOREIGN KEY ([RefBlendedLearningModelTypeId]) REFERENCES [dbo].[RefBlendedLearningModelType] ([RefBlendedLearningModelTypeId]),
    CONSTRAINT [FK_K12SchoolStatus_RefComprehensiveAndTargetedSupport] FOREIGN KEY ([RefComprehensiveAndTargetedSupportId]) REFERENCES [dbo].[RefComprehensiveAndTargetedSupport] ([RefComprehensiveAndTargetedSupportId]),
    CONSTRAINT [FK_K12SchoolStatus_RefComprehensiveSupport] FOREIGN KEY ([RefComprehensiveSupportId]) REFERENCES [dbo].[RefComprehensiveSupport] ([RefComprehensiveSupportId]),
    CONSTRAINT [FK_K12SchoolStatus_RefInternetAccess] FOREIGN KEY ([RefInternetAccessId]) REFERENCES [dbo].[RefInternetAccess] ([RefInternetAccessId]),
    CONSTRAINT [FK_K12SchoolStatus_RefMagnetSpecialProgram] FOREIGN KEY ([RefMagnetSpecialProgramId]) REFERENCES [dbo].[RefMagnetSpecialProgram] ([RefMagnetSpecialProgramId]),
    CONSTRAINT [FK_K12SchoolStatus_RefNationalSchoolLunchProgramStatus] FOREIGN KEY ([RefNationalSchoolLunchProgramStatusId]) REFERENCES [dbo].[RefNationalSchoolLunchProgramStatus] ([RefNationalSchoolLunchProgramStatusId]),
    CONSTRAINT [FK_K12SchoolStatus_RefNSLPStatus] FOREIGN KEY ([RefNSLPStatusId]) REFERENCES [dbo].[RefNSLPStatus] ([RefNSLPStatusId]),
    CONSTRAINT [FK_K12SchoolStatus_RefProgressAchievingEnglishLanguageProficiencyIndicatorStatus] FOREIGN KEY ([RefProgressAchievingEnglishLanguageProficiencyIndicatorStatusId]) REFERENCES [dbo].[RefProgressAchievingEnglishLanguageProficiencyIndicatorStatus] ([RefProgressAchievingEnglishLanguageProficiencyIndicatorStatusId]),
    CONSTRAINT [FK_K12SchoolStatus_RefRestructuringAction] FOREIGN KEY ([RefRestructuringActionId]) REFERENCES [dbo].[RefRestructuringAction] ([RefRestructuringActionId]),
    CONSTRAINT [FK_K12SchoolStatus_RefSchoolDangerousStatus] FOREIGN KEY ([RefSchoolDangerousStatusId]) REFERENCES [dbo].[RefSchoolDangerousStatus] ([RefSchoolDangerousStatusId]),
    CONSTRAINT [FK_K12SchoolStatus_RefSchoolImprovementStatus] FOREIGN KEY ([RefSchoolImprovementStatusId]) REFERENCES [dbo].[RefSchoolImprovementStatus] ([RefSchoolImprovementStatusId]),
    CONSTRAINT [FK_K12SchoolStatus_RefTargetedSupport] FOREIGN KEY ([RefTargetedSupportId]) REFERENCES [dbo].[RefTargetedSupport] ([RefTargetedSupportId]),
    CONSTRAINT [FK_K12SchoolStatus_RefTitle1SchoolStatus] FOREIGN KEY ([RefTitleISchoolStatusId]) REFERENCES [dbo].[RefTitleISchoolStatus] ([RefTitleISchoolStatusId]),
    CONSTRAINT [FK_K12SchoolStatus_RefVirtualSchoolStatus] FOREIGN KEY ([RefVirtualSchoolStatusId]) REFERENCES [dbo].[RefVirtualSchoolStatus] ([RefVirtualSchoolStatusId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The collection of status values for a K12 school.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether the school has a school-wide program, as defined by current law, in which federal Migrant Education Program (MEP) funds are consolidated.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'ConsolidatedMepFundsStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Consolidated Migrant Education Program Funds Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'ConsolidatedMepFundsStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000542', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'ConsolidatedMepFundsStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19533', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'ConsolidatedMepFundsStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The state defined status assigned to the school''s performance on the progress of achieving the English language proficiency indicator.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'ProgressAcheivingEnglishLearnerProficiencyStateDefinedStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Progress Achieving English Language Proficiency State Defined Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'ProgressAcheivingEnglishLearnerProficiencyStateDefinedStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001916', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'ProgressAcheivingEnglishLearnerProficiencyStateDefinedStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20897', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'ProgressAcheivingEnglishLearnerProficiencyStateDefinedStatus';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'ProgressAcheivingEnglishLearnerProficiencyStateDefinedStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A school that has been designed: 1) to attract students of different racial/ethnic backgrounds for the purpose of reducing, preventing, or eliminating racial isolation; and/or 2)to provide an academic or social focus on a particular theme (e.g., science/math, performing arts, gifted/talented, career academy or foreign language).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'RefMagnetSpecialProgramId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Magnet or Special Program Emphasis School', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'RefMagnetSpecialProgramId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000181', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'RefMagnetSpecialProgramId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19181', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'RefMagnetSpecialProgramId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of the specific group of students whose needs the alternative school is designed to meet.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'RefAlternativeSchoolFocusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Alternative School Focus Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'RefAlternativeSchoolFocusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000015', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'RefAlternativeSchoolFocusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19015', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'RefAlternativeSchoolFocusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of internet access available.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'RefInternetAccessId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Internet Access', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'RefInternetAccessId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000587', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'RefInternetAccessId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19580', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'RefInternetAccessId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The types of actions being implemented in Title I schools as a result of the school being in an improvement status of restructuring – year 2 (implementation year).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'RefRestructuringActionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Restructuring Action', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'RefRestructuringActionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000232', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'RefRestructuringActionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19232', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'RefRestructuringActionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication that a school is designated under state and federal regulations as being eligible for participation in programs authorized by Title I of ESEA as amended and whether it has a Title I program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'RefTitleISchoolStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Title I School Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'RefTitleISchoolStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000285', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'RefTitleISchoolStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19285', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'RefTitleISchoolStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The category used to report the school''s performance on the progress of achieving the English language proficiency indicator.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'RefProgressAchievingEnglishLanguageProficiencyIndicatorStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Progress Achieving English Language Proficiency Indicator Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'RefProgressAchievingEnglishLanguageProficiencyIndicatorStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001915', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'RefProgressAchievingEnglishLanguageProficiencyIndicatorStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20896', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'RefProgressAchievingEnglishLanguageProficiencyIndicatorStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'RefProgressAchievingEnglishLanguageProficiencyIndicatorStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The classification of participation by a school in the National School Lunch Program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'RefNationalSchoolLunchProgramStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'National School Lunch Program Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'RefNationalSchoolLunchProgramStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001767', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'RefNationalSchoolLunchProgramStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20748', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'RefNationalSchoolLunchProgramStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of the extent to which a public school offers instruction in which students and teachers are separated by time and/or location, and interaction occurs via computers and/or telecommunications technologies.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'RefVirtualSchoolStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Virtual School Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'RefVirtualSchoolStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001766', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'RefVirtualSchoolStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20747', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'RefVirtualSchoolStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A type of formal education program in which a student learns at least in part through online learning, with some element of student control over time, place, path, and/or pace; at least in part in a supervised brick-and-mortar location away from home; and the modalities along each student’s learning path within a course or subject are connected to provide an integrated learning experience.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'RefBlendedLearningModelTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Blended Learning Model Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'RefBlendedLearningModelTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001287', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'RefBlendedLearningModelTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20253', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'RefBlendedLearningModelTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'RefBlendedLearningModelTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

