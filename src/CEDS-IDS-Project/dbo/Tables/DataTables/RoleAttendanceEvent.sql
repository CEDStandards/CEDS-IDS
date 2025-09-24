CREATE TABLE [dbo].[RoleAttendanceEvent] (
    [RoleAttendanceEventId]          INT            IDENTITY (1, 1) NOT NULL,
    [OrganizationPersonRoleId]       INT            NOT NULL,
    [Date]                           DATE           NOT NULL,
    [RefAttendanceEventTypeId]       INT            NULL,
    [RefAttendanceStatusId]          INT            NULL,
    [RefAbsentAttendanceCategoryId]  INT            NULL,
    [RefPresentAttendanceCategoryId] INT            NULL,
    [RefLeaveEventTypeId]            INT            NULL,
    [StartTime]                      TIME (7)       NULL,
    [EndTime]                        TIME (7)       NULL,
    [RecordStartDateTime]            DATETIME       NULL,
    [RecordEndDateTime]              DATETIME       NULL,
    [RecordStatusId]                 INT            NULL,
    [DataCollectionId]               INT            NULL,
    [AttendanceEventDurationDay]     DECIMAL (4, 2) NULL,
    [AttendanceEventDurationMinutes] DECIMAL (6, 2) NULL,
    [AttendanceEventDurationHours]   DECIMAL (4, 2) NULL,
    CONSTRAINT [PK_RoleAttendanceEvent] PRIMARY KEY CLUSTERED ([RoleAttendanceEventId] ASC),
    CONSTRAINT [FK_RoleAttendanceEvent_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_RoleAttendanceEvent_OrganizationPersonRole] FOREIGN KEY ([OrganizationPersonRoleId]) REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]),
    CONSTRAINT [FK_RoleAttendanceEvent_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_RoleAttendanceEvent_RefAbsentAttendanceCategory] FOREIGN KEY ([RefAbsentAttendanceCategoryId]) REFERENCES [dbo].[RefAbsentAttendanceCategory] ([RefAbsentAttendanceCategoryId]),
    CONSTRAINT [FK_RoleAttendanceEvent_RefAttendanceEventType] FOREIGN KEY ([RefAttendanceEventTypeId]) REFERENCES [dbo].[RefAttendanceEventType] ([RefAttendanceEventTypeId]),
    CONSTRAINT [FK_RoleAttendanceEvent_RefAttendanceStatus] FOREIGN KEY ([RefAttendanceStatusId]) REFERENCES [dbo].[RefAttendanceStatus] ([RefAttendanceStatusId]),
    CONSTRAINT [FK_RoleAttendanceEvent_RefLeaveEventType] FOREIGN KEY ([RefLeaveEventTypeId]) REFERENCES [dbo].[RefLeaveEventType] ([RefLeaveEventTypeId]),
    CONSTRAINT [FK_RoleAttendanceEvent_RefOrganizationPersonRole] FOREIGN KEY ([OrganizationPersonRoleId]) REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]),
    CONSTRAINT [FK_RoleAttendanceEvent_RefPresentAttendanceCategory] FOREIGN KEY ([RefPresentAttendanceCategoryId]) REFERENCES [dbo].[RefPresentAttendanceCategory] ([RefPresentAttendanceCategoryId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The attributes of a person''s attendance during a given day. ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendanceEvent';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendanceEvent';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendanceEvent', @level2type = N'COLUMN', @level2name = N'RoleAttendanceEventId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - OrganizationPersonRole.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendanceEvent', @level2type = N'COLUMN', @level2name = N'OrganizationPersonRoleId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The date on which an attendance event takes place.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendanceEvent', @level2type = N'COLUMN', @level2name = N'Date';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Attendance Event Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendanceEvent', @level2type = N'COLUMN', @level2name = N'Date';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001649', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendanceEvent', @level2type = N'COLUMN', @level2name = N'Date';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20630', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendanceEvent', @level2type = N'COLUMN', @level2name = N'Date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendanceEvent', @level2type = N'COLUMN', @level2name = N'Date';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of attendance event.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendanceEvent', @level2type = N'COLUMN', @level2name = N'RefAttendanceEventTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Attendance Event Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendanceEvent', @level2type = N'COLUMN', @level2name = N'RefAttendanceEventTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000601', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendanceEvent', @level2type = N'COLUMN', @level2name = N'RefAttendanceEventTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19594', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendanceEvent', @level2type = N'COLUMN', @level2name = N'RefAttendanceEventTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendanceEvent', @level2type = N'COLUMN', @level2name = N'RefAttendanceEventTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The status of a person''s attendance associated with an Attendance Event Type and Attendance Event Date in an organization-person-role context.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendanceEvent', @level2type = N'COLUMN', @level2name = N'RefAttendanceStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Attendance Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendanceEvent', @level2type = N'COLUMN', @level2name = N'RefAttendanceStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000076', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendanceEvent', @level2type = N'COLUMN', @level2name = N'RefAttendanceStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19076', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendanceEvent', @level2type = N'COLUMN', @level2name = N'RefAttendanceStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendanceEvent', @level2type = N'COLUMN', @level2name = N'RefAttendanceStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N' The category that describes how the student spends his or her time not physically present on school grounds and not participating in instruction or instruction-related activities at an approved off-grounds location.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendanceEvent', @level2type = N'COLUMN', @level2name = N'RefAbsentAttendanceCategoryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Absent Attendance Category', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendanceEvent', @level2type = N'COLUMN', @level2name = N'RefAbsentAttendanceCategoryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000599', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendanceEvent', @level2type = N'COLUMN', @level2name = N'RefAbsentAttendanceCategoryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19592', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendanceEvent', @level2type = N'COLUMN', @level2name = N'RefAbsentAttendanceCategoryId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendanceEvent', @level2type = N'COLUMN', @level2name = N'RefAbsentAttendanceCategoryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The category that describes how the student spends his or her time when attending an instructional program approved by the state and/or school.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendanceEvent', @level2type = N'COLUMN', @level2name = N'RefPresentAttendanceCategoryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Present Attendance Category', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendanceEvent', @level2type = N'COLUMN', @level2name = N'RefPresentAttendanceCategoryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000600', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendanceEvent', @level2type = N'COLUMN', @level2name = N'RefPresentAttendanceCategoryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19593', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendanceEvent', @level2type = N'COLUMN', @level2name = N'RefPresentAttendanceCategoryId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendanceEvent', @level2type = N'COLUMN', @level2name = N'RefPresentAttendanceCategoryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of the leave event.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendanceEvent', @level2type = N'COLUMN', @level2name = N'RefLeaveEventTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Leave Event Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendanceEvent', @level2type = N'COLUMN', @level2name = N'RefLeaveEventTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000624', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendanceEvent', @level2type = N'COLUMN', @level2name = N'RefLeaveEventTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19617', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendanceEvent', @level2type = N'COLUMN', @level2name = N'RefLeaveEventTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendanceEvent', @level2type = N'COLUMN', @level2name = N'RefLeaveEventTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The starting hour, minute and second.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendanceEvent', @level2type = N'COLUMN', @level2name = N'StartTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Start Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendanceEvent', @level2type = N'COLUMN', @level2name = N'StartTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001919', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendanceEvent', @level2type = N'COLUMN', @level2name = N'StartTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20900', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendanceEvent', @level2type = N'COLUMN', @level2name = N'StartTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendanceEvent', @level2type = N'COLUMN', @level2name = N'StartTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The ending hour, minute and second.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendanceEvent', @level2type = N'COLUMN', @level2name = N'EndTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'End Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendanceEvent', @level2type = N'COLUMN', @level2name = N'EndTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001920', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendanceEvent', @level2type = N'COLUMN', @level2name = N'EndTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20901', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendanceEvent', @level2type = N'COLUMN', @level2name = N'EndTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendanceEvent', @level2type = N'COLUMN', @level2name = N'EndTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendanceEvent', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendanceEvent', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendanceEvent', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendanceEvent', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendanceEvent', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendanceEvent', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendanceEvent', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendanceEvent', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendanceEvent', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendanceEvent', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The duration of the attendance event captured as one whole day or a portion of a day.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendanceEvent', @level2type = N'COLUMN', @level2name = N'AttendanceEventDurationDay';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Attendance Event Duration Day', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendanceEvent', @level2type = N'COLUMN', @level2name = N'AttendanceEventDurationDay';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002098', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendanceEvent', @level2type = N'COLUMN', @level2name = N'AttendanceEventDurationDay';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25001', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendanceEvent', @level2type = N'COLUMN', @level2name = N'AttendanceEventDurationDay';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendanceEvent', @level2type = N'COLUMN', @level2name = N'AttendanceEventDurationDay';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The duration of the attendance event in minutes.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendanceEvent', @level2type = N'COLUMN', @level2name = N'AttendanceEventDurationMinutes';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Attendance Event Duration Minutes', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendanceEvent', @level2type = N'COLUMN', @level2name = N'AttendanceEventDurationMinutes';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002014', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendanceEvent', @level2type = N'COLUMN', @level2name = N'AttendanceEventDurationMinutes';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25003', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendanceEvent', @level2type = N'COLUMN', @level2name = N'AttendanceEventDurationMinutes';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendanceEvent', @level2type = N'COLUMN', @level2name = N'AttendanceEventDurationMinutes';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The duration of the attendance event in hours.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendanceEvent', @level2type = N'COLUMN', @level2name = N'AttendanceEventDurationHours';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Attendance Event Duration Hours', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendanceEvent', @level2type = N'COLUMN', @level2name = N'AttendanceEventDurationHours';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002015', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendanceEvent', @level2type = N'COLUMN', @level2name = N'AttendanceEventDurationHours';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25002', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendanceEvent', @level2type = N'COLUMN', @level2name = N'AttendanceEventDurationHours';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendanceEvent', @level2type = N'COLUMN', @level2name = N'AttendanceEventDurationHours';

