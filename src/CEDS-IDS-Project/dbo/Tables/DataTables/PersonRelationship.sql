CREATE TABLE [dbo].[PersonRelationship] (
    [PersonRelationshipId]           INT             IDENTITY (1, 1) NOT NULL,
    [PersonId]                       INT             NOT NULL,
    [RelatedPersonId]                INT             NOT NULL,
    [CustodialRelationshipIndicator] BIT             NULL,
    [EmergencyContactIndicator]            BIT             NULL,
    [ContactPriorityNumber]          INT             NULL,
    [ContactRestrictions]            NVARCHAR (2000) NULL,
    [LivesWithIndicator]             BIT             NULL,
    [PrimaryContactIndicator]        BIT             NULL,
    [RefPersonRelationshipTypeId]    INT             NOT NULL,
    [RecordStartDateTime]            DATETIME        NULL,
    [RecordEndDateTime]              DATETIME        NULL,
    [RecordStatusId]                 INT             NULL,
    [DataCollectionId]               INT             NULL,
    CONSTRAINT [XPKPersonRelationship] PRIMARY KEY CLUSTERED ([PersonRelationshipId] ASC),
    CONSTRAINT [FK_PersonRelationship_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_PersonRelationship_Person_Primary] FOREIGN KEY ([PersonId]) REFERENCES [dbo].[Person] ([PersonId]),
    CONSTRAINT [FK_PersonRelationship_Person_Secondary] FOREIGN KEY ([RelatedPersonId]) REFERENCES [dbo].[Person] ([PersonId]),
    CONSTRAINT [FK_PersonRelationship_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_PersonRelationship_RefRelationship] FOREIGN KEY ([RefPersonRelationshipTypeId]) REFERENCES [dbo].[RefPersonRelationshipType] ([RefPersonRelationshipTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Identifies two people and the nature of their relationship.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonRelationship';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonRelationship';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonRelationship', @level2type = N'COLUMN', @level2name = N'PersonRelationshipId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - Person.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonRelationship', @level2type = N'COLUMN', @level2name = N'PersonId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - Person.  Identifies the other person.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonRelationship', @level2type = N'COLUMN', @level2name = N'RelatedPersonId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication that a person has legal custody of a child.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonRelationship', @level2type = N'COLUMN', @level2name = N'CustodialRelationshipIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Custodial Parent or Guardian Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonRelationship', @level2type = N'COLUMN', @level2name = N'CustodialRelationshipIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000329', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonRelationship', @level2type = N'COLUMN', @level2name = N'CustodialRelationshipIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19328', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonRelationship', @level2type = N'COLUMN', @level2name = N'CustodialRelationshipIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonRelationship', @level2type = N'COLUMN', @level2name = N'CustodialRelationshipIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Indicates whether or not the person is a designated emergency contact for the related person.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonRelationship', @level2type = N'COLUMN', @level2name = N'EmergencyContactIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Emergency Contact Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonRelationship', @level2type = N'COLUMN', @level2name = N'EmergencyContactIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001341', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonRelationship', @level2type = N'COLUMN', @level2name = N'EmergencyContactIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20308', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonRelationship', @level2type = N'COLUMN', @level2name = N'EmergencyContactIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonRelationship', @level2type = N'COLUMN', @level2name = N'EmergencyContactIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The numeric order in the preferred sequence and priority for contacting a person related to the learner.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonRelationship', @level2type = N'COLUMN', @level2name = N'ContactPriorityNumber';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Person Relationship to Learner Contact Priority Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonRelationship', @level2type = N'COLUMN', @level2name = N'ContactPriorityNumber';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001423', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonRelationship', @level2type = N'COLUMN', @level2name = N'ContactPriorityNumber';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20392', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonRelationship', @level2type = N'COLUMN', @level2name = N'ContactPriorityNumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonRelationship', @level2type = N'COLUMN', @level2name = N'ContactPriorityNumber';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Restrictions for student and/or teacher contact with the individual (e.g., the student may not be picked up by the individual)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonRelationship', @level2type = N'COLUMN', @level2name = N'ContactRestrictions';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Person Relationship to Learner Contact Restrictions Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonRelationship', @level2type = N'COLUMN', @level2name = N'ContactRestrictions';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001424', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonRelationship', @level2type = N'COLUMN', @level2name = N'ContactRestrictions';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20393', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonRelationship', @level2type = N'COLUMN', @level2name = N'ContactRestrictions';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonRelationship', @level2type = N'COLUMN', @level2name = N'ContactRestrictions';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Indicates whether or not the person lives with the related person.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonRelationship', @level2type = N'COLUMN', @level2name = N'LivesWithIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Lives With Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonRelationship', @level2type = N'COLUMN', @level2name = N'LivesWithIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001425', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonRelationship', @level2type = N'COLUMN', @level2name = N'LivesWithIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/element/001425', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonRelationship', @level2type = N'COLUMN', @level2name = N'LivesWithIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonRelationship', @level2type = N'COLUMN', @level2name = N'LivesWithIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Indicates that a person is a primary contact within the specified context, such as a primary parental contact specified in Person Relationship to Learner or a primary administrative contact for an organization.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonRelationship', @level2type = N'COLUMN', @level2name = N'PrimaryContactIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Primary Contact Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonRelationship', @level2type = N'COLUMN', @level2name = N'PrimaryContactIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001428', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonRelationship', @level2type = N'COLUMN', @level2name = N'PrimaryContactIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20397', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonRelationship', @level2type = N'COLUMN', @level2name = N'PrimaryContactIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonRelationship', @level2type = N'COLUMN', @level2name = N'PrimaryContactIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The nature of a person''s relationship to another person.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonRelationship', @level2type = N'COLUMN', @level2name = N'RefPersonRelationshipTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Person Relationship Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonRelationship', @level2type = N'COLUMN', @level2name = N'RefPersonRelationshipTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000425', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonRelationship', @level2type = N'COLUMN', @level2name = N'RefPersonRelationshipTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19415', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonRelationship', @level2type = N'COLUMN', @level2name = N'RefPersonRelationshipTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonRelationship', @level2type = N'COLUMN', @level2name = N'RefPersonRelationshipTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonRelationship', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonRelationship', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonRelationship', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonRelationship', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonRelationship', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonRelationship', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonRelationship', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonRelationship', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonRelationship', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonRelationship', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

