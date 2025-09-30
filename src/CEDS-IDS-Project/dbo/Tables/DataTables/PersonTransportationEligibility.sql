CREATE TABLE [dbo].[PersonTransportationEligibility] (
    [PersonTransportationEligibilityId]               INT      IDENTITY (1, 1) NOT NULL,
    [RefTransportationStatusTypeId]                   INT      NULL,
    [RefTransportationStateAidQualificationTypeId]    INT      NULL,
    [RefTransportationPublicExpenseEligibilityTypeId] INT      NULL,
    [RecordStartDateTime]                             DATETIME NULL,
    [RecordEndDateTime]                               DATETIME NULL,
    [RecordStatusId]                                  INT      NULL,
    [DataCollectionId]                                INT      NULL,
    CONSTRAINT [PK_PersonTransportationEligibility] PRIMARY KEY CLUSTERED ([PersonTransportationEligibilityId] ASC),
    CONSTRAINT [FK_PersonTransportationEligibility_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_PersonTransportationEligibility_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_PersonTransportationEligibility_RefTransportationPublicExpenseEligibilityType] FOREIGN KEY ([RefTransportationPublicExpenseEligibilityTypeId]) REFERENCES [dbo].[RefTransportationPublicExpenseEligibilityType] ([RefTransportationPublicExpenseEligibilityTypeId]),
    CONSTRAINT [FK_PersonTransportationEligibility_RefTransportationStateAidQualificationType] FOREIGN KEY ([RefTransportationStateAidQualificationTypeId]) REFERENCES [dbo].[RefTransportationStateAidQualificationType] ([RefTransportationStateAidQualificationTypeId]),
    CONSTRAINT [FK_PersonTransportationEligibility_RefTransportationStatusType] FOREIGN KEY ([RefTransportationStatusTypeId]) REFERENCES [dbo].[RefTransportationStatusType] ([RefTransportationStatusTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information related to the eligibility of a person to be transported using public funds.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonTransportationEligibility';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonTransportationEligibility';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The transportation status of the person.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonTransportationEligibility', @level2type = N'COLUMN', @level2name = N'RefTransportationStatusTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Transportation Status Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonTransportationEligibility', @level2type = N'COLUMN', @level2name = N'RefTransportationStatusTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002019', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonTransportationEligibility', @level2type = N'COLUMN', @level2name = N'RefTransportationStatusTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25093', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonTransportationEligibility', @level2type = N'COLUMN', @level2name = N'RefTransportationStatusTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonTransportationEligibility', @level2type = N'COLUMN', @level2name = N'RefTransportationStatusTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The qualification status for the transportation of a person that entitles an organization to receive state transportation aid.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonTransportationEligibility', @level2type = N'COLUMN', @level2name = N'RefTransportationStateAidQualificationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Transportation State Aid Qualification Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonTransportationEligibility', @level2type = N'COLUMN', @level2name = N'RefTransportationStateAidQualificationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002020', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonTransportationEligibility', @level2type = N'COLUMN', @level2name = N'RefTransportationStateAidQualificationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25092', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonTransportationEligibility', @level2type = N'COLUMN', @level2name = N'RefTransportationStateAidQualificationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonTransportationEligibility', @level2type = N'COLUMN', @level2name = N'RefTransportationStateAidQualificationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of eligibility for transporting a person at public expense.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonTransportationEligibility', @level2type = N'COLUMN', @level2name = N'RefTransportationPublicExpenseEligibilityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Transportation Public Expense Eligibility Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonTransportationEligibility', @level2type = N'COLUMN', @level2name = N'RefTransportationPublicExpenseEligibilityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002018', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonTransportationEligibility', @level2type = N'COLUMN', @level2name = N'RefTransportationPublicExpenseEligibilityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25091', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonTransportationEligibility', @level2type = N'COLUMN', @level2name = N'RefTransportationPublicExpenseEligibilityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonTransportationEligibility', @level2type = N'COLUMN', @level2name = N'RefTransportationPublicExpenseEligibilityTypeId';

