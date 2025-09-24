CREATE TABLE [dbo].[ELOrganizationFunds] (
    [ELOrganizationFundsId]             INT      IDENTITY (1, 1) NOT NULL,
    [OrganizationId]                    INT      NOT NULL,
    [RefELFederalFundingTypeId]         INT      NULL,
    [RefELLocalRevenueSourceId]         INT      NULL,
    [RefELOtherFederalFundingSourcesId] INT      NULL,
    [RefELStateRevenueSourceId]         INT      NULL,
    [RefBillableBasisTypeId]            INT      NULL,
    [RefReimbursementTypeId]            INT      NULL,
    [RecordStartDateTime]               DATETIME NULL,
    [RecordEndDateTime]                 DATETIME NULL,
    [RecordStatusId]                    INT      NULL,
    [DataCollectionId]                  INT      NULL,
    [RefAdministrativeFundingControlId] INT      NULL,
    CONSTRAINT [PK_ELOrganizationFunds] PRIMARY KEY CLUSTERED ([ELOrganizationFundsId] ASC),
    CONSTRAINT [FK_ELOrganizationFunds_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_ELOrganizationFunds_Organization] FOREIGN KEY ([OrganizationId]) REFERENCES [dbo].[Organization] ([OrganizationId]),
    CONSTRAINT [FK_ELOrganizationFunds_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_ELOrganizationFunds_RefAdministrativeFundingControl] FOREIGN KEY ([RefAdministrativeFundingControlId]) REFERENCES [dbo].[RefAdministrativeFundingControl] ([RefAdministrativeFundingControlId]),
    CONSTRAINT [FK_ELOrganizationFunds_RefBillableBasisType] FOREIGN KEY ([RefBillableBasisTypeId]) REFERENCES [dbo].[RefBillableBasisType] ([RefBillableBasisTypeId]),
    CONSTRAINT [FK_ELOrganizationFunds_RefELFederalFundingType] FOREIGN KEY ([RefELFederalFundingTypeId]) REFERENCES [dbo].[RefELFederalFundingType] ([RefELFederalFundingTypeId]),
    CONSTRAINT [FK_ELOrganizationFunds_RefELLocalRevenueSource] FOREIGN KEY ([RefELLocalRevenueSourceId]) REFERENCES [dbo].[RefELLocalRevenueSource] ([RefELLocalRevenueSourceId]),
    CONSTRAINT [FK_ELOrganizationFunds_RefELOtherFederalFundingSources] FOREIGN KEY ([RefELOtherFederalFundingSourcesId]) REFERENCES [dbo].[RefELOtherFederalFundingSources] ([RefELOtherFederalFundingSourcesId]),
    CONSTRAINT [FK_ELOrganizationFunds_RefELStateRevenueSource] FOREIGN KEY ([RefELStateRevenueSourceId]) REFERENCES [dbo].[RefELStateRevenueSource] ([RefELStateRevenueSourceId]),
    CONSTRAINT [FK_ELOrganizationFunds_RefReimbursementType] FOREIGN KEY ([RefReimbursementTypeId]) REFERENCES [dbo].[RefReimbursementType] ([RefReimbursementTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information about sources of funds received by an early learning organization.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationFunds';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationFunds';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate key from Organization', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationFunds', @level2type = N'COLUMN', @level2name = N'OrganizationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Federal source, even if administered by state or local, that contributes to the EL program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationFunds', @level2type = N'COLUMN', @level2name = N'RefELFederalFundingTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Early Learning Federal Funding Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationFunds', @level2type = N'COLUMN', @level2name = N'RefELFederalFundingTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001328', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationFunds', @level2type = N'COLUMN', @level2name = N'RefELFederalFundingTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20294', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationFunds', @level2type = N'COLUMN', @level2name = N'RefELFederalFundingTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationFunds', @level2type = N'COLUMN', @level2name = N'RefELFederalFundingTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Funds that originate at the local level, and not from the state or federal level, that contribute to EL program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationFunds', @level2type = N'COLUMN', @level2name = N'RefELLocalRevenueSourceId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Early Learning Local Revenue Source', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationFunds', @level2type = N'COLUMN', @level2name = N'RefELLocalRevenueSourceId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001603', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationFunds', @level2type = N'COLUMN', @level2name = N'RefELLocalRevenueSourceId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20582', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationFunds', @level2type = N'COLUMN', @level2name = N'RefELLocalRevenueSourceId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationFunds', @level2type = N'COLUMN', @level2name = N'RefELLocalRevenueSourceId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The other contributing funding sources.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationFunds', @level2type = N'COLUMN', @level2name = N'RefELOtherFederalFundingSourcesId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Early Learning Other Federal Funding Sources', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationFunds', @level2type = N'COLUMN', @level2name = N'RefELOtherFederalFundingSourcesId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001335', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationFunds', @level2type = N'COLUMN', @level2name = N'RefELOtherFederalFundingSourcesId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20302', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationFunds', @level2type = N'COLUMN', @level2name = N'RefELOtherFederalFundingSourcesId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationFunds', @level2type = N'COLUMN', @level2name = N'RefELOtherFederalFundingSourcesId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N' Funds that originate at the State, and not from a federal or local source, that contribute to EL program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationFunds', @level2type = N'COLUMN', @level2name = N'RefELStateRevenueSourceId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Early Learning State Revenue Source', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationFunds', @level2type = N'COLUMN', @level2name = N'RefELStateRevenueSourceId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001605', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationFunds', @level2type = N'COLUMN', @level2name = N'RefELStateRevenueSourceId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20584', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationFunds', @level2type = N'COLUMN', @level2name = N'RefELStateRevenueSourceId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationFunds', @level2type = N'COLUMN', @level2name = N'RefELStateRevenueSourceId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The event/action that results in a billable action.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationFunds', @level2type = N'COLUMN', @level2name = N'RefBillableBasisTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Billable Basis Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationFunds', @level2type = N'COLUMN', @level2name = N'RefBillableBasisTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001582', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationFunds', @level2type = N'COLUMN', @level2name = N'RefBillableBasisTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20561', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationFunds', @level2type = N'COLUMN', @level2name = N'RefBillableBasisTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationFunds', @level2type = N'COLUMN', @level2name = N'RefBillableBasisTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A billable basis which defines payment. This is how state agencies/programs move funding to the local provider/agency.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationFunds', @level2type = N'COLUMN', @level2name = N'RefReimbursementTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Reimbursement Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationFunds', @level2type = N'COLUMN', @level2name = N'RefReimbursementTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001622', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationFunds', @level2type = N'COLUMN', @level2name = N'RefReimbursementTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20601', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationFunds', @level2type = N'COLUMN', @level2name = N'RefReimbursementTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationFunds', @level2type = N'COLUMN', @level2name = N'RefReimbursementTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationFunds', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationFunds', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationFunds', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationFunds', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationFunds', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationFunds', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationFunds', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationFunds', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationFunds', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of education institution as classified by its funding source.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationFunds', @level2type = N'COLUMN', @level2name = N'RefAdministrativeFundingControlId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Administrative Funding Control', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationFunds', @level2type = N'COLUMN', @level2name = N'RefAdministrativeFundingControlId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000012', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationFunds', @level2type = N'COLUMN', @level2name = N'RefAdministrativeFundingControlId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=21012', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationFunds', @level2type = N'COLUMN', @level2name = N'RefAdministrativeFundingControlId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationFunds', @level2type = N'COLUMN', @level2name = N'RefAdministrativeFundingControlId';

