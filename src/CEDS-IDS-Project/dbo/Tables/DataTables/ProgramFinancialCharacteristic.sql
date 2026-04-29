CREATE TABLE [dbo].[ProgramFinancialCharacteristic] (
    [ProgramFinancialCharacteristicId] INT      IDENTITY (1, 1) NOT NULL,
    [ProgramId]                        INT      NOT NULL,
    [RefServiceChargeIndicatorId]      INT      NULL,
    [RecordStartDateTime]              DATETIME NULL,
    [RecordEndDateTime]                DATETIME NULL,
    [RecordStatusId]                   INT      NULL,
    [DataCollectionId]                 INT      NULL,
    CONSTRAINT [PK_ProgramFinancialCharacteristic] PRIMARY KEY CLUSTERED ([ProgramFinancialCharacteristicId] ASC),
    CONSTRAINT [FK_ProgramFinancialCharacteristic_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_ProgramFinancialCharacteristic_Program] FOREIGN KEY ([ProgramId]) REFERENCES [dbo].[Program] ([ProgramId]),
    CONSTRAINT [FK_ProgramFinancialCharacteristic_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_ProgramFinancialCharacteristic_RefServiceChargeIndicator] FOREIGN KEY ([RefServiceChargeIndicatorId]) REFERENCES [dbo].[RefServiceChargeIndicator] ([RefServiceChargeIndicatorId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information about the financial characteristics of a program, including any charges to the parent or guardian for program participation. Used to support CRDC Students, Schools and Programs (SSPR) reporting.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramFinancialCharacteristic';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramFinancialCharacteristic';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramFinancialCharacteristic', @level2type = N'COLUMN', @level2name = N'ProgramFinancialCharacteristicId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate key from Program identifying the program to which this financial characteristic applies.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramFinancialCharacteristic', @level2type = N'COLUMN', @level2name = N'ProgramId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of the charge to parent or guardian for a service and/or program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramFinancialCharacteristic', @level2type = N'COLUMN', @level2name = N'RefServiceChargeIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Service Charge Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramFinancialCharacteristic', @level2type = N'COLUMN', @level2name = N'RefServiceChargeIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'C002184', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramFinancialCharacteristic', @level2type = N'COLUMN', @level2name = N'RefServiceChargeIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://w3id.org/CEDStandards/terms/C002184', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramFinancialCharacteristic', @level2type = N'COLUMN', @level2name = N'RefServiceChargeIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramFinancialCharacteristic', @level2type = N'COLUMN', @level2name = N'RefServiceChargeIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramFinancialCharacteristic', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramFinancialCharacteristic', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramFinancialCharacteristic', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramFinancialCharacteristic', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramFinancialCharacteristic', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramFinancialCharacteristic', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramFinancialCharacteristic', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramFinancialCharacteristic', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramFinancialCharacteristic', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramFinancialCharacteristic', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';
