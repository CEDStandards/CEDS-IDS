CREATE TABLE [dbo].[RefIndicatorStateDefinedStatus] (
    [RefIndicatorStateDefinedStatusId] INT            IDENTITY (1, 1) NOT NULL,
    [Description]                      NVARCHAR (150) NULL,
    [Code]                             NVARCHAR (50)  NULL,
    [Definition]                       NVARCHAR (MAX) NULL,
    [RefJurisdictionId]                INT            NULL,
    [SortOrder]                        DECIMAL (5, 2) NULL,
    [RecordStartDateTime]              DATETIME       NULL,
    [RecordEndDateTime]                DATETIME       NULL,
    CONSTRAINT [PK_RefIndicatorStateDefinedStatus] PRIMARY KEY CLUSTERED ([RefIndicatorStateDefinedStatusId] ASC),
    CONSTRAINT [FK_RefIndicatorStateDefinedStatus_Org] FOREIGN KEY ([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
);

