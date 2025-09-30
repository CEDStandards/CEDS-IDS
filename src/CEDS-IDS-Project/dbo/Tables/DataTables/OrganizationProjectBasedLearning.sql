CREATE TABLE [dbo].[OrganizationProjectBasedLearning] (
    [OrganizationProjectBasedLearningId] INT      IDENTITY (1, 1) NOT NULL,
    [RefProjectBasedLearningTypeId]      INT      NULL,
    [ProjectBasedLearningIndicator]      BIT      NULL,
    [RecordStartDateTime]                DATETIME NULL,
    [RecordEndDateTime]                  DATETIME NULL,
    [RecordStatusId]                     INT      NULL,
    [DataCollectionId]                   INT      NULL,
    CONSTRAINT [PK_OrganizationProjectBasedLearning] PRIMARY KEY CLUSTERED ([OrganizationProjectBasedLearningId] ASC),
    CONSTRAINT [FK_OrganizationProjectBasedLearning_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_OrganizationProjectBasedLearning_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_OrganizationProjectBasedLearning_RefProjectBasedLearningType] FOREIGN KEY ([RefProjectBasedLearningTypeId]) REFERENCES [dbo].[RefProjectBasedLearningType] ([RefProjectBasedLearningTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information related to project bassed learning offered by an organization.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationProjectBasedLearning';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationProjectBasedLearning';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of project-based instruction being offered.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationProjectBasedLearning', @level2type = N'COLUMN', @level2name = N'OrganizationProjectBasedLearningId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Project-Based Learning Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationProjectBasedLearning', @level2type = N'COLUMN', @level2name = N'OrganizationProjectBasedLearningId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001992', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationProjectBasedLearning', @level2type = N'COLUMN', @level2name = N'OrganizationProjectBasedLearningId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=22992', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationProjectBasedLearning', @level2type = N'COLUMN', @level2name = N'OrganizationProjectBasedLearningId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationProjectBasedLearning', @level2type = N'COLUMN', @level2name = N'OrganizationProjectBasedLearningId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of project-based instruction being offered.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationProjectBasedLearning', @level2type = N'COLUMN', @level2name = N'RefProjectBasedLearningTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Project-Based Learning Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationProjectBasedLearning', @level2type = N'COLUMN', @level2name = N'RefProjectBasedLearningTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001992', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationProjectBasedLearning', @level2type = N'COLUMN', @level2name = N'RefProjectBasedLearningTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=22992', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationProjectBasedLearning', @level2type = N'COLUMN', @level2name = N'RefProjectBasedLearningTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationProjectBasedLearning', @level2type = N'COLUMN', @level2name = N'RefProjectBasedLearningTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication that an instructional model is being implemented wherein a student learns through answering complex questions or solving for real-world problems. Also called problem-based learning, inquiry-based learning, or learning-by-doing.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationProjectBasedLearning', @level2type = N'COLUMN', @level2name = N'ProjectBasedLearningIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Project-Based Learning Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationProjectBasedLearning', @level2type = N'COLUMN', @level2name = N'ProjectBasedLearningIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001991', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationProjectBasedLearning', @level2type = N'COLUMN', @level2name = N'ProjectBasedLearningIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=22991', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationProjectBasedLearning', @level2type = N'COLUMN', @level2name = N'ProjectBasedLearningIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationProjectBasedLearning', @level2type = N'COLUMN', @level2name = N'ProjectBasedLearningIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationProjectBasedLearning', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationProjectBasedLearning', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationProjectBasedLearning', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationProjectBasedLearning', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationProjectBasedLearning', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationProjectBasedLearning', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationProjectBasedLearning', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationProjectBasedLearning', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationProjectBasedLearning', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationProjectBasedLearning', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

