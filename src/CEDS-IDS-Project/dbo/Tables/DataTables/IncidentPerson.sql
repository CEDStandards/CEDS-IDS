CREATE TABLE [dbo].[IncidentPerson] (
    [IncidentPersonId]            INT           IDENTITY (1, 1) NOT NULL,
    [IncidentId]                  INT           NOT NULL,
    [PersonId]                    INT           NOT NULL,
    [Identifier]                  NVARCHAR (40) NULL,
    [RefIncidentPersonRoleTypeId] INT           NOT NULL,
    [RefIncidentPersonTypeId]     INT           NULL,
    [RecordStartDateTime]         DATETIME      NULL,
    [RecordEndDateTime]           DATETIME      NULL,
    [RecordStatusId]              INT           NULL,
    [DataCollectionId]            INT           NULL,
    CONSTRAINT [PK_IncidentPerson] PRIMARY KEY NONCLUSTERED ([IncidentPersonId] ASC),
    CONSTRAINT [FK_IncidentPerson_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_IncidentPerson_Incident] FOREIGN KEY ([IncidentId]) REFERENCES [dbo].[Incident] ([IncidentId]),
    CONSTRAINT [FK_IncidentPerson_Person] FOREIGN KEY ([PersonId]) REFERENCES [dbo].[Person] ([PersonId]),
    CONSTRAINT [FK_IncidentPerson_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_IncidentPerson_RefIncidentPersonRoleType] FOREIGN KEY ([RefIncidentPersonRoleTypeId]) REFERENCES [dbo].[RefIncidentPersonRoleType] ([RefIncidentPersonRoleTypeId]),
    CONSTRAINT [FK_IncidentPerson_RefIncidentPersonType] FOREIGN KEY ([RefIncidentPersonTypeId]) REFERENCES [dbo].[RefIncidentPersonType] ([RefIncidentPersonTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The relationship between a person and an Incident involving a student or school.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IncidentPerson';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IncidentPerson';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Person''s identifier.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IncidentPerson', @level2type = N'COLUMN', @level2name = N'Identifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Incident Perpetrator Identifier, Incident Victim Identifier, Incident Witness Identifier', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IncidentPerson', @level2type = N'COLUMN', @level2name = N'Identifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001370, 001377, 001379', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IncidentPerson', @level2type = N'COLUMN', @level2name = N'Identifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20338, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20346, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20348', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IncidentPerson', @level2type = N'COLUMN', @level2name = N'Identifier';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IncidentPerson', @level2type = N'COLUMN', @level2name = N'Identifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The role or type of participation of a person in a discipline incident.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IncidentPerson', @level2type = N'COLUMN', @level2name = N'RefIncidentPersonRoleTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Incident Person Role Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IncidentPerson', @level2type = N'COLUMN', @level2name = N'RefIncidentPersonRoleTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001373', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IncidentPerson', @level2type = N'COLUMN', @level2name = N'RefIncidentPersonRoleTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20341', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IncidentPerson', @level2type = N'COLUMN', @level2name = N'RefIncidentPersonRoleTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IncidentPerson', @level2type = N'COLUMN', @level2name = N'RefIncidentPersonRoleTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information on the type of individual who was involved in an incident.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IncidentPerson', @level2type = N'COLUMN', @level2name = N'RefIncidentPersonTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Incident Perpetrator Type, Incident Victim Type, Incident Witness Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IncidentPerson', @level2type = N'COLUMN', @level2name = N'RefIncidentPersonTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001372, 001378, 001380', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IncidentPerson', @level2type = N'COLUMN', @level2name = N'RefIncidentPersonTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20340, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20347, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20349', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IncidentPerson', @level2type = N'COLUMN', @level2name = N'RefIncidentPersonTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IncidentPerson', @level2type = N'COLUMN', @level2name = N'RefIncidentPersonTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IncidentPerson', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IncidentPerson', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IncidentPerson', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IncidentPerson', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IncidentPerson', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IncidentPerson', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IncidentPerson', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IncidentPerson', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IncidentPerson', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

