CREATE TABLE [dbo].[ELChildIndividualizedProgram] (
    [ELChildIndividualizedProgramId]    INT      IDENTITY (1, 1) NOT NULL,
    [PersonId]                          INT      NOT NULL,
    [IndividualizedProgramId]           INT      NULL,
    [RefIDEAIEPStatusId]                INT      NULL,
    [RefIDEAPartCEligibilityCategoryId] INT      NULL,
    [RecordStartDateTime]               DATETIME NULL,
    [RecordEndDateTime]                 DATETIME NULL,
    [RecordStatusId]                    INT      NULL,
    [DataCollectionId]                  INT      NULL,
    CONSTRAINT [PK_ELChildIndividualizedProgram] PRIMARY KEY CLUSTERED ([ELChildIndividualizedProgramId] ASC),
    CONSTRAINT [FK_ELChildIndividualizedProgram_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_ELChildIndividualizedProgram_IndividualizedProgram] FOREIGN KEY ([IndividualizedProgramId]) REFERENCES [dbo].[IndividualizedProgram] ([IndividualizedProgramId]),
    CONSTRAINT [FK_ELChildIndividualizedProgram_Person] FOREIGN KEY ([PersonId]) REFERENCES [dbo].[Person] ([PersonId]),
    CONSTRAINT [FK_ELChildIndividualizedProgram_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_ELChildIndividualizedProgram_RefIDEAIEPStatus] FOREIGN KEY ([RefIDEAIEPStatusId]) REFERENCES [dbo].[RefIDEAIEPStatus] ([RefIDEAIEPStatusId]),
    CONSTRAINT [FK_ELChildIndividualizedProgram_RefIDEAPartCEligibilityCategory] FOREIGN KEY ([RefIDEAPartCEligibilityCategoryId]) REFERENCES [dbo].[RefIDEAPartCEligibilityCategory] ([RefIDEAPartCEligibilityCategoryId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Individualized program properties specific to the early learning context.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildIndividualizedProgram';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildIndividualizedProgram';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate key from Person.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildIndividualizedProgram', @level2type = N'COLUMN', @level2name = N'PersonId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - IndividualizedProgram', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildIndividualizedProgram', @level2type = N'COLUMN', @level2name = N'IndividualizedProgramId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The status of an individualized services plan for a specified reporting period or on a specified date.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildIndividualizedProgram', @level2type = N'COLUMN', @level2name = N'RefIDEAIEPStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'IDEA IEP Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildIndividualizedProgram', @level2type = N'COLUMN', @level2name = N'RefIDEAIEPStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001501', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildIndividualizedProgram', @level2type = N'COLUMN', @level2name = N'RefIDEAIEPStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20473', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildIndividualizedProgram', @level2type = N'COLUMN', @level2name = N'RefIDEAIEPStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildIndividualizedProgram', @level2type = N'COLUMN', @level2name = N'RefIDEAIEPStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The category under which a person under 3 years of age is eligible for early intervention services under IDEA Part C.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildIndividualizedProgram', @level2type = N'COLUMN', @level2name = N'RefIDEAPartCEligibilityCategoryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'IDEA Part C Eligibility Category', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildIndividualizedProgram', @level2type = N'COLUMN', @level2name = N'RefIDEAPartCEligibilityCategoryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001656', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildIndividualizedProgram', @level2type = N'COLUMN', @level2name = N'RefIDEAPartCEligibilityCategoryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20637', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildIndividualizedProgram', @level2type = N'COLUMN', @level2name = N'RefIDEAPartCEligibilityCategoryId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildIndividualizedProgram', @level2type = N'COLUMN', @level2name = N'RefIDEAPartCEligibilityCategoryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildIndividualizedProgram', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildIndividualizedProgram', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildIndividualizedProgram', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildIndividualizedProgram', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildIndividualizedProgram', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildIndividualizedProgram', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildIndividualizedProgram', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildIndividualizedProgram', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildIndividualizedProgram', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

