CREATE TABLE [dbo].[IndividualizedProgramEligibilityEvaluation] (
    [IndividualizedProgramEligibilityEvaluationId] INT      IDENTITY (1, 1) NOT NULL,
    [EligibilityEvaluationId]                      INT      NOT NULL,
    [IndividualizedProgramEligibilityId]           INT      NOT NULL,
    [RefIEPEligibilityEvaluationTypeId]            INT      NULL,
    [RecordStartDateTime]                          DATETIME NULL,
    [RecordEndDateTime]                            DATETIME NULL,
    [RecordStatusId]                               INT      NULL,
    [DataCollectionId]                             INT      NULL,
    CONSTRAINT [PK_IndividualizedProgramEligibilityEvaluation] PRIMARY KEY CLUSTERED ([IndividualizedProgramEligibilityEvaluationId] ASC),
    CONSTRAINT [FK_IndividualizedProgramEligibilityEvaluation_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_IndividualizedProgramEligibilityEvaluation_EligibilityEvaluation] FOREIGN KEY ([EligibilityEvaluationId]) REFERENCES [dbo].[EligibilityEvaluation] ([EligibilityEvaluationId]),
    CONSTRAINT [FK_IndividualizedProgramEligibilityEvaluation_IndividualizedProgramEligibility] FOREIGN KEY ([IndividualizedProgramEligibilityId]) REFERENCES [dbo].[IndividualizedProgramEligibility] ([IndividualizedProgramEligibilityId]),
    CONSTRAINT [FK_IndividualizedProgramEligibilityEvaluation_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_IndividualizedProgramEligibilityEvaluation_RefIEPEligibilityEvaluationType] FOREIGN KEY ([RefIEPEligibilityEvaluationTypeId]) REFERENCES [dbo].[RefIEPEligibilityEvaluationType] ([RefIEPEligibilityEvaluationTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information that defines an assessment of a student''s eligibility to recieve indivudualized program services or accomodations such as through and IEP or 504 plan.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramEligibilityEvaluation';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramEligibilityEvaluation';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Purpose within the IEP lifecycle for which the eligibility evaluation is conducted.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramEligibilityEvaluation', @level2type = N'COLUMN', @level2name = N'RefIEPEligibilityEvaluationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'IEP Eligibility Evaluation Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramEligibilityEvaluation', @level2type = N'COLUMN', @level2name = N'RefIEPEligibilityEvaluationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001728', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramEligibilityEvaluation', @level2type = N'COLUMN', @level2name = N'RefIEPEligibilityEvaluationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20709', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramEligibilityEvaluation', @level2type = N'COLUMN', @level2name = N'RefIEPEligibilityEvaluationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramEligibilityEvaluation', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramEligibilityEvaluation', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramEligibilityEvaluation', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramEligibilityEvaluation', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramEligibilityEvaluation', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramEligibilityEvaluation', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramEligibilityEvaluation', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramEligibilityEvaluation', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramEligibilityEvaluation', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramEligibilityEvaluation', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

