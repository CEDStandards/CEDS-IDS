CREATE TABLE [dbo].[RefHighQualityInstructionalMaterialIndicator] (
    [RefHighQualityInstructionalMaterialIndicatorId] INT             IDENTITY (1, 1) NOT NULL,
    [Description]                                    NVARCHAR (150)  NOT NULL,
    [Code]                                           NVARCHAR (50)   NULL,
    [Definition]                                     NVARCHAR (4000) NULL,
    [RefJurisdictionId]                              INT             NULL,
    [SortOrder]                                      DECIMAL (5, 2)  NULL,
    [RecordStartDateTime]                            DATETIME        NULL,
    [RecordEndDateTime]                              DATETIME        NULL,
    CONSTRAINT [PK_RefHighQualityInstructionalMaterialIndicator] PRIMARY KEY CLUSTERED ([RefHighQualityInstructionalMaterialIndicatorId] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether the related learning resource meets requirements to be considered high quality instructional material as defined by the organization assigning the indicator.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefHighQualityInstructionalMaterialIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefHighQualityInstructionalMaterialIndicator';

