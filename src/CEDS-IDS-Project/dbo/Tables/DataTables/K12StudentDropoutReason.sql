CREATE TABLE [dbo].[K12StudentDropoutReason] (
    [K12StudentDropoutReasonId] INT      IDENTITY (1, 1) NOT NULL,
    [OrganizationPersonRoleId]  INT      NOT NULL,
    [RefDropoutReasonTypeId]    INT      NULL,
    [RecordStartDateTime]       DATETIME NULL,
    [RecordEndDateTime]         DATETIME NULL,
    [RecordStatusId]            INT      NULL,
    [DataCollectionId]          INT      NULL,
    CONSTRAINT [PK_K12StudentDropoutReason] PRIMARY KEY CLUSTERED ([K12StudentDropoutReasonId] ASC),
    CONSTRAINT [FK_K12StudentDropoutReason_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_K12StudentDropoutReason_OrganizationPersonRole] FOREIGN KEY ([OrganizationPersonRoleId]) REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]),
    CONSTRAINT [FK_K12StudentDropoutReason_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_K12StudentDropoutReason_RefDropoutReasonType] FOREIGN KEY ([RefDropoutReasonTypeId]) REFERENCES [dbo].[RefDropoutReasonType] ([RefDropoutReasonTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information about the reason or reasons related to a student dropping out of a K12 school.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDropoutReason';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDropoutReason';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The reason or reasons the student dropped out of school.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDropoutReason', @level2type = N'COLUMN', @level2name = N'RefDropoutReasonTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Dropout Reason Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDropoutReason', @level2type = N'COLUMN', @level2name = N'RefDropoutReasonTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002113', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDropoutReason', @level2type = N'COLUMN', @level2name = N'RefDropoutReasonTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25014', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDropoutReason', @level2type = N'COLUMN', @level2name = N'RefDropoutReasonTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDropoutReason', @level2type = N'COLUMN', @level2name = N'RefDropoutReasonTypeId';

