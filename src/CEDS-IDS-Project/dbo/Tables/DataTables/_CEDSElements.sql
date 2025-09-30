CREATE TABLE [dbo].[_CEDSElements] (
    [GlobalID]                VARCHAR (20)  NULL,
    [ElementName]             VARCHAR (150) NOT NULL,
    [AltName]                 VARCHAR (150) NULL,
    [Definition]              VARCHAR (MAX) NOT NULL,
    [Format]                  VARCHAR (150) NULL,
    [HasOptionSet]            BIT           NOT NULL,
    [UsageNotes]              VARCHAR (MAX) NULL,
    [URL]                     VARCHAR (512) NULL,
    [Version]                 VARCHAR (20)  NULL,
    [TermID]                  INT           IDENTITY (2000, 1) NOT NULL,
    [ChangedInThisVersionInd] VARCHAR (20)  NULL,
    [ChangeNotes]             VARCHAR (MAX) NULL,
    CONSTRAINT [PK__CEDSElements] PRIMARY KEY CLUSTERED ([TermID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Provides a listing of all elements in CEDS for this version.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'_CEDSElements';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'_CEDSElements';

