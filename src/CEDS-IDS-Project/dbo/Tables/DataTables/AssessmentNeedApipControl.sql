CREATE TABLE [dbo].[AssessmentNeedApipControl] (
    [AssessmentNeedApipControlId]                  INT          IDENTITY (1, 1) NOT NULL,
    [AssessmentPersonalNeedsProfileControlId]      INT          NOT NULL,
    [AssessmentNeedTimeMultiplier]                 NVARCHAR (9) NULL,
    [LineReaderHighlightColor]                     NCHAR (6)    NULL,
    [OverlayColor]                                 NCHAR (6)    NULL,
    [BackgroundColor]                              NCHAR (6)    NULL,
    [RefAssessmentNeedIncreasedWhitespacingTypeId] INT          NULL,
    [RecordStartDateTime]                          DATETIME     NULL,
    [RecordEndDateTime]                            DATETIME     NULL,
    [RecordStatusId]                               INT          NULL,
    [DataCollectionId]                             INT          NULL,
    CONSTRAINT [PK_AssessmentNeedApipControl] PRIMARY KEY CLUSTERED ([AssessmentNeedApipControlId] ASC),
    CONSTRAINT [FK_AssessmentNeedApipControl_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_AssessmentNeedApipControl_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_AssessNeedApipControl_AssessmentPersonalNeedsProfileControl] FOREIGN KEY ([AssessmentPersonalNeedsProfileControlId]) REFERENCES [dbo].[AssessmentPersonalNeedsProfileControl] ([AssessmentPersonalNeedsProfileControlId]),
    CONSTRAINT [FK_AssessNeedApipControl_RefAssessmentNeedIncreasedWhitespacing] FOREIGN KEY ([RefAssessmentNeedIncreasedWhitespacingTypeId]) REFERENCES [dbo].[RefAssessmentNeedIncreasedWhitespacingType] ([RefAssessmentNeedIncreasedWhitespacingTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Used as part of an Assessment Personal Needs Profile to define the control attributes.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipControl';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipControl';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipControl', @level2type = N'COLUMN', @level2name = N'AssessmentNeedApipControlId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - AssessmentPersonalNeedsProfileControl', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipControl', @level2type = N'COLUMN', @level2name = N'AssessmentPersonalNeedsProfileControlId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Defines the multiplier to be applied to the time limit to determine the total testing time allowed when Additional Testing Time is specified as part of an Assessment Personal Needs Profile.  If the value is ‘unlimited’ then there is no time limit for the test.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipControl', @level2type = N'COLUMN', @level2name = N'AssessmentNeedTimeMultiplier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Need Time Multiplier', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipControl', @level2type = N'COLUMN', @level2name = N'AssessmentNeedTimeMultiplier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001049', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipControl', @level2type = N'COLUMN', @level2name = N'AssessmentNeedTimeMultiplier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20055', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipControl', @level2type = N'COLUMN', @level2name = N'AssessmentNeedTimeMultiplier';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipControl', @level2type = N'COLUMN', @level2name = N'AssessmentNeedTimeMultiplier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The color defined as part of an Assessment Personal Needs Profile to be used to highlight the point of line reader activity i.e. the line being read.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipControl', @level2type = N'COLUMN', @level2name = N'LineReaderHighlightColor';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Need Line Reader Highlight Color', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipControl', @level2type = N'COLUMN', @level2name = N'LineReaderHighlightColor';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001050', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipControl', @level2type = N'COLUMN', @level2name = N'LineReaderHighlightColor';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20056', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipControl', @level2type = N'COLUMN', @level2name = N'LineReaderHighlightColor';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipControl', @level2type = N'COLUMN', @level2name = N'LineReaderHighlightColor';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'This is the preferred color for the overlay for screen enhancement defined as part of an Assessment Personal Needs Profile.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipControl', @level2type = N'COLUMN', @level2name = N'OverlayColor';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Need Overlay Color', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipControl', @level2type = N'COLUMN', @level2name = N'OverlayColor';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001051', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipControl', @level2type = N'COLUMN', @level2name = N'OverlayColor';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20057', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipControl', @level2type = N'COLUMN', @level2name = N'OverlayColor';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipControl', @level2type = N'COLUMN', @level2name = N'OverlayColor';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'This is the preferred Background color for screen enhancement defined as part of an Assessment Personal Needs Profile.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipControl', @level2type = N'COLUMN', @level2name = N'BackgroundColor';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Need Background Color', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipControl', @level2type = N'COLUMN', @level2name = N'BackgroundColor';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001053', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipControl', @level2type = N'COLUMN', @level2name = N'BackgroundColor';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20059', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipControl', @level2type = N'COLUMN', @level2name = N'BackgroundColor';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipControl', @level2type = N'COLUMN', @level2name = N'BackgroundColor';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Defines the user preferences for white spacing in lines, words and characters as part of an Assessment Personal Needs Profile.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipControl', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedIncreasedWhitespacingTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Need Increased Whitespacing Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipControl', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedIncreasedWhitespacingTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001054', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipControl', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedIncreasedWhitespacingTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20060', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipControl', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedIncreasedWhitespacingTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipControl', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedIncreasedWhitespacingTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipControl', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipControl', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipControl', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipControl', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipControl', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipControl', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipControl', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipControl', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipControl', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipControl', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

