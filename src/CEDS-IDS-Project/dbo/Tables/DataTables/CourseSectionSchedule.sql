CREATE TABLE [dbo].[CourseSectionSchedule] (
    [CourseSectionScheduleId] INT           IDENTITY (1, 1) NOT NULL,
    [CourseSectionId]         INT           NOT NULL,
    [ClassMeetingDays]        NVARCHAR (60) NULL,
    [ClassBeginningTime]      TIME (7)      NULL,
    [ClassEndingTime]         TIME (7)      NULL,
    [ClassPeriod]             NVARCHAR (30) NULL,
    [TimeDayIdentifier]       NVARCHAR (40) NULL,
    [RecordStartDateTime]     DATETIME      NULL,
    [RecordEndDateTime]       DATETIME      NULL,
    [RecordStatusId]          INT           NULL,
    [DataCollectionId]        INT           NULL,
    CONSTRAINT [PK_CourseSectionSchedule] PRIMARY KEY CLUSTERED ([CourseSectionScheduleId] ASC),
    CONSTRAINT [FK_CourseSectionSchedule_CourseSection] FOREIGN KEY ([CourseSectionId]) REFERENCES [dbo].[CourseSection] ([CourseSectionId]),
    CONSTRAINT [FK_CourseSectionSchedule_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_CourseSectionSchedule_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'CourseSectionSchedule contains the times and days that a class is scheduled to meet on a weekly basis. ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSectionSchedule';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSectionSchedule';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSectionSchedule', @level2type = N'COLUMN', @level2name = N'CourseSectionScheduleId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The day(s) of the week (e.g., Monday, Wednesday) that the class meets or an indication that a class meets "out-of-school" or "self-paced".', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSectionSchedule', @level2type = N'COLUMN', @level2name = N'ClassMeetingDays';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Class Meeting Days', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSectionSchedule', @level2type = N'COLUMN', @level2name = N'ClassMeetingDays';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000521', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSectionSchedule', @level2type = N'COLUMN', @level2name = N'ClassMeetingDays';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19512', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSectionSchedule', @level2type = N'COLUMN', @level2name = N'ClassMeetingDays';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSectionSchedule', @level2type = N'COLUMN', @level2name = N'ClassMeetingDays';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of the time of day the class begins.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSectionSchedule', @level2type = N'COLUMN', @level2name = N'ClassBeginningTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Class Beginning Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSectionSchedule', @level2type = N'COLUMN', @level2name = N'ClassBeginningTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000519', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSectionSchedule', @level2type = N'COLUMN', @level2name = N'ClassBeginningTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19510', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSectionSchedule', @level2type = N'COLUMN', @level2name = N'ClassBeginningTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSectionSchedule', @level2type = N'COLUMN', @level2name = N'ClassBeginningTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of the time of day the class ends.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSectionSchedule', @level2type = N'COLUMN', @level2name = N'ClassEndingTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Class Ending Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSectionSchedule', @level2type = N'COLUMN', @level2name = N'ClassEndingTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000520', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSectionSchedule', @level2type = N'COLUMN', @level2name = N'ClassEndingTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19511', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSectionSchedule', @level2type = N'COLUMN', @level2name = N'ClassEndingTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSectionSchedule', @level2type = N'COLUMN', @level2name = N'ClassEndingTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of the portion of a typical daily session in which students receive instruction in a specified subject (e.g., morning, sixth period, block period, or AB schedules).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSectionSchedule', @level2type = N'COLUMN', @level2name = N'ClassPeriod';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Class Period', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSectionSchedule', @level2type = N'COLUMN', @level2name = N'ClassPeriod';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000522', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSectionSchedule', @level2type = N'COLUMN', @level2name = N'ClassPeriod';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19513', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSectionSchedule', @level2type = N'COLUMN', @level2name = N'ClassPeriod';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSectionSchedule', @level2type = N'COLUMN', @level2name = N'ClassPeriod';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The unique identifier for the locally defined rotation cycle date code when the class meets (e.g., in a two day schedule, valid values could be "A" and "B", or "1" and "2").', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSectionSchedule', @level2type = N'COLUMN', @level2name = N'TimeDayIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Timetable Day Identifier', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSectionSchedule', @level2type = N'COLUMN', @level2name = N'TimeDayIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000523', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSectionSchedule', @level2type = N'COLUMN', @level2name = N'TimeDayIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19514', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSectionSchedule', @level2type = N'COLUMN', @level2name = N'TimeDayIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSectionSchedule', @level2type = N'COLUMN', @level2name = N'TimeDayIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSectionSchedule', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSectionSchedule', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSectionSchedule', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSectionSchedule', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSectionSchedule', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSectionSchedule', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSectionSchedule', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSectionSchedule', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSectionSchedule', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSectionSchedule', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

