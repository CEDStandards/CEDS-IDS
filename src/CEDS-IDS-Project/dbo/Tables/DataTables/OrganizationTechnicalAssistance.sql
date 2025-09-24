CREATE TABLE [dbo].[OrganizationTechnicalAssistance] (
    [OrganizationTechnicalAssistanceId]    INT      IDENTITY (1, 1) NOT NULL,
    [OrganizationId]                       INT      NOT NULL,
    [RefTechnicalAssistanceTypeId]         INT      NULL,
    [RefTechnicalAssistanceDeliveryTypeId] INT      NULL,
    [TechnicalAssistanceApprovedInd]       BIT      NULL,
    [RecordStartDateTime]                  DATETIME NULL,
    [RecordEndDateTime]                    DATETIME NULL,
    [RecordStatusId]                       INT      NULL,
    [DataCollectionId]                     INT      NULL,
    CONSTRAINT [PK_OrganizationTechnicalAssistance] PRIMARY KEY CLUSTERED ([OrganizationTechnicalAssistanceId] ASC),
    CONSTRAINT [FK_OrganizationTechnicalAssistance_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_OrganizationTechnicalAssistance_Organization] FOREIGN KEY ([OrganizationId]) REFERENCES [dbo].[Organization] ([OrganizationId]),
    CONSTRAINT [FK_OrganizationTechnicalAssistance_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_OrganizationTechnicalAssistance_RefTechnicalAssistanceDeliveryType] FOREIGN KEY ([RefTechnicalAssistanceDeliveryTypeId]) REFERENCES [dbo].[RefTechnicalAssistanceDeliveryType] ([RefTechnicalAssistanceDeliveryTypeId]),
    CONSTRAINT [FK_OrganizationTechnicalAssistance_RefTechnicalAssistanceType] FOREIGN KEY ([RefTechnicalAssistanceTypeId]) REFERENCES [dbo].[RefTechnicalAssistanceType] ([RefTechnicalAssistanceTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Indicates the types of technical assistance being deliverd to an organization such as a provider of early learning services.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationTechnicalAssistance';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationTechnicalAssistance';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationTechnicalAssistance', @level2type = N'COLUMN', @level2name = N'OrganizationTechnicalAssistanceId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate key from Organization', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationTechnicalAssistance', @level2type = N'COLUMN', @level2name = N'OrganizationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of technical assistance provided.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationTechnicalAssistance', @level2type = N'COLUMN', @level2name = N'RefTechnicalAssistanceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Technical Assistance Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationTechnicalAssistance', @level2type = N'COLUMN', @level2name = N'RefTechnicalAssistanceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001495', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationTechnicalAssistance', @level2type = N'COLUMN', @level2name = N'RefTechnicalAssistanceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20467', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationTechnicalAssistance', @level2type = N'COLUMN', @level2name = N'RefTechnicalAssistanceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationTechnicalAssistance', @level2type = N'COLUMN', @level2name = N'RefTechnicalAssistanceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The method of delivery of technical assistance received/provided', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationTechnicalAssistance', @level2type = N'COLUMN', @level2name = N'RefTechnicalAssistanceDeliveryTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Technical Assistance Delivery Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationTechnicalAssistance', @level2type = N'COLUMN', @level2name = N'RefTechnicalAssistanceDeliveryTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001494', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationTechnicalAssistance', @level2type = N'COLUMN', @level2name = N'RefTechnicalAssistanceDeliveryTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20466', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationTechnicalAssistance', @level2type = N'COLUMN', @level2name = N'RefTechnicalAssistanceDeliveryTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationTechnicalAssistance', @level2type = N'COLUMN', @level2name = N'RefTechnicalAssistanceDeliveryTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Indicates whether or not the technical assistance was approved.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationTechnicalAssistance', @level2type = N'COLUMN', @level2name = N'TechnicalAssistanceApprovedInd';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Technical Assistance Approved Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationTechnicalAssistance', @level2type = N'COLUMN', @level2name = N'TechnicalAssistanceApprovedInd';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001493', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationTechnicalAssistance', @level2type = N'COLUMN', @level2name = N'TechnicalAssistanceApprovedInd';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20465', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationTechnicalAssistance', @level2type = N'COLUMN', @level2name = N'TechnicalAssistanceApprovedInd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationTechnicalAssistance', @level2type = N'COLUMN', @level2name = N'TechnicalAssistanceApprovedInd';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationTechnicalAssistance', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationTechnicalAssistance', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationTechnicalAssistance', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationTechnicalAssistance', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationTechnicalAssistance', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationTechnicalAssistance', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationTechnicalAssistance', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationTechnicalAssistance', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationTechnicalAssistance', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationTechnicalAssistance', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

