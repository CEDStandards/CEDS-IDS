CREATE TABLE [dbo].[RefAlternateFundUses] (
    [RefAlternateFundUsesId] INT             IDENTITY (1, 1) NOT NULL,
    [Description]            NVARCHAR (150)  NOT NULL,
    [Code]                   NVARCHAR (50)   NULL,
    [Definition]             NVARCHAR (4000) NULL,
    [RefJurisdictionId]      INT             NULL,
    [SortOrder]              DECIMAL (5, 2)  NULL,
    [RecordStartDateTime]    DATETIME        NULL,
    [RecordEndDateTime]      DATETIME        NULL,
    CONSTRAINT [PK_RefAlternateFundUses] PRIMARY KEY CLUSTERED ([RefAlternateFundUsesId] ASC),
    CONSTRAINT [FK_RefAlternateFundUses_Organization] FOREIGN KEY ([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'CEDS Element has been removed.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefAlternateFundUses';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefAlternateFundUses', @level2type = N'COLUMN', @level2name = N'RefAlternateFundUsesId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'CEDS Element has been removed.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefAlternateFundUses', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'CEDS Element has been removed.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefAlternateFundUses', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate key from Organization identifying the publisher of the reference value.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefAlternateFundUses', @level2type = N'COLUMN', @level2name = N'RefJurisdictionId';

