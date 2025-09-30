CREATE TABLE [dbo].[RefPartBPostsecondaryOutcomesIndicator] (
    [RefPartBPostsecondaryOutcomesIndicatorId] INT             IDENTITY (1, 1) NOT NULL,
    [Description]                              NVARCHAR (150)  NOT NULL,
    [Code]                                     NVARCHAR (50)   NULL,
    [Definition]                               NVARCHAR (4000) NULL,
    [RefJurisdictionId]                        INT             NULL,
    [SortOrder]                                DECIMAL (5, 2)  NULL,
    [RecordStartDateTime]                      DATETIME        NULL,
    [RecordEndDateTime]                        DATETIME        NULL,
    CONSTRAINT [PK_RefPartBPostsecondaryOutcomesIndicator] PRIMARY KEY CLUSTERED ([RefPartBPostsecondaryOutcomesIndicatorId] ASC),
    CONSTRAINT [FK_RefPartBPostsecondaryOutcomesIndicator_Organization] FOREIGN KEY ([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of the status of a person within one year of leaving secondary school and who had an individualized education program in effect at the time they left secondary school.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefPartBPostsecondaryOutcomesIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefPartBPostsecondaryOutcomesIndicator';

