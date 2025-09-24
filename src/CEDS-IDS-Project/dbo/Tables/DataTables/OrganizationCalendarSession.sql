CREATE TABLE [dbo].[OrganizationCalendarSession] (
    [OrganizationCalendarSessionId] INT            IDENTITY (1, 1) NOT NULL,
    [Designator]                    NVARCHAR (7)   NULL,
    [BeginDate]                     DATE           NULL,
    [EndDate]                       DATE           NULL,
    [RefSessionTypeId]              INT            NULL,
    [InstructionalMinutes]          NUMERIC (18)   NULL,
    [Code]                          NVARCHAR (30)  NULL,
    [Description]                   NVARCHAR (MAX) NULL,
    [MarkingTermIndicator]          BIT            NULL,
    [SchedulingTermIndicator]       BIT            NULL,
    [AttendanceTermIndicator]       BIT            NULL,
    [OrganizationCalendarId]        INT            NULL,
    [DaysInSession]                 INT            NULL,
    [FirstInstructionDate]          DATE           NULL,
    [LastInstructionDate]           DATE           NULL,
    [MinutesPerDay]                 INT            NULL,
    [SessionStartTime]              TIME (7)       NULL,
    [SessionEndTime]                TIME (7)       NULL,
    [RecordStartDateTime]           DATETIME       NULL,
    [RecordEndDateTime]             DATETIME       NULL,
    [RefAcademicTermDesignatorId]   INT            NULL,
    [RecordStatusId]                INT            NULL,
    [DataCollectionId]              INT            NULL,
    [InstructionalMinutesPerDay]    INT            NULL,
    [LunchMinutesPerDay]            INT            NULL,
    [RecessMinutesPerDay]           INT            NULL,
    [SessionSequenceNumber]         INT            NULL,
    CONSTRAINT [PK_OrganizationCalendarSession] PRIMARY KEY CLUSTERED ([OrganizationCalendarSessionId] ASC),
    CONSTRAINT [FK_OrganizationCalendarSession_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_OrganizationCalendarSession_OrganizationCalendar] FOREIGN KEY ([OrganizationCalendarId]) REFERENCES [dbo].[OrganizationCalendar] ([OrganizationCalendarId]),
    CONSTRAINT [FK_OrganizationCalendarSession_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_OrganizationCalendarSession_RefAcademicTermDesignator] FOREIGN KEY ([RefAcademicTermDesignatorId]) REFERENCES [dbo].[RefAcademicTermDesignator] ([RefAcademicTermDesignatorId]),
    CONSTRAINT [FK_OrganizationCalendarSession_RefSessionType] FOREIGN KEY ([RefSessionTypeId]) REFERENCES [dbo].[RefSessionType] ([RefSessionTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'OrganizationCalendarSession provides the beginning and end date of the period of time, such as a term or semester. It has multiple uses. For example, it may be flagged as an "attendance term" with a value for DaysInSession, or the specific days applicable for attendance may be derived using OrganizationCalendarEvent. Early learning use cases use this entity to specify instructional session start and end times within the context of a day.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'OrganizationCalendarSessionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The academic session for which the data are recorded and applicable.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'Designator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Session Designator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'Designator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000252', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'Designator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19252', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'Designator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'Designator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The date on which a session begins.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Course Begin Date, Session Begin Date, Course Add Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000054, 000251, 001300', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19054, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19251, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20266', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The date on which a session ends.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Course End Date, Session End Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000059, 000253', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19059, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19253', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A prescribed span of time when an education institution is open, instruction is provided, and students are under the direction and guidance of teachers and/or education institution administration. A session may be interrupted by one or more vacations.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'RefSessionTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Session Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'RefSessionTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000254', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'RefSessionTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19254', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'RefSessionTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'RefSessionTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The total number of instruction minutes in a given session, as determined by time in class, time on task (e.g., engaged in a class), or as estimated by a qualified course designer.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'InstructionalMinutes';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'School Year Minutes, Instructional Minutes', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'InstructionalMinutes';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000244, 000499', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'InstructionalMinutes';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19244, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19490', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'InstructionalMinutes';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'InstructionalMinutes';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A local code given to the session, usually for a session that represents a term within the school year such as a marking term.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Session Code', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001270', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20236', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A short description of the Session.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Session Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001271', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20237', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Indicates that the session is a marking term.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'MarkingTermIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Session Marking Term Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'MarkingTermIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001272', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'MarkingTermIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20238', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'MarkingTermIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'MarkingTermIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Indicates that the session is a scheduling term.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'SchedulingTermIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Session Scheduling Term Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'SchedulingTermIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001273', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'SchedulingTermIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20239', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'SchedulingTermIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'SchedulingTermIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Indicates that the session is an attendance term.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'AttendanceTermIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Session Attendance Term Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'AttendanceTermIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001274', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'AttendanceTermIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20240', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'AttendanceTermIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'AttendanceTermIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate key from OrganizationCalendar.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'OrganizationCalendarId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The total number of days that the school was or is anticipated to be in session during the school year. Also included are days on which the education institution facility is closed and the student body as a whole is engaged in planned activities off-campus under the guidance and direction of staff members.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'DaysInSession';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Days In Session', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'DaysInSession';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000496', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'DaysInSession';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19487', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'DaysInSession';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'DaysInSession';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The year, month and day of the first day of student instruction for the school year.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'FirstInstructionDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'First Instruction Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'FirstInstructionDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000497', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'FirstInstructionDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19488', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'FirstInstructionDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'FirstInstructionDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The year, month and day of the last day of student instruction (including days or times that students are present for purposes of testing and/or evaluation, but not including whole or part-days whose sole purposes is for distribution of report cards).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'LastInstructionDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Last Instruction Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'LastInstructionDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000498', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'LastInstructionDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19489', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'LastInstructionDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'LastInstructionDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The number of minutes in the day in which the school is normally in session.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'MinutesPerDay';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Minutes Per Day', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'MinutesPerDay';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000500', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'MinutesPerDay';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19491', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'MinutesPerDay';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'MinutesPerDay';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The hour, minute and second on which a session begins.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'SessionStartTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Session Start Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'SessionStartTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000985', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'SessionStartTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19986', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'SessionStartTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'SessionStartTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The hour, minute and second on which a session ends.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'SessionEndTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Session End Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'SessionEndTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000986', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'SessionEndTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19988', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'SessionEndTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'SessionEndTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The academic term for which the data apply.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'RefAcademicTermDesignatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Academic Term Designator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'RefAcademicTermDesignatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000727', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'RefAcademicTermDesignatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19703', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'RefAcademicTermDesignatorId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'RefAcademicTermDesignatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The number of instructional minutes in the day in which the school is normally in session.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'InstructionalMinutesPerDay';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Instructional Minutes Per Day', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'InstructionalMinutesPerDay';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002099', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'InstructionalMinutesPerDay';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25025', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'InstructionalMinutesPerDay';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'InstructionalMinutesPerDay';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The number of lunch minutes in the day in which the school is normally in session.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'LunchMinutesPerDay';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Lunch Minutes Per Day', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'LunchMinutesPerDay';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002100', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'LunchMinutesPerDay';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25046', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'LunchMinutesPerDay';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'LunchMinutesPerDay';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The number of recess minutes in the day in which the school is normally in session.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'RecessMinutesPerDay';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Recess Minutes Per Day', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'RecessMinutesPerDay';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002101', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'RecessMinutesPerDay';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25078', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'RecessMinutesPerDay';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'RecessMinutesPerDay';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The position of this session in a sequence of sessions.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'SessionSequenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Session Sequence Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'SessionSequenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002021', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'SessionSequenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25086', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'SessionSequenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarSession', @level2type = N'COLUMN', @level2name = N'SessionSequenceNumber';

