CREATE TABLE [dbo].[ELOrganizationMonitoring] (
    [ELOrganizationMonitoringId]               INT            IDENTITY (1, 1) NOT NULL,
    [OrganizationId]                           INT            NOT NULL,
    [VisitStartDate]                           DATE           NULL,
    [VisitEndDate]                             DATE           NULL,
    [RefPurposeOfMonitoringVisitId]            INT            NULL,
    [TypeOfMonitoring]                         NVARCHAR (300) NULL,
    [RefOrganizationMonitoringNotificationsId] INT            NULL,
    [RecordStartDateTime]                      DATETIME       NULL,
    [RecordEndDateTime]                        DATETIME       NULL,
    [RecordStatusId]                           INT            NULL,
    [DataCollectionId]                         INT            NULL,
    CONSTRAINT [PK_ELOrganizationMonitoring] PRIMARY KEY CLUSTERED ([ELOrganizationMonitoringId] ASC),
    CONSTRAINT [FK_ELOrganizationMonitoring_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_ELOrganizationMonitoring_Organization] FOREIGN KEY ([OrganizationId]) REFERENCES [dbo].[Organization] ([OrganizationId]),
    CONSTRAINT [FK_ELOrganizationMonitoring_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_ELOrganizationMonitoring_RefOrganizationMonitoringNotifications] FOREIGN KEY ([RefOrganizationMonitoringNotificationsId]) REFERENCES [dbo].[RefOrganizationMonitoringNotifications] ([RefOrganizationMonitoringNotificationsId]),
    CONSTRAINT [FK_ELOrganizationMonitoring_RefPurposeOfMonitoringVisit] FOREIGN KEY ([RefPurposeOfMonitoringVisitId]) REFERENCES [dbo].[RefPurposeOfMonitoringVisit] ([RefPurposeOfMonitoringVisitId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information about events such as site visits by which an early learning organization is monitored, such as for compliance.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationMonitoring';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationMonitoring';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationMonitoring', @level2type = N'COLUMN', @level2name = N'ELOrganizationMonitoringId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate key from Organization.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationMonitoring', @level2type = N'COLUMN', @level2name = N'OrganizationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The date that monitoring visit began.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationMonitoring', @level2type = N'COLUMN', @level2name = N'VisitStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Monitoring Visit Start Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationMonitoring', @level2type = N'COLUMN', @level2name = N'VisitStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001331', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationMonitoring', @level2type = N'COLUMN', @level2name = N'VisitStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20297', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationMonitoring', @level2type = N'COLUMN', @level2name = N'VisitStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationMonitoring', @level2type = N'COLUMN', @level2name = N'VisitStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The date that monitoring visit ended.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationMonitoring', @level2type = N'COLUMN', @level2name = N'VisitEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Monitoring Visit End Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationMonitoring', @level2type = N'COLUMN', @level2name = N'VisitEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001332', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationMonitoring', @level2type = N'COLUMN', @level2name = N'VisitEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20298', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationMonitoring', @level2type = N'COLUMN', @level2name = N'VisitEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationMonitoring', @level2type = N'COLUMN', @level2name = N'VisitEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The purpose for the monitoring visit.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationMonitoring', @level2type = N'COLUMN', @level2name = N'RefPurposeOfMonitoringVisitId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Purpose of Monitoring Visit', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationMonitoring', @level2type = N'COLUMN', @level2name = N'RefPurposeOfMonitoringVisitId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001333', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationMonitoring', @level2type = N'COLUMN', @level2name = N'RefPurposeOfMonitoringVisitId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20299', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationMonitoring', @level2type = N'COLUMN', @level2name = N'RefPurposeOfMonitoringVisitId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationMonitoring', @level2type = N'COLUMN', @level2name = N'RefPurposeOfMonitoringVisitId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of monitoring on the organization.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationMonitoring', @level2type = N'COLUMN', @level2name = N'TypeOfMonitoring';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Organization Type of Monitoring', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationMonitoring', @level2type = N'COLUMN', @level2name = N'TypeOfMonitoring';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001334', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationMonitoring', @level2type = N'COLUMN', @level2name = N'TypeOfMonitoring';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20300', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationMonitoring', @level2type = N'COLUMN', @level2name = N'TypeOfMonitoring';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationMonitoring', @level2type = N'COLUMN', @level2name = N'TypeOfMonitoring';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Whether the organization received notification about monitoring', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationMonitoring', @level2type = N'COLUMN', @level2name = N'RefOrganizationMonitoringNotificationsId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Organization Monitoring Notifications', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationMonitoring', @level2type = N'COLUMN', @level2name = N'RefOrganizationMonitoringNotificationsId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001330', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationMonitoring', @level2type = N'COLUMN', @level2name = N'RefOrganizationMonitoringNotificationsId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20296', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationMonitoring', @level2type = N'COLUMN', @level2name = N'RefOrganizationMonitoringNotificationsId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationMonitoring', @level2type = N'COLUMN', @level2name = N'RefOrganizationMonitoringNotificationsId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationMonitoring', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationMonitoring', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationMonitoring', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationMonitoring', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationMonitoring', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationMonitoring', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationMonitoring', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationMonitoring', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationMonitoring', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELOrganizationMonitoring', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

