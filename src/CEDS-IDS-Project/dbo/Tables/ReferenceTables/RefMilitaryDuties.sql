CREATE TABLE [dbo].[RefMilitaryDuties] (
    [RefMilitaryDutiesId] INT             IDENTITY (1, 1) NOT NULL,
    [Description]         NVARCHAR (150)  NOT NULL,
    [Code]                NVARCHAR (50)   NULL,
    [Definition]          NVARCHAR (4000) NULL,
    [RefJurisdictionId]   INT             NULL,
    [SortOrder]           DECIMAL (5, 2)  NULL,
    [RecordStartDateTime] DATETIME        NULL,
    [RecordEndDateTime]   DATETIME        NULL,
    CONSTRAINT [PK_RefMilitaryDuties] PRIMARY KEY CLUSTERED ([RefMilitaryDutiesId] ASC),
    CONSTRAINT [FK_RefMilitaryDuties_Organization] FOREIGN KEY ([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A description of the duties encompassed within a period of military service.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefMilitaryDuties';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefMilitaryDuties';

