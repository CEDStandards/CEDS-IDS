CREATE TABLE [dbo].[ELOrganization] (
    [ELOrganizationId]                      INT      IDENTITY (1, 1) NOT NULL,
    [OrganizationId]                        INT      NOT NULL,
    [RefProfitStatusId]                     INT      NULL,
    [RecordStartDateTime]                   DATETIME NULL,
    [RecordEndDateTime]                     DATETIME NULL,
    [RecordStatusId]                        INT      NULL,
    [DataCollectionId]                      INT      NULL,
    [RefControlOfInstitutionId]             INT      NULL,
    [RefInternetAccessId]                   INT      NULL,
    [RefLeaTypeId]                          INT      NULL,
    [RefNationalSchoolLunchProgramStatusId] INT      NULL,
    [RefPredominantCalendarSystemId]        INT      NULL,
    [RefSchoolLevelId]                      INT      NULL,
    [RefStatePovertyDesignationId]          INT      NULL,
    [RefVirtualSchoolStatusId]              INT      NULL,
    CONSTRAINT [PK_ELOrganization] PRIMARY KEY CLUSTERED ([ELOrganizationId] ASC),
    CONSTRAINT [FK_ELOrganization_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_ELOrganization_Organization] FOREIGN KEY ([OrganizationId]) REFERENCES [dbo].[Organization] ([OrganizationId]),
    CONSTRAINT [FK_ELOrganization_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_ELOrganization_RefControlOfInstitution] FOREIGN KEY ([RefControlOfInstitutionId]) REFERENCES [dbo].[RefControlOfInstitution] ([RefControlOfInstitutionId]),
    CONSTRAINT [FK_ELOrganization_RefInternetAccess] FOREIGN KEY ([RefInternetAccessId]) REFERENCES [dbo].[RefInternetAccess] ([RefInternetAccessId]),
    CONSTRAINT [FK_ELOrganization_RefLeaType] FOREIGN KEY ([RefLeaTypeId]) REFERENCES [dbo].[RefLeaType] ([RefLeaTypeId]),
    CONSTRAINT [FK_ELOrganization_RefNationalSchoolLunchProgramStatus] FOREIGN KEY ([RefNationalSchoolLunchProgramStatusId]) REFERENCES [dbo].[RefNationalSchoolLunchProgramStatus] ([RefNationalSchoolLunchProgramStatusId]),
    CONSTRAINT [FK_ELOrganization_RefPredominantCalendarSystem] FOREIGN KEY ([RefPredominantCalendarSystemId]) REFERENCES [dbo].[RefPredominantCalendarSystem] ([RefPredominantCalendarSystemId]),
    CONSTRAINT [FK_ELOrganization_RefProfitStatus] FOREIGN KEY ([RefProfitStatusId]) REFERENCES [dbo].[RefProfitStatus] ([RefProfitStatusId]),
    CONSTRAINT [FK_ELOrganization_RefSchoolLevel] FOREIGN KEY ([RefSchoolLevelId]) REFERENCES [dbo].[RefSchoolLevel] ([RefSchoolLevelId]),
    CONSTRAINT [FK_ELOrganization_RefStatePovertyDesignation] FOREIGN KEY ([RefStatePovertyDesignationId]) REFERENCES [dbo].[RefStatePovertyDesignation] ([RefStatePovertyDesignationId]),
    CONSTRAINT [FK_ELOrganization_RefVirtualSchoolStatus] FOREIGN KEY ([RefVirtualSchoolStatusId]) REFERENCES [dbo].[RefVirtualSchoolStatus] ([RefVirtualSchoolStatusId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Properties of an organization specific to the early learning domain that are combined with general Organization properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganization';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganization';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of the for-profit status of a facility.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganization', @level2type = N'COLUMN', @level2name = N'RefProfitStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Facility Profit Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganization', @level2type = N'COLUMN', @level2name = N'RefProfitStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000834', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganization', @level2type = N'COLUMN', @level2name = N'RefProfitStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19834', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganization', @level2type = N'COLUMN', @level2name = N'RefProfitStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganization', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganization', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganization', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganization', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganization', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganization', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganization', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganization', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganization', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A classification of whether a postsecondary institution is operated by publicly elected or appointed officials (public control) or by privately elected or appointed officials and derives its major source of funds from private sources (private control). ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganization', @level2type = N'COLUMN', @level2name = N'RefControlOfInstitutionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Control of Institution', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganization', @level2type = N'COLUMN', @level2name = N'RefControlOfInstitutionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000048', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganization', @level2type = N'COLUMN', @level2name = N'RefControlOfInstitutionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=21048', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganization', @level2type = N'COLUMN', @level2name = N'RefControlOfInstitutionId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganization', @level2type = N'COLUMN', @level2name = N'RefControlOfInstitutionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of internet access available.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganization', @level2type = N'COLUMN', @level2name = N'RefInternetAccessId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Internet Access', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganization', @level2type = N'COLUMN', @level2name = N'RefInternetAccessId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000587', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganization', @level2type = N'COLUMN', @level2name = N'RefInternetAccessId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=21580', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganization', @level2type = N'COLUMN', @level2name = N'RefInternetAccessId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganization', @level2type = N'COLUMN', @level2name = N'RefInternetAccessId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'  The classification of education agencies within the geographic boundaries of a state according to the level of administrative and operational control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganization', @level2type = N'COLUMN', @level2name = N'RefLeaTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Local Education Agency Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganization', @level2type = N'COLUMN', @level2name = N'RefLeaTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000537', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganization', @level2type = N'COLUMN', @level2name = N'RefLeaTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=21528', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganization', @level2type = N'COLUMN', @level2name = N'RefLeaTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganization', @level2type = N'COLUMN', @level2name = N'RefLeaTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The classification of participation by a school in the National School Lunch Program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganization', @level2type = N'COLUMN', @level2name = N'RefNationalSchoolLunchProgramStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'National School Lunch Program Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganization', @level2type = N'COLUMN', @level2name = N'RefNationalSchoolLunchProgramStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001767', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganization', @level2type = N'COLUMN', @level2name = N'RefNationalSchoolLunchProgramStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=22748', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganization', @level2type = N'COLUMN', @level2name = N'RefNationalSchoolLunchProgramStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganization', @level2type = N'COLUMN', @level2name = N'RefNationalSchoolLunchProgramStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The method by which an institution structures most of its courses for the academic year.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganization', @level2type = N'COLUMN', @level2name = N'RefPredominantCalendarSystemId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Predominant Calendar System', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganization', @level2type = N'COLUMN', @level2name = N'RefPredominantCalendarSystemId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000729', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganization', @level2type = N'COLUMN', @level2name = N'RefPredominantCalendarSystemId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=21705', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganization', @level2type = N'COLUMN', @level2name = N'RefPredominantCalendarSystemId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganization', @level2type = N'COLUMN', @level2name = N'RefPredominantCalendarSystemId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of the level of the education institution.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganization', @level2type = N'COLUMN', @level2name = N'RefSchoolLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'School Level', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganization', @level2type = N'COLUMN', @level2name = N'RefSchoolLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000241', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganization', @level2type = N'COLUMN', @level2name = N'RefSchoolLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=21241', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganization', @level2type = N'COLUMN', @level2name = N'RefSchoolLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganization', @level2type = N'COLUMN', @level2name = N'RefSchoolLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The designation of a school’s poverty quartile for purposes of determining classes taught by highly qualified teachers in high and low poverty schools, according to state’s indicator of poverty.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganization', @level2type = N'COLUMN', @level2name = N'RefStatePovertyDesignationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'State Poverty Designation', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganization', @level2type = N'COLUMN', @level2name = N'RefStatePovertyDesignationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000585', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganization', @level2type = N'COLUMN', @level2name = N'RefStatePovertyDesignationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=21578', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganization', @level2type = N'COLUMN', @level2name = N'RefStatePovertyDesignationId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganization', @level2type = N'COLUMN', @level2name = N'RefStatePovertyDesignationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of the extent to which a school offers instruction in which students and teachers are separated by time and/or location, and interaction occurs via computers and/or telecommunications technologies.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganization', @level2type = N'COLUMN', @level2name = N'RefVirtualSchoolStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Virtual School Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganization', @level2type = N'COLUMN', @level2name = N'RefVirtualSchoolStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001766', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganization', @level2type = N'COLUMN', @level2name = N'RefVirtualSchoolStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=22747', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganization', @level2type = N'COLUMN', @level2name = N'RefVirtualSchoolStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganization', @level2type = N'COLUMN', @level2name = N'RefVirtualSchoolStatusId';

