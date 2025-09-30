CREATE TABLE [dbo].[RefChronicStudentAbsenteeismIndicator] (
    [RefChronicStudentAbsenteeismIndicatorId] INT             IDENTITY (1, 1) NOT NULL,
    [Description]                             NVARCHAR (150)  NOT NULL,
    [Code]                                    NVARCHAR (50)   NULL,
    [Definition]                              NVARCHAR (4000) NULL,
    [RefJurisdictionId]                       INT             NULL,
    [SortOrder]                               DECIMAL (5, 2)  NULL,
    [RecordStartDateTime]                     DATETIME        NULL,
    [RecordEndDateTime]                       DATETIME        NULL,
    CONSTRAINT [PK_RefChronicStudentAbsenteeismIndicator] PRIMARY KEY CLUSTERED ([RefChronicStudentAbsenteeismIndicatorId] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Indicates whether a student was absent 10% or more school days during the school year with an absence being defined as a student not physically on school grounds and was not participating in instruction or instruction-related activities at an approved off-grounds location for at least half the school day.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefChronicStudentAbsenteeismIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefChronicStudentAbsenteeismIndicator';

