CREATE TABLE [dbo].[AssessmentForm_AssessmentFormSection] (
    [AssessmentForm_AssessmentFormSectionId] INT      IDENTITY (1, 1) NOT NULL,
    [AssessmentFormId]                       INT      NOT NULL,
    [AssessmentFormSectionId]                INT      NOT NULL,
    [SequenceNumber]                         INT      NULL,
    [RecordStartDateTime]                    DATETIME NULL,
    [RecordEndDateTime]                      DATETIME NULL,
    [RecordStatusId]                         INT      NULL,
    [DataCollectionId]                       INT      NULL,
    CONSTRAINT [PK_AssessmentForm_AssessmentFormSection] PRIMARY KEY CLUSTERED ([AssessmentForm_AssessmentFormSectionId] ASC),
    CONSTRAINT [FK_AssessmentForm_AssessmentFormSection_AssessmentForm] FOREIGN KEY ([AssessmentFormId]) REFERENCES [dbo].[AssessmentForm] ([AssessmentFormId]),
    CONSTRAINT [FK_AssessmentForm_AssessmentFormSection_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_AssessmentForm_AssessmentFormSection_FormSection] FOREIGN KEY ([AssessmentFormSectionId]) REFERENCES [dbo].[AssessmentFormSection] ([AssessmentFormSectionId]),
    CONSTRAINT [FK_AssessmentForm_AssessmentFormSection_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information linking sections within an assessment form to the form and the order in which the sections are designed to be offered. ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm_AssessmentFormSection';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm_AssessmentFormSection';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm_AssessmentFormSection', @level2type = N'COLUMN', @level2name = N'AssessmentForm_AssessmentFormSectionId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - AssessmentForm.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm_AssessmentFormSection', @level2type = N'COLUMN', @level2name = N'AssessmentFormId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - AssessmentFormSection', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm_AssessmentFormSection', @level2type = N'COLUMN', @level2name = N'AssessmentFormSectionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The position of the assessment section presented in the sequence of sections within an assessment form.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm_AssessmentFormSection', @level2type = N'COLUMN', @level2name = N'SequenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Form Section Sequence Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm_AssessmentFormSection', @level2type = N'COLUMN', @level2name = N'SequenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000979', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm_AssessmentFormSection', @level2type = N'COLUMN', @level2name = N'SequenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19980', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm_AssessmentFormSection', @level2type = N'COLUMN', @level2name = N'SequenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm_AssessmentFormSection', @level2type = N'COLUMN', @level2name = N'SequenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm_AssessmentFormSection', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm_AssessmentFormSection', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm_AssessmentFormSection', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm_AssessmentFormSection', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm_AssessmentFormSection', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm_AssessmentFormSection', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm_AssessmentFormSection', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm_AssessmentFormSection', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm_AssessmentFormSection', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentForm_AssessmentFormSection', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

