CREATE TABLE [dbo].[ELChildDevelopmentalAssessment] (
    [ELChildDevelopmentalAssessmentId]       INT      IDENTITY (1, 1) NOT NULL,
    [PersonId]                               INT      NOT NULL,
    [RefChildDevelopmentalScreeningStatusId] INT      NULL,
    [RefDevelopmentalEvaluationFindingId]    INT      NULL,
    [RecordStartDateTime]                    DATETIME NULL,
    [RecordEndDateTime]                      DATETIME NULL,
    [RecordStatusId]                         INT      NULL,
    [DataCollectionId]                       INT      NULL,
    CONSTRAINT [PK_ELChildDevelopmentalAssessment] PRIMARY KEY CLUSTERED ([ELChildDevelopmentalAssessmentId] ASC),
    CONSTRAINT [FK_ELChildDevelopmentalAssessment_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_ELChildDevelopmentalAssessment_Person] FOREIGN KEY ([PersonId]) REFERENCES [dbo].[Person] ([PersonId]),
    CONSTRAINT [FK_ELChildDevelopmentalAssessment_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_ELChildDevelopmentalAssessment_RefChildDevelopmentalScreeningStatus] FOREIGN KEY ([RefChildDevelopmentalScreeningStatusId]) REFERENCES [dbo].[RefChildDevelopmentalScreeningStatus] ([RefChildDevelopmentalScreeningStatusId]),
    CONSTRAINT [FK_ELChildDevelopmentalAssessment_RefDevelopmentalEvaluationFinding] FOREIGN KEY ([RefDevelopmentalEvaluationFindingId]) REFERENCES [dbo].[RefDevelopmentalEvaluationFinding] ([RefDevelopmentalEvaluationFindingId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information about an assessment used in the context of early learning.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildDevelopmentalAssessment';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildDevelopmentalAssessment';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate key from Person.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildDevelopmentalAssessment', @level2type = N'COLUMN', @level2name = N'PersonId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The result of a brief standardized screening tool aiding in the identification of children at risk of a developmental delay/disorder.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildDevelopmentalAssessment', @level2type = N'COLUMN', @level2name = N'RefChildDevelopmentalScreeningStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Child Developmental Screening Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildDevelopmentalAssessment', @level2type = N'COLUMN', @level2name = N'RefChildDevelopmentalScreeningStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000314', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildDevelopmentalAssessment', @level2type = N'COLUMN', @level2name = N'RefChildDevelopmentalScreeningStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19314', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildDevelopmentalAssessment', @level2type = N'COLUMN', @level2name = N'RefChildDevelopmentalScreeningStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildDevelopmentalAssessment', @level2type = N'COLUMN', @level2name = N'RefChildDevelopmentalScreeningStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Child developmental delay/disability determined by procedure used by appropriate qualified personnel.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildDevelopmentalAssessment', @level2type = N'COLUMN', @level2name = N'RefDevelopmentalEvaluationFindingId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Developmental Evaluation Finding', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildDevelopmentalAssessment', @level2type = N'COLUMN', @level2name = N'RefDevelopmentalEvaluationFindingId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000315', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildDevelopmentalAssessment', @level2type = N'COLUMN', @level2name = N'RefDevelopmentalEvaluationFindingId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19315', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildDevelopmentalAssessment', @level2type = N'COLUMN', @level2name = N'RefDevelopmentalEvaluationFindingId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildDevelopmentalAssessment', @level2type = N'COLUMN', @level2name = N'RefDevelopmentalEvaluationFindingId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildDevelopmentalAssessment', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildDevelopmentalAssessment', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildDevelopmentalAssessment', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildDevelopmentalAssessment', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildDevelopmentalAssessment', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildDevelopmentalAssessment', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildDevelopmentalAssessment', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildDevelopmentalAssessment', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildDevelopmentalAssessment', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

