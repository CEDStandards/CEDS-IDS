CREATE TABLE [dbo].[FacilityFinance] (
    [FacilityFinanceId]         INT            IDENTITY (1, 1) NOT NULL,
    [FacilityId]                INT            NOT NULL,
    [FacilityReplacementValue]  DECIMAL (9, 2) NULL,
    [IndebtednessAmountAllowed] DECIMAL (9, 2) NULL,
    [InsuranceDeductible]       DECIMAL (9, 2) NULL,
    [PublicEducationMillRate]   DECIMAL (9, 8) NULL,
    [RecordStartDateTime]       DATETIME       NULL,
    [RecordEndDateTime]         DATETIME       NULL,
    [RecordStatusId]            INT            NULL,
    [DataCollectionId]          INT            NULL,
    CONSTRAINT [PK_FacilityFinance] PRIMARY KEY CLUSTERED ([FacilityFinanceId] ASC),
    CONSTRAINT [FK_FacilityFinance_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_FacilityFinance_Facility] FOREIGN KEY ([FacilityId]) REFERENCES [dbo].[Facility] ([FacilityId]),
    CONSTRAINT [FK_FacilityFinance_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information about a facility''s financial condition or status including replacement value, allowed indeptedness amount, insurance deductable, and public education mill rate if applicable.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityFinance';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityFinance';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The estimated cost of replacing a facility using current per square foot estimates of total project costs.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityFinance', @level2type = N'COLUMN', @level2name = N'FacilityReplacementValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Facility Replacement Value', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityFinance', @level2type = N'COLUMN', @level2name = N'FacilityReplacementValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001784', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityFinance', @level2type = N'COLUMN', @level2name = N'FacilityReplacementValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20765', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityFinance', @level2type = N'COLUMN', @level2name = N'FacilityReplacementValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The amount of indebtedness allowed by law to be carried by the school district.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityFinance', @level2type = N'COLUMN', @level2name = N'IndebtednessAmountAllowed';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Indebtedness Amount Allowed', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityFinance', @level2type = N'COLUMN', @level2name = N'IndebtednessAmountAllowed';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001893', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityFinance', @level2type = N'COLUMN', @level2name = N'IndebtednessAmountAllowed';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20874', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityFinance', @level2type = N'COLUMN', @level2name = N'IndebtednessAmountAllowed';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The dollar amount a school district must pay before its insurance will compensate it for loss.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityFinance', @level2type = N'COLUMN', @level2name = N'InsuranceDeductible';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Insurance Deductible', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityFinance', @level2type = N'COLUMN', @level2name = N'InsuranceDeductible';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001894', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityFinance', @level2type = N'COLUMN', @level2name = N'InsuranceDeductible';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20875', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityFinance', @level2type = N'COLUMN', @level2name = N'InsuranceDeductible';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The millage rate used to calculate property tax revenue for K-12 public education.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityFinance', @level2type = N'COLUMN', @level2name = N'PublicEducationMillRate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Public Education Mill Rate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityFinance', @level2type = N'COLUMN', @level2name = N'PublicEducationMillRate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001895', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityFinance', @level2type = N'COLUMN', @level2name = N'PublicEducationMillRate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20876', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityFinance', @level2type = N'COLUMN', @level2name = N'PublicEducationMillRate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityFinance', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityFinance', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityFinance', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityFinance', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityFinance', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityFinance', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityFinance', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityFinance', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityFinance', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityFinance', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

