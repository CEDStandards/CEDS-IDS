CREATE TABLE [dbo].[PersonStatus] (
    [PersonStatusId]        INT      IDENTITY (1, 1) NOT NULL,
    [PersonId]              INT      NOT NULL,
    [RefPersonStatusTypeId] INT      NOT NULL,
    [StatusValue]           BIT      NOT NULL,
    [StatusStartDate]       DATE     NULL,
    [StatusEndDate]         DATE     NULL,
    [RecordStartDateTime]   DATETIME NULL,
    [RecordEndDateTime]     DATETIME NULL,
    [RecordStatusId]        INT      NULL,
    [DataCollectionId]      INT      NULL,
    CONSTRAINT [PK_PersonStatus] PRIMARY KEY CLUSTERED ([PersonStatusId] ASC),
    CONSTRAINT [FK_PersonStatus_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_PersonStatus_Person] FOREIGN KEY ([PersonId]) REFERENCES [dbo].[Person] ([PersonId]),
    CONSTRAINT [FK_PersonStatus_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_PersonStatus_RefPersonStatusType] FOREIGN KEY ([RefPersonStatusTypeId]) REFERENCES [dbo].[RefPersonStatusType] ([RefPersonStatusTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Identifies a status (yes/no) for a person for a status type.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonStatus';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonStatus';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonStatus', @level2type = N'COLUMN', @level2name = N'PersonStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - Person.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonStatus', @level2type = N'COLUMN', @level2name = N'PersonId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Status types for a person where the possible condition is either Yes (True) or No (False).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonStatus', @level2type = N'COLUMN', @level2name = N'RefPersonStatusTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Economic Disadvantage Status, Homeless Unaccompanied Youth Status, IDEA Indicator, English Learner Status, Migrant Status, School Choice Applied for Transfer Status, School Choice Eligible for Transfer Status, School Choice Transfer Status, Title I School Supplemental Services Applied Status, Title I School Supplemental Services Eligible Status, Title I School Supplemental Services Received Status, Title III Immigrant Status, Truant Status, Single Parent or Single Pregnant Woman Status, Perkins Limited English Proficiency Status, Low-income Status, Dislocated Worker Status, Public Assistance Status, Rural Residency Status, Professional Association Membership Status, State Approved Trainer Status, State Approved Technical Assistance Provider Status, Awaiting Foster Care Status, Marital Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonStatus', @level2type = N'COLUMN', @level2name = N'RefPersonStatusTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000086, 000148, 000151, 000180, 000189, 000235, 000236, 000237, 000286, 000287, 000288, 000291, 000569, 000580, 000581, 000775, 000776, 000777, 000778, 000807, 000814, 000815, 001929, 001980', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonStatus', @level2type = N'COLUMN', @level2name = N'RefPersonStatusTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19086, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19148, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19151, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19180, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19189, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19235, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19236, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19237, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19286, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19287, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19288, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19291, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19561, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19573, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19574, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19758, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19759, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19760, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19761, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19806, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19813, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19814, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20903, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20942', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonStatus', @level2type = N'COLUMN', @level2name = N'RefPersonStatusTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonStatus', @level2type = N'COLUMN', @level2name = N'RefPersonStatusTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'1 = Yes/True, 0 = No/False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonStatus', @level2type = N'COLUMN', @level2name = N'StatusValue';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonStatus', @level2type = N'COLUMN', @level2name = N'StatusValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The year, month and day that a status became applicable to an individual.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonStatus', @level2type = N'COLUMN', @level2name = N'StatusStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Status Start Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonStatus', @level2type = N'COLUMN', @level2name = N'StatusStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001227', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonStatus', @level2type = N'COLUMN', @level2name = N'StatusStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20192', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonStatus', @level2type = N'COLUMN', @level2name = N'StatusStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonStatus', @level2type = N'COLUMN', @level2name = N'StatusStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The last year, month and day when a status applied to an individual.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonStatus', @level2type = N'COLUMN', @level2name = N'StatusEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Status End Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonStatus', @level2type = N'COLUMN', @level2name = N'StatusEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001228', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonStatus', @level2type = N'COLUMN', @level2name = N'StatusEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20193', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonStatus', @level2type = N'COLUMN', @level2name = N'StatusEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonStatus', @level2type = N'COLUMN', @level2name = N'StatusEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonStatus', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonStatus', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonStatus', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonStatus', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonStatus', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonStatus', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonStatus', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonStatus', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonStatus', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonStatus', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

