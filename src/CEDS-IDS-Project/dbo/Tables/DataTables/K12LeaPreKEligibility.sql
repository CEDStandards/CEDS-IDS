CREATE TABLE [dbo].[K12LeaPreKEligibility] (
    [K12LEAPreKEligibilityId]         INT      IDENTITY (1, 1) NOT NULL,
    [K12LeaId]                        INT      NOT NULL,
    [RefPrekindergartenEligibilityId] INT      NOT NULL,
    [RecordStartDateTime]             DATETIME NULL,
    [RecordEndDateTime]               DATETIME NULL,
    [RecordStatusId]                  INT      NULL,
    [DataCollectionId]                INT      NULL,
    CONSTRAINT [PK_K12LeaPreKEligibility] PRIMARY KEY CLUSTERED ([K12LEAPreKEligibilityId] ASC),
    CONSTRAINT [FK_K12LeaPreKEligibility_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_K12LeaPreKEligibility_K12Lea] FOREIGN KEY ([K12LeaId]) REFERENCES [dbo].[K12Lea] ([K12LeaId]),
    CONSTRAINT [FK_K12LeaPreKEligibility_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_K12LeaPreKEligibility_RefPrekindergartenEligibility] FOREIGN KEY ([RefPrekindergartenEligibilityId]) REFERENCES [dbo].[RefPrekindergartenEligibility] ([RefPrekindergartenEligibilityId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The groups of students for whom pre-kindergarten is available.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaPreKEligibility';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaPreKEligibility';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaPreKEligibility', @level2type = N'COLUMN', @level2name = N'K12LEAPreKEligibilityId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The groups of students for whom pre-kindergarten programs are available.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaPreKEligibility', @level2type = N'COLUMN', @level2name = N'RefPrekindergartenEligibilityId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Prekindergarten Eligibility', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaPreKEligibility', @level2type = N'COLUMN', @level2name = N'RefPrekindergartenEligibilityId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000216', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaPreKEligibility', @level2type = N'COLUMN', @level2name = N'RefPrekindergartenEligibilityId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19216', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaPreKEligibility', @level2type = N'COLUMN', @level2name = N'RefPrekindergartenEligibilityId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaPreKEligibility', @level2type = N'COLUMN', @level2name = N'RefPrekindergartenEligibilityId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaPreKEligibility', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaPreKEligibility', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaPreKEligibility', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaPreKEligibility', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaPreKEligibility', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaPreKEligibility', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaPreKEligibility', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaPreKEligibility', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaPreKEligibility', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaPreKEligibility', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

