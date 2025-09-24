CREATE TABLE [dbo].[K12FederalFundAllocation] (
    [K12FederalFundAllocationId]               INT             IDENTITY (1, 1) NOT NULL,
    [OrganizationCalendarSessionId]            INT             NOT NULL,
    [FederalProgramCode]                       NVARCHAR (10)   NOT NULL,
    [RefFederalProgramFundingAllocationTypeId] INT             NULL,
    [FederalProgramsFundingAllocation]         NUMERIC (18, 2) NULL,
    [FundsTransferAmount]                      NUMERIC (18, 2) NULL,
    [SchoolImprovementAllocation]              NUMERIC (18, 2) NULL,
    [LeaTransferabilityOfFunds]                BIT             NULL,
    [RefLeaFundsTransferTypeId]                INT             NULL,
    [SchoolImprovementReservedPercent]         NUMERIC (18, 2) NULL,
    [SesPerPupilExpenditure]                   NUMERIC (18, 2) NULL,
    [NumberOfImmigrantProgramSubgrants]        INT             NULL,
    [RefReapAlternativeFundingStatusId]        INT             NULL,
    [RecordStartDateTime]                      DATETIME        NULL,
    [RecordEndDateTime]                        DATETIME        NULL,
    [RecordStatusId]                           INT             NULL,
    [DataCollectionId]                         INT             NULL,
    CONSTRAINT [PK_K12FederalFundAllocation] PRIMARY KEY CLUSTERED ([K12FederalFundAllocationId] ASC),
    CONSTRAINT [FK_K12FederalFundAllocation_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_K12FederalFundAllocation_OrganizationCalendarSession] FOREIGN KEY ([OrganizationCalendarSessionId]) REFERENCES [dbo].[OrganizationCalendarSession] ([OrganizationCalendarSessionId]),
    CONSTRAINT [FK_K12FederalFundAllocation_REAPAlternativeFundingStatus] FOREIGN KEY ([RefReapAlternativeFundingStatusId]) REFERENCES [dbo].[RefReapAlternativeFundingStatus] ([RefReapAlternativeFundingStatusId]),
    CONSTRAINT [FK_K12FederalFundAllocation_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_K12FederalFundAllocation_RefFederalFundingAllocation] FOREIGN KEY ([RefFederalProgramFundingAllocationTypeId]) REFERENCES [dbo].[RefFederalProgramFundingAllocationType] ([RefFederalProgramFundingAllocationTypeId]),
    CONSTRAINT [FK_K12FederalFundAllocation_RefLEAFundsTransferType] FOREIGN KEY ([RefLeaFundsTransferTypeId]) REFERENCES [dbo].[RefLeaFundsTransferType] ([RefLeaFundsTransferTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information about the type and amount of allocation of federal funds to a K12 organization during a funding period.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12FederalFundAllocation';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12FederalFundAllocation';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12FederalFundAllocation', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12FederalFundAllocation', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12FederalFundAllocation', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12FederalFundAllocation', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12FederalFundAllocation', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12FederalFundAllocation', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12FederalFundAllocation', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12FederalFundAllocation', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12FederalFundAllocation', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

