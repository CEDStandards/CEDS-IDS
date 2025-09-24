CREATE TABLE [dbo].[OrganizationIndirectCostRate] (
    [OrganizationIndirectCostRateId]       INT             IDENTITY (1, 1) NOT NULL,
    [OrganizationId]                 INT             NOT NULL,
    [IndirectCostRate]            DECIMAL (5, 2)  NULL,
    [IndirectCostRateAgreementApprovedBy]  NVARCHAR (200)  NULL,
    [IndirectCostRateAgreementStartDate] DATETIME            NULL,
    [IndirectCostRateAgreementEndDate]   DATETIME            NULL,
    [RefIndirectCostRateAgreementIndicatorId] INT             NULL,
    [RefIndirectCostRateStageCodeId] INT             NULL,
    [RefIndirectCostRateDeviationReasonTypeId] INT             NULL,
    [RecordStartDateTime]           DATETIME        NULL,
    [RecordEndDateTime]             DATETIME        NULL,
    [RecordStatusId]                INT             NULL,
    [DataCollectionId]              INT             NULL,
    CONSTRAINT [PK_OrganizationIndirectCostRate] PRIMARY KEY CLUSTERED ([OrganizationIndirectCostRateId] ASC),
    CONSTRAINT [FK_OrganizationIndirectCostRate_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_OrganizationIndirectCostRate_RefIndirectCostRateAgreementIndicator] FOREIGN KEY ([RefIndirectCostRateAgreementIndicatorId]) REFERENCES [dbo].[RefIndirectCostRateAgreementIndicator] ([RefIndirectCostRateAgreementIndicatorId]),
    CONSTRAINT [FK_OrganizationIndirectCostRate_RefIndirectCostRateStageCode] FOREIGN KEY ([RefIndirectCostRateStageCodeId]) REFERENCES [dbo].[RefIndirectCostRateStageCode] ([RefIndirectCostRateStageCodeId]),
    CONSTRAINT [FK_OrganizationIndirectCostRate_RefIndirectCostRateDeviationReasonType] FOREIGN KEY ([RefIndirectCostRateDeviationReasonTypeId]) REFERENCES [dbo].[RefIndirectCostRateDeviationReasonType] ([RefIndirectCostRateDeviationReasonTypeId]),
    CONSTRAINT [FK_OrganizationIndirectCostRate_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId])
);


