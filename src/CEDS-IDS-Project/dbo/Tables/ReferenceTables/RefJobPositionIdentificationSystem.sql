CREATE TABLE [dbo].[RefJobPositionIdentificationSystem] (
    [RefJobPositionIdentificationSystemId] INT             IDENTITY (1, 1) NOT NULL,
    [Description]                          NVARCHAR (150)  NOT NULL,
    [Code]                                 NVARCHAR (50)   NULL,
    [Definition]                           NVARCHAR (4000) NULL,
    [RefJurisdictionId]                    INT             NULL,
    [SortOrder]                            DECIMAL (5, 2)  NULL,
    [RecordStartDateTime]                  DATETIME        NULL,
    [RecordEndDateTime]                    DATETIME        NULL,
    CONSTRAINT [PK_RefJobPositionIdentificationSystem] PRIMARY KEY CLUSTERED ([RefJobPositionIdentificationSystemId] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A coding scheme that is used by an organization for identification and record keeping purposes to refer to a job position.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefJobPositionIdentificationSystem';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefJobPositionIdentificationSystem';

