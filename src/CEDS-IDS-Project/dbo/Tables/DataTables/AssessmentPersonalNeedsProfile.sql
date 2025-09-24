CREATE TABLE [dbo].[AssessmentPersonalNeedsProfile] (
    [AssessmentPersonalNeedsProfileId] INT            IDENTITY (1, 1) NOT NULL,
    [AssessmentNeedType]               NVARCHAR (MAX) NOT NULL,
    [AssignedSupportFlag]              BIT            NULL,
    [ActivateByDefault]                BIT            NULL,
    [RecordStartDateTime]              DATETIME       NULL,
    [RecordEndDateTime]                DATETIME       NULL,
    [RecordStatusId]                   INT            NULL,
    [DataCollectionId]                 INT            NULL,
    CONSTRAINT [PK_AssessmentNeedsProfile] PRIMARY KEY CLUSTERED ([AssessmentPersonalNeedsProfileId] ASC),
    CONSTRAINT [FK_AssessmentPersonalNeedsProfile_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_AssessmentPersonalNeedsProfile_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An entity that includes information about the personal needs and preferences for assessment participants, based on the IMS Global (R) Accessible Portable Item Protocol (R)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedsProfile';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedsProfile';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedsProfile', @level2type = N'COLUMN', @level2name = N'AssessmentPersonalNeedsProfileId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A type of need identified for a learner as part of an assessment need profile.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedsProfile', @level2type = N'COLUMN', @level2name = N'AssessmentNeedType';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Need Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedsProfile', @level2type = N'COLUMN', @level2name = N'AssessmentNeedType';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001127', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedsProfile', @level2type = N'COLUMN', @level2name = N'AssessmentNeedType';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20101', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedsProfile', @level2type = N'COLUMN', @level2name = N'AssessmentNeedType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedsProfile', @level2type = N'COLUMN', @level2name = N'AssessmentNeedType';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Defines whether or not the individual needs the kind of support defined by the entity.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedsProfile', @level2type = N'COLUMN', @level2name = N'AssignedSupportFlag';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Personal Needs Profile Assigned Support', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedsProfile', @level2type = N'COLUMN', @level2name = N'AssignedSupportFlag';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001004', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedsProfile', @level2type = N'COLUMN', @level2name = N'AssignedSupportFlag';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20007', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedsProfile', @level2type = N'COLUMN', @level2name = N'AssignedSupportFlag';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedsProfile', @level2type = N'COLUMN', @level2name = N'AssignedSupportFlag';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Determines if the alternative accessible content is rendered as the default content for the learner.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedsProfile', @level2type = N'COLUMN', @level2name = N'ActivateByDefault';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Personal Needs Profile Activate By Default', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedsProfile', @level2type = N'COLUMN', @level2name = N'ActivateByDefault';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001005', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedsProfile', @level2type = N'COLUMN', @level2name = N'ActivateByDefault';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20008', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedsProfile', @level2type = N'COLUMN', @level2name = N'ActivateByDefault';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedsProfile', @level2type = N'COLUMN', @level2name = N'ActivateByDefault';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedsProfile', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedsProfile', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedsProfile', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedsProfile', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedsProfile', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedsProfile', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedsProfile', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedsProfile', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedsProfile', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentPersonalNeedsProfile', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

