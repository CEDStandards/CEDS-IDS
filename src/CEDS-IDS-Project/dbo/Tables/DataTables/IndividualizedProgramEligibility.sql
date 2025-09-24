CREATE TABLE [dbo].[IndividualizedProgramEligibility] (
    [IndividualizedProgramEligibilityId] INT            IDENTITY (1, 1) NOT NULL,
    [IndividualizedProgramId]            INT            NOT NULL,
    [ConsentToEvaluateDate]              DATE           NULL,
    [ConsentToEvaluateIndicator]         BIT            NULL,
    [ParentObservations]                 NVARCHAR (MAX) NULL,
    [RecordStartDateTime]                DATETIME       NULL,
    [RecordEndDateTime]                  DATETIME       NULL,
    [RecordStatusId]                     INT            NULL,
    [DataCollectionId]                   INT            NULL,
    CONSTRAINT [PK_IndividualizedProgramEligibility] PRIMARY KEY CLUSTERED ([IndividualizedProgramEligibilityId] ASC),
    CONSTRAINT [FK_IndividualizedProgramEligibility_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_IndividualizedProgramEligibility_IndividualizedProgram] FOREIGN KEY ([IndividualizedProgramId]) REFERENCES [dbo].[IndividualizedProgram] ([IndividualizedProgramId]),
    CONSTRAINT [FK_IndividualizedProgramEligibility_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information that defines the eligibility of a student to recieve indivudualized program services or accomodations such as through and IEP or 504 plan.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramEligibility';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramEligibility';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The date the consent to evaluation occurred.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramEligibility', @level2type = N'COLUMN', @level2name = N'ConsentToEvaluateDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Consent To Evaluation Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramEligibility', @level2type = N'COLUMN', @level2name = N'ConsentToEvaluateDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001727', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramEligibility', @level2type = N'COLUMN', @level2name = N'ConsentToEvaluateDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20708', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramEligibility', @level2type = N'COLUMN', @level2name = N'ConsentToEvaluateDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Indication parent agreed to evaluate student.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramEligibility', @level2type = N'COLUMN', @level2name = N'ConsentToEvaluateIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Consent To Evaluation Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramEligibility', @level2type = N'COLUMN', @level2name = N'ConsentToEvaluateIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001726', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramEligibility', @level2type = N'COLUMN', @level2name = N'ConsentToEvaluateIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20707', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramEligibility', @level2type = N'COLUMN', @level2name = N'ConsentToEvaluateIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Explanation of parent''s observations of student’s characteristics and history used for determining eligibility.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramEligibility', @level2type = N'COLUMN', @level2name = N'ParentObservations';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Eligibility Parent Observations Explanation', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramEligibility', @level2type = N'COLUMN', @level2name = N'ParentObservations';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001732', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramEligibility', @level2type = N'COLUMN', @level2name = N'ParentObservations';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20713', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramEligibility', @level2type = N'COLUMN', @level2name = N'ParentObservations';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramEligibility', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramEligibility', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramEligibility', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramEligibility', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramEligibility', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramEligibility', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramEligibility', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramEligibility', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramEligibility', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramEligibility', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

