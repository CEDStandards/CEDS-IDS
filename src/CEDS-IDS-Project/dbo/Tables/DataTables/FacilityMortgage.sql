CREATE TABLE [dbo].[FacilityMortgage] (
    [FacilityMortgageId]                INT            IDENTITY (1, 1) NOT NULL,
    [FacilityId]                        INT            NOT NULL,
    [FacilityMortgageInterestAmount]    DECIMAL (9, 2) NULL,
    [FacilityTotalAssessedValue]        DECIMAL (9, 2) NULL,
    [RefFacilityMortgageInterestTypeId] INT            NULL,
    [RefFacilityMortgageTypeId]         INT            NULL,
    [RecordStartDateTime]               DATETIME       NULL,
    [RecordEndDateTime]                 DATETIME       NULL,
    [RecordStatusId]                    INT            NULL,
    [DataCollectionId]                  INT            NULL,
    CONSTRAINT [PK_FacilityMortgage] PRIMARY KEY CLUSTERED ([FacilityMortgageId] ASC),
    CONSTRAINT [FK_FacilityMortgage_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_FacilityMortgage_Facility] FOREIGN KEY ([FacilityId]) REFERENCES [dbo].[Facility] ([FacilityId]),
    CONSTRAINT [FK_FacilityMortgage_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_FacilityMortgage_RefFacilityMortgageInterestType] FOREIGN KEY ([RefFacilityMortgageInterestTypeId]) REFERENCES [dbo].[RefFacilityMortgageInterestType] ([RefFacilityMortgageInterestTypeId]),
    CONSTRAINT [FK_FacilityMortgage_RefFacilityMortgageType] FOREIGN KEY ([RefFacilityMortgageTypeId]) REFERENCES [dbo].[RefFacilityMortgageType] ([RefFacilityMortgageTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Defines details about a mortgage of a facility including interest, total asset value, and type of mortgage.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityMortgage';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityMortgage';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The amount the borrower pays the lender to compensate the lender for the use of money to purchase a building or facility.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityMortgage', @level2type = N'COLUMN', @level2name = N'FacilityMortgageInterestAmount';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Facility Mortgage Interest Amount', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityMortgage', @level2type = N'COLUMN', @level2name = N'FacilityMortgageInterestAmount';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001890', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityMortgage', @level2type = N'COLUMN', @level2name = N'FacilityMortgageInterestAmount';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20871', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityMortgage', @level2type = N'COLUMN', @level2name = N'FacilityMortgageInterestAmount';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The total assessed value of property that constitutes the basis for public borrowing.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityMortgage', @level2type = N'COLUMN', @level2name = N'FacilityTotalAssessedValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Facility Total Assessed Value', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityMortgage', @level2type = N'COLUMN', @level2name = N'FacilityTotalAssessedValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001896', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityMortgage', @level2type = N'COLUMN', @level2name = N'FacilityTotalAssessedValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20877', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityMortgage', @level2type = N'COLUMN', @level2name = N'FacilityTotalAssessedValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of interest paid on a mortgage to the lender to compensate the lender for the use of money to purchase a building or facility.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityMortgage', @level2type = N'COLUMN', @level2name = N'RefFacilityMortgageInterestTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Facility Mortgage Interest Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityMortgage', @level2type = N'COLUMN', @level2name = N'RefFacilityMortgageInterestTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001891', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityMortgage', @level2type = N'COLUMN', @level2name = N'RefFacilityMortgageInterestTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20872', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityMortgage', @level2type = N'COLUMN', @level2name = N'RefFacilityMortgageInterestTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The status of a mortgage as it relates to priority of payment.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityMortgage', @level2type = N'COLUMN', @level2name = N'RefFacilityMortgageTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Facility Mortgage Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityMortgage', @level2type = N'COLUMN', @level2name = N'RefFacilityMortgageTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001892', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityMortgage', @level2type = N'COLUMN', @level2name = N'RefFacilityMortgageTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20873', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityMortgage', @level2type = N'COLUMN', @level2name = N'RefFacilityMortgageTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityMortgage', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityMortgage', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityMortgage', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityMortgage', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityMortgage', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityMortgage', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityMortgage', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityMortgage', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityMortgage', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityMortgage', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

