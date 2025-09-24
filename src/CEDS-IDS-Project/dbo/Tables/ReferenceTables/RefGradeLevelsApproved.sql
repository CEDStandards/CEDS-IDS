CREATE TABLE [dbo].[RefGradeLevelsApproved] (
    [RefGradeLevelsApprovedId] INT             IDENTITY (1, 1) NOT NULL,
    [Description]              NVARCHAR (150)  NOT NULL,
    [Code]                     NVARCHAR (50)   NULL,
    [Definition]               NVARCHAR (4000) NULL,
    [RefJurisdictionId]        INT             NULL,
    [SortOrder]                DECIMAL (6, 2)  NULL,
    [RecordStartDateTime]      DATETIME        NULL,
    [RecordEndDateTime]        DATETIME        NULL,
    CONSTRAINT [PK_RefGradeLevelsApproved] PRIMARY KEY CLUSTERED ([RefGradeLevelsApprovedId] ASC),
    CONSTRAINT [FK_RefGradeLevelsApproved_Organization] FOREIGN KEY ([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The specific grade or combination of grades approved by an organization to be offered by an education institution.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefGradeLevelsApproved';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefGradeLevelsApproved';

