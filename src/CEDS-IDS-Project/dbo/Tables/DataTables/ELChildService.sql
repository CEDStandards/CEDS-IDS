CREATE TABLE [dbo].[ELChildService] (
    [ELChildServiceId]                    INT            IDENTITY (1, 1) NOT NULL,
    [OrganizationPersonRoleId]            INT            NOT NULL,
    [ECEAPEligibility]                    BIT            NULL,
    [EligibilityPriorityPoints]           NVARCHAR (100) NULL,
    [ServiceDate]                         DATE           NULL,
    [RefEarlyChildhoodServicesOfferedId]  INT            NULL,
    [RefEarlyChildhoodServicesReceivedId] INT            NULL,
    [RefELServiceTypeId]                  INT            NULL,
    [RecordStartDateTime]                 DATETIME       NULL,
    [RecordEndDateTime]                   DATETIME       NULL,
    [RecordStatusId]                      INT            NULL,
    [DataCollectionId]                    INT            NULL,
    CONSTRAINT [PK_ELChildService] PRIMARY KEY CLUSTERED ([ELChildServiceId] ASC),
    CONSTRAINT [FK_ELChildService_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_ELChildService_OrgPersonRole] FOREIGN KEY ([OrganizationPersonRoleId]) REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]),
    CONSTRAINT [FK_ELChildService_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_ELChildService_RefEarlyChildhoodServicesOffered] FOREIGN KEY ([RefEarlyChildhoodServicesOfferedId]) REFERENCES [dbo].[RefEarlyChildhoodServices] ([RefEarlyChildhoodServicesId]),
    CONSTRAINT [FK_ELChildService_RefEarlyChildhoodServicesReceived] FOREIGN KEY ([RefEarlyChildhoodServicesReceivedId]) REFERENCES [dbo].[RefEarlyChildhoodServices] ([RefEarlyChildhoodServicesId]),
    CONSTRAINT [FK_ELChildService_RefELServiceType] FOREIGN KEY ([RefELServiceTypeId]) REFERENCES [dbo].[RefELServiceType] ([RefELServiceTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information about services offered and services received through early learning programs.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildService';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildService';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate key from OrganizationPersonRole', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildService', @level2type = N'COLUMN', @level2name = N'OrganizationPersonRoleId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Denotes whether the family member can receive Early Childhood Education and Assistance Program (ECEAP) information for the child in question.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildService', @level2type = N'COLUMN', @level2name = N'ECEAPEligibility';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Early Childhood Education and Assistance Program Eligibility', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildService', @level2type = N'COLUMN', @level2name = N'ECEAPEligibility';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001591', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildService', @level2type = N'COLUMN', @level2name = N'ECEAPEligibility';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20570', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildService', @level2type = N'COLUMN', @level2name = N'ECEAPEligibility';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildService', @level2type = N'COLUMN', @level2name = N'ECEAPEligibility';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Priority points used to determine eligibility and placement order', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildService', @level2type = N'COLUMN', @level2name = N'EligibilityPriorityPoints';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Eligibility Priority Points', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildService', @level2type = N'COLUMN', @level2name = N'EligibilityPriorityPoints';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001618', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildService', @level2type = N'COLUMN', @level2name = N'EligibilityPriorityPoints';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20597', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildService', @level2type = N'COLUMN', @level2name = N'EligibilityPriorityPoints';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildService', @level2type = N'COLUMN', @level2name = N'EligibilityPriorityPoints';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The year, month, and day on which a service was provided.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildService', @level2type = N'COLUMN', @level2name = N'ServiceDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Service Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildService', @level2type = N'COLUMN', @level2name = N'ServiceDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001635', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildService', @level2type = N'COLUMN', @level2name = N'ServiceDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20616', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildService', @level2type = N'COLUMN', @level2name = N'ServiceDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildService', @level2type = N'COLUMN', @level2name = N'ServiceDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A type of service offered by an organization that adapts the curriculum, materials, or instruction for students identified as needing additional resources.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildService', @level2type = N'COLUMN', @level2name = N'RefEarlyChildhoodServicesOfferedId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Early Childhood Services Offered', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildService', @level2type = N'COLUMN', @level2name = N'RefEarlyChildhoodServicesOfferedId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001553', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildService', @level2type = N'COLUMN', @level2name = N'RefEarlyChildhoodServicesOfferedId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20529', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildService', @level2type = N'COLUMN', @level2name = N'RefEarlyChildhoodServicesOfferedId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildService', @level2type = N'COLUMN', @level2name = N'RefEarlyChildhoodServicesOfferedId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The types of service that adapts the curriculum, materials, or instruction for students identified as needing additional resources.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildService', @level2type = N'COLUMN', @level2name = N'RefEarlyChildhoodServicesReceivedId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Early Childhood Services Received', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildService', @level2type = N'COLUMN', @level2name = N'RefEarlyChildhoodServicesReceivedId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000321', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildService', @level2type = N'COLUMN', @level2name = N'RefEarlyChildhoodServicesReceivedId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19321', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildService', @level2type = N'COLUMN', @level2name = N'RefEarlyChildhoodServicesReceivedId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildService', @level2type = N'COLUMN', @level2name = N'RefEarlyChildhoodServicesReceivedId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A type of service provided to a child.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildService', @level2type = N'COLUMN', @level2name = N'RefELServiceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Early Learning Service Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildService', @level2type = N'COLUMN', @level2name = N'RefELServiceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001604', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildService', @level2type = N'COLUMN', @level2name = N'RefELServiceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20583', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildService', @level2type = N'COLUMN', @level2name = N'RefELServiceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildService', @level2type = N'COLUMN', @level2name = N'RefELServiceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildService', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildService', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildService', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildService', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildService', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildService', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildService', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildService', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELChildService', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

