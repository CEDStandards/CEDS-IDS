CREATE TABLE [dbo].[ProfessionalDevelopmentRequirement] (
    [ProfessionalDevelopmentRequirementId] INT            IDENTITY (1, 1) NOT NULL,
    [OrganizationPersonRoleId]             INT            NOT NULL,
    [RequiredTrainingClockHours]           DECIMAL (6, 2) NULL,
    [CompetencySetId]                      INT            NULL,
    [RecordStartDateTime]                  DATETIME       NULL,
    [RecordEndDateTime]                    DATETIME       NULL,
    [RecordStatusId]                       INT            NULL,
    [DataCollectionId]                     INT            NULL,
    CONSTRAINT [PK_ProfessionalDevelopmentRequirement] PRIMARY KEY CLUSTERED ([ProfessionalDevelopmentRequirementId] ASC),
    CONSTRAINT [FK_ProfessionalDevelopmentRequirement_CompetencySet] FOREIGN KEY ([CompetencySetId]) REFERENCES [dbo].[CompetencySet] ([CompetencySetId]),
    CONSTRAINT [FK_ProfessionalDevelopmentRequirement_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_ProfessionalDevelopmentRequirement_OrganizationPersonRole] FOREIGN KEY ([OrganizationPersonRoleId]) REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]),
    CONSTRAINT [FK_ProfessionalDevelopmentRequirement_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information about a requirement that a person participate in professional development related to a specific professional role or assignment. ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentRequirement';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentRequirement';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentRequirement', @level2type = N'COLUMN', @level2name = N'ProfessionalDevelopmentRequirementId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - OrganizationPersonRole', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentRequirement', @level2type = N'COLUMN', @level2name = N'OrganizationPersonRoleId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Number of clock hours of training required for providers to meet requirements of the state.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentRequirement', @level2type = N'COLUMN', @level2name = N'RequiredTrainingClockHours';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Required Training Clock Hours', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentRequirement', @level2type = N'COLUMN', @level2name = N'RequiredTrainingClockHours';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000804', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentRequirement', @level2type = N'COLUMN', @level2name = N'RequiredTrainingClockHours';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19803', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentRequirement', @level2type = N'COLUMN', @level2name = N'RequiredTrainingClockHours';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentRequirement', @level2type = N'COLUMN', @level2name = N'RequiredTrainingClockHours';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The set of one or more competencies and criteria for completion of a learning goal, unit, course, program, degree, certification, or other achievement.   (The criteria may be ''all'' competencies in the set or ''at-least'' # of competencies. Sets may be nested, e.g. all in subset A and 3 of 5 from subset B.)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentRequirement', @level2type = N'COLUMN', @level2name = N'CompetencySetId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentRequirement', @level2type = N'COLUMN', @level2name = N'CompetencySetId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentRequirement', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentRequirement', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentRequirement', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentRequirement', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentRequirement', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentRequirement', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentRequirement', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentRequirement', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentRequirement', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentRequirement', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

