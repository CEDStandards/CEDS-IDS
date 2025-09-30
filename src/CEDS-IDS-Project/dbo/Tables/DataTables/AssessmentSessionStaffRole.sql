CREATE TABLE [dbo].[AssessmentSessionStaffRole] (
    [AssessmentSessionStaffRoleId]        INT      IDENTITY (1, 1) NOT NULL,
    [RefAssessmentSessionStaffRoleTypeId] INT      NULL,
    [PersonId]                            INT      NOT NULL,
    [AssessmentSessionId]                 INT      NULL,
    [AssessmentParticipantSessionId]      INT      NULL,
    [RecordStartDateTime]                 DATETIME NULL,
    [RecordEndDateTime]                   DATETIME NULL,
    [RecordStatusId]                      INT      NULL,
    [DataCollectionId]                    INT      NULL,
    CONSTRAINT [PK_AssessmentSessionStaffRole] PRIMARY KEY CLUSTERED ([AssessmentSessionStaffRoleId] ASC),
    CONSTRAINT [FK_AssessmentSessionStaffRole_AssessmentParticipantSession] FOREIGN KEY ([AssessmentParticipantSessionId]) REFERENCES [dbo].[AssessmentParticipantSession] ([AssessmentParticipantSessionId]),
    CONSTRAINT [FK_AssessmentSessionStaffRole_AssessmentSession] FOREIGN KEY ([AssessmentSessionId]) REFERENCES [dbo].[AssessmentSession] ([AssessmentSessionId]),
    CONSTRAINT [FK_AssessmentSessionStaffRole_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_AssessmentSessionStaffRole_Person] FOREIGN KEY ([PersonId]) REFERENCES [dbo].[Person] ([PersonId]),
    CONSTRAINT [FK_AssessmentSessionStaffRole_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_AssessmentSessionStaffRole_RefAssessmentSessionStaffRoleType] FOREIGN KEY ([RefAssessmentSessionStaffRoleTypeId]) REFERENCES [dbo].[RefAssessmentSessionStaffRoleType] ([RefAssessmentSessionStaffRoleTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Roles served related to the administration of an assessment session.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSessionStaffRole';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSessionStaffRole';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSessionStaffRole', @level2type = N'COLUMN', @level2name = N'AssessmentSessionStaffRoleId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of role served related to the administration of an assessment session.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSessionStaffRole', @level2type = N'COLUMN', @level2name = N'RefAssessmentSessionStaffRoleTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Session Staff Role Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSessionStaffRole', @level2type = N'COLUMN', @level2name = N'RefAssessmentSessionStaffRoleTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001212', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSessionStaffRole', @level2type = N'COLUMN', @level2name = N'RefAssessmentSessionStaffRoleTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20179', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSessionStaffRole', @level2type = N'COLUMN', @level2name = N'RefAssessmentSessionStaffRoleTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSessionStaffRole', @level2type = N'COLUMN', @level2name = N'RefAssessmentSessionStaffRoleTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - Person', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSessionStaffRole', @level2type = N'COLUMN', @level2name = N'PersonId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - AssessmentSession', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSessionStaffRole', @level2type = N'COLUMN', @level2name = N'AssessmentSessionId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - AssessmentParticipantSession', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSessionStaffRole', @level2type = N'COLUMN', @level2name = N'AssessmentParticipantSessionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSessionStaffRole', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSessionStaffRole', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSessionStaffRole', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSessionStaffRole', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSessionStaffRole', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSessionStaffRole', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSessionStaffRole', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSessionStaffRole', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSessionStaffRole', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentSessionStaffRole', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

