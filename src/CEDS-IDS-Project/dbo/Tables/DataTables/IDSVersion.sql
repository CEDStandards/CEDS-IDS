CREATE TABLE [dbo].[IDSVersion] (
    [IDSVersionId]     INT           IDENTITY (1, 1) NOT NULL,
    [CurrentVersion]   BIT           NOT NULL,
    [IDSVersionDate]   DATETIME      NOT NULL,
    [IDSVersionNumber] NVARCHAR (10) NOT NULL,
    CONSTRAINT [PK_IDSVersion] PRIMARY KEY CLUSTERED ([IDSVersionId] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The version of the IDS.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IDSVersion';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IDSVersion';

