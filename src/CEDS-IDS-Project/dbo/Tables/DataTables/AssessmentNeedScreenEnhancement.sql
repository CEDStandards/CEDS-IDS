CREATE TABLE [dbo].[AssessmentNeedScreenEnhancement] (
    [AssessmentNeedScreenEnhancementId]                 INT             IDENTITY (1, 1) NOT NULL,
    [AssessmentPersonalNeedsProfileDisplayId]           INT             NOT NULL,
    [InvertColorChoice]                                 BIT             NULL,
    [Magnification]                                     DECIMAL (10, 4) NULL,
    [AssessmentPersonalNeedsProfileScreenEnhancementId] INT             NULL,
    [ForegroundColor]                                   NCHAR (6)       NULL,
    [RecordStartDateTime]                               DATETIME        NULL,
    [RecordEndDateTime]                                 DATETIME        NULL,
    [RecordStatusId]                                    INT             NULL,
    [DataCollectionId]                                  INT             NULL,
    CONSTRAINT [PK_AssessmentNeedScreenEnhancement] PRIMARY KEY CLUSTERED ([AssessmentNeedScreenEnhancementId] ASC),
    CONSTRAINT [FK_AssessmentNeedScreenEnhancement_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_AssessmentNeedScreenEnhancement_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_AssessNeedScreenEnhancement_APNProfileScreenEnhancement] FOREIGN KEY ([AssessmentPersonalNeedsProfileScreenEnhancementId]) REFERENCES [dbo].[AssessmentPersonalNeedsProfileScreenEnhancement] ([AssessmentPersonalNeedsProfileScreenEnhancementId]),
    CONSTRAINT [FK_AssessNeedScreenEnhancement_AssessPersonalNeedProfileDisplay] FOREIGN KEY ([AssessmentPersonalNeedsProfileDisplayId]) REFERENCES [dbo].[AssessmentPersonalNeedsProfileDisplay] ([AssessmentPersonalNeedsProfileDisplayId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Defines as part of an Assessment Personal Needs Profile the attributes for screen enhancement.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedScreenEnhancement';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedScreenEnhancement';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedScreenEnhancement', @level2type = N'COLUMN', @level2name = N'AssessmentNeedScreenEnhancementId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - AssessmentPersonalNeedsProfileDisplay', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedScreenEnhancement', @level2type = N'COLUMN', @level2name = N'AssessmentPersonalNeedsProfileDisplayId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Defines as part of an Assessment Personal Needs Profile the Access for All (AfA) preference to invert the foreground and background Colors.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedScreenEnhancement', @level2type = N'COLUMN', @level2name = N'InvertColorChoice';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Need Invert Color Choice', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedScreenEnhancement', @level2type = N'COLUMN', @level2name = N'InvertColorChoice';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001030', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedScreenEnhancement', @level2type = N'COLUMN', @level2name = N'InvertColorChoice';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedScreenEnhancement', @level2type = N'COLUMN', @level2name = N'InvertColorChoice';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedScreenEnhancement', @level2type = N'COLUMN', @level2name = N'InvertColorChoice';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Defines as part of an Assessment Personal Needs Profile the preferred magnification of the screen as a factor of a screen’s original size.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedScreenEnhancement', @level2type = N'COLUMN', @level2name = N'Magnification';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Need Magnification', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedScreenEnhancement', @level2type = N'COLUMN', @level2name = N'Magnification';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001031', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedScreenEnhancement', @level2type = N'COLUMN', @level2name = N'Magnification';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20034', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedScreenEnhancement', @level2type = N'COLUMN', @level2name = N'Magnification';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedScreenEnhancement', @level2type = N'COLUMN', @level2name = N'Magnification';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - AssessmentPersonalNeedsProfileScreenEnhancement', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedScreenEnhancement', @level2type = N'COLUMN', @level2name = N'AssessmentPersonalNeedsProfileScreenEnhancementId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'This is the preferred Foreground color for screen enhancement defined as part of an Assessment Personal Needs Profile.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedScreenEnhancement', @level2type = N'COLUMN', @level2name = N'ForegroundColor';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Need Foreground Color', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedScreenEnhancement', @level2type = N'COLUMN', @level2name = N'ForegroundColor';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001052', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedScreenEnhancement', @level2type = N'COLUMN', @level2name = N'ForegroundColor';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20058', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedScreenEnhancement', @level2type = N'COLUMN', @level2name = N'ForegroundColor';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedScreenEnhancement', @level2type = N'COLUMN', @level2name = N'ForegroundColor';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedScreenEnhancement', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedScreenEnhancement', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedScreenEnhancement', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedScreenEnhancement', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedScreenEnhancement', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedScreenEnhancement', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedScreenEnhancement', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedScreenEnhancement', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedScreenEnhancement', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedScreenEnhancement', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

