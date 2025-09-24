CREATE TABLE [dbo].[ELServicePartner] (
    [ELServicePartnerId]                 INT            IDENTITY (1, 1) NOT NULL,
    [OrganizationId]                     INT            NOT NULL,
    [ServicePartnerName]                 NVARCHAR (100) NULL,
    [ServicePartnerDescription]          NVARCHAR (300) NULL,
    [MemorandumOfUnderstandingEndDate]   DATE           NULL,
    [MemorandumOfUnderstandingStartDate] DATE           NULL,
    [RecordStartDateTime]                DATETIME       NULL,
    [RecordEndDateTime]                  DATETIME       NULL,
    [RecordStatusId]                     INT            NULL,
    [DataCollectionId]                   INT            NULL,
    CONSTRAINT [PK_ELServicePartner] PRIMARY KEY CLUSTERED ([ELServicePartnerId] ASC),
    CONSTRAINT [FK_ELServicePartner_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_ELServicePartner_Organization] FOREIGN KEY ([OrganizationId]) REFERENCES [dbo].[Organization] ([OrganizationId]),
    CONSTRAINT [FK_ELServicePartner_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information about a service partner to an early learning organization.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELServicePartner';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELServicePartner';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate key from Organization', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELServicePartner', @level2type = N'COLUMN', @level2name = N'OrganizationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The name of a non-person entity such as an organization, institution, agency or business, that partners with the Early Learning Organization to provide services to enrolled children/families.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELServicePartner', @level2type = N'COLUMN', @level2name = N'ServicePartnerName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Service Partner Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELServicePartner', @level2type = N'COLUMN', @level2name = N'ServicePartnerName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001625', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELServicePartner', @level2type = N'COLUMN', @level2name = N'ServicePartnerName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20606', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELServicePartner', @level2type = N'COLUMN', @level2name = N'ServicePartnerName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELServicePartner', @level2type = N'COLUMN', @level2name = N'ServicePartnerName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A description of the type of services that the partner organization provides.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELServicePartner', @level2type = N'COLUMN', @level2name = N'ServicePartnerDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Service Partner Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELServicePartner', @level2type = N'COLUMN', @level2name = N'ServicePartnerDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001624', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELServicePartner', @level2type = N'COLUMN', @level2name = N'ServicePartnerDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20603', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELServicePartner', @level2type = N'COLUMN', @level2name = N'ServicePartnerDescription';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELServicePartner', @level2type = N'COLUMN', @level2name = N'ServicePartnerDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The date that a Memorandum of Understanding between the Early Learning Organization and the Service Partner is determined to expire.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELServicePartner', @level2type = N'COLUMN', @level2name = N'MemorandumOfUnderstandingEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Memorandum of Understanding End Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELServicePartner', @level2type = N'COLUMN', @level2name = N'MemorandumOfUnderstandingEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001614', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELServicePartner', @level2type = N'COLUMN', @level2name = N'MemorandumOfUnderstandingEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20593', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELServicePartner', @level2type = N'COLUMN', @level2name = N'MemorandumOfUnderstandingEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELServicePartner', @level2type = N'COLUMN', @level2name = N'MemorandumOfUnderstandingEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The effective date that a Memorandum of Understanding between the Early Learning Organization and the Service Partner Organization is effective.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELServicePartner', @level2type = N'COLUMN', @level2name = N'MemorandumOfUnderstandingStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Memorandum of Understanding Start Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELServicePartner', @level2type = N'COLUMN', @level2name = N'MemorandumOfUnderstandingStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001615', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELServicePartner', @level2type = N'COLUMN', @level2name = N'MemorandumOfUnderstandingStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20594', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELServicePartner', @level2type = N'COLUMN', @level2name = N'MemorandumOfUnderstandingStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELServicePartner', @level2type = N'COLUMN', @level2name = N'MemorandumOfUnderstandingStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELServicePartner', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELServicePartner', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELServicePartner', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELServicePartner', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELServicePartner', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELServicePartner', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELServicePartner', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELServicePartner', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELServicePartner', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

