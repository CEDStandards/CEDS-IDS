CREATE TABLE [dbo].[AssessmentNeedApipDisplay] (
    [AssessmentNeedApipDisplayId]             INT             IDENTITY (1, 1) NOT NULL,
    [AssessmentPersonalNeedsProfileDisplayId] INT             NOT NULL,
    [MaskingAssignedSupportIndicator]         BIT             NULL,
    [MaskingActivateByDefaultIndicator]       BIT             NULL,
    [RefAssessmentNeedMaskingTypeId]          INT             NULL,
    [EncouragementAssignedSupportIndicator]   BIT             NULL,
    [EncouragementActivateByDefaultIndicator] BIT             NULL,
    [EncouragementTextMessagingString]        NVARCHAR (4000) NULL,
    [EncouragementSoundFileUrl]               NVARCHAR (512)  NULL,
    [RecordStartDateTime]                     DATETIME        NULL,
    [RecordEndDateTime]                       DATETIME        NULL,
    [RecordStatusId]                          INT             NULL,
    [DataCollectionId]                        INT             NULL,
    CONSTRAINT [PK_AssessmentNeedApipDisplay] PRIMARY KEY CLUSTERED ([AssessmentNeedApipDisplayId] ASC),
    CONSTRAINT [FK_AssessmentNeedApipDisplay_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_AssessmentNeedApipDisplay_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_AssessmentNeedApipDisplay_RefAssessmentNeedMaskingType] FOREIGN KEY ([RefAssessmentNeedMaskingTypeId]) REFERENCES [dbo].[RefAssessmentNeedMaskingType] ([RefAssessmentNeedMaskingTypeId]),
    CONSTRAINT [FK_AssessNeedApipDisplay_AssessmentPersonalNeedsProfileDisplay] FOREIGN KEY ([AssessmentPersonalNeedsProfileDisplayId]) REFERENCES [dbo].[AssessmentPersonalNeedsProfileDisplay] ([AssessmentPersonalNeedsProfileDisplayId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Used as part of an Assessment Personal Needs Profile to define the display attributes.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipDisplay';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipDisplay';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipDisplay', @level2type = N'COLUMN', @level2name = N'AssessmentNeedApipDisplayId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - AssessmentPersonalNeedsProfileDisplay', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipDisplay', @level2type = N'COLUMN', @level2name = N'AssessmentPersonalNeedsProfileDisplayId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Defines whether or not the individual needs the kind of support defined by the entity.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipDisplay', @level2type = N'COLUMN', @level2name = N'MaskingAssignedSupportIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Personal Needs Profile Assigned Support', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipDisplay', @level2type = N'COLUMN', @level2name = N'MaskingAssignedSupportIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001004', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipDisplay', @level2type = N'COLUMN', @level2name = N'MaskingAssignedSupportIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20007', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipDisplay', @level2type = N'COLUMN', @level2name = N'MaskingAssignedSupportIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipDisplay', @level2type = N'COLUMN', @level2name = N'MaskingAssignedSupportIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Determines if the alternative accessible content is rendered as the default content for the learner.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipDisplay', @level2type = N'COLUMN', @level2name = N'MaskingActivateByDefaultIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Personal Needs Profile Activate By Default', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipDisplay', @level2type = N'COLUMN', @level2name = N'MaskingActivateByDefaultIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001005', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipDisplay', @level2type = N'COLUMN', @level2name = N'MaskingActivateByDefaultIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20008', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipDisplay', @level2type = N'COLUMN', @level2name = N'MaskingActivateByDefaultIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipDisplay', @level2type = N'COLUMN', @level2name = N'MaskingActivateByDefaultIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Specifies as part of an Assessment Personal Needs Profile the type of masks the user is able to create  to cover portions of the question until needed.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipDisplay', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedMaskingTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Need Masking Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipDisplay', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedMaskingTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001046', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipDisplay', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedMaskingTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20051', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipDisplay', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedMaskingTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipDisplay', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedMaskingTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Defines whether or not the individual needs the kind of support defined by the entity.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipDisplay', @level2type = N'COLUMN', @level2name = N'EncouragementAssignedSupportIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Personal Needs Profile Assigned Support', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipDisplay', @level2type = N'COLUMN', @level2name = N'EncouragementAssignedSupportIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001004', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipDisplay', @level2type = N'COLUMN', @level2name = N'EncouragementAssignedSupportIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20007', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipDisplay', @level2type = N'COLUMN', @level2name = N'EncouragementAssignedSupportIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipDisplay', @level2type = N'COLUMN', @level2name = N'EncouragementAssignedSupportIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Determines if the alternative accessible content is rendered as the default content for the learner.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipDisplay', @level2type = N'COLUMN', @level2name = N'EncouragementActivateByDefaultIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Personal Needs Profile Activate By Default', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipDisplay', @level2type = N'COLUMN', @level2name = N'EncouragementActivateByDefaultIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001005', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipDisplay', @level2type = N'COLUMN', @level2name = N'EncouragementActivateByDefaultIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20008', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipDisplay', @level2type = N'COLUMN', @level2name = N'EncouragementActivateByDefaultIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipDisplay', @level2type = N'COLUMN', @level2name = N'EncouragementActivateByDefaultIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The text string that is to be displayed to the user as an expression of encouragement when Masking is specified as part of an Assessment Personal Needs Profile.  It is left to the system to determine when to display this string.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipDisplay', @level2type = N'COLUMN', @level2name = N'EncouragementTextMessagingString';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Need Text Messaging String', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipDisplay', @level2type = N'COLUMN', @level2name = N'EncouragementTextMessagingString';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001047', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipDisplay', @level2type = N'COLUMN', @level2name = N'EncouragementTextMessagingString';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20052', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipDisplay', @level2type = N'COLUMN', @level2name = N'EncouragementTextMessagingString';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipDisplay', @level2type = N'COLUMN', @level2name = N'EncouragementTextMessagingString';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The URI of the sound file that is to be played to the user as an expression of encouragement when Masking is specified as part of an Assessment Personal Needs Profile. It is left to the system to determine when to play this audio file.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipDisplay', @level2type = N'COLUMN', @level2name = N'EncouragementSoundFileUrl';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Need Sound File URL', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipDisplay', @level2type = N'COLUMN', @level2name = N'EncouragementSoundFileUrl';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001048', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipDisplay', @level2type = N'COLUMN', @level2name = N'EncouragementSoundFileUrl';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20053', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipDisplay', @level2type = N'COLUMN', @level2name = N'EncouragementSoundFileUrl';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipDisplay', @level2type = N'COLUMN', @level2name = N'EncouragementSoundFileUrl';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipDisplay', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipDisplay', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipDisplay', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipDisplay', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipDisplay', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipDisplay', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipDisplay', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipDisplay', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipDisplay', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedApipDisplay', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

