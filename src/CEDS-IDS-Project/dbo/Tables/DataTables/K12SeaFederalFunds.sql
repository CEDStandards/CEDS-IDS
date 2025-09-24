CREATE TABLE [dbo].[K12SeaFederalFunds] (
    [K12SeaFederalFundsId]                    INT            IDENTITY (1, 1) NOT NULL,
    [K12SeaId]                                INT            NOT NULL,
    [StateTransferabilityOfFunds]             BIT            NULL,
    [DateStateReceivedTitleIIIAllocation]     DATE           NULL,
    [DateTitleIIIFundsAvailableToSubgrantees] DATE           NULL,
    [NumberOfDaysForTitleIIISubgrants]        NUMERIC (6, 2) NULL,
    [RecordStartDateTime]                     DATETIME       NULL,
    [RecordEndDateTime]                       DATETIME       NULL,
    [RecordStatusId]                          INT            NULL,
    [DataCollectionId]                        INT            NULL,
    CONSTRAINT [PK_K12SEAFederalFunds] PRIMARY KEY CLUSTERED ([K12SeaFederalFundsId] ASC),
    CONSTRAINT [FK_K12SeaFederalFunds_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_K12SeaFederalFunds_K12Sea] FOREIGN KEY ([K12SeaId]) REFERENCES [dbo].[K12Sea] ([K12SeaId]),
    CONSTRAINT [FK_K12SeaFederalFunds_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information on the federal funds received by the SEA.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SeaFederalFunds';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SeaFederalFunds';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Did the State transfer funds under the State Transferability authority of Section 6123(a)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SeaFederalFunds', @level2type = N'COLUMN', @level2name = N'StateTransferabilityOfFunds';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'State Transferability of Funds', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SeaFederalFunds', @level2type = N'COLUMN', @level2name = N'StateTransferabilityOfFunds';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000445', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SeaFederalFunds', @level2type = N'COLUMN', @level2name = N'StateTransferabilityOfFunds';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19435', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SeaFederalFunds', @level2type = N'COLUMN', @level2name = N'StateTransferabilityOfFunds';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SeaFederalFunds', @level2type = N'COLUMN', @level2name = N'StateTransferabilityOfFunds';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Annual date the State receives the Title III allocation from U.S. Department of Education (ED).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SeaFederalFunds', @level2type = N'COLUMN', @level2name = N'DateStateReceivedTitleIIIAllocation';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Date State Received Title III Allocation', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SeaFederalFunds', @level2type = N'COLUMN', @level2name = N'DateStateReceivedTitleIIIAllocation';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000455', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SeaFederalFunds', @level2type = N'COLUMN', @level2name = N'DateStateReceivedTitleIIIAllocation';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19445', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SeaFederalFunds', @level2type = N'COLUMN', @level2name = N'DateStateReceivedTitleIIIAllocation';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SeaFederalFunds', @level2type = N'COLUMN', @level2name = N'DateStateReceivedTitleIIIAllocation';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Annual date that Title III funds are available to approved subgrantees.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SeaFederalFunds', @level2type = N'COLUMN', @level2name = N'DateTitleIIIFundsAvailableToSubgrantees';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Date Title III Funds Available to Subgrantees', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SeaFederalFunds', @level2type = N'COLUMN', @level2name = N'DateTitleIIIFundsAvailableToSubgrantees';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000456', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SeaFederalFunds', @level2type = N'COLUMN', @level2name = N'DateTitleIIIFundsAvailableToSubgrantees';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19446', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SeaFederalFunds', @level2type = N'COLUMN', @level2name = N'DateTitleIIIFundsAvailableToSubgrantees';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SeaFederalFunds', @level2type = N'COLUMN', @level2name = N'DateTitleIIIFundsAvailableToSubgrantees';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Average number of days for States receiving Title III funds to make subgrants to subgrantees beginning from July 1 of each year, except under conditions where funds are being withheld.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SeaFederalFunds', @level2type = N'COLUMN', @level2name = N'NumberOfDaysForTitleIIISubgrants';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Number of Days for Title III Subgrants', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SeaFederalFunds', @level2type = N'COLUMN', @level2name = N'NumberOfDaysForTitleIIISubgrants';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000457', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SeaFederalFunds', @level2type = N'COLUMN', @level2name = N'NumberOfDaysForTitleIIISubgrants';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19447', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SeaFederalFunds', @level2type = N'COLUMN', @level2name = N'NumberOfDaysForTitleIIISubgrants';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SeaFederalFunds', @level2type = N'COLUMN', @level2name = N'NumberOfDaysForTitleIIISubgrants';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SeaFederalFunds', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SeaFederalFunds', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SeaFederalFunds', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SeaFederalFunds', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SeaFederalFunds', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SeaFederalFunds', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SeaFederalFunds', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SeaFederalFunds', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SeaFederalFunds', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

