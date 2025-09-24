CREATE TABLE [dbo].[CompetencySet] (
    [CompetencySetId]             INT      IDENTITY (1, 1) NOT NULL,
    [ChildOf_CompetencySet]       INT      NULL,
    [RefCompletionCriteriaId]     INT      NULL,
    [CompletionCriteriaThreshold] INT      NULL,
    [RecordStartDateTime]         DATETIME NULL,
    [RecordEndDateTime]           DATETIME NULL,
    [RecordStatusId]              INT      NULL,
    [DataCollectionId]            INT      NULL,
    CONSTRAINT [PK_CompetencySet] PRIMARY KEY CLUSTERED ([CompetencySetId] ASC),
    CONSTRAINT [FK_CompetencySet_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_CompetencySet_LearningStandardItemSet] FOREIGN KEY ([ChildOf_CompetencySet]) REFERENCES [dbo].[CompetencySet] ([CompetencySetId]),
    CONSTRAINT [FK_CompetencySet_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_CompetencySet_RefCompetencySetCompletionCriteria] FOREIGN KEY ([RefCompletionCriteriaId]) REFERENCES [dbo].[RefCompetencySetCompletionCriteria] ([RefCompetencySetCompletionCriteriaId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'CompetencySet supports defining criteria for award or recognition of a credential or micro-credential based on a person''s attainment of one or more CompetencyFrameworkItem(s). The set may have a completion criteria specifying if all or some of the items are required. If only some are required  then Completion Criteria Threshold is used to specify how many. Competency Set may also include other Competency Sets so it is possible to make a rule such as "the person must complete these three required competency items and 2 out of 3 of these items specified in this sub set."', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencySet';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencySet';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencySet', @level2type = N'COLUMN', @level2name = N'CompetencySetId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - CompentencySet (this table)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencySet', @level2type = N'COLUMN', @level2name = N'ChildOf_CompetencySet';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The criteria for the set of competencies that represent completion or partial completion of a unit, course, program, degree, certification, or other achievement/award. Specifies whether completion requires achievement of all items in the set or some number of items.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencySet', @level2type = N'COLUMN', @level2name = N'RefCompletionCriteriaId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Competency Set Completion Criteria', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencySet', @level2type = N'COLUMN', @level2name = N'RefCompletionCriteriaId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000877', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencySet', @level2type = N'COLUMN', @level2name = N'RefCompletionCriteriaId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19877', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencySet', @level2type = N'COLUMN', @level2name = N'RefCompletionCriteriaId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencySet', @level2type = N'COLUMN', @level2name = N'RefCompletionCriteriaId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The minimum number of competencies in the set that must be achieved for completion or partial completion of a unit, course, program, degree, certification, or other achievement/award.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencySet', @level2type = N'COLUMN', @level2name = N'CompletionCriteriaThreshold';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Competency Set Completion Criteria Threshold', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencySet', @level2type = N'COLUMN', @level2name = N'CompletionCriteriaThreshold';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000878', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencySet', @level2type = N'COLUMN', @level2name = N'CompletionCriteriaThreshold';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19878', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencySet', @level2type = N'COLUMN', @level2name = N'CompletionCriteriaThreshold';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencySet', @level2type = N'COLUMN', @level2name = N'CompletionCriteriaThreshold';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencySet', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencySet', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencySet', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencySet', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencySet', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencySet', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencySet', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencySet', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencySet', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencySet', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

