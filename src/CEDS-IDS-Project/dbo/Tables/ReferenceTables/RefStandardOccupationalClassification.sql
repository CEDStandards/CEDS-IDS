CREATE TABLE [dbo].[RefStandardOccupationalClassification] (
    [RefStandardOccupationalClassificationId] INT             IDENTITY (1, 1) NOT NULL,
    [Description]                             NVARCHAR (150)  NOT NULL,
    [Code]                                    NVARCHAR (50)   NULL,
    [Definition]                              NVARCHAR (4000) NULL,
    [RefJurisdictionId]                       INT             NULL,
    [SortOrder]                               DECIMAL (5, 2)  NULL,
    [RecordStartDateTime]                     DATETIME        NULL,
    [RecordEndDateTime]                       DATETIME        NULL,
    CONSTRAINT [PK_RefStandardOccupationalClassification] PRIMARY KEY CLUSTERED ([RefStandardOccupationalClassificationId] ASC),
    CONSTRAINT [FK_RefStandardOccupationalClassification_Organization] FOREIGN KEY ([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A Bureau of Labor Statistics coding system for classifying occupations by work performed and, in some cases, on the skills, education and training needed to perform the work at a competent level.  See https://www.bls.gov/soc/2018/major_groups.htm.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefStandardOccupationalClassification';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefStandardOccupationalClassification';

