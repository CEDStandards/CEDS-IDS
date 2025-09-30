CREATE TABLE [dbo].[CredentialAwardRelationship] (
    [CredentialAwardRelationshipId]    INT      IDENTITY (1, 1) NOT NULL,
    [RefCredentialAwardRelationshipId] INT      NULL,
    [RelatedCredentialAwardId]         INT      NOT NULL,
    [CredentialAwardId]                INT      NOT NULL,
    [RecordStartDateTime]              DATETIME NULL,
    [RecordEndDateTime]                DATETIME NULL,
    [RecordStatusId]                   INT      NULL,
    [DataCollectionId]                 INT      NULL,
    CONSTRAINT [PK_CredentialAwardRelationship] PRIMARY KEY CLUSTERED ([CredentialAwardRelationshipId] ASC),
    CONSTRAINT [FK_CredentialAwardRelationship_CredentialAward] FOREIGN KEY ([CredentialAwardId]) REFERENCES [dbo].[CredentialAward] ([CredentialAwardId]),
    CONSTRAINT [FK_CredentialAwardRelationship_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_CredentialAwardRelationship_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_CredentialAwardRelationship_RefCredentialAwardRelationship] FOREIGN KEY ([RefCredentialAwardRelationshipId]) REFERENCES [dbo].[RefCredentialAwardRelationship] ([RefCredentialAwardRelationshipId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The relationship between two credential awards, genrally used to capture extentions to an award (e.g., An endorsement for a teaching license).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAwardRelationship';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAwardRelationship';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The nature of a credential award''s relationship to another credential award.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAwardRelationship', @level2type = N'COLUMN', @level2name = N'CredentialAwardRelationshipId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Credential Award Relationship', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAwardRelationship', @level2type = N'COLUMN', @level2name = N'CredentialAwardRelationshipId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002081', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAwardRelationship', @level2type = N'COLUMN', @level2name = N'CredentialAwardRelationshipId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25011', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAwardRelationship', @level2type = N'COLUMN', @level2name = N'CredentialAwardRelationshipId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CredentialAwardRelationship', @level2type = N'COLUMN', @level2name = N'CredentialAwardRelationshipId';

