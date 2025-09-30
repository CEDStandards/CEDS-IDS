CREATE TABLE [dbo].[_CEDStoNDSMapping] (
    [GlobalID]   VARCHAR (20)  NOT NULL,
    [TableName]  VARCHAR (100) NOT NULL,
    [ColumnName] VARCHAR (100) NULL,
    [Version]    NVARCHAR (20) NULL,
    CONSTRAINT [IX_GlobalID_TableName_ColumnName_Version] UNIQUE NONCLUSTERED ([GlobalID] ASC, [TableName] ASC, [ColumnName] ASC, [Version] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Provides a listing of all elements in CEDS for this version along with an indication of the table and columns where data for this element would be stored.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'_CEDStoNDSMapping';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'_CEDStoNDSMapping';

