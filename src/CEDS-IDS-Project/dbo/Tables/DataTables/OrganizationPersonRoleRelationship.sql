CREATE TABLE [dbo].[OrganizationPersonRoleRelationship] (
    [OrganizationPersonRoleRelationshipId] INT      IDENTITY (1, 1) NOT NULL,
    [OrganizationPersonRoleId]             INT      NOT NULL,
    [OrganizationPersonRoleId_Parent]      INT      NOT NULL,
    [RecordStartDateTime]                  DATETIME NULL,
    [RecordEndDateTime]                    DATETIME NULL,
    [DataCollectionId]                     INT      NULL,
    [RecordStatusId]                       INT      NULL,
    CONSTRAINT [PK_OrganizationPersonRoleRelationship] PRIMARY KEY CLUSTERED ([OrganizationPersonRoleRelationshipId] ASC),
    CONSTRAINT [FK_OrganizationPersonRoleRelationship_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_OrganizationPersonRoleRelationship_OrganizationPersonRole] FOREIGN KEY ([OrganizationPersonRoleId]) REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]),
    CONSTRAINT [FK_OrganizationPersonRoleRelationship_OrganizationPersonRole_Parent] FOREIGN KEY ([OrganizationPersonRoleId_Parent]) REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]),
    CONSTRAINT [FK_OrganizationPersonRoleRelationship_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The relationship between two OrganizationPersonRole records.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationPersonRoleRelationship';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationPersonRoleRelationship';

