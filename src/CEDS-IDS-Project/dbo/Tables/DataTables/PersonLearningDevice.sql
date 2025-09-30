CREATE TABLE [dbo].[PersonLearningDevice] (
    [PersonLearningDeviceId]                   INT      IDENTITY (1, 1) NOT NULL,
    [OrganizationPersonRoleId]                 INT      NOT NULL,
    [RefPrimaryLearningDeviceAccessId]         INT      NULL,
    [RefPrimaryLearningDeviceAwayFromSchoolId] INT      NULL,
    [RefPrimaryLearningDeviceProviderId]       INT      NULL,
    [RecordStartDateTime]                      DATETIME NULL,
    [RecordEndDateTime]                        DATETIME NULL,
    [RecordStatusId]                           INT      NULL,
    [DataCollectionId]                         INT      NULL,
    CONSTRAINT [PK_PersonLearningDevice] PRIMARY KEY CLUSTERED ([PersonLearningDeviceId] ASC),
    CONSTRAINT [FK_PersonLearningDevice_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_PersonLearningDevice_OrganizationPersonRole] FOREIGN KEY ([OrganizationPersonRoleId]) REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]),
    CONSTRAINT [FK_PersonLearningDevice_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_PersonLearningDevice_RefPrimaryLearningDeviceAccess] FOREIGN KEY ([RefPrimaryLearningDeviceAccessId]) REFERENCES [dbo].[RefPrimaryLearningDeviceAccess] ([RefPrimaryLearningDeviceAccessId]),
    CONSTRAINT [FK_PersonLearningDevice_RefPrimaryLearningDeviceAwayFromSchool] FOREIGN KEY ([RefPrimaryLearningDeviceAwayFromSchoolId]) REFERENCES [dbo].[RefPrimaryLearningDeviceAwayFromSchool] ([RefPrimaryLearningDeviceAwayFromSchoolId]),
    CONSTRAINT [FK_PersonLearningDevice_RefPrimaryLearningDeviceProvider] FOREIGN KEY ([RefPrimaryLearningDeviceProviderId]) REFERENCES [dbo].[RefPrimaryLearningDeviceProvider] ([RefPrimaryLearningDeviceProviderId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information related to learning devices used by a person.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonLearningDevice';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonLearningDevice';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether the primary learning device is shared or not shared with another individual', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonLearningDevice', @level2type = N'COLUMN', @level2name = N'RefPrimaryLearningDeviceAccessId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Primary Learning Device Access', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonLearningDevice', @level2type = N'COLUMN', @level2name = N'RefPrimaryLearningDeviceAccessId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001932', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonLearningDevice', @level2type = N'COLUMN', @level2name = N'RefPrimaryLearningDeviceAccessId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20952', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonLearningDevice', @level2type = N'COLUMN', @level2name = N'RefPrimaryLearningDeviceAccessId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonLearningDevice', @level2type = N'COLUMN', @level2name = N'RefPrimaryLearningDeviceAccessId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of device the student uses most often to complete learning activities away from school.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonLearningDevice', @level2type = N'COLUMN', @level2name = N'RefPrimaryLearningDeviceAwayFromSchoolId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Primary Learning Device Away From School', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonLearningDevice', @level2type = N'COLUMN', @level2name = N'RefPrimaryLearningDeviceAwayFromSchoolId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001931', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonLearningDevice', @level2type = N'COLUMN', @level2name = N'RefPrimaryLearningDeviceAwayFromSchoolId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20953', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonLearningDevice', @level2type = N'COLUMN', @level2name = N'RefPrimaryLearningDeviceAwayFromSchoolId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonLearningDevice', @level2type = N'COLUMN', @level2name = N'RefPrimaryLearningDeviceAwayFromSchoolId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The provider of the primary learning device.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonLearningDevice', @level2type = N'COLUMN', @level2name = N'RefPrimaryLearningDeviceProviderId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Primary Learning Device Provider', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonLearningDevice', @level2type = N'COLUMN', @level2name = N'RefPrimaryLearningDeviceProviderId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001933', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonLearningDevice', @level2type = N'COLUMN', @level2name = N'RefPrimaryLearningDeviceProviderId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20954', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonLearningDevice', @level2type = N'COLUMN', @level2name = N'RefPrimaryLearningDeviceProviderId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonLearningDevice', @level2type = N'COLUMN', @level2name = N'RefPrimaryLearningDeviceProviderId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonLearningDevice', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonLearningDevice', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonLearningDevice', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonLearningDevice', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonLearningDevice', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonLearningDevice', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonLearningDevice', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonLearningDevice', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonLearningDevice', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonLearningDevice', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

