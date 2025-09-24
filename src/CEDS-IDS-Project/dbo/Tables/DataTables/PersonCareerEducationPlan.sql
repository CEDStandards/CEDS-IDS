CREATE TABLE [dbo].[PersonCareerEducationPlan] (
    [PersonCareerEducationPlanId]                     INT      IDENTITY (1, 1) NOT NULL,
    [PersonId]                                        INT      NOT NULL,
    [LastUpdated]                                     DATE     NULL,
    [RefCareerEducationPlanTypeId]                    INT      NULL,
    [ProfessionalDevelopmentPlanApprovedBySupervisor] BIT      NULL,
    [ProfessionalDevelopmentPlanCompletion]           DATE     NULL,
    [TuitionFunded]                                   BIT      NULL,
    [RecordStartDateTime]                             DATETIME NULL,
    [RecordEndDateTime]                               DATETIME NULL,
    [RecordStatusId]                                  INT      NULL,
    [DataCollectionId]                                INT      NULL,
    CONSTRAINT [PK_PersonCareerEducationPlan] PRIMARY KEY CLUSTERED ([PersonCareerEducationPlanId] ASC),
    CONSTRAINT [FK_PersonCareerEducationPlan_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_PersonCareerEducationPlan_Person] FOREIGN KEY ([PersonId]) REFERENCES [dbo].[Person] ([PersonId]),
    CONSTRAINT [FK_PersonCareerEducationPlan_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_PersonCareerEducationPlan_RefCareerEduPlanType] FOREIGN KEY ([RefCareerEducationPlanTypeId]) REFERENCES [dbo].[RefCareerEducationPlanType] ([RefCareerEducationPlanTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information about a career education plan for a person.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonCareerEducationPlan';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonCareerEducationPlan';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate key.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonCareerEducationPlan', @level2type = N'COLUMN', @level2name = N'PersonCareerEducationPlanId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate key from Person.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonCareerEducationPlan', @level2type = N'COLUMN', @level2name = N'PersonId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The date on which an individual''s professional development career plan was last updated.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonCareerEducationPlan', @level2type = N'COLUMN', @level2name = N'LastUpdated';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Career Education Plan Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonCareerEducationPlan', @level2type = N'COLUMN', @level2name = N'LastUpdated';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001289', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonCareerEducationPlan', @level2type = N'COLUMN', @level2name = N'LastUpdated';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonCareerEducationPlan', @level2type = N'COLUMN', @level2name = N'LastUpdated';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonCareerEducationPlan', @level2type = N'COLUMN', @level2name = N'LastUpdated';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indicator of whether a student completed an individualized guidance and counseling plan.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonCareerEducationPlan', @level2type = N'COLUMN', @level2name = N'RefCareerEducationPlanTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Career Education Plan Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonCareerEducationPlan', @level2type = N'COLUMN', @level2name = N'RefCareerEducationPlanTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001290', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonCareerEducationPlan', @level2type = N'COLUMN', @level2name = N'RefCareerEducationPlanTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20256', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonCareerEducationPlan', @level2type = N'COLUMN', @level2name = N'RefCareerEducationPlanTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonCareerEducationPlan', @level2type = N'COLUMN', @level2name = N'RefCareerEducationPlanTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Professional development plan is approved by the employee''s supervisor.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonCareerEducationPlan', @level2type = N'COLUMN', @level2name = N'ProfessionalDevelopmentPlanApprovedBySupervisor';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Professional Development Plan Approved By Supervisor', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonCareerEducationPlan', @level2type = N'COLUMN', @level2name = N'ProfessionalDevelopmentPlanApprovedBySupervisor';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001620', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonCareerEducationPlan', @level2type = N'COLUMN', @level2name = N'ProfessionalDevelopmentPlanApprovedBySupervisor';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20599', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonCareerEducationPlan', @level2type = N'COLUMN', @level2name = N'ProfessionalDevelopmentPlanApprovedBySupervisor';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonCareerEducationPlan', @level2type = N'COLUMN', @level2name = N'ProfessionalDevelopmentPlanApprovedBySupervisor';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The date the professional development plan is completed.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonCareerEducationPlan', @level2type = N'COLUMN', @level2name = N'ProfessionalDevelopmentPlanCompletion';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Professional Development Plan Completion', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonCareerEducationPlan', @level2type = N'COLUMN', @level2name = N'ProfessionalDevelopmentPlanCompletion';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001621', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonCareerEducationPlan', @level2type = N'COLUMN', @level2name = N'ProfessionalDevelopmentPlanCompletion';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20600', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonCareerEducationPlan', @level2type = N'COLUMN', @level2name = N'ProfessionalDevelopmentPlanCompletion';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonCareerEducationPlan', @level2type = N'COLUMN', @level2name = N'ProfessionalDevelopmentPlanCompletion';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Indicates that tuition for person''s participation in a program, service, or course is funded or partially funded by an external grant program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonCareerEducationPlan', @level2type = N'COLUMN', @level2name = N'TuitionFunded';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Tuition Funded', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonCareerEducationPlan', @level2type = N'COLUMN', @level2name = N'TuitionFunded';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001575', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonCareerEducationPlan', @level2type = N'COLUMN', @level2name = N'TuitionFunded';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20554', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonCareerEducationPlan', @level2type = N'COLUMN', @level2name = N'TuitionFunded';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonCareerEducationPlan', @level2type = N'COLUMN', @level2name = N'TuitionFunded';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonCareerEducationPlan', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonCareerEducationPlan', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonCareerEducationPlan', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonCareerEducationPlan', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonCareerEducationPlan', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonCareerEducationPlan', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonCareerEducationPlan', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonCareerEducationPlan', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonCareerEducationPlan', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonCareerEducationPlan', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

