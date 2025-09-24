CREATE TABLE [dbo].[RoleAttendance] (
    [RoleAttendanceId]                        INT            IDENTITY (1, 1) NOT NULL,
    [OrganizationPersonRoleId]                INT            NOT NULL,
    [NumberOfDaysInAttendance]                DECIMAL (9, 2) NULL,
    [NumberOfDaysAbsent]                      DECIMAL (9, 2) NULL,
    [AttendanceRate]                          DECIMAL (5, 4) NULL,
    [RecordStartDateTime]                     DATETIME       NULL,
    [RecordEndDateTime]                       DATETIME       NULL,
    [NumberOfDaysTardy]                       DECIMAL (9, 2) NULL,
    [RecordStatusId]                          INT            NULL,
    [DataCollectionId]                        INT            NULL,
    [RefChronicStudentAbsenteeismIndicatorId] INT            NULL,
    CONSTRAINT [PK_RoleAttendance] PRIMARY KEY CLUSTERED ([RoleAttendanceId] ASC),
    CONSTRAINT [FK_RoleAttendance_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_RoleAttendance_OrganizationPersonRole] FOREIGN KEY ([OrganizationPersonRoleId]) REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]),
    CONSTRAINT [FK_RoleAttendance_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_RoleAttendance_RefChronicStudentAbsenteeismIndicator] FOREIGN KEY ([RefChronicStudentAbsenteeismIndicatorId]) REFERENCES [dbo].[RefChronicStudentAbsenteeismIndicator] ([RefChronicStudentAbsenteeismIndicatorId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Aggregated attendance counts.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendance';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendance';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendance', @level2type = N'COLUMN', @level2name = N'RoleAttendanceId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate key from OrganizationPersonRole', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendance', @level2type = N'COLUMN', @level2name = N'OrganizationPersonRoleId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The number of days a person is present when school is in session during a given reporting period.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendance', @level2type = N'COLUMN', @level2name = N'NumberOfDaysInAttendance';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Number of Days in Attendance', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendance', @level2type = N'COLUMN', @level2name = N'NumberOfDaysInAttendance';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000202', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendance', @level2type = N'COLUMN', @level2name = N'NumberOfDaysInAttendance';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19202', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendance', @level2type = N'COLUMN', @level2name = N'NumberOfDaysInAttendance';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendance', @level2type = N'COLUMN', @level2name = N'NumberOfDaysInAttendance';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The number of days a person is absent when school is in session during a given reporting period.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendance', @level2type = N'COLUMN', @level2name = N'NumberOfDaysAbsent';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Number of Days Absent', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendance', @level2type = N'COLUMN', @level2name = N'NumberOfDaysAbsent';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000201', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendance', @level2type = N'COLUMN', @level2name = N'NumberOfDaysAbsent';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19201', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendance', @level2type = N'COLUMN', @level2name = N'NumberOfDaysAbsent';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendance', @level2type = N'COLUMN', @level2name = N'NumberOfDaysAbsent';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The number of school days during the regular school year (plus summer, if applicable, if part of implementing the restart, transformation, or turnaround model) the student attended school divided by the maximum number of days the student could have attended school during the regular school year.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendance', @level2type = N'COLUMN', @level2name = N'AttendanceRate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Student Attendance Rate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendance', @level2type = N'COLUMN', @level2name = N'AttendanceRate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000271', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendance', @level2type = N'COLUMN', @level2name = N'AttendanceRate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19271', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendance', @level2type = N'COLUMN', @level2name = N'AttendanceRate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendance', @level2type = N'COLUMN', @level2name = N'AttendanceRate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendance', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendance', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendance', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendance', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendance', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendance', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendance', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendance', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendance', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendance', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The number of days a person is tardy when school is in session during a given reporting period.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendance', @level2type = N'COLUMN', @level2name = N'NumberOfDaysTardy';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Number of Days Tardy', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendance', @level2type = N'COLUMN', @level2name = N'NumberOfDaysTardy';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001957', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendance', @level2type = N'COLUMN', @level2name = N'NumberOfDaysTardy';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20948', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendance', @level2type = N'COLUMN', @level2name = N'NumberOfDaysTardy';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendance', @level2type = N'COLUMN', @level2name = N'NumberOfDaysTardy';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Indicates whether a student was absent 10% or more school days during the school year with an absence being defined as a student not physically on school grounds and was not participating in instruction or instruction-related activities at an approved off-grounds location for at least half the school day.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendance', @level2type = N'COLUMN', @level2name = N'RefChronicStudentAbsenteeismIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Chronic Student Absenteeism Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendance', @level2type = N'COLUMN', @level2name = N'RefChronicStudentAbsenteeismIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002022', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendance', @level2type = N'COLUMN', @level2name = N'RefChronicStudentAbsenteeismIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25008', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendance', @level2type = N'COLUMN', @level2name = N'RefChronicStudentAbsenteeismIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleAttendance', @level2type = N'COLUMN', @level2name = N'RefChronicStudentAbsenteeismIndicatorId';

