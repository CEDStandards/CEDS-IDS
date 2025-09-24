CREATE TABLE [dbo].[RefReapAlternativeFundingStatus] (
    [RefReapAlternativeFundingStatusId] INT             IDENTITY (1, 1) NOT NULL,
    [Description]                       NVARCHAR (150)  NOT NULL,
    [Code]                              NVARCHAR (50)   NULL,
    [Definition]                        NVARCHAR (4000) NULL,
    [RefJurisdictionId]                 INT             NULL,
    [SortOrder]                         DECIMAL (5, 2)  NULL,
    [RecordStartDateTime]               DATETIME        NULL,
    [RecordEndDateTime]                 DATETIME        NULL,
    CONSTRAINT [PK_RefREAPAlternativeFundingStatus] PRIMARY KEY CLUSTERED ([RefReapAlternativeFundingStatusId] ASC),
    CONSTRAINT [FK_RefREAPAlternativeFundingStatus_Organization] FOREIGN KEY ([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication that the local education agency (LEA) notified the state of the LEA''s intention to use REAP-Flex Alternative Uses of Funding Authority during the school year as specified in the Title VI, Section 6211 of ESEA as amended.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefReapAlternativeFundingStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Rural Education Achievement Program Alternative Funding Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefReapAlternativeFundingStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000560', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefReapAlternativeFundingStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19552', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefReapAlternativeFundingStatus';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefReapAlternativeFundingStatus';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefReapAlternativeFundingStatus', @level2type = N'COLUMN', @level2name = N'RefReapAlternativeFundingStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A description for the options in this option set.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefReapAlternativeFundingStatus', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefReapAlternativeFundingStatus', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A code or abbreviation for the options in this option set.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefReapAlternativeFundingStatus', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefReapAlternativeFundingStatus', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The defintion for the options in this option set.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefReapAlternativeFundingStatus', @level2type = N'COLUMN', @level2name = N'Definition';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate key from Organization identifying the publisher of the reference value.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefReapAlternativeFundingStatus', @level2type = N'COLUMN', @level2name = N'RefJurisdictionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The sequence the options in this option set should be ordered.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefReapAlternativeFundingStatus', @level2type = N'COLUMN', @level2name = N'SortOrder';

