CREATE TABLE [dbo].[IEPAuthorizationRejected] (
    [IEPAuthorizationRejectedId] INT            IDENTITY (1, 1) NOT NULL,
    [IEPAuthorizationId]         INT            NOT NULL,
    [PortionDescription]         NVARCHAR (MAX) NULL,
    [PortionExplanation]         NVARCHAR (MAX) NULL,
    [RecordStartDateTime]        DATETIME       NULL,
    [RecordEndDateTime]          DATETIME       NULL,
    [RecordStatusId]             INT            NULL,
    [DataCollectionId]           INT            NULL,
    CONSTRAINT [PK_IEPAuthorizationRejected] PRIMARY KEY CLUSTERED ([IEPAuthorizationRejectedId] ASC),
    CONSTRAINT [FK_IEPAuthorizationRejected_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_IEPAuthorizationRejected_IEPAuthorization] FOREIGN KEY ([IEPAuthorizationId]) REFERENCES [dbo].[IEPAuthorization] ([IEPAuthorizationId]),
    CONSTRAINT [FK_IEPAuthorizationRejected_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information about a case in which a student was authorized for an IEP but the IEP was rejected by a parent or legal guardian.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IEPAuthorizationRejected';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IEPAuthorizationRejected';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Portion the authorizer does not want executed.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IEPAuthorizationRejected', @level2type = N'COLUMN', @level2name = N'PortionDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'IEP Authorization Rejected Portion Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IEPAuthorizationRejected', @level2type = N'COLUMN', @level2name = N'PortionDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001723', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IEPAuthorizationRejected', @level2type = N'COLUMN', @level2name = N'PortionDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20704', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IEPAuthorizationRejected', @level2type = N'COLUMN', @level2name = N'PortionDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Authorizer''s explanation for rejected portions.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IEPAuthorizationRejected', @level2type = N'COLUMN', @level2name = N'PortionExplanation';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'IEP Authorization Rejected Portion Explanation', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IEPAuthorizationRejected', @level2type = N'COLUMN', @level2name = N'PortionExplanation';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001724', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IEPAuthorizationRejected', @level2type = N'COLUMN', @level2name = N'PortionExplanation';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20705', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IEPAuthorizationRejected', @level2type = N'COLUMN', @level2name = N'PortionExplanation';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IEPAuthorizationRejected', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IEPAuthorizationRejected', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IEPAuthorizationRejected', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IEPAuthorizationRejected', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IEPAuthorizationRejected', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IEPAuthorizationRejected', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IEPAuthorizationRejected', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IEPAuthorizationRejected', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IEPAuthorizationRejected', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IEPAuthorizationRejected', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

