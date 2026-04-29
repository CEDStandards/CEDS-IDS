CREATE TABLE [dbo].[ELOrganizationAvailability] (
    [ELOrganizationAvailabilityId] INT            IDENTITY (1, 1) NOT NULL,
    [OrganizationId]               INT            NOT NULL,
    [DaysAvailablePerWeek]         INT            NULL,
    [HoursAvailablePerDay]         DECIMAL (5, 2) NULL,
    [NumberOfClassrooms]           INT            NULL,
    [AnnualOperatingWeeks]         INT            NULL,
    [RefEnvironmentSettingId]      INT            NULL,
    [RefServiceOptionId]           INT            NULL,
    [RecordStartDateTime]          DATETIME       NULL,
    [RecordEndDateTime]            DATETIME       NULL,
    [RecordStatusId]               INT            NULL,
    [DataCollectionId]             INT            NULL,
    [RefPreschoolDailyLengthId]    INT            NULL,
    CONSTRAINT [PK_ELOrganizationAvailability] PRIMARY KEY CLUSTERED ([ELOrganizationAvailabilityId] ASC),
    CONSTRAINT [FK_ELOrganizationAvailability_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_ELOrganizationAvailability_Organization1] FOREIGN KEY ([OrganizationId]) REFERENCES [dbo].[Organization] ([OrganizationId]),
    CONSTRAINT [FK_ELOrganizationAvailability_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_ELOrganizationAvailability_RefEnvironmentSetting] FOREIGN KEY ([RefEnvironmentSettingId]) REFERENCES [dbo].[RefEnvironmentSetting] ([RefEnvironmentSettingId]),
    CONSTRAINT [FK_ELOrganizationAvailability_RefServiceOption] FOREIGN KEY ([RefServiceOptionId]) REFERENCES [dbo].[RefServiceOption] ([RefServiceOptionId]),
    CONSTRAINT [FK_ELOrganizationAvailability_RefPreschoolDailyLength] FOREIGN KEY ([RefPreschoolDailyLengthId]) REFERENCES [dbo].[RefPreschoolDailyLength] ([RefPreschoolDailyLengthId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information on the early learning organization''s availability to include time, groups served, facilities, and environment.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationAvailability';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationAvailability';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate key from Orgainzation.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationAvailability', @level2type = N'COLUMN', @level2name = N'OrganizationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The number of days per week the site or classroom is open for children to attend.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationAvailability', @level2type = N'COLUMN', @level2name = N'DaysAvailablePerWeek';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Days Available Per Week', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationAvailability', @level2type = N'COLUMN', @level2name = N'DaysAvailablePerWeek';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000355', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationAvailability', @level2type = N'COLUMN', @level2name = N'DaysAvailablePerWeek';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19354', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationAvailability', @level2type = N'COLUMN', @level2name = N'DaysAvailablePerWeek';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationAvailability', @level2type = N'COLUMN', @level2name = N'DaysAvailablePerWeek';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The number of hours per day the site or classroom is open for children to attend.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationAvailability', @level2type = N'COLUMN', @level2name = N'HoursAvailablePerDay';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Hours Available Per Day', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationAvailability', @level2type = N'COLUMN', @level2name = N'HoursAvailablePerDay';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000354', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationAvailability', @level2type = N'COLUMN', @level2name = N'HoursAvailablePerDay';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19353', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationAvailability', @level2type = N'COLUMN', @level2name = N'HoursAvailablePerDay';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationAvailability', @level2type = N'COLUMN', @level2name = N'HoursAvailablePerDay';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The total number of classrooms for a program, facility, location, or other educational environment.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationAvailability', @level2type = N'COLUMN', @level2name = N'NumberOfClassrooms';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Number of Classrooms', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationAvailability', @level2type = N'COLUMN', @level2name = N'NumberOfClassrooms';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000844', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationAvailability', @level2type = N'COLUMN', @level2name = N'NumberOfClassrooms';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19844', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationAvailability', @level2type = N'COLUMN', @level2name = N'NumberOfClassrooms';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationAvailability', @level2type = N'COLUMN', @level2name = N'NumberOfClassrooms';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The number of operating weeks per year for an early learning program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationAvailability', @level2type = N'COLUMN', @level2name = N'AnnualOperatingWeeks';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Early Learning Program Annual Operating Weeks', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationAvailability', @level2type = N'COLUMN', @level2name = N'AnnualOperatingWeeks';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000825', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationAvailability', @level2type = N'COLUMN', @level2name = N'AnnualOperatingWeeks';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19824', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationAvailability', @level2type = N'COLUMN', @level2name = N'AnnualOperatingWeeks';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationAvailability', @level2type = N'COLUMN', @level2name = N'AnnualOperatingWeeks';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The site or setting in which  early childhood care, education, and/or services are provided.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationAvailability', @level2type = N'COLUMN', @level2name = N'RefEnvironmentSettingId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Early Childhood Setting', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationAvailability', @level2type = N'COLUMN', @level2name = N'RefEnvironmentSettingId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000356', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationAvailability', @level2type = N'COLUMN', @level2name = N'RefEnvironmentSettingId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19355', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationAvailability', @level2type = N'COLUMN', @level2name = N'RefEnvironmentSettingId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationAvailability', @level2type = N'COLUMN', @level2name = N'RefEnvironmentSettingId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Nature of early childhood program, class or group in which a person is enrolled.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationAvailability', @level2type = N'COLUMN', @level2name = N'RefServiceOptionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Service Option Variation', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationAvailability', @level2type = N'COLUMN', @level2name = N'RefServiceOptionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000353', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationAvailability', @level2type = N'COLUMN', @level2name = N'RefServiceOptionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19352', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationAvailability', @level2type = N'COLUMN', @level2name = N'RefServiceOptionId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationAvailability', @level2type = N'COLUMN', @level2name = N'RefServiceOptionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationAvailability', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationAvailability', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationAvailability', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationAvailability', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationAvailability', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationAvailability', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationAvailability', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationAvailability', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationAvailability', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The portion of a day that a preschool program is provided to the students it serves.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationAvailability', @level2type = N'COLUMN', @level2name = N'RefPreschoolDailyLengthId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Preschool Daily Length', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationAvailability', @level2type = N'COLUMN', @level2name = N'RefPreschoolDailyLengthId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'C002185', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationAvailability', @level2type = N'COLUMN', @level2name = N'RefPreschoolDailyLengthId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://w3id.org/CEDStandards/terms/C002185', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationAvailability', @level2type = N'COLUMN', @level2name = N'RefPreschoolDailyLengthId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationAvailability', @level2type = N'COLUMN', @level2name = N'RefPreschoolDailyLengthId';
