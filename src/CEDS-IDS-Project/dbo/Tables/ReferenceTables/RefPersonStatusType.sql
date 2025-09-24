CREATE TABLE [dbo].[RefPersonStatusType] (
    [RefPersonStatusTypeId] INT             IDENTITY (1, 1) NOT NULL,
    [Description]           NVARCHAR (150)  NOT NULL,
    [Code]                  NVARCHAR (50)   NULL,
    [Definition]            NVARCHAR (4000) NULL,
    [RefJurisdictionId]     INT             NULL,
    [SortOrder]             DECIMAL (5, 2)  NULL,
    [RecordStartDateTime]   DATETIME        NULL,
    [RecordEndDateTime]     DATETIME        NULL,
    CONSTRAINT [PK_RefPersonStatusType] PRIMARY KEY CLUSTERED ([RefPersonStatusTypeId] ASC),
    CONSTRAINT [FK_RefPersonStatusType_Organization] FOREIGN KEY ([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Status types for a person where the possible condition is either Yes (True) or No (False).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefPersonStatusType';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Economic Disadvantage Status, Homeless Unaccompanied Youth Status, IDEA Indicator, English Learner Status, Migrant Status, School Choice Applied for Transfer Status, School Choice Eligible for Transfer Status, School Choice Transfer Status, Title I School Supplemental Services Applied Status, Title I School Supplemental Services Eligible Status, Title I School Supplemental Services Received Status, Title III Immigrant Status, Truant Status, Single Parent or Single Pregnant Woman Status, Perkins Limited English Proficiency Status, Low-income Status, Dislocated Worker Status, Public Assistance Status, Rural Residency Status, Professional Association Membership Status, State Approved Trainer Status, State Approved Technical Assistance Provider Status, Awaiting Foster Care Status, Marital Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefPersonStatusType';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000086, 000148, 000151, 000180, 000189, 000235, 000236, 000237, 000286, 000287, 000288, 000291, 000569, 000580, 000581, 000775, 000776, 000777, 000778, 000807, 000814, 000815, 001929, 001980', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefPersonStatusType';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19086, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19148, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19151, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19180, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19189, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19235, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19236, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19237, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19286, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19287, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19288, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19291, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19561, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19573, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19574, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19758, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19759, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19760, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19761, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19806, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19813, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19814, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20903, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20942', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefPersonStatusType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefPersonStatusType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefPersonStatusType', @level2type = N'COLUMN', @level2name = N'RefPersonStatusTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A description for the options in this option set.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefPersonStatusType', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefPersonStatusType', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A code or abbreviation for the options in this option set.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefPersonStatusType', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefPersonStatusType', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The defintion for the options in this option set.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefPersonStatusType', @level2type = N'COLUMN', @level2name = N'Definition';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefPersonStatusType', @level2type = N'COLUMN', @level2name = N'Definition';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate key from Organization identifying the publisher of the reference value.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefPersonStatusType', @level2type = N'COLUMN', @level2name = N'RefJurisdictionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The sequence the options in this option set should be ordered.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefPersonStatusType', @level2type = N'COLUMN', @level2name = N'SortOrder';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefPersonStatusType', @level2type = N'COLUMN', @level2name = N'SortOrder';

