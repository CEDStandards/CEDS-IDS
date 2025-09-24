CREATE TABLE [dbo].[K12OrganizationStudentResponsibility] (
    [K12OrganizationStudentResponsibilityId]          INT      IDENTITY (1, 1) NOT NULL,
    [OrganizationPersonRoleId]                        INT      NOT NULL,
    [RefK12ResponsibilityTypeId]                      INT      NOT NULL,
    [RecordStartDateTime]                             DATETIME NULL,
    [RecordEndDateTime]                               DATETIME NULL,
    [RefStudentSchoolAffiliationStateDefinedStatusId] INT      NULL,
    [RecordStatusId]                                  INT      NULL,
    [DataCollectionId]                                INT      NULL,
    CONSTRAINT [PK_K12OrgStudentResponsibility] PRIMARY KEY CLUSTERED ([K12OrganizationStudentResponsibilityId] ASC),
    CONSTRAINT [FK_K12OrganizationStudentResponsibility_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_K12OrganizationStudentResponsibility_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_K12OrganizationStudentResponsibility_RefStudentSchoolAffiliationStateDefinedStatus] FOREIGN KEY ([RefStudentSchoolAffiliationStateDefinedStatusId]) REFERENCES [dbo].[RefStudentSchoolAffiliationStateDefinedStatus] ([RefStudentSchoolAffiliationStateDefinedStatusId]),
    CONSTRAINT [FK_K12OrgStudentResponsibility_OrganizationPersonRole] FOREIGN KEY ([OrganizationPersonRoleId]) REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]),
    CONSTRAINT [FK_K12OrgStudentResponsibility_RefK12ResponsibilityType] FOREIGN KEY ([RefK12ResponsibilityTypeId]) REFERENCES [dbo].[RefK12ResponsibilityType] ([RefK12ResponsibilityTypeId]),
    CONSTRAINT [IX_K12OrganizationStudentResponsibility] UNIQUE NONCLUSTERED ([OrganizationPersonRoleId] ASC, [RefK12ResponsibilityTypeId] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'K12OrganizationStudentResponsibility handles CEDS elements "Responsible School Type" and "Responsible District Type". Different organizations may be responsible for attendance, accountability, funding, IEP, and transportation for a single enrollment.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12OrganizationStudentResponsibility';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12OrganizationStudentResponsibility';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12OrganizationStudentResponsibility', @level2type = N'COLUMN', @level2name = N'K12OrganizationStudentResponsibilityId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate key - OrganizationPersonRole', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12OrganizationStudentResponsibility', @level2type = N'COLUMN', @level2name = N'OrganizationPersonRoleId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of services/instruction the organization is responsible for the student.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12OrganizationStudentResponsibility', @level2type = N'COLUMN', @level2name = N'RefK12ResponsibilityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Responsible District Type, Responsible School Type, Responsible District Identifier, Responsible School Identifier, Responsible Organization Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12OrganizationStudentResponsibility', @level2type = N'COLUMN', @level2name = N'RefK12ResponsibilityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000594, 000595, 000637, 000638, 001467', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12OrganizationStudentResponsibility', @level2type = N'COLUMN', @level2name = N'RefK12ResponsibilityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19587, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19588, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19639, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19640, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20439', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12OrganizationStudentResponsibility', @level2type = N'COLUMN', @level2name = N'RefK12ResponsibilityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12OrganizationStudentResponsibility', @level2type = N'COLUMN', @level2name = N'RefK12ResponsibilityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12OrganizationStudentResponsibility', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12OrganizationStudentResponsibility', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12OrganizationStudentResponsibility', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12OrganizationStudentResponsibility', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12OrganizationStudentResponsibility', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12OrganizationStudentResponsibility', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12OrganizationStudentResponsibility', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12OrganizationStudentResponsibility', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12OrganizationStudentResponsibility', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12OrganizationStudentResponsibility', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of the nature of a student''s affiliation, as defined by the state, with a public school and used generally, but not exclusively, for the purpose of determining residency, funding, or accountability.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12OrganizationStudentResponsibility', @level2type = N'COLUMN', @level2name = N'RefStudentSchoolAffiliationStateDefinedStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Student School Affiliation State Defined Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12OrganizationStudentResponsibility', @level2type = N'COLUMN', @level2name = N'RefStudentSchoolAffiliationStateDefinedStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001963', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12OrganizationStudentResponsibility', @level2type = N'COLUMN', @level2name = N'RefStudentSchoolAffiliationStateDefinedStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20968', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12OrganizationStudentResponsibility', @level2type = N'COLUMN', @level2name = N'RefStudentSchoolAffiliationStateDefinedStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12OrganizationStudentResponsibility', @level2type = N'COLUMN', @level2name = N'RefStudentSchoolAffiliationStateDefinedStatusId';

