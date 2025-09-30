CREATE TABLE [dbo].[StaffCompensationFundingSource] (
    [StaffCompensationFundingSourceId]         INT            IDENTITY (1, 1) NOT NULL,
    [StaffCompensationId]                      INT            NOT NULL,
    [FinancialAccountId]                       INT            NOT NULL,
    [StaffCompensationFundingSourceAmount]     DECIMAL (9, 2) NULL,
    [StaffCompensationFundingSourcePercentage] DECIMAL (5, 2) NULL,
    [RecordStartDateTime]                      DATETIME       NULL,
    [RecordEndDateTime]                        DATETIME       NULL,
    [RecordStatusId]                           INT            NULL,
    [DataCollectionId]                         INT            NULL,
    CONSTRAINT [PK_StaffCompensationFundingSource] PRIMARY KEY CLUSTERED ([StaffCompensationFundingSourceId] ASC),
    CONSTRAINT [FK_StaffCompensationFundingSource_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_StaffCompensationFundingSource_FinancialAccount] FOREIGN KEY ([FinancialAccountId]) REFERENCES [dbo].[FinancialAccount] ([FinancialAccountId]),
    CONSTRAINT [FK_StaffCompensationFundingSource_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_StaffCompensationFundingSource_StaffCompensation] FOREIGN KEY ([StaffCompensationId]) REFERENCES [dbo].[StaffCompensation] ([StaffCompensationId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The relationship between the staff compensation and the financial account used for the compensation.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCompensationFundingSource';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCompensationFundingSource';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The amount of financial support contributed by a specific funding or revenue stream.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCompensationFundingSource', @level2type = N'COLUMN', @level2name = N'StaffCompensationFundingSourceAmount';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Funding Source Amount', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCompensationFundingSource', @level2type = N'COLUMN', @level2name = N'StaffCompensationFundingSourceAmount';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002059', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCompensationFundingSource', @level2type = N'COLUMN', @level2name = N'StaffCompensationFundingSourceAmount';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25020', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCompensationFundingSource', @level2type = N'COLUMN', @level2name = N'StaffCompensationFundingSourceAmount';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCompensationFundingSource', @level2type = N'COLUMN', @level2name = N'StaffCompensationFundingSourceAmount';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The proportion or percentage of financial support or resources contributed by a specific funding or revenue stream in relation to the total funding.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCompensationFundingSource', @level2type = N'COLUMN', @level2name = N'StaffCompensationFundingSourcePercentage';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Funding Source Percentage', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCompensationFundingSource', @level2type = N'COLUMN', @level2name = N'StaffCompensationFundingSourcePercentage';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002058', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCompensationFundingSource', @level2type = N'COLUMN', @level2name = N'StaffCompensationFundingSourcePercentage';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25021', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCompensationFundingSource', @level2type = N'COLUMN', @level2name = N'StaffCompensationFundingSourcePercentage';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCompensationFundingSource', @level2type = N'COLUMN', @level2name = N'StaffCompensationFundingSourcePercentage';

