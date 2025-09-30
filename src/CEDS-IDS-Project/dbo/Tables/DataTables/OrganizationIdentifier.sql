CREATE TABLE [dbo].[OrganizationIdentifier] (
    [OrganizationIdentifierId]              INT           IDENTITY (1, 1) NOT NULL,
    [Identifier]                            NVARCHAR (40) NULL,
    [RefOrganizationIdentificationSystemId] INT           NULL,
    [OrganizationId]                        INT           NOT NULL,
    [RefOrganizationIdentifierTypeId]       INT           NULL,
    [RecordStartDateTime]                   DATETIME      NULL,
    [RecordEndDateTime]                     DATETIME      NULL,
    [RecordStatusId]                        INT           NULL,
    [DataCollectionId]                      INT           NULL,
    CONSTRAINT [PK_OrganizationIdentifier] PRIMARY KEY CLUSTERED ([OrganizationIdentifierId] ASC),
    CONSTRAINT [FK_OrganizationIdentifier_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_OrganizationIdentifier_Organization] FOREIGN KEY ([OrganizationId]) REFERENCES [dbo].[Organization] ([OrganizationId]),
    CONSTRAINT [FK_OrganizationIdentifier_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_OrganizationIdentifier_RefIdentifierOrganization] FOREIGN KEY ([RefOrganizationIdentificationSystemId]) REFERENCES [dbo].[RefOrganizationIdentificationSystem] ([RefOrganizationIdentificationSystemId]),
    CONSTRAINT [FK_OrganizationIdentifier_RefOrganizationIdentifierType] FOREIGN KEY ([RefOrganizationIdentifierTypeId]) REFERENCES [dbo].[RefOrganizationIdentifierType] ([RefOrganizationIdentifierTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N' A unique number or alphanumeric code assigned to an organization by a school, school system, a state, or other agency or entity.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationIdentifier', @level2type = N'COLUMN', @level2name = N'OrganizationIdentifierId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A unique number or alphanumeric code assigned to an organization by a school, school system, a state, or other agency or entity.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationIdentifier', @level2type = N'COLUMN', @level2name = N'Identifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Course Identifier, Federal School Code, Local Education Agency Identifier, School Identifier, Institution IPEDS UnitID, Local Education Agency Supervisory Union Identification Number, Classroom Identifier, Program Identifier, Adult Education Service Provider Identifier, Early Learning Class Group Identifier, Organization Identifier, Course Section Identifier, Course Section Number, Responsible Organization Identifier, State Agency Identifier', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationIdentifier', @level2type = N'COLUMN', @level2name = N'Identifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000055, 000111, 001068, 001069, 000166, 000175, 000364, 000625, 001076, 000820, 000826, 000978, 001315, 001466, 001490', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationIdentifier', @level2type = N'COLUMN', @level2name = N'Identifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19055, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19111, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19153, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19155, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19166, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19175, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19507, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19618, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19777, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19819, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19825, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19979, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20281, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20438, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20462', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationIdentifier', @level2type = N'COLUMN', @level2name = N'Identifier';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationIdentifier', @level2type = N'COLUMN', @level2name = N'Identifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A coding scheme that is used for identification and record-keeping purposes by an organization.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationIdentifier', @level2type = N'COLUMN', @level2name = N'RefOrganizationIdentificationSystemId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Course Code System, Local Education Agency Identification System, School Identification System, Adult Education Service Provider Identification System, Organization Identification System, State Agency Identification System', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationIdentifier', @level2type = N'COLUMN', @level2name = N'RefOrganizationIdentificationSystemId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000056, 001072, 001073, 000781, 000827, 001491', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationIdentifier', @level2type = N'COLUMN', @level2name = N'RefOrganizationIdentificationSystemId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19056, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19159, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19161, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19778, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19827, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20463', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationIdentifier', @level2type = N'COLUMN', @level2name = N'RefOrganizationIdentificationSystemId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationIdentifier', @level2type = N'COLUMN', @level2name = N'RefOrganizationIdentificationSystemId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - Organization.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationIdentifier', @level2type = N'COLUMN', @level2name = N'OrganizationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The CEDS organization identifier or identification system element that the Identifier column represents.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationIdentifier', @level2type = N'COLUMN', @level2name = N'RefOrganizationIdentifierTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Activity Identifier, Course Identifier, Course Code System, Federal School Code, Local Education Agency Identification System, School Identification System, Institution IPEDS UnitID, Local Education Agency Supervisory Union Identification Number, Office of Postsecondary Education Identifier, Program Identifier, Adult Education Service Provider Identification System, Organization Identification System, Course Section Identifier, Agency Course Identifier, Course Section Number, State Agency Identification System', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationIdentifier', @level2type = N'COLUMN', @level2name = N'RefOrganizationIdentifierTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000006, 000055, 000056, 000111, 001072, 001073, 000166, 000175, 000203, 000625, 000781, 000827, 000978, 001280, 001315, 001491', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationIdentifier', @level2type = N'COLUMN', @level2name = N'RefOrganizationIdentifierTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19006, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19055, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19056, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19111, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19159, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19161, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19166, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19175, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19203, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19618, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19778, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19827, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19979, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20246, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20281, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20463', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationIdentifier', @level2type = N'COLUMN', @level2name = N'RefOrganizationIdentifierTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationIdentifier', @level2type = N'COLUMN', @level2name = N'RefOrganizationIdentifierTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationIdentifier', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationIdentifier', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationIdentifier', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationIdentifier', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationIdentifier', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationIdentifier', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationIdentifier', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationIdentifier', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationIdentifier', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

