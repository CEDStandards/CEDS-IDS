CREATE TABLE [dbo].[RefTargetedSupport] (
    [RefTargetedSupportId] INT            IDENTITY (1, 1) NOT NULL,
    [Description]          NVARCHAR (150) NULL,
    [Code]                 NVARCHAR (50)  NULL,
    [Definition]           NVARCHAR (MAX) NULL,
    [RefJurisdictionId]    INT            NULL,
    [SortOrder]            DECIMAL (5, 2) NULL,
    [RecordStartDateTime]  DATETIME       NULL,
    [RecordEndDateTime]    DATETIME       NULL,
    CONSTRAINT [PK_RefTargetedSupport] PRIMARY KEY CLUSTERED ([RefTargetedSupportId] ASC),
    CONSTRAINT [FK_RefTargetedSupport_Org] FOREIGN KEY ([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
);

