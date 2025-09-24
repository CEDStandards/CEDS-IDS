CREATE TABLE [dbo].[RefStateANSICode] (
    [RefStateANSICodeId]  INT             IDENTITY (1, 1) NOT NULL,
    [Code]                NVARCHAR (50)   NOT NULL,
    [Description]         NVARCHAR (150)  NOT NULL,
    [Definition]          NVARCHAR (4000) NULL,
    [RefJurisdictionId]   INT             NULL,
    [SortOrder]           DECIMAL (6, 2)  NULL,
    [RecordStartDateTime] DATETIME        NULL,
    [RecordEndDateTime]   DATETIME        NULL,
    CONSTRAINT [PK_RefStateANSICode] PRIMARY KEY CLUSTERED ([RefStateANSICodeId] ASC),
    CONSTRAINT [FK_RefStateANSICode_Organization] FOREIGN KEY ([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The American National Standards Institute (ANSI) two-digit code for the state.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefStateANSICode';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'State ANSI Code', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefStateANSICode';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000424', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefStateANSICode';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19414', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefStateANSICode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefStateANSICode';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A code or abbreviation for the options in this option set.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefStateANSICode', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefStateANSICode', @level2type = N'COLUMN', @level2name = N'Code';

