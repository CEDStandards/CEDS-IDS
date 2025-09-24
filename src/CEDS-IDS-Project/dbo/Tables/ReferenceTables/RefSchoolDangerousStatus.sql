CREATE TABLE [dbo].[RefSchoolDangerousStatus] (
    [RefSchoolDangerousStatusId] INT             IDENTITY (1, 1) NOT NULL,
    [Description]                NVARCHAR (150)  NOT NULL,
    [Code]                       NVARCHAR (50)   NULL,
    [Definition]                 NVARCHAR (4000) NULL,
    [RefJurisdictionId]          INT             NULL,
    [SortOrder]                  DECIMAL (5, 2)  NULL,
    [RecordStartDateTime]        DATETIME        NULL,
    [RecordEndDateTime]          DATETIME        NULL,
    CONSTRAINT [PK__RefSchoolDangerousStatus] PRIMARY KEY CLUSTERED ([RefSchoolDangerousStatusId] ASC),
    CONSTRAINT [FK_RefSchoolDangerousStatus_Organization] FOREIGN KEY ([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
);

