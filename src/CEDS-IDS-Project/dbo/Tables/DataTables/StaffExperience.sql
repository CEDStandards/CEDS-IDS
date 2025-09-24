CREATE TABLE [dbo].[StaffExperience] (
    [StaffExperienceId]                  INT            IDENTITY (1, 1) NOT NULL,
    [OrganizationPersonRoleId]           INT            NOT NULL,
    [YearsOfPriorTeachingExperience]     DECIMAL (9, 2) NULL,
    [YearsOfPriorAETeachingExperience]   DECIMAL (9, 2) NULL,
    [RecordStartDateTime]                DATETIME       NULL,
    [RecordEndDateTime]                  DATETIME       NULL,
    [RecordStatusId]                     INT            NULL,
    [DataCollectionId]                   INT            NULL,
    [YearsOfTotalExperience]             INT            NULL,
    [YearsOfPriorProfessionalExperience] INT            NULL,
    CONSTRAINT [PK_StaffExperience] PRIMARY KEY CLUSTERED ([StaffExperienceId] ASC),
    CONSTRAINT [FK_StaffExperience_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_StaffExperience_OrganizationPersonRole] FOREIGN KEY ([OrganizationPersonRoleId]) REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]),
    CONSTRAINT [FK_StaffExperience_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Number of years of experience for a staff member.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffExperience';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffExperience';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The total number of years prior to this job that a person has previously held a teaching position in one or more education institutions.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffExperience', @level2type = N'COLUMN', @level2name = N'YearsOfPriorTeachingExperience';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Years of Prior Teaching Experience', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffExperience', @level2type = N'COLUMN', @level2name = N'YearsOfPriorTeachingExperience';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000302', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffExperience', @level2type = N'COLUMN', @level2name = N'YearsOfPriorTeachingExperience';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=17302', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffExperience', @level2type = N'COLUMN', @level2name = N'YearsOfPriorTeachingExperience';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffExperience', @level2type = N'COLUMN', @level2name = N'YearsOfPriorTeachingExperience';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The total number of years that a person has previously held a teaching position in one or more adult education programs.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffExperience', @level2type = N'COLUMN', @level2name = N'YearsOfPriorAETeachingExperience';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Years of Prior Adult Education Teaching Experience', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffExperience', @level2type = N'COLUMN', @level2name = N'YearsOfPriorAETeachingExperience';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000788', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffExperience', @level2type = N'COLUMN', @level2name = N'YearsOfPriorAETeachingExperience';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=17774', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffExperience', @level2type = N'COLUMN', @level2name = N'YearsOfPriorAETeachingExperience';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffExperience', @level2type = N'COLUMN', @level2name = N'YearsOfPriorAETeachingExperience';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffExperience', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffExperience', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffExperience', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=18898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffExperience', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffExperience', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffExperience', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffExperience', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffExperience', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffExperience', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffExperience', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The total number of years that a person has held this position or a similar position in one or more organizations.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffExperience', @level2type = N'COLUMN', @level2name = N'YearsOfTotalExperience';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Years of Total Experience', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffExperience', @level2type = N'COLUMN', @level2name = N'YearsOfTotalExperience';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002060', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffExperience', @level2type = N'COLUMN', @level2name = N'YearsOfTotalExperience';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25095', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffExperience', @level2type = N'COLUMN', @level2name = N'YearsOfTotalExperience';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffExperience', @level2type = N'COLUMN', @level2name = N'YearsOfTotalExperience';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The total number of years that an individual has previously held a similar professional position in one or more education institutions prior to the current school year.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffExperience', @level2type = N'COLUMN', @level2name = N'YearsOfPriorProfessionalExperience';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Years of Prior Professional Experience', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffExperience', @level2type = N'COLUMN', @level2name = N'YearsOfPriorProfessionalExperience';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002061', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffExperience', @level2type = N'COLUMN', @level2name = N'YearsOfPriorProfessionalExperience';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25094', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffExperience', @level2type = N'COLUMN', @level2name = N'YearsOfPriorProfessionalExperience';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffExperience', @level2type = N'COLUMN', @level2name = N'YearsOfPriorProfessionalExperience';

