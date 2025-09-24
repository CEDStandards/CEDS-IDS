CREATE TABLE [dbo].[K12ProgramOrService] (
    [K12ProgramOrServiceId]            INT      IDENTITY (1, 1) NOT NULL,
    [OrganizationId]                   INT      NOT NULL,
    [ProgramInMultiplePurposeFacility] BIT      NULL,
    [RefPrekindergartenDailyLengthId]  INT      NULL,
    [RefKindergartenDailyLengthId]     INT      NULL,
    [RefProgramGiftedEligibilityId]    INT      NULL,
    [RefMepSessionTypeId]              INT      NULL,
    [RefMepProjectTypeId]              INT      NULL,
    [RefTitleIInstructionalServicesId] INT      NULL,
    [RefTitleIProgramTypeId]           INT      NULL,
    [RecordStartDateTime]              DATETIME NULL,
    [RecordEndDateTime]                DATETIME NULL,
    [RecordStatusId]                   INT      NULL,
    [DataCollectionId]                 INT      NULL,
    CONSTRAINT [PK_K12LEAProgram] PRIMARY KEY CLUSTERED ([K12ProgramOrServiceId] ASC),
    CONSTRAINT [FK_K12LeaProgramOrService_Organization] FOREIGN KEY ([OrganizationId]) REFERENCES [dbo].[Organization] ([OrganizationId]),
    CONSTRAINT [FK_K12LEAProgramOrService_RefMepProjectType] FOREIGN KEY ([RefMepProjectTypeId]) REFERENCES [dbo].[RefMepProjectType] ([RefMepProjectTypeId]),
    CONSTRAINT [FK_K12LEAProgramOrService_RefMepSessionType] FOREIGN KEY ([RefMepSessionTypeId]) REFERENCES [dbo].[RefMepSessionType] ([RefMepSessionTypeId]),
    CONSTRAINT [FK_K12LEAProgramOrService_RefProgramDayLength] FOREIGN KEY ([RefPrekindergartenDailyLengthId]) REFERENCES [dbo].[RefProgramDayLength] ([RefProgramDayLengthId]),
    CONSTRAINT [FK_K12LEAProgramOrService_RefProgramDayLength1] FOREIGN KEY ([RefKindergartenDailyLengthId]) REFERENCES [dbo].[RefProgramDayLength] ([RefProgramDayLengthId]),
    CONSTRAINT [FK_K12LEAProgramOrService_RefProgramGiftedEligibility] FOREIGN KEY ([RefProgramGiftedEligibilityId]) REFERENCES [dbo].[RefProgramGiftedEligibility] ([RefProgramGiftedEligibilityId]),
    CONSTRAINT [FK_K12LEAProgramOrService_RefTitleIInstructServices] FOREIGN KEY ([RefTitleIInstructionalServicesId]) REFERENCES [dbo].[RefTitleIInstructionalServices] ([RefTitleIInstructionalServicesId]),
    CONSTRAINT [FK_K12LEAProgramOrService_RefTitleIProgramType] FOREIGN KEY ([RefTitleIProgramTypeId]) REFERENCES [dbo].[RefTitleIProgramType] ([RefTitleIProgramTypeId]),
    CONSTRAINT [FK_K12ProgramOrService_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_K12ProgramOrService_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information on the programs and services offered by an LEA or school.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12ProgramOrService';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12ProgramOrService';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate key from K12LEA.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12ProgramOrService', @level2type = N'COLUMN', @level2name = N'OrganizationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An institution/facility/program that serves more than one programming purpose.  For example, the same facility may run both a juvenile correction program and a juvenile detention program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12ProgramOrService', @level2type = N'COLUMN', @level2name = N'ProgramInMultiplePurposeFacility';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Program in Multiple Purpose Facility', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12ProgramOrService', @level2type = N'COLUMN', @level2name = N'ProgramInMultiplePurposeFacility';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000485', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12ProgramOrService', @level2type = N'COLUMN', @level2name = N'ProgramInMultiplePurposeFacility';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19476', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12ProgramOrService', @level2type = N'COLUMN', @level2name = N'ProgramInMultiplePurposeFacility';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12ProgramOrService', @level2type = N'COLUMN', @level2name = N'ProgramInMultiplePurposeFacility';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The portion of a day that a pre-kindergarten program is provided to the students it serves.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12ProgramOrService', @level2type = N'COLUMN', @level2name = N'RefPrekindergartenDailyLengthId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Prekindergarten Daily Length', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12ProgramOrService', @level2type = N'COLUMN', @level2name = N'RefPrekindergartenDailyLengthId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000490', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12ProgramOrService', @level2type = N'COLUMN', @level2name = N'RefPrekindergartenDailyLengthId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19481', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12ProgramOrService', @level2type = N'COLUMN', @level2name = N'RefPrekindergartenDailyLengthId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12ProgramOrService', @level2type = N'COLUMN', @level2name = N'RefPrekindergartenDailyLengthId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The portion of a day that a kindergarten program is provided to the students it serves.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12ProgramOrService', @level2type = N'COLUMN', @level2name = N'RefKindergartenDailyLengthId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Kindergarten Daily Length', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12ProgramOrService', @level2type = N'COLUMN', @level2name = N'RefKindergartenDailyLengthId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000491', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12ProgramOrService', @level2type = N'COLUMN', @level2name = N'RefKindergartenDailyLengthId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19482', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12ProgramOrService', @level2type = N'COLUMN', @level2name = N'RefKindergartenDailyLengthId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12ProgramOrService', @level2type = N'COLUMN', @level2name = N'RefKindergartenDailyLengthId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'State/local code used to determine a student''s eligibility for Gifted/Talented program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12ProgramOrService', @level2type = N'COLUMN', @level2name = N'RefProgramGiftedEligibilityId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Program Gifted Eligibility Criteria', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12ProgramOrService', @level2type = N'COLUMN', @level2name = N'RefProgramGiftedEligibilityId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001244', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12ProgramOrService', @level2type = N'COLUMN', @level2name = N'RefProgramGiftedEligibilityId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20210', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12ProgramOrService', @level2type = N'COLUMN', @level2name = N'RefProgramGiftedEligibilityId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12ProgramOrService', @level2type = N'COLUMN', @level2name = N'RefProgramGiftedEligibilityId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The time of year that a Migrant Education Program operates.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12ProgramOrService', @level2type = N'COLUMN', @level2name = N'RefMepSessionTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Migrant Education Program Session Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12ProgramOrService', @level2type = N'COLUMN', @level2name = N'RefMepSessionTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000187', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12ProgramOrService', @level2type = N'COLUMN', @level2name = N'RefMepSessionTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19187', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12ProgramOrService', @level2type = N'COLUMN', @level2name = N'RefMepSessionTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12ProgramOrService', @level2type = N'COLUMN', @level2name = N'RefMepSessionTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Type of project funded in whole or in part by MEP funds.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12ProgramOrService', @level2type = N'COLUMN', @level2name = N'RefMepProjectTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Migrant Education Program Project Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12ProgramOrService', @level2type = N'COLUMN', @level2name = N'RefMepProjectTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000463', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12ProgramOrService', @level2type = N'COLUMN', @level2name = N'RefMepProjectTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19453', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12ProgramOrService', @level2type = N'COLUMN', @level2name = N'RefMepProjectTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12ProgramOrService', @level2type = N'COLUMN', @level2name = N'RefMepProjectTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of instructional services provided to students in ESEA Title I programs.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12ProgramOrService', @level2type = N'COLUMN', @level2name = N'RefTitleIInstructionalServicesId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Title I Instructional Services', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12ProgramOrService', @level2type = N'COLUMN', @level2name = N'RefTitleIInstructionalServicesId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000282', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12ProgramOrService', @level2type = N'COLUMN', @level2name = N'RefTitleIInstructionalServicesId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19282', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12ProgramOrService', @level2type = N'COLUMN', @level2name = N'RefTitleIInstructionalServicesId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12ProgramOrService', @level2type = N'COLUMN', @level2name = N'RefTitleIInstructionalServicesId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of Title I program offered in the school or district.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12ProgramOrService', @level2type = N'COLUMN', @level2name = N'RefTitleIProgramTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Title I Program Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12ProgramOrService', @level2type = N'COLUMN', @level2name = N'RefTitleIProgramTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000284', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12ProgramOrService', @level2type = N'COLUMN', @level2name = N'RefTitleIProgramTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19284', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12ProgramOrService', @level2type = N'COLUMN', @level2name = N'RefTitleIProgramTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12ProgramOrService', @level2type = N'COLUMN', @level2name = N'RefTitleIProgramTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12ProgramOrService', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12ProgramOrService', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12ProgramOrService', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12ProgramOrService', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12ProgramOrService', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12ProgramOrService', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12ProgramOrService', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12ProgramOrService', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12ProgramOrService', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

