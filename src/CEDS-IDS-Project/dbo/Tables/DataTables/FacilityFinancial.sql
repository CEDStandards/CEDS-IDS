CREATE TABLE [dbo].[FacilityFinancial] (
    [FacilityFinancialId]     INT      IDENTITY (1, 1) NOT NULL,
    [OrganizationFinancialId] INT      NOT NULL,
    [FacilityLeaseId]         INT      NULL,
    [FacilityMortgageId]      INT      NULL,
    [FacilityMortgageFeeId]   INT      NULL,
    [RecordStartDateTime]     DATETIME NULL,
    [RecordEndDateTime]       DATETIME NULL,
    [RecordStatusId]          INT      NULL,
    [DataCollectionId]        INT      NULL,
    CONSTRAINT [PK_FacilityFinancial] PRIMARY KEY CLUSTERED ([FacilityFinancialId] ASC),
    CONSTRAINT [FK_FacilityFinancial_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_FacilityFinancial_FacilityLease] FOREIGN KEY ([FacilityLeaseId]) REFERENCES [dbo].[FacilityLease] ([FacilityLeaseId]),
    CONSTRAINT [FK_FacilityFinancial_FacilityMortgage] FOREIGN KEY ([FacilityMortgageId]) REFERENCES [dbo].[FacilityMortgage] ([FacilityMortgageId]),
    CONSTRAINT [FK_FacilityFinancial_FacilityMortgageFee] FOREIGN KEY ([FacilityMortgageFeeId]) REFERENCES [dbo].[FacilityMortgageFee] ([FacilityMortgageFeeId]),
    CONSTRAINT [FK_FacilityFinancial_OrganizationFinancial] FOREIGN KEY ([OrganizationFinancialId]) REFERENCES [dbo].[OrganizationFinancial] ([OrganizationFinancialId]),
    CONSTRAINT [FK_FacilityFinancial_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information about mortgage and lease costs of a facility.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityFinancial';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityFinancial';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityFinancial', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityFinancial', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityFinancial', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityFinancial', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityFinancial', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityFinancial', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityFinancial', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityFinancial', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityFinancial', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

