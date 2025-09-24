CREATE TABLE [dbo].[LearningResourceEducationLevel] (
    [LearningResourceEducationLevelId] INT      IDENTITY (1, 1) NOT NULL,
    [LearningResourceId]               INT      NOT NULL,
    [RefEducationLevelId]              INT      NOT NULL,
    [RecordStartDateTime]              DATETIME NULL,
    [RecordEndDateTime]                DATETIME NULL,
    [RecordStatusId]                   INT      NULL,
    [DataCollectionId]                 INT      NULL,
    CONSTRAINT [PK_LearningResourceEducationLvl] PRIMARY KEY CLUSTERED ([LearningResourceEducationLevelId] ASC),
    CONSTRAINT [FK_LearningResource_GradeLevel_LearningResource] FOREIGN KEY ([LearningResourceId]) REFERENCES [dbo].[LearningResource] ([LearningResourceId]),
    CONSTRAINT [FK_LearningResourceEducationLevel_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_LearningResourceEducationLevel_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_LearningResourceEducationLevel_RefEducationLevel] FOREIGN KEY ([RefEducationLevelId]) REFERENCES [dbo].[RefEducationLevel] ([RefEducationLevelId]),
    CONSTRAINT [IX_LearningResourceEducationLevel] UNIQUE NONCLUSTERED ([LearningResourceId] ASC, [RefEducationLevelId] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Links a learning resource record to one or more an education levels.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResourceEducationLevel';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResourceEducationLevel';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResourceEducationLevel', @level2type = N'COLUMN', @level2name = N'LearningResourceEducationLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - LearningResource', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResourceEducationLevel', @level2type = N'COLUMN', @level2name = N'LearningResourceId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The education level, grade level or primary instructional level at which a Learning Resource is intended.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResourceEducationLevel', @level2type = N'COLUMN', @level2name = N'RefEducationLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Learning Resource Education Level ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResourceEducationLevel', @level2type = N'COLUMN', @level2name = N'RefEducationLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001246', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResourceEducationLevel', @level2type = N'COLUMN', @level2name = N'RefEducationLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20212', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResourceEducationLevel', @level2type = N'COLUMN', @level2name = N'RefEducationLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResourceEducationLevel', @level2type = N'COLUMN', @level2name = N'RefEducationLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResourceEducationLevel', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResourceEducationLevel', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResourceEducationLevel', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResourceEducationLevel', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResourceEducationLevel', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResourceEducationLevel', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResourceEducationLevel', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResourceEducationLevel', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResourceEducationLevel', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LearningResourceEducationLevel', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

