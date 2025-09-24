CREATE TABLE [dbo].[ELClassSection] (
    [ELClassSectionId]              INT            IDENTITY (1, 1) NOT NULL,
    [OrganizationId]                INT            NOT NULL,
    [HoursAvailablePerDay]          DECIMAL (4, 2) NULL,
    [DaysAvailablePerWeek]          INT            NULL,
    [ELProgramAnnualOperatingWeeks] INT            NULL,
    [LanguageTranslationPolicy]     BIT            NULL,
    [GroupSize]                     INT            NULL,
    [RefServiceOptionId]            INT            NULL,
    [RefEnvironmentSettingId]       INT            NULL,
    [RecordStartDateTime]           DATETIME       NULL,
    [RecordEndDateTime]             DATETIME       NULL,
    [RecordStatusId]                INT            NULL,
    [DataCollectionId]              INT            NULL,
    CONSTRAINT [PK_ELClassSection] PRIMARY KEY CLUSTERED ([ELClassSectionId] ASC),
    CONSTRAINT [FK_ELClassSection_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_ELClassSection_Organization] FOREIGN KEY ([OrganizationId]) REFERENCES [dbo].[Organization] ([OrganizationId]),
    CONSTRAINT [FK_ELClassSection_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_ELClassSection_RefEnvironmentSetting] FOREIGN KEY ([RefEnvironmentSettingId]) REFERENCES [dbo].[RefEnvironmentSetting] ([RefEnvironmentSettingId]),
    CONSTRAINT [FK_ELClassSection_RefServiceOption] FOREIGN KEY ([RefServiceOptionId]) REFERENCES [dbo].[RefServiceOption] ([RefServiceOptionId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A cohort of children receiving services together, or in some cases individually, usually for a predetermined amount of time, with at least one assigned primary teacher. ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSection';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSection';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate key from Organization', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSection', @level2type = N'COLUMN', @level2name = N'OrganizationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The number of hours per day the site or classroom is open for children to attend.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSection', @level2type = N'COLUMN', @level2name = N'HoursAvailablePerDay';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Hours Available Per Day', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSection', @level2type = N'COLUMN', @level2name = N'HoursAvailablePerDay';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000354', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSection', @level2type = N'COLUMN', @level2name = N'HoursAvailablePerDay';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19353', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSection', @level2type = N'COLUMN', @level2name = N'HoursAvailablePerDay';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSection', @level2type = N'COLUMN', @level2name = N'HoursAvailablePerDay';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The number of days per week the site or classroom is open for children to attend.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSection', @level2type = N'COLUMN', @level2name = N'DaysAvailablePerWeek';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Days Available Per Week', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSection', @level2type = N'COLUMN', @level2name = N'DaysAvailablePerWeek';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000355', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSection', @level2type = N'COLUMN', @level2name = N'DaysAvailablePerWeek';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19354', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSection', @level2type = N'COLUMN', @level2name = N'DaysAvailablePerWeek';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSection', @level2type = N'COLUMN', @level2name = N'DaysAvailablePerWeek';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The number of operating weeks per year for an early learning program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSection', @level2type = N'COLUMN', @level2name = N'ELProgramAnnualOperatingWeeks';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Early Learning Program Annual Operating Weeks', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSection', @level2type = N'COLUMN', @level2name = N'ELProgramAnnualOperatingWeeks';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000825', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSection', @level2type = N'COLUMN', @level2name = N'ELProgramAnnualOperatingWeeks';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19824', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSection', @level2type = N'COLUMN', @level2name = N'ELProgramAnnualOperatingWeeks';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSection', @level2type = N'COLUMN', @level2name = N'ELProgramAnnualOperatingWeeks';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Indicates that the organization or class/group has  translation services available .', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSection', @level2type = N'COLUMN', @level2name = N'LanguageTranslationPolicy';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Language Translation Policy', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSection', @level2type = N'COLUMN', @level2name = N'LanguageTranslationPolicy';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001226', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSection', @level2type = N'COLUMN', @level2name = N'LanguageTranslationPolicy';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20190', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSection', @level2type = N'COLUMN', @level2name = N'LanguageTranslationPolicy';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSection', @level2type = N'COLUMN', @level2name = N'LanguageTranslationPolicy';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The number of slots/spaces available.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSection', @level2type = N'COLUMN', @level2name = N'GroupSize';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Early Learning Group Size', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSection', @level2type = N'COLUMN', @level2name = N'GroupSize';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001329', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSection', @level2type = N'COLUMN', @level2name = N'GroupSize';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20295', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSection', @level2type = N'COLUMN', @level2name = N'GroupSize';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSection', @level2type = N'COLUMN', @level2name = N'GroupSize';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Nature of early childhood program, class or group in which a person is enrolled.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSection', @level2type = N'COLUMN', @level2name = N'RefServiceOptionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Service Option Variation', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSection', @level2type = N'COLUMN', @level2name = N'RefServiceOptionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000353', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSection', @level2type = N'COLUMN', @level2name = N'RefServiceOptionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19352', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSection', @level2type = N'COLUMN', @level2name = N'RefServiceOptionId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSection', @level2type = N'COLUMN', @level2name = N'RefServiceOptionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The site or setting in which  early childhood care, education, and/or services are provided.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSection', @level2type = N'COLUMN', @level2name = N'RefEnvironmentSettingId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Early Childhood Setting', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSection', @level2type = N'COLUMN', @level2name = N'RefEnvironmentSettingId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000356', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSection', @level2type = N'COLUMN', @level2name = N'RefEnvironmentSettingId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19355', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSection', @level2type = N'COLUMN', @level2name = N'RefEnvironmentSettingId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSection', @level2type = N'COLUMN', @level2name = N'RefEnvironmentSettingId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSection', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSection', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSection', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSection', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSection', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSection', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSection', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSection', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSection', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

