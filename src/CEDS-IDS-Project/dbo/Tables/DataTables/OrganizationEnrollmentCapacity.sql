CREATE TABLE [dbo].[OrganizationEnrollmentCapacity] (
    [OrganizationEnrollmentCapacityId]  INT      IDENTITY (1, 1) NOT NULL,
    [RefAdjustedCapacityReasonTypeId]   INT      NULL,
    [OrganizationCalendarSessionId]     INT      NULL,
    [EarlyLearningAge2AndOlderCapacity] INT      NULL,
    [EarlyLearningAgeUnder2Capacity]    INT      NULL,
    [EnrollmentCapacity]                INT      NULL,
    [AdjustedCapacity]                  INT      NULL,
    [RecordStartDateTime]               DATETIME NULL,
    [RecordEndDateTime]                 DATETIME NULL,
    [RecordStatusId]                    INT      NULL,
    [DataCollectionId]                  INT      NULL,
    CONSTRAINT [PK_OrganizationEnrollmentCapacity] PRIMARY KEY CLUSTERED ([OrganizationEnrollmentCapacityId] ASC),
    CONSTRAINT [FK_OrganizationEnrollmentCapacity_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_OrganizationEnrollmentCapacity_OrganizationCalendarSession] FOREIGN KEY ([OrganizationCalendarSessionId]) REFERENCES [dbo].[OrganizationCalendarSession] ([OrganizationCalendarSessionId]),
    CONSTRAINT [FK_OrganizationEnrollmentCapacity_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_OrganizationEnrollmentCapacity_RefAdjustedCapacityReasonType] FOREIGN KEY ([RefAdjustedCapacityReasonTypeId]) REFERENCES [dbo].[RefAdjustedCapacityReasonType] ([RefAdjustedCapacityReasonTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information about the capacity for an enrollment in an organization such as school, program, or course.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationEnrollmentCapacity';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationEnrollmentCapacity';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Maximum number of age-appropriate students who can be enrolled. ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationEnrollmentCapacity', @level2type = N'COLUMN', @level2name = N'OrganizationEnrollmentCapacityId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Enrollment Capacity', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationEnrollmentCapacity', @level2type = N'COLUMN', @level2name = N'OrganizationEnrollmentCapacityId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002012', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationEnrollmentCapacity', @level2type = N'COLUMN', @level2name = N'OrganizationEnrollmentCapacityId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=22979', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationEnrollmentCapacity', @level2type = N'COLUMN', @level2name = N'OrganizationEnrollmentCapacityId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationEnrollmentCapacity', @level2type = N'COLUMN', @level2name = N'OrganizationEnrollmentCapacityId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Identifies the reason for adjusted capacity in a program. ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationEnrollmentCapacity', @level2type = N'COLUMN', @level2name = N'RefAdjustedCapacityReasonTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Adjusted Capacity Reason Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationEnrollmentCapacity', @level2type = N'COLUMN', @level2name = N'RefAdjustedCapacityReasonTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002000', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationEnrollmentCapacity', @level2type = N'COLUMN', @level2name = N'RefAdjustedCapacityReasonTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=22973', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationEnrollmentCapacity', @level2type = N'COLUMN', @level2name = N'RefAdjustedCapacityReasonTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationEnrollmentCapacity', @level2type = N'COLUMN', @level2name = N'RefAdjustedCapacityReasonTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Maximum number of age-appropriate students who can be enrolled. ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationEnrollmentCapacity', @level2type = N'COLUMN', @level2name = N'OrganizationCalendarSessionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Enrollment Capacity', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationEnrollmentCapacity', @level2type = N'COLUMN', @level2name = N'OrganizationCalendarSessionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002012', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationEnrollmentCapacity', @level2type = N'COLUMN', @level2name = N'OrganizationCalendarSessionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=22979', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationEnrollmentCapacity', @level2type = N'COLUMN', @level2name = N'OrganizationCalendarSessionId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationEnrollmentCapacity', @level2type = N'COLUMN', @level2name = N'OrganizationCalendarSessionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The maximum number of children ages two and above that can be served.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationEnrollmentCapacity', @level2type = N'COLUMN', @level2name = N'EarlyLearningAge2AndOlderCapacity';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Early Learning Age 2 and Older Capacity', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationEnrollmentCapacity', @level2type = N'COLUMN', @level2name = N'EarlyLearningAge2AndOlderCapacity';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002001', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationEnrollmentCapacity', @level2type = N'COLUMN', @level2name = N'EarlyLearningAge2AndOlderCapacity';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=22976', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationEnrollmentCapacity', @level2type = N'COLUMN', @level2name = N'EarlyLearningAge2AndOlderCapacity';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationEnrollmentCapacity', @level2type = N'COLUMN', @level2name = N'EarlyLearningAge2AndOlderCapacity';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The maximum number of children under the age of two that can be served.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationEnrollmentCapacity', @level2type = N'COLUMN', @level2name = N'EarlyLearningAgeUnder2Capacity';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Early Learning Age Under 2 Capacity', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationEnrollmentCapacity', @level2type = N'COLUMN', @level2name = N'EarlyLearningAgeUnder2Capacity';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002002', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationEnrollmentCapacity', @level2type = N'COLUMN', @level2name = N'EarlyLearningAgeUnder2Capacity';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=22977', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationEnrollmentCapacity', @level2type = N'COLUMN', @level2name = N'EarlyLearningAgeUnder2Capacity';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationEnrollmentCapacity', @level2type = N'COLUMN', @level2name = N'EarlyLearningAgeUnder2Capacity';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Maximum number of age-appropriate students who can be enrolled. ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationEnrollmentCapacity', @level2type = N'COLUMN', @level2name = N'EnrollmentCapacity';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Enrollment Capacity', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationEnrollmentCapacity', @level2type = N'COLUMN', @level2name = N'EnrollmentCapacity';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002012', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationEnrollmentCapacity', @level2type = N'COLUMN', @level2name = N'EnrollmentCapacity';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=22979', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationEnrollmentCapacity', @level2type = N'COLUMN', @level2name = N'EnrollmentCapacity';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationEnrollmentCapacity', @level2type = N'COLUMN', @level2name = N'EnrollmentCapacity';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The maximum number of participants that can be served in a program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationEnrollmentCapacity', @level2type = N'COLUMN', @level2name = N'AdjustedCapacity';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Adjusted Capacity', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationEnrollmentCapacity', @level2type = N'COLUMN', @level2name = N'AdjustedCapacity';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001999', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationEnrollmentCapacity', @level2type = N'COLUMN', @level2name = N'AdjustedCapacity';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=22972', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationEnrollmentCapacity', @level2type = N'COLUMN', @level2name = N'AdjustedCapacity';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationEnrollmentCapacity', @level2type = N'COLUMN', @level2name = N'AdjustedCapacity';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationEnrollmentCapacity', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationEnrollmentCapacity', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationEnrollmentCapacity', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationEnrollmentCapacity', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationEnrollmentCapacity', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationEnrollmentCapacity', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationEnrollmentCapacity', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationEnrollmentCapacity', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationEnrollmentCapacity', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationEnrollmentCapacity', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

