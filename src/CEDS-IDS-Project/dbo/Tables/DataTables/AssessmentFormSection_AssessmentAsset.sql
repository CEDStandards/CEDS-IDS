CREATE TABLE [dbo].[AssessmentFormSection_AssessmentAsset] (
    [AssessmentFormSection_AssessmentAssetId] INT      IDENTITY (1, 1) NOT NULL,
    [AssessmentFormSectionId]                 INT      NOT NULL,
    [AssessmentAssetId]                       INT      NOT NULL,
    [RecordStartDateTime]                     DATETIME NULL,
    [RecordEndDateTime]                       DATETIME NULL,
    [RecordStatusId]                          INT      NULL,
    [DataCollectionId]                        INT      NULL,
    CONSTRAINT [PK_AssessmentFormSection_AssessmentAsset_1] PRIMARY KEY CLUSTERED ([AssessmentFormSection_AssessmentAssetId] ASC),
    CONSTRAINT [FK_AssessmentFormSection_AssessmentAsset_AssessmentAsset] FOREIGN KEY ([AssessmentAssetId]) REFERENCES [dbo].[AssessmentAsset] ([AssessmentAssetId]),
    CONSTRAINT [FK_AssessmentFormSection_AssessmentAsset_AssessmentFormSection] FOREIGN KEY ([AssessmentFormSectionId]) REFERENCES [dbo].[AssessmentFormSection] ([AssessmentFormSectionId]),
    CONSTRAINT [FK_AssessmentFormSection_AssessmentAsset_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_AssessmentFormSection_AssessmentAsset_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [IX_AssessmentFormSection_AssessmentAsset] UNIQUE NONCLUSTERED ([AssessmentFormSectionId] ASC, [AssessmentAssetId] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information about creative works used within a section of an assessment form.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentFormSection_AssessmentAsset';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentFormSection_AssessmentAsset';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentFormSection_AssessmentAsset', @level2type = N'COLUMN', @level2name = N'AssessmentFormSection_AssessmentAssetId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - AssessmentFormSection', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentFormSection_AssessmentAsset', @level2type = N'COLUMN', @level2name = N'AssessmentFormSectionId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - AssessmentAsset', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentFormSection_AssessmentAsset', @level2type = N'COLUMN', @level2name = N'AssessmentAssetId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentFormSection_AssessmentAsset', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentFormSection_AssessmentAsset', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentFormSection_AssessmentAsset', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentFormSection_AssessmentAsset', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentFormSection_AssessmentAsset', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentFormSection_AssessmentAsset', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentFormSection_AssessmentAsset', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentFormSection_AssessmentAsset', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentFormSection_AssessmentAsset', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentFormSection_AssessmentAsset', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

