CREATE TABLE [dbo].[OrganizationCalendarDay] (
    [OrganizationCalendarDayId] INT           IDENTITY (1, 1) NOT NULL,
    [OrganizationCalendarId]    INT           NOT NULL,
    [DayName]                   NVARCHAR (30) NOT NULL,
    [AlternateDayName]          NVARCHAR (30) NULL,
    [RecordStartDateTime]       DATETIME      NULL,
    [RecordEndDateTime]         DATETIME      NULL,
    [RecordStatusId]            INT           NULL,
    [DataCollectionId]          INT           NULL,
    CONSTRAINT [PK_OrganizationCalendarDay] PRIMARY KEY CLUSTERED ([OrganizationCalendarDayId] ASC),
    CONSTRAINT [FK_OrganizationCalendarDay_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_OrganizationCalendarDay_OrganizationCalendar1] FOREIGN KEY ([OrganizationCalendarId]) REFERENCES [dbo].[OrganizationCalendar] ([OrganizationCalendarId]),
    CONSTRAINT [FK_OrganizationCalendarDay_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'OrganzationCalendarDay is for naming days within the regular schedule.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarDay';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarDay';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarDay', @level2type = N'COLUMN', @level2name = N'OrganizationCalendarDayId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - OrgainzationCalendar', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarDay', @level2type = N'COLUMN', @level2name = N'OrganizationCalendarId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An name used for the school day, typically used for the bell schedule.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarDay', @level2type = N'COLUMN', @level2name = N'DayName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarDay', @level2type = N'COLUMN', @level2name = N'DayName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An alternate name used for the school day, typically used for the bell schedule (e.g., Blue day, Red day).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarDay', @level2type = N'COLUMN', @level2name = N'AlternateDayName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Alternate Day Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarDay', @level2type = N'COLUMN', @level2name = N'AlternateDayName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000598', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarDay', @level2type = N'COLUMN', @level2name = N'AlternateDayName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19591', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarDay', @level2type = N'COLUMN', @level2name = N'AlternateDayName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarDay', @level2type = N'COLUMN', @level2name = N'AlternateDayName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarDay', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarDay', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarDay', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarDay', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarDay', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarDay', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarDay', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarDay', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarDay', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationCalendarDay', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

