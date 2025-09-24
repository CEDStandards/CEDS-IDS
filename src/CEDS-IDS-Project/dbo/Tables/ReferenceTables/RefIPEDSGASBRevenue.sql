CREATE TABLE [dbo].[RefIPEDSGASBRevenue] (
    [RefIPEDSGASBRevenueId] INT             IDENTITY (1, 1) NOT NULL,
    [Description]           NVARCHAR (150)  NOT NULL,
    [Code]                  NVARCHAR (60)   NULL,
    [Definition]            NVARCHAR (4000) NULL,
    [RefJurisdictionId]     INT             NULL,
    [SortOrder]             DECIMAL (6, 2)  NULL,
    [RecordStartDateTime]   DATETIME        NULL,
    [RecordEndDateTime]     DATETIME        NULL,
    CONSTRAINT [PK_RefIPEDSGASBRevenue] PRIMARY KEY CLUSTERED ([RefIPEDSGASBRevenueId] ASC),
    CONSTRAINT [FK_RefIPEDSGASBRevenue_Organization] FOREIGN KEY ([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'IPEDS revenue classification used by degree-granting public institutions using GASB Reporting Standards for reporting revenues and other additions by source including all operating revenues, nonoperating revenues, and other additions for the reporting period. This includes unrestricted and restricted revenues and additions, whether expendable or nonexpendable.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefIPEDSGASBRevenue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'IPEDS Finance GASB Revenue Category', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefIPEDSGASBRevenue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001672', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefIPEDSGASBRevenue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20653', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefIPEDSGASBRevenue';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The surrogate key for the options in this option set.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefIPEDSGASBRevenue', @level2type = N'COLUMN', @level2name = N'RefIPEDSGASBRevenueId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A description for the options in this option set.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefIPEDSGASBRevenue', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefIPEDSGASBRevenue', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A code or abbreviation for the options in this option set.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefIPEDSGASBRevenue', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefIPEDSGASBRevenue', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The defintion for the options in this option set.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefIPEDSGASBRevenue', @level2type = N'COLUMN', @level2name = N'Definition';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefIPEDSGASBRevenue', @level2type = N'COLUMN', @level2name = N'Definition';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate key from Organization identifying the publisher of the reference value.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefIPEDSGASBRevenue', @level2type = N'COLUMN', @level2name = N'RefJurisdictionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The sequence the options in this option set should be ordered.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefIPEDSGASBRevenue', @level2type = N'COLUMN', @level2name = N'SortOrder';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefIPEDSGASBRevenue', @level2type = N'COLUMN', @level2name = N'SortOrder';

