CREATE TABLE [dbo].[RefAccessibleFormatType] (
    [RefAccessibleFormatTypeId] INT             IDENTITY (1, 1) NOT NULL,
    [Description]               NVARCHAR (150)  NOT NULL,
    [Code]                      NVARCHAR (50)   NULL,
    [Definition]                NVARCHAR (4000) NULL,
    [RefJurisdictionId]         INT             NULL,
    [SortOrder]                 DECIMAL (5, 2)  NULL,
    [RecordStartDateTime]       DATETIME        NULL,
    [RecordEndDateTime]         DATETIME        NULL,
    CONSTRAINT [PK_RefAccessibleFormatType] PRIMARY KEY CLUSTERED ([RefAccessibleFormatTypeId] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An alternative manner or form that gives an eligible person access to the work when the copy or phonorecord in the accessible format is used exclusively by the eligible person to permit him or her to have access as feasibly and comfortably as a person without such disability (20 U.S.C. § 121(d)(1)).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefAccessibleFormatType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefAccessibleFormatType';

