CREATE TABLE [dbo].[RefTeenParentIndicator] (
    [RefTeenParentIndicatorId] INT             IDENTITY (1, 1) NOT NULL,
    [Description]              NVARCHAR (150)  NOT NULL,
    [Code]                     NVARCHAR (50)   NULL,
    [Definition]               NVARCHAR (4000) NULL,
    [RefJurisdictionId]        INT             NULL,
    [SortOrder]                DECIMAL (5, 2)  NULL,
    [RecordStartDateTime]      DATETIME        NULL,
    [RecordEndDateTime]        DATETIME        NULL,
    CONSTRAINT [PK_RefTeenParentIndicator] PRIMARY KEY CLUSTERED ([RefTeenParentIndicatorId] ASC),
    CONSTRAINT [FK_RefTeenParentIndicator_Organization] FOREIGN KEY ([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The child''s parent or guardian is a teen parent between ages 10 to 19 years.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefTeenParentIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefTeenParentIndicator';

