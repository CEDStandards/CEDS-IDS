CREATE TABLE [dbo].[PSStudentProgram] (
    [PSStudentProgramId]                    INT      IDENTITY (1, 1) NOT NULL,
    [OrganizationPersonRoleId]              INT      NOT NULL,
    [RefCipUseId]                           INT      NULL,
    [PsProgramId]                           INT      NULL,
    [RefWorkbasedLearningOpportunityTypeId] INT      NULL,
    [RefTransferOutIndicatorId]             INT      NULL,
    [RecordStartDateTime]                   DATETIME NULL,
    [RecordEndDateTime]                     DATETIME NULL,
    [RefCareerClusterId]                    INT      NULL,
    [RecordStatusId]                        INT      NULL,
    [DataCollectionId]                      INT      NULL,
    CONSTRAINT [PK_PSStudentEnrollmentCIP] PRIMARY KEY CLUSTERED ([PSStudentProgramId] ASC),
    CONSTRAINT [FK_PSStudentEnrollmentCIP_RefCipUse] FOREIGN KEY ([RefCipUseId]) REFERENCES [dbo].[RefCipUse] ([RefCipUseId]),
    CONSTRAINT [FK_PSStudentProgram_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_PSStudentProgram_OrganizationPersonRole] FOREIGN KEY ([OrganizationPersonRoleId]) REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]),
    CONSTRAINT [FK_PSStudentProgram_PsProgram] FOREIGN KEY ([PsProgramId]) REFERENCES [dbo].[PsProgram] ([PsProgramId]),
    CONSTRAINT [FK_PSStudentProgram_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_PSStudentProgram_RefCareerCluster] FOREIGN KEY ([RefCareerClusterId]) REFERENCES [dbo].[RefCareerCluster] ([RefCareerClusterId]),
    CONSTRAINT [FK_PSStudentProgram_RefTransferOutIndicator] FOREIGN KEY ([RefTransferOutIndicatorId]) REFERENCES [dbo].[RefTransferOutIndicator] ([RefTransferOutIndicatorId]),
    CONSTRAINT [FK_PsStudentProgram_RefWorkbasedLearningOpportunityType] FOREIGN KEY ([RefWorkbasedLearningOpportunityTypeId]) REFERENCES [dbo].[RefWorkbasedLearningOpportunityType] ([RefWorkbasedLearningOpportunityTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The classification of a program of a postsecondary student.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PSStudentProgram';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PSStudentProgram';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PSStudentProgram', @level2type = N'COLUMN', @level2name = N'PSStudentProgramId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - Organization', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PSStudentProgram', @level2type = N'COLUMN', @level2name = N'OrganizationPersonRoleId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indicator of whether the CIP Code is referencing an enrollment program or an award program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PSStudentProgram', @level2type = N'COLUMN', @level2name = N'RefCipUseId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Classification of Instructional Program Use', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PSStudentProgram', @level2type = N'COLUMN', @level2name = N'RefCipUseId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000044', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PSStudentProgram', @level2type = N'COLUMN', @level2name = N'RefCipUseId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19044', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PSStudentProgram', @level2type = N'COLUMN', @level2name = N'RefCipUseId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PSStudentProgram', @level2type = N'COLUMN', @level2name = N'RefCipUseId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - PsProgram', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PSStudentProgram', @level2type = N'COLUMN', @level2name = N'PsProgramId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of work-based learning opportunity a student participated in.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PSStudentProgram', @level2type = N'COLUMN', @level2name = N'RefWorkbasedLearningOpportunityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Work-based Learning Opportunity Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PSStudentProgram', @level2type = N'COLUMN', @level2name = N'RefWorkbasedLearningOpportunityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001499', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PSStudentProgram', @level2type = N'COLUMN', @level2name = N'RefWorkbasedLearningOpportunityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20471', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PSStudentProgram', @level2type = N'COLUMN', @level2name = N'RefWorkbasedLearningOpportunityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PSStudentProgram', @level2type = N'COLUMN', @level2name = N'RefWorkbasedLearningOpportunityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indicator of whether the student has transferred to another institution.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PSStudentProgram', @level2type = N'COLUMN', @level2name = N'RefTransferOutIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Transfer-out Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PSStudentProgram', @level2type = N'COLUMN', @level2name = N'RefTransferOutIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001629', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PSStudentProgram', @level2type = N'COLUMN', @level2name = N'RefTransferOutIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20610', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PSStudentProgram', @level2type = N'COLUMN', @level2name = N'RefTransferOutIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PSStudentProgram', @level2type = N'COLUMN', @level2name = N'RefTransferOutIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PSStudentProgram', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PSStudentProgram', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PSStudentProgram', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PSStudentProgram', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PSStudentProgram', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PSStudentProgram', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PSStudentProgram', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PSStudentProgram', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PSStudentProgram', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PSStudentProgram', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The career cluster that defines the industry or occupational focus which may be associated with a career pathways program, plan of study, or course.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PSStudentProgram', @level2type = N'COLUMN', @level2name = N'RefCareerClusterId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Career Cluster', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PSStudentProgram', @level2type = N'COLUMN', @level2name = N'RefCareerClusterId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001288', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PSStudentProgram', @level2type = N'COLUMN', @level2name = N'RefCareerClusterId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20254', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PSStudentProgram', @level2type = N'COLUMN', @level2name = N'RefCareerClusterId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PSStudentProgram', @level2type = N'COLUMN', @level2name = N'RefCareerClusterId';

