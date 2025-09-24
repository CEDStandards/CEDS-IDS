CREATE TABLE [dbo].[RoleStatus] (
    [RoleStatusId]             INT      IDENTITY (1, 1) NOT NULL,
    [StatusStartDate]          DATE     NOT NULL,
    [StatusEndDate]            DATETIME NULL,
    [RefRoleStatusId]          INT      NULL,
    [OrganizationPersonRoleId] INT      NOT NULL,
    [RecordStartDateTime]      DATETIME NULL,
    [RecordEndDateTime]        DATETIME NULL,
    [RecordStatusId]           INT      NULL,
    [DataCollectionId]         INT      NULL,
    CONSTRAINT [PK_RoleStatus] PRIMARY KEY CLUSTERED ([RoleStatusId] ASC),
    CONSTRAINT [FK_RoleStatus_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_RoleStatus_OrganizationPersonRole] FOREIGN KEY ([OrganizationPersonRoleId]) REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]),
    CONSTRAINT [FK_RoleStatus_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_RoleStatus_RefRefRoleStatus] FOREIGN KEY ([RefRoleStatusId]) REFERENCES [dbo].[RefRoleStatus] ([RefRoleStatusId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'RoleStatus supports cases such as when a student “applied” for enrollment in a Course Section, Program, or School/Institution, was “accepted,” and then was “enrolled.” Each status may have different begin and end dates.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleStatus';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleStatus';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleStatus', @level2type = N'COLUMN', @level2name = N'RoleStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The date that a status became applicable to an individual.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleStatus', @level2type = N'COLUMN', @level2name = N'StatusStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Employment Start Date, Course Section Enrollment Status Start Date, Status Start Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleStatus', @level2type = N'COLUMN', @level2name = N'StatusStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000346, 000974, 001227', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleStatus', @level2type = N'COLUMN', @level2name = N'StatusStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19345, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19975, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20192', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleStatus', @level2type = N'COLUMN', @level2name = N'StatusStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleStatus', @level2type = N'COLUMN', @level2name = N'StatusStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The last date when a status applied to an individual.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleStatus', @level2type = N'COLUMN', @level2name = N'StatusEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Employment End Date, Course Section Enrollment Status End Date, Status End Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleStatus', @level2type = N'COLUMN', @level2name = N'StatusEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000795, 000975, 001228', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleStatus', @level2type = N'COLUMN', @level2name = N'StatusEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19794, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19976, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20193', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleStatus', @level2type = N'COLUMN', @level2name = N'StatusEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleStatus', @level2type = N'COLUMN', @level2name = N'StatusEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The status for the person''s association to the role.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleStatus', @level2type = N'COLUMN', @level2name = N'RefRoleStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Enrollment Status, Postsecondary Enrollment Status, Employment Status, Teacher Preparation Program Enrollment Status, Course Section Enrollment Status Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleStatus', @level2type = N'COLUMN', @level2name = N'RefRoleStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000094, 000096, 000347, 000767, 000976', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleStatus', @level2type = N'COLUMN', @level2name = N'RefRoleStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19094, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19096, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19346, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19749, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19977', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleStatus', @level2type = N'COLUMN', @level2name = N'RefRoleStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleStatus', @level2type = N'COLUMN', @level2name = N'RefRoleStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - OrganizationPersonRole.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleStatus', @level2type = N'COLUMN', @level2name = N'OrganizationPersonRoleId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleStatus', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleStatus', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleStatus', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleStatus', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleStatus', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleStatus', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleStatus', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleStatus', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleStatus', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleStatus', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

