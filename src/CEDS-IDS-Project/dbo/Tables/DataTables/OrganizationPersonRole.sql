CREATE TABLE [dbo].[OrganizationPersonRole] (
    [OrganizationPersonRoleId] INT      IDENTITY (1, 1) NOT NULL,
    [OrganizationId]           INT      NOT NULL,
    [PersonId]                 INT      NOT NULL,
    [RoleId]                   INT      NOT NULL,
    [EntryDate]                DATETIME NULL,
    [ExitDate]                 DATETIME NULL,
    [RecordStartDateTime]      DATETIME NULL,
    [RecordEndDateTime]        DATETIME NULL,
    [RecordStatusId]           INT      NULL,
    [DataCollectionId]         INT      NULL,
    CONSTRAINT [PK_OrganizationPersonRole] PRIMARY KEY CLUSTERED ([OrganizationPersonRoleId] ASC),
    CONSTRAINT [FK_OrganizationPersonRole_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_OrganizationPersonRole_Organization] FOREIGN KEY ([OrganizationId]) REFERENCES [dbo].[Organization] ([OrganizationId]),
    CONSTRAINT [FK_OrganizationPersonRole_Person] FOREIGN KEY ([PersonId]) REFERENCES [dbo].[Person] ([PersonId]),
    CONSTRAINT [FK_OrganizationPersonRole_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_OrgranizationPersonRole_Role] FOREIGN KEY ([RoleId]) REFERENCES [dbo].[Role] ([RoleId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The association that represents a Person’s Role within an Organization for a period of time.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationPersonRole';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationPersonRole';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationPersonRole', @level2type = N'COLUMN', @level2name = N'OrganizationPersonRoleId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate key from Organization.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationPersonRole', @level2type = N'COLUMN', @level2name = N'OrganizationId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate key from Person', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationPersonRole', @level2type = N'COLUMN', @level2name = N'PersonId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate key from Role.  The name of the role, e.g. Student, Staff, Employee', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationPersonRole', @level2type = N'COLUMN', @level2name = N'RoleId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The date associated with the commencement/entry/start of a role for a person at an organization.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationPersonRole', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Activity Involvement Begin Date, Enrollment Entry Date, Service Entry Date, Employment Start Date, Assignment Start Date, Program Participation Start Date, Teaching Assignment Start Date, Staff Education Entry Date, Course Section Enrollment Status Start Date, Workforce Program Participation Start Date, Program Participation Status, Course Add Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationPersonRole', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000007, 000097, 000326, 000346, 000526, 000590, 000645, 000793, 000974, 000998, 001243, 001300', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationPersonRole', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19007, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19097, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19326, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19345, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19517, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19583, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19647, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19792, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19975, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20001, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20209, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20266', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationPersonRole', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationPersonRole', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The date associated with the termination/exit/end of a role for a person at an organization.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationPersonRole', @level2type = N'COLUMN', @level2name = N'ExitDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Activity Involvement End Date, Enrollment Exit Date, Service Exit Date, Assignment End Date, Program Participation Exit Date, Teaching Assignment End Date, Staff Education Withdrawal Date, Employment End Date, Workforce Program Participation End Date, Course Drop Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationPersonRole', @level2type = N'COLUMN', @level2name = N'ExitDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000008, 000107, 000327, 000527, 000591, 000646, 000794, 000795, 000999, 001305', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationPersonRole', @level2type = N'COLUMN', @level2name = N'ExitDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19008, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19107, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19327, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19518, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19584, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19648, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19793, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19794, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20002, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20271', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationPersonRole', @level2type = N'COLUMN', @level2name = N'ExitDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationPersonRole', @level2type = N'COLUMN', @level2name = N'ExitDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationPersonRole', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationPersonRole', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationPersonRole', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationPersonRole', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationPersonRole', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationPersonRole', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationPersonRole', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationPersonRole', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationPersonRole', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationPersonRole', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

