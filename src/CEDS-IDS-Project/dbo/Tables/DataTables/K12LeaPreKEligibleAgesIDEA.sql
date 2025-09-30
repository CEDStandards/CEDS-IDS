CREATE TABLE [dbo].[K12LeaPreKEligibleAgesIDEA] (
    [K12LEAPreKEligibleAgesIDEAId] INT      IDENTITY (1, 1) NOT NULL,
    [K12LeaId]                     INT      NOT NULL,
    [RefPreKEligibleAgesNonIDEAId] INT      NOT NULL,
    [RecordStartDateTime]          DATETIME NULL,
    [RecordEndDateTime]            DATETIME NULL,
    [RecordStatusId]               INT      NULL,
    [DataCollectionId]             INT      NULL,
    CONSTRAINT [PK_K12LEAPreKEligibleAgesIDEA] PRIMARY KEY CLUSTERED ([K12LEAPreKEligibleAgesIDEAId] ASC),
    CONSTRAINT [FK_K12LeaPreKEligibleAgesIDEA_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_K12LeaPreKEligibleAgesIDEA_K12Lea] FOREIGN KEY ([K12LeaId]) REFERENCES [dbo].[K12Lea] ([K12LeaId]),
    CONSTRAINT [FK_K12LeaPreKEligibleAgesIDEA_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_K12LeaPreKEligibleAgesIDEA_RefPreKEligibleAgesNonIDEA] FOREIGN KEY ([RefPreKEligibleAgesNonIDEAId]) REFERENCES [dbo].[RefPreKEligibleAgesNonIDEA] ([RefPreKEligibleAgesNonIDEAId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The ages of children not served under IDEA to whom the LEA''s pre-kindergarten services are available.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaPreKEligibleAgesIDEA';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaPreKEligibleAgesIDEA';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaPreKEligibleAgesIDEA', @level2type = N'COLUMN', @level2name = N'K12LEAPreKEligibleAgesIDEAId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The ages of children not served under IDEA to whom the LEA''s pre-kindergarten services are available.  ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaPreKEligibleAgesIDEA', @level2type = N'COLUMN', @level2name = N'RefPreKEligibleAgesNonIDEAId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Prekindergarten Eligible Ages for Non-IDEA Students', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaPreKEligibleAgesIDEA', @level2type = N'COLUMN', @level2name = N'RefPreKEligibleAgesNonIDEAId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000217', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaPreKEligibleAgesIDEA', @level2type = N'COLUMN', @level2name = N'RefPreKEligibleAgesNonIDEAId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19217', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaPreKEligibleAgesIDEA', @level2type = N'COLUMN', @level2name = N'RefPreKEligibleAgesNonIDEAId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaPreKEligibleAgesIDEA', @level2type = N'COLUMN', @level2name = N'RefPreKEligibleAgesNonIDEAId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaPreKEligibleAgesIDEA', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaPreKEligibleAgesIDEA', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaPreKEligibleAgesIDEA', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaPreKEligibleAgesIDEA', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaPreKEligibleAgesIDEA', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaPreKEligibleAgesIDEA', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaPreKEligibleAgesIDEA', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaPreKEligibleAgesIDEA', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaPreKEligibleAgesIDEA', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaPreKEligibleAgesIDEA', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

