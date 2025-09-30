CREATE TABLE [dbo].[RefAccessibleFormatIssuedIndicator] (
    [RefAccessibleFormatIssuedIndicatorId] INT             IDENTITY (1, 1) NOT NULL,
    [Description]                          NVARCHAR (150)  NOT NULL,
    [Code]                                 NVARCHAR (50)   NULL,
    [Definition]                           NVARCHAR (4000) NULL,
    [RefJurisdictionId]                    INT             NULL,
    [SortOrder]                            DECIMAL (5, 2)  NULL,
    [RecordStartDateTime]                  DATETIME        NULL,
    [RecordEndDateTime]                    DATETIME        NULL,
    CONSTRAINT [PK_RefAccessibleFormatIssuedIndicator] PRIMARY KEY CLUSTERED ([RefAccessibleFormatIssuedIndicatorId] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication that the student was issued an accessible format according to their IEP or 504 Plan. ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefAccessibleFormatIssuedIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefAccessibleFormatIssuedIndicator';

