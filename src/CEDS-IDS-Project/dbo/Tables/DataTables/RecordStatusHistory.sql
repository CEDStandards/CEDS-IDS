CREATE TABLE [dbo].[RecordStatusHistory] (
    [RecordStatusHistoryId]             INT            IDENTITY (1, 1) NOT NULL,
    [RecordStatusId]                    INT            NOT NULL,
    [RecordId]                          INT            NOT NULL,
    [RecordPKColumn]                    NVARCHAR (100) NOT NULL,
    [RecordTable]                       NVARCHAR (100) NOT NULL,
    [RecordStatusCreatorOrganizationId] INT            NULL,
    [RecordStatusCreatorPersonId]       INT            NULL,
    [RecordStatusDate]                  DATETIME       NULL,
    [RefRecordStatusTypeId]             INT            NOT NULL,
    [RefRecordStatusCreatorEntityId]    INT            NULL,
    CONSTRAINT [PK_RecordStatusHistory] PRIMARY KEY CLUSTERED ([RecordStatusHistoryId] ASC),
    CONSTRAINT [FK_RecordStatusHistory_Organization] FOREIGN KEY ([RecordStatusCreatorOrganizationId]) REFERENCES [dbo].[Organization] ([OrganizationId]),
    CONSTRAINT [FK_RecordStatusHistory_Person] FOREIGN KEY ([RecordStatusCreatorPersonId]) REFERENCES [dbo].[Person] ([PersonId]),
    CONSTRAINT [FK_RecordStatusHistory_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_RecordStatusHistory_RefRecordStatusCreatorEntity] FOREIGN KEY ([RefRecordStatusCreatorEntityId]) REFERENCES [dbo].[RefRecordStatusCreatorEntity] ([RefRecordStatusCreatorEntityId]),
    CONSTRAINT [FK_RecordStatusHistory_RefRecordStatusType] FOREIGN KEY ([RefRecordStatusTypeId]) REFERENCES [dbo].[RefRecordStatusType] ([RefRecordStatusTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A historical status of records in the IDS.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RecordStatusHistory';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RecordStatusHistory';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The date the record was marked with the Record Status Type.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RecordStatusHistory', @level2type = N'COLUMN', @level2name = N'RecordStatusDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Status Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RecordStatusHistory', @level2type = N'COLUMN', @level2name = N'RecordStatusDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001973', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RecordStatusHistory', @level2type = N'COLUMN', @level2name = N'RecordStatusDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20957', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RecordStatusHistory', @level2type = N'COLUMN', @level2name = N'RecordStatusDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RecordStatusHistory', @level2type = N'COLUMN', @level2name = N'RecordStatusDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A process indicator of the level of stability, quality, and/or preparedness of the record.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RecordStatusHistory', @level2type = N'COLUMN', @level2name = N'RefRecordStatusTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Status Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RecordStatusHistory', @level2type = N'COLUMN', @level2name = N'RefRecordStatusTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001972', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RecordStatusHistory', @level2type = N'COLUMN', @level2name = N'RefRecordStatusTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20958', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RecordStatusHistory', @level2type = N'COLUMN', @level2name = N'RefRecordStatusTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RecordStatusHistory', @level2type = N'COLUMN', @level2name = N'RefRecordStatusTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of entity that created or indicated the Record Status Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RecordStatusHistory', @level2type = N'COLUMN', @level2name = N'RefRecordStatusCreatorEntityId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Status Creator Entity', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RecordStatusHistory', @level2type = N'COLUMN', @level2name = N'RefRecordStatusCreatorEntityId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001974', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RecordStatusHistory', @level2type = N'COLUMN', @level2name = N'RefRecordStatusCreatorEntityId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20956', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RecordStatusHistory', @level2type = N'COLUMN', @level2name = N'RefRecordStatusCreatorEntityId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RecordStatusHistory', @level2type = N'COLUMN', @level2name = N'RefRecordStatusCreatorEntityId';

